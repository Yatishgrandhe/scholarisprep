import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import {
  createR2UploadUrl,
  isR2Configured,
  noteImageObjectKey,
  R2_NOT_CONFIGURED,
} from "@/lib/storage/r2";
import { createClient } from "@/lib/supabase/server";

const schema = z.object({
  note_id: z.string().uuid(),
  content_type: z
    .string()
    .regex(/^image\/(jpeg|jpg|png|webp|gif)$/i)
    .default("image/webp"),
  handwriting: z.boolean().optional(),
});

/**
 * Stub: returns a short-lived R2 PUT URL for a note image master.
 * Client should PUT the (optionally client-capped) bytes, then call confirm.
 * When R2 env is missing, returns 503 with a clear message (no throw).
 */
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

  const limited = rateLimit("notes-upload-url", user.id);
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

  const { note_id, content_type } = parsed.data;

  const { data: note } = await supabase
    .from("free_study_notes")
    .select("id, user_id")
    .eq("id", note_id)
    .single();

  if (!note || note.user_id !== user.id) {
    return NextResponse.json({ error: "Note not found" }, { status: 404 });
  }

  const assetId = crypto.randomUUID();
  const objectKey = noteImageObjectKey(user.id, note_id, assetId, "master");
  const signed = await createR2UploadUrl({
    objectKey,
    contentType: content_type,
    expiresInSeconds: 90,
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
    expires_in: 90,
  });
}
