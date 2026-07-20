import { NextResponse } from "next/server";
import { dbError, parseRouteParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { verifyCsrf } from "@/lib/csrf";
import { userIdParamsSchema } from "@/lib/validations/api";

type RouteContext = { params: Promise<{ userId: string }> };

export async function GET(_request: Request, context: RouteContext) {
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const paramsParsed = await parseRouteParams(context.params, userIdParamsSchema);
  if (!paramsParsed.ok) return paramsParsed.response;

  const { userId } = paramsParsed.data;
  const { admin } = auth.ctx;

  const { data: profile, error } = await admin
    .from("profiles")
    .select("*")
    .eq("id", userId)
    .single();

  if (error || !profile) {
    return NextResponse.json({ error: "User not found" }, { status: 404 });
  }

  const { data: subscription } = await admin
    .from("subscriptions")
    .select("*")
    .eq("user_id", userId)
    .order("created_at", { ascending: false })
    .limit(1)
    .maybeSingle();

  return NextResponse.json({ profile, subscription });
}

export async function DELETE(request: Request, context: RouteContext) {
  // Auth before CSRF so unsigned-in clients get 401 (not CSRF 403).
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const paramsParsed = await parseRouteParams(context.params, userIdParamsSchema);
  if (!paramsParsed.ok) return paramsParsed.response;

  const { userId } = paramsParsed.data;
  const { admin, userId: adminUserId } = auth.ctx;

  if (userId === adminUserId) {
    return NextResponse.json(
      { error: "You cannot delete your own account from the admin panel" },
      { status: 400 },
    );
  }

  const { data: target, error: profileError } = await admin
    .from("profiles")
    .select("id, role")
    .eq("id", userId)
    .single();

  if (profileError || !target) {
    return NextResponse.json({ error: "User not found" }, { status: 404 });
  }

  if (target.role === "platform_admin") {
    const { count } = await admin
      .from("profiles")
      .select("id", { count: "exact", head: true })
      .eq("role", "platform_admin");

    if ((count ?? 0) <= 1) {
      return NextResponse.json(
        { error: "Cannot delete the last platform admin" },
        { status: 400 },
      );
    }
  }

  const { error } = await admin.auth.admin.deleteUser(userId);

  if (error) {
    return dbError("[admin/users/delete]", error);
  }

  return NextResponse.json({ success: true });
}
