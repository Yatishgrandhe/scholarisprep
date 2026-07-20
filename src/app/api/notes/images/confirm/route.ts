import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { isR2Configured, noteImageObjectKey, R2_NOT_CONFIGURED } from "@/lib/storage/r2";
import { createClient } from "@/lib/supabase/server";

const schema = z.object({
  note_id: z.string().uuid(),
  asset_id: z.string().uuid(),
  object_key: z.string().min(8).max(512),
  byte_size: z.number().int().positive().max(20_000_000).optional(),
  width: z.number().int().positive().max(8192).optional(),
  height: z.number().int().positive().max(8192).optional(),
  content_type: z.string().default("image/webp"),
});

/**
 * After a successful direct PUT to R2, insert asset metadata.
 * Variant keys are derived from asset_id (master/thumb/card/full).
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

  const limited = rateLimit("notes-confirm", user.id);
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

  const { note_id, asset_id, object_key, byte_size, width, height, content_type } =
    parsed.data;

  const { data: note } = await supabase
    .from("free_study_notes")
    .select("id, user_id")
    .eq("id", note_id)
    .single();

  if (!note || note.user_id !== user.id) {
    return NextResponse.json({ error: "Note not found" }, { status: 404 });
  }

  const expectedMaster = noteImageObjectKey(user.id, note_id, asset_id, "master");
  if (object_key !== expectedMaster) {
    return NextResponse.json({ error: "Invalid object key" }, { status: 400 });
  }

  const paths = {
    master: noteImageObjectKey(user.id, note_id, asset_id, "master"),
    thumb: noteImageObjectKey(user.id, note_id, asset_id, "thumb"),
    card: noteImageObjectKey(user.id, note_id, asset_id, "card"),
    full: noteImageObjectKey(user.id, note_id, asset_id, "full"),
  };

  const { data, error } = await supabase
    .from("free_study_note_assets")
    .insert({
      id: asset_id,
      note_id,
      user_id: user.id,
      provider: "r2",
      object_key,
      paths,
      content_type,
      byte_size: byte_size ?? null,
      width: width ?? null,
      height: height ?? null,
    })
    .select("id, note_id, provider, object_key, paths, content_type, byte_size, width, height")
    .single();

  if (error) {
    console.error("[notes/confirm]", error);
    return NextResponse.json({ error: "Could not save asset metadata" }, { status: 500 });
  }

  return NextResponse.json({ asset: data, configured: true });
}
