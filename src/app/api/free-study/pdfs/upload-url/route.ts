import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import {
  createR2UploadUrl,
  isR2Configured,
  R2_NOT_CONFIGURED,
} from "@/lib/storage/r2";
import { createClient } from "@/lib/supabase/server";

export const runtime = "nodejs";

const MAX_BYTES = 100 * 1024 * 1024; // 100 MB

function pdfObjectKey(userId: string, assetId: string): string {
  return `pdfs/${userId}/${assetId}.pdf`;
}

const schema = z
  .object({
    filename: z.string().min(1).max(255),
    content_type: z.literal("application/pdf"),
    file_size: z.number().int().positive().max(MAX_BYTES),
  })
  .strict();

export async function POST(req: NextRequest) {
  const csrfFailure = verifyCsrf(req);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const limited = rateLimit("free-study-pdf-upload-url", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  if (!isR2Configured()) {
    return NextResponse.json(
      { error: R2_NOT_CONFIGURED, configured: false },
      { status: 503 },
    );
  }

  const parsed = await parseJsonBody(req, schema);
  if (!parsed.ok) return parsed.response;

  const { filename, content_type, file_size } = parsed.data;

  const assetId = crypto.randomUUID();
  const objectKey = pdfObjectKey(user.id, assetId);

  const signed = await createR2UploadUrl({
    objectKey,
    contentType: content_type,
    expiresInSeconds: 900,
  });

  if ("error" in signed) {
    return NextResponse.json(
      { error: signed.error, configured: false },
      { status: 503 },
    );
  }

  return NextResponse.json({
    configured: true,
    asset_id: assetId,
    object_key: objectKey,
    upload_url: signed.url,
    expires_in: 900,
  });
}
