import { NextResponse } from "next/server";
import { dbError, parseSearchParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { adminCoursesQuerySchema } from "@/lib/validations/api";

export async function GET(request: Request) {
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const { searchParams } = new URL(request.url);
  const queryParsed = parseSearchParams(searchParams, adminCoursesQuerySchema);
  if (!queryParsed.ok) return queryParsed.response;
  const { status } = queryParsed.data;

  const { admin } = auth.ctx;
  let query = admin
    .from("courses")
    .select(
      "id, title, thumbnail_url, status, total_lessons, enrolled_count, created_at, creator_id, featured_on_home",
    )
    .order("created_at", { ascending: false });

  if (status && status !== "all") {
    query = query.eq("status", status);
  }

  const { data: courses, error } = await query;

  if (error) {
    return dbError("[admin/courses] list", error);
  }

  const creatorIds = [
    ...new Set(
      (courses ?? [])
        .map((c) => c.creator_id)
        .filter((id): id is string => Boolean(id)),
    ),
  ];

  const { data: creators } = creatorIds.length
    ? await admin
        .from("profiles")
        .select("id, full_name, email")
        .in("id", creatorIds)
    : { data: [] };

  const creatorMap = new Map(
    (creators ?? []).map((c) => [
      c.id,
      { name: c.full_name ?? c.email, email: c.email },
    ]),
  );

  return NextResponse.json({
    courses: (courses ?? []).map((c) => ({
      id: c.id,
      title: c.title,
      thumbnailUrl: c.thumbnail_url,
      status: c.status,
      totalLessons: c.total_lessons ?? 0,
      enrolledCount: c.enrolled_count ?? 0,
      createdAt: c.created_at,
      featuredOnHome: Boolean(
        (c as { featured_on_home?: boolean }).featured_on_home,
      ),
      creator: c.creator_id
        ? (creatorMap.get(c.creator_id) ?? { name: "Unknown", email: "" })
        : { name: "—", email: "" },
    })),
  });
}
