import { NextResponse } from "next/server";
import { dbError, parseSearchParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { emptyQuerySchema } from "@/lib/validations/api";
import type { CourseStatus, UserRole } from "@/types/supabase";

export async function GET(request: Request) {
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const { searchParams } = new URL(request.url);
  const queryParsed = parseSearchParams(searchParams, emptyQuerySchema);
  if (!queryParsed.ok) return queryParsed.response;

  const { admin } = auth.ctx;

  const [
    profilesResult,
    coursesResult,
    reportsOpenResult,
    subscriptionsResult,
  ] = await Promise.all([
    admin.from("profiles").select("role"),
    admin.from("courses").select("status"),
    admin
      .from("content_reports")
      .select("id", { count: "exact", head: true })
      .in("status", ["open", "reviewing"]),
    admin.from("subscriptions").select("status, plan"),
  ]);

  if (profilesResult.error) {
    return dbError("[admin/stats] profiles", profilesResult.error);
  }
  if (coursesResult.error) {
    return dbError("[admin/stats] courses", coursesResult.error);
  }
  if (reportsOpenResult.error) {
    return dbError("[admin/stats] reports", reportsOpenResult.error);
  }
  if (subscriptionsResult.error) {
    return dbError("[admin/stats] subscriptions", subscriptionsResult.error);
  }

  const usersByRole = {} as Record<UserRole, number>;
  for (const row of profilesResult.data ?? []) {
    const role = row.role as UserRole;
    usersByRole[role] = (usersByRole[role] ?? 0) + 1;
  }

  const coursesByStatus = {} as Record<CourseStatus, number>;
  for (const row of coursesResult.data ?? []) {
    const status = (row.status ?? "draft") as CourseStatus;
    coursesByStatus[status] = (coursesByStatus[status] ?? 0) + 1;
  }

  const subscriptionsByStatus: Record<string, number> = {};
  for (const row of subscriptionsResult.data ?? []) {
    const status = row.status as string;
    subscriptionsByStatus[status] =
      (subscriptionsByStatus[status] ?? 0) + 1;
  }

  return NextResponse.json({
    users: {
      total: profilesResult.data?.length ?? 0,
      byRole: usersByRole,
    },
    courses: {
      total: coursesResult.data?.length ?? 0,
      byStatus: coursesByStatus,
      pendingReview: coursesByStatus.pending_review ?? 0,
    },
    reports: {
      openOrReviewing: reportsOpenResult.count ?? 0,
    },
    subscriptions: {
      total: subscriptionsResult.data?.length ?? 0,
      byStatus: subscriptionsByStatus,
    },
  });
}
