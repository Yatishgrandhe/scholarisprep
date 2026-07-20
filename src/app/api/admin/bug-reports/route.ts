import { NextResponse } from "next/server";
import { dbError, parseSearchParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { adminReportsQuerySchema } from "@/lib/validations/api";

export async function GET(request: Request) {
  const auth = await requirePlatformAdmin();
  if (!auth.ok) return auth.response;

  const { searchParams } = new URL(request.url);
  const queryParsed = parseSearchParams(searchParams, adminReportsQuerySchema);
  if (!queryParsed.ok) return queryParsed.response;

  const { status } = queryParsed.data;
  let query = auth.ctx.admin
    .from("bug_reports")
    .select("id, reporter_email, page_url, description, status, admin_notes, created_at")
    .order("created_at", { ascending: false });

  if (status !== "all") query = query.eq("status", status);

  const { data: reports, error } = await query;
  if (error) return dbError("[admin/bug-reports] list", error);

  return NextResponse.json({ reports: reports ?? [] });
}
