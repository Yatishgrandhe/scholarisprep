import { NextRequest, NextResponse } from "next/server";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import {
  createR2DownloadUrl,
  isR2Configured,
  R2_NOT_CONFIGURED,
} from "@/lib/storage/r2";
import { createClient } from "@/lib/supabase/server";

type Variant = "master" | "thumb" | "card" | "full";

/**
 * Stub: short-lived GET signed URL for a note asset variant.
 */
export async function GET(
  req: NextRequest,
  context: { params: Promise<{ assetId: string }> },
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

  const limited = rateLimit("notes-asset-url", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  if (!isR2Configured()) {
    return NextResponse.json(
      { error: R2_NOT_CONFIGURED, configured: false },
      { status: 503 },
    );
  }

  const { assetId } = await context.params;
  const variantParam = req.nextUrl.searchParams.get("variant") ?? "card";
  const variant: Variant =
    variantParam === "master" ||
    variantParam === "thumb" ||
    variantParam === "card" ||
    variantParam === "full"
      ? variantParam
      : "card";

  const { data: asset } = await supabase
    .from("free_study_note_assets")
    .select("id, user_id, provider, object_key, paths")
    .eq("id", assetId)
    .single();

  if (!asset || asset.user_id !== user.id) {
    return NextResponse.json({ error: "Asset not found" }, { status: 404 });
  }

  const paths = (asset.paths ?? {}) as Partial<Record<Variant, string>>;
  const objectKey =
    paths[variant] ?? paths.master ?? asset.object_key;

  if (asset.provider !== "r2") {
    return NextResponse.json(
      { error: "Unsupported storage provider" },
      { status: 501 },
    );
  }

  const signed = await createR2DownloadUrl({
    objectKey,
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
    variant,
    expires_in: 600,
    configured: true,
  });
}
