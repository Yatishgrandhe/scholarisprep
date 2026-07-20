import { NextResponse } from "next/server";
import { dbError, parseSearchParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { adminReportsQuerySchema } from "@/lib/validations/api";

type ContentReportStatus = "open" | "reviewing" | "resolved" | "dismissed";

export async function GET(request: Request) {
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const { searchParams } = new URL(request.url);
  const queryParsed = parseSearchParams(searchParams, adminReportsQuerySchema);
  if (!queryParsed.ok) return queryParsed.response;
  const { status } = queryParsed.data;

  const { admin } = auth.ctx;
  let query = admin
    .from("content_reports")
    .select(
      "id, content_type, content_id, reason, status, created_at, reporter_id, admin_notes, reviewed_by, resolved_at",
    )
    .order("created_at", { ascending: false });

  if (status && status !== "all") {
    query = query.eq("status", status as ContentReportStatus);
  }

  const { data: reports, error } = await query;

  if (error) {
    return dbError("[admin/reports] list", error);
  }

  const reporterIds = [
    ...new Set(
      (reports ?? [])
        .map((r) => r.reporter_id)
        .filter((id): id is string => Boolean(id)),
    ),
  ];

  const { data: reporters } = reporterIds.length
    ? await admin.from("profiles").select("id, email").in("id", reporterIds)
    : { data: [] };

  const emailMap = new Map((reporters ?? []).map((p) => [p.id, p.email]));

  return NextResponse.json({
    reports: (reports ?? []).map((r) => ({
      id: r.id,
      contentType: r.content_type,
      contentId: r.content_id,
      reason: r.reason,
      status: r.status,
      createdAt: r.created_at,
      reporterEmail: r.reporter_id
        ? (emailMap.get(r.reporter_id) ?? "—")
        : "—",
      adminNotes: r.admin_notes ?? null,
      reviewedBy: r.reviewed_by,
      resolvedAt: r.resolved_at,
    })),
  });
}
