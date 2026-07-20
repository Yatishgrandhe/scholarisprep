import { NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { verifyCsrf } from "@/lib/csrf";
import {
  AI_KEY_MODE_SETTING,
  AI_KEY_MODES,
  getAiKeyModeAdmin,
  getPlatformAiKeyAdminMeta,
  upsertPlatformAiBaseUrl,
  upsertPlatformAiKey,
  upsertPlatformAiModel,
  type AiKeyMode,
} from "@/lib/ai/keyPolicy";

async function policyResponse(mode: AiKeyMode, updatedAt: string | null) {
  const meta = await getPlatformAiKeyAdminMeta();
  return NextResponse.json({
    mode,
    platformKeyConfigured: meta.platformKeyConfigured,
    keyHint: meta.keyHint,
    keySource: meta.source,
    apiBaseUrl: meta.apiBaseUrl,
    model: meta.model,
    updatedAt,
  });
}

export async function GET() {
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const { mode, updatedAt } = await getAiKeyModeAdmin();
  return policyResponse(mode, updatedAt);
}

const patchSchema = z.object({
  mode: z.enum(AI_KEY_MODES),
  /** Optional: set/replace the central key in `app_secrets`. Never returned. */
  apiKey: z.string().min(20).max(512).optional(),
  /** Optional: OpenAI-compatible base URL for the central key (e.g. FreeModel). */
  apiBaseUrl: z.string().url().max(512).optional(),
  /** Optional: model id for the central key (e.g. claude-sonnet-4-6). */
  model: z.string().min(1).max(128).optional(),
});

export async function PATCH(request: Request) {
  // Auth before CSRF so unsigned-in clients get 401 (not CSRF 403).
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const bodyParsed = await parseJsonBody(request, patchSchema);
  if (!bodyParsed.ok) return bodyParsed.response;

  const { mode, apiKey, apiBaseUrl, model } = bodyParsed.data;
  const { admin, userId } = auth.ctx;
  const now = new Date().toISOString();

  // Never upsert blank/whitespace — omit apiKey to keep the existing central key.
  const replacementKey = apiKey?.trim();
  if (replacementKey) {
    const saved = await upsertPlatformAiKey(replacementKey, userId);
    if (!saved.ok) {
      return NextResponse.json({ error: saved.error }, { status: 400 });
    }
  }

  if (apiBaseUrl !== undefined) {
    const savedUrl = await upsertPlatformAiBaseUrl(apiBaseUrl, userId);
    if (!savedUrl.ok) {
      return NextResponse.json({ error: savedUrl.error }, { status: 400 });
    }
  }

  if (model !== undefined) {
    const savedModel = await upsertPlatformAiModel(model, userId);
    if (!savedModel.ok) {
      return NextResponse.json({ error: savedModel.error }, { status: 400 });
    }
  }

  const { data, error } = await admin
    .from("app_settings")
    .upsert(
      {
        key: AI_KEY_MODE_SETTING,
        value: { mode },
        updated_at: now,
        updated_by: userId,
      },
      { onConflict: "key" },
    )
    .select("value, updated_at")
    .single();

  if (error) {
    console.error("[admin/ai-key-policy] upsert failed:", error);
    return NextResponse.json(
      { error: "Could not update AI key policy" },
      { status: 500 },
    );
  }

  return policyResponse(mode, data?.updated_at ?? now);
}
