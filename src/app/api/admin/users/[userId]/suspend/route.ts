import { NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBodyOrEmpty, parseRouteParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { verifyCsrf } from "@/lib/csrf";
import { userIdParamsSchema } from "@/lib/validations/api";

const bodySchema = z.object({
  reason: z.string().max(2000).optional(),
  suspended: z.boolean().default(true),
});

type RouteContext = { params: Promise<{ userId: string }> };

const SUSPEND_BAN_DURATION = "876000h";

export async function POST(request: Request, context: RouteContext) {
  // Auth before CSRF so unsigned-in clients get 401 (not CSRF 403).
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const bodyParsed = await parseJsonBodyOrEmpty(request, bodySchema);
  if (!bodyParsed.ok) return bodyParsed.response;

  const paramsParsed = await parseRouteParams(context.params, userIdParamsSchema);
  if (!paramsParsed.ok) return paramsParsed.response;

  const { userId } = paramsParsed.data;
  const body = bodyParsed.data;
  const { admin, userId: adminUserId } = auth.ctx;

  if (userId === adminUserId) {
    return NextResponse.json(
      { error: "You cannot suspend your own account" },
      { status: 400 },
    );
  }

  const { data: target, error: profileError } = await admin
    .from("profiles")
    .select("id, role, email")
    .eq("id", userId)
    .single();

  if (profileError || !target) {
    return NextResponse.json({ error: "User not found" }, { status: 404 });
  }

  if (target.role === "platform_admin") {
    return NextResponse.json(
      { error: "Cannot suspend a platform admin" },
      { status: 403 },
    );
  }

  const { error: profileUpdateError } = await admin
    .from("profiles")
    .update({
      is_suspended: body.suspended,
      updated_at: new Date().toISOString(),
    })
    .eq("id", userId);

  if (profileUpdateError) {
    console.error("[admin/users/suspend] profile", profileUpdateError.message);
    return NextResponse.json(
      { error: "Could not update suspension status" },
      { status: 500 },
    );
  }

  const { data: authUser, error: authFetchError } =
    await admin.auth.admin.getUserById(userId);

  if (authFetchError || !authUser.user) {
    return NextResponse.json({ error: "Auth user not found" }, { status: 404 });
  }

  const existingMeta =
    (authUser.user.app_metadata as Record<string, unknown>) ?? {};
  const suspendedAt = body.suspended ? new Date().toISOString() : null;

  const { error: authUpdateError } = await admin.auth.admin.updateUserById(
    userId,
    {
      app_metadata: {
        ...existingMeta,
        scholaris_suspended: body.suspended,
        scholaris_suspended_at: suspendedAt,
        scholaris_suspended_reason: body.suspended
          ? (body.reason ?? null)
          : null,
      },
      ban_duration: body.suspended ? SUSPEND_BAN_DURATION : "none",
    },
  );

  if (authUpdateError) {
    console.error("[admin/users/suspend] auth", authUpdateError.message);
    return NextResponse.json(
      { error: "Could not update auth suspension" },
      { status: 500 },
    );
  }

  return NextResponse.json({
    success: true,
    userId,
    suspended: body.suspended,
    suspendedAt,
  });
}
