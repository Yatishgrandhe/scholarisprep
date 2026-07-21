import { NextRequest, NextResponse } from "next/server";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import {
  createR2DownloadUrl,
  isR2Configured,
  R2_NOT_CONFIGURED,
} from "@/lib/storage/r2";
import { createClient } from "@/lib/supabase/server";

export const runtime = "nodejs";

export async function GET(
  req: NextRequest,
  context: { params: Promise<{ id: string }> },
) {
  const csrfFailure = verifyCsrf(req);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const limited = rateLimit("free-study-pdf-url", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  if (!isR2Configured()) {
    return NextResponse.json(
      { error: R2_NOT_CONFIGURED, configured: false },
      { status: 503 },
    );
  }

  const { id } = await context.params;

  const { data: pdf } = await supabase
    .from("free_study_pdfs")
    .select("id, user_id, object_key")
    .eq("id", id)
    .single();

  if (!pdf || pdf.user_id !== user.id) {
    return NextResponse.json({ error: "PDF not found" }, { status: 404 });
  }

  const signed = await createR2DownloadUrl({
    objectKey: pdf.object_key,
    expiresInSeconds: 600,
  });

  if ("error" in signed) {
    return NextResponse.json(
      { error: signed.error, configured: false },
      { status: 503 },
    );
  }

  return NextResponse.json({
    url: signed.url,
    expires_in: 600,
    configured: true,
  });
}
