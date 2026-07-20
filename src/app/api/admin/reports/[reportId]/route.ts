import { NextResponse } from "next/server";
import { z } from "zod";
import { dbError, parseJsonBody, parseRouteParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { verifyCsrf } from "@/lib/csrf";
import { reportIdParamsSchema } from "@/lib/validations/api";

type ContentReportStatus = "open" | "reviewing" | "resolved" | "dismissed";

const bodySchema = z.object({
  status: z.enum(["open", "reviewing", "resolved", "dismissed"]).optional(),
  admin_notes: z.string().max(5000).nullable().optional(),
});

type RouteContext = { params: Promise<{ reportId: string }> };

const TERMINAL_STATUSES: ContentReportStatus[] = ["resolved", "dismissed"];

export async function PATCH(request: Request, context: RouteContext) {
  // Auth before CSRF so unsigned-in clients get 401 (not CSRF 403).
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const paramsParsed = await parseRouteParams(context.params, reportIdParamsSchema);
  if (!paramsParsed.ok) return paramsParsed.response;

  const { reportId } = paramsParsed.data;

  const bodyParsed = await parseJsonBody(request, bodySchema);
  if (!bodyParsed.ok) return bodyParsed.response;

  const body = bodyParsed.data;

  if (body.status === undefined && body.admin_notes === undefined) {
    return NextResponse.json(
      { error: "Provide status and/or admin_notes to update" },
      { status: 400 },
    );
  }
  const { admin, userId } = auth.ctx;

  const patch: {
    reviewed_by: string;
    status?: ContentReportStatus;
    resolved_at?: string | null;
    admin_notes?: string | null;
  } = {
    reviewed_by: userId,
  };

  if (body.status !== undefined) {
    patch.status = body.status;
    patch.resolved_at = TERMINAL_STATUSES.includes(body.status)
      ? new Date().toISOString()
      : null;
  }

  if (body.admin_notes !== undefined) {
    patch.admin_notes = body.admin_notes;
  }

  const { data: report, error } = await admin
    .from("content_reports")
    .update(patch)
    .eq("id", reportId)
    .select("*")
    .single();

  if (error) {
    return dbError("[admin/reports/patch]", error);
  }

  if (!report) {
    return NextResponse.json({ error: "Report not found" }, { status: 404 });
  }

  return NextResponse.json({ success: true, report });
}
