import { NextResponse } from "next/server";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { createClient } from "@/lib/supabase/server";
import {
  createAdminClient,
  isSupabaseAdminConfigured,
} from "@/lib/supabase/admin";
import { getAppUrl } from "@/lib/env";
import { orgInviteBodySchema } from "@/lib/validations/org";
import { formatInviteRoleLabel, sendInviteEmail } from "@/lib/email/send";
import { isResendConfigured } from "@/lib/resend";

export async function POST(request: Request) {
  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { data: adminProfile, error: profileError } = await supabase
    .from("profiles")
    .select("role, org_id, full_name, email")
    .eq("id", user.id)
    .single();

  if (profileError || !adminProfile) {
    return NextResponse.json({ error: "Profile not found" }, { status: 404 });
  }

  if (adminProfile.role !== "org_admin" || !adminProfile.org_id) {
    return NextResponse.json(
      { error: "Only organization admins can send invites" },
      { status: 403 },
    );
  }

  const bodyParsed = await parseJsonBody(request, orgInviteBodySchema);
  if (!bodyParsed.ok) return bodyParsed.response;
  const body = bodyParsed.data;

  const inviteEmail = body.email.toLowerCase();

  if (inviteEmail === adminProfile.email?.toLowerCase()) {
    return NextResponse.json(
      { error: "You cannot invite yourself" },
      { status: 400 },
    );
  }

  if (!isResendConfigured()) {
    return NextResponse.json(
      { error: "Email service is not configured on this server" },
      { status: 503 },
    );
  }

  if (!isSupabaseAdminConfigured()) {
    return NextResponse.json(
      { error: "Invite storage is not configured on this server" },
      { status: 503 },
    );
  }

  const admin = createAdminClient();
  const orgId = adminProfile.org_id;

  const { data: organization, error: orgError } = await admin
    .from("organizations")
    .select("id, name, max_members")
    .eq("id", orgId)
    .single();

  if (orgError || !organization) {
    return NextResponse.json({ error: "Organization not found" }, { status: 404 });
  }

  const { count: memberCount, error: memberCountError } = await admin
    .from("profiles")
    .select("id", { count: "exact", head: true })
    .eq("org_id", orgId);

  if (memberCountError) {
    console.error("[org/invite] member count:", memberCountError.message);
    return NextResponse.json(
      { error: "Could not verify seat limit" },
      { status: 500 },
    );
  }

  const { count: pendingCount } = await admin
    .from("org_invites")
    .select("id", { count: "exact", head: true })
    .eq("org_id", orgId)
    .is("accepted_at", null)
    .gt("expires_at", new Date().toISOString());

  const seatsUsed = (memberCount ?? 0) + (pendingCount ?? 0);
  const maxMembers = organization.max_members;
  if (maxMembers != null && seatsUsed >= maxMembers) {
    return NextResponse.json(
      {
        error: `Organization has reached the member limit (${maxMembers})`,
      },
      { status: 409 },
    );
  }

  const { data: existingMember } = await admin
    .from("profiles")
    .select("id")
    .eq("org_id", orgId)
    .ilike("email", inviteEmail)
    .maybeSingle();

  if (existingMember) {
    return NextResponse.json(
      { error: "This email is already a member of your organization" },
      { status: 409 },
    );
  }

  const expiresAt = new Date();
  expiresAt.setDate(expiresAt.getDate() + 7);

  const { data: invite, error: inviteError } = await admin
    .from("org_invites")
    .upsert(
      {
        org_id: orgId,
        email: inviteEmail,
        role: body.role,
        invited_by: user.id,
        expires_at: expiresAt.toISOString(),
        accepted_at: null,
      },
      { onConflict: "org_id,email" },
    )
    .select("id, token")
    .single();

  if (inviteError || !invite) {
    console.error("[org/invite] upsert:", inviteError?.message);
    return NextResponse.json(
      { error: "Could not create invitation" },
      { status: 500 },
    );
  }

  const inviteUrl = `${getAppUrl()}/auth/signup?org=${orgId}&invite=${invite.token}`;
  const inviterName =
    adminProfile.full_name?.trim() ||
    adminProfile.email ||
    "Your organization admin";

  try {
    await sendInviteEmail({
      to: inviteEmail,
      orgName: organization.name,
      inviterName,
      roleLabel: formatInviteRoleLabel(body.role),
      inviteUrl,
    });
  } catch (err) {
    console.error("[org/invite] email", err);
    return NextResponse.json(
      { error: "Failed to send invitation email" },
      { status: 502 },
    );
  }

  return NextResponse.json({
    success: true,
    message: "Invitation sent successfully.",
    inviteId: invite.id,
    email: inviteEmail,
    role: body.role,
    expiresAt: expiresAt.toISOString(),
  });
}
