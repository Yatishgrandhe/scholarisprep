import { NextResponse } from "next/server";
import { parseSearchParams } from "@/lib/api/validation";
import { loadPlatformOverview } from "@/lib/admin/overview-data";
import { resolveIsPlatformAdmin } from "@/lib/admin/platform-admin";
import { createClient } from "@/lib/supabase/server";
import { emptyQuerySchema } from "@/lib/validations/api";

/**
 * Overview uses the **session** client (not service_role).
 * `platform_admin` has RLS "read all" on profiles/courses/subscriptions, so
 * this keeps working when SUPABASE_SERVICE_ROLE_KEY is missing or stale.
 */
export async function GET(request: Request) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  if (!(await resolveIsPlatformAdmin(supabase, user.id))) {
    return NextResponse.json({ error: "Forbidden" }, { status: 403 });
  }

  const { searchParams } = new URL(request.url);
  const queryParsed = parseSearchParams(searchParams, emptyQuerySchema);
  if (!queryParsed.ok) return queryParsed.response;

  const result = await loadPlatformOverview(supabase);
  if (!result.ok) {
    const status = /misconfigured|not configured/i.test(result.error)
      ? 503
      : 500;
    return NextResponse.json({ error: result.error }, { status });
  }

  return NextResponse.json(result.data);
}
