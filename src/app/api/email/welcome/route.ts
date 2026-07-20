import { NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { createAdminClient, isSupabaseAdminConfigured } from "@/lib/supabase/admin";
import { sendWelcomeEmail } from "@/lib/email/send";
import { isResendConfigured } from "@/lib/resend";

const bodySchema = z.object({
  userId: z.string().uuid(),
  /** Shared secret for server-to-server calls (e.g. auth callback). */
  secret: z.string().min(1),
});

/**
 * Internal endpoint to send the welcome email after signup.
 * Protected by EMAIL_WEBHOOK_SECRET — not for browser use (no CSRF).
 */
export async function POST(request: Request) {
  const webhookSecret = process.env.EMAIL_WEBHOOK_SECRET?.trim();
  if (!webhookSecret) {
    return NextResponse.json(
      { error: "Welcome email endpoint is not configured" },
      { status: 503 },
    );
  }

  if (!isResendConfigured() || !isSupabaseAdminConfigured()) {
    return NextResponse.json(
      { error: "Email or database admin is not configured" },
      { status: 503 },
    );
  }

  const parsed = await parseJsonBody(request, bodySchema);
  if (!parsed.ok) return parsed.response;

  if (parsed.data.secret !== webhookSecret) {
    return NextResponse.json({ error: "Forbidden" }, { status: 403 });
  }

  const admin = createAdminClient();
  const { data: profile, error } = await admin
    .from("profiles")
    .select("email, full_name")
    .eq("id", parsed.data.userId)
    .single();

  if (error || !profile?.email) {
    return NextResponse.json({ error: "User not found" }, { status: 404 });
  }

  const firstName = profile.full_name?.split(/\s+/)[0] ?? null;

  try {
    const result = await sendWelcomeEmail({
      to: profile.email,
      firstName,
    });
    return NextResponse.json({
      success: true,
      skipped: result.skipped,
      messageId: result.id,
    });
  } catch (err) {
    console.error("[email/welcome]", err);
    return NextResponse.json(
      { error: "Failed to send welcome email" },
      { status: 502 },
    );
  }
}
