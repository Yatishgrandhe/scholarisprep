import { NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody, parseRouteParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { verifyCsrf } from "@/lib/csrf";
import { userIdParamsSchema } from "@/lib/validations/api";

const bodySchema = z.object({
  role: z.enum(["student", "creator", "org_admin", "platform_admin"]),
});

type RouteContext = { params: Promise<{ userId: string }> };

export async function POST(request: Request, context: RouteContext) {
  // Auth before CSRF so unsigned-in clients get 401 (not CSRF 403).
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const bodyParsed = await parseJsonBody(request, bodySchema);
  if (!bodyParsed.ok) return bodyParsed.response;

  const paramsParsed = await parseRouteParams(context.params, userIdParamsSchema);
  if (!paramsParsed.ok) return paramsParsed.response;

  const { userId } = paramsParsed.data;
  const body = bodyParsed.data;
  const { admin, userId: adminUserId } = auth.ctx;

  if (userId === adminUserId && body.role !== "platform_admin") {
    return NextResponse.json(
      { error: "You cannot remove your own platform admin role" },
      { status: 400 },
    );
  }

  const { data: existing, error: fetchError } = await admin
    .from("profiles")
    .select("id, role, email")
    .eq("id", userId)
    .single();

  if (fetchError || !existing) {
    return NextResponse.json({ error: "User not found" }, { status: 404 });
  }

  if (existing.role === "platform_admin" && body.role !== "platform_admin") {
    return NextResponse.json(
      { error: "Cannot demote a platform admin" },
      { status: 403 },
    );
  }

  const { data: profile, error: updateError } = await admin
    .from("profiles")
    .update({
      role: body.role,
      updated_at: new Date().toISOString(),
    })
    .eq("id", userId)
    .select("id, email, role")
    .single();

  if (updateError) {
    console.error("[admin/users/role]", updateError.message);
    return NextResponse.json(
      { error: "Could not update user role" },
      { status: 500 },
    );
  }

  await admin.auth.admin.updateUserById(userId, {
    app_metadata: { role: body.role },
  });

  return NextResponse.json({ success: true, profile });
}
