import { NextResponse } from "next/server";
import { z } from "zod";
import { dbError, parseJsonBody, parseRouteParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { verifyCsrf } from "@/lib/csrf";
import { reportIdParamsSchema } from "@/lib/validations/api";

const bodySchema = z.object({
  status: z.enum(["open", "reviewing", "resolved", "dismissed"]).optional(),
  admin_notes: z.string().max(5000).nullable().optional(),
});

type RouteContext = { params: Promise<{ reportId: string }> };

export async function PATCH(request: Request, context: RouteContext) {
  const auth = await requirePlatformAdmin();
  if (!auth.ok) return auth.response;

  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const paramsParsed = await parseRouteParams(context.params, reportIdParamsSchema);
  if (!paramsParsed.ok) return paramsParsed.response;
  const bodyParsed = await parseJsonBody(request, bodySchema);
  if (!bodyParsed.ok) return bodyParsed.response;
  if (bodyParsed.data.status === undefined && bodyParsed.data.admin_notes === undefined) {
    return NextResponse.json({ error: "Provide status and/or admin_notes to update" }, { status: 400 });
  }

  const { data: report, error } = await auth.ctx.admin
    .from("bug_reports")
    .update(bodyParsed.data)
    .eq("id", paramsParsed.data.reportId)
    .select("id, reporter_email, page_url, description, status, admin_notes, created_at")
    .maybeSingle();

  if (error) return dbError("[admin/bug-reports] update", error);
  if (!report) return NextResponse.json({ error: "Bug report not found" }, { status: 404 });
  return NextResponse.json({ report });
}
