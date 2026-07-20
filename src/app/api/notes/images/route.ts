import { NextRequest, NextResponse } from "next/server";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { buildNoteImageVariants } from "@/lib/storage/noteImages";
import {
  getR2Client,
  getR2Config,
  isR2Configured,
  noteImageObjectKey,
  R2_NOT_CONFIGURED,
} from "@/lib/storage/r2";
import { createClient } from "@/lib/supabase/server";
import { PutObjectCommand } from "@aws-sdk/client-s3";

export const runtime = "nodejs";

const MAX_BYTES = 12 * 1024 * 1024;

/**
 * Server-side upload: sharp WebP master+variants → R2 → asset row.
 * Prefer this when the client can POST multipart; upload-url remains for direct PUT.
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

  const limited = rateLimit("notes-images", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  if (!isR2Configured()) {
    return NextResponse.json(
      { error: R2_NOT_CONFIGURED, configured: false },
      { status: 503 },
    );
  }

  const form = await req.formData();
  const noteId = String(form.get("note_id") ?? "");
  const file = form.get("file");
  const handwriting = String(form.get("handwriting") ?? "") === "true";

  if (!noteId || !(file instanceof File)) {
    return NextResponse.json(
      { error: "note_id and file are required" },
      { status: 400 },
    );
  }

  if (file.size > MAX_BYTES) {
    return NextResponse.json(
      { error: "Image too large (max 12 MB)" },
      { status: 400 },
    );
  }

  const { data: note } = await supabase
    .from("free_study_notes")
    .select("id, user_id")
    .eq("id", noteId)
    .single();

  if (!note || note.user_id !== user.id) {
    return NextResponse.json({ error: "Note not found" }, { status: 404 });
  }

  const input = Buffer.from(await file.arrayBuffer());
  let variants;
  try {
    variants = await buildNoteImageVariants(input, { handwriting });
  } catch (err) {
    console.error("[notes/images] sharp failed", err);
    return NextResponse.json(
      { error: "Could not process image" },
      { status: 400 },
    );
  }

  const client = getR2Client();
  const config = getR2Config();
  if (!client || !config) {
    return NextResponse.json(
      { error: R2_NOT_CONFIGURED, configured: false },
      { status: 503 },
    );
  }

  const assetId = crypto.randomUUID();
  const keys = {
    master: noteImageObjectKey(user.id, noteId, assetId, "master"),
    thumb: noteImageObjectKey(user.id, noteId, assetId, "thumb"),
    card: noteImageObjectKey(user.id, noteId, assetId, "card"),
    full: noteImageObjectKey(user.id, noteId, assetId, "full"),
  } as const;

  try {
    await Promise.all(
      (["master", "thumb", "card", "full"] as const).map((variant) =>
        client.send(
          new PutObjectCommand({
            Bucket: config.bucketName,
            Key: keys[variant],
            Body: variants[variant],
            ContentType: "image/webp",
          }),
        ),
      ),
    );
  } catch (err) {
    console.error("[notes/images] R2 put failed", err);
    return NextResponse.json(
      { error: "Could not upload image to storage" },
      { status: 502 },
    );
  }

  const { data: asset, error } = await supabase
    .from("free_study_note_assets")
    .insert({
      id: assetId,
      note_id: noteId,
      user_id: user.id,
      provider: "r2",
      object_key: keys.master,
      paths: keys,
      content_type: "image/webp",
      byte_size: variants.masterBytes,
      width: variants.width,
      height: variants.height,
    })
    .select("id, note_id, paths, width, height, byte_size")
    .single();

  if (error) {
    console.error("[notes/images] metadata insert", error);
    return NextResponse.json(
      { error: "Uploaded but could not save metadata" },
      { status: 500 },
    );
  }

  return NextResponse.json({
    configured: true,
    asset,
  });
}
