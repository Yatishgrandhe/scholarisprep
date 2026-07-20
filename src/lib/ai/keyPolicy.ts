/**
 * Platform AI key policy — mode lives in `app_settings`; the shared API key
 * lives in `app_secrets` (service-role only), with env as fallback.
 * Central/platform keys use a configurable OpenAI-compatible base URL
 * (default FreeModel). Never return raw key material to clients.
 */
import { createClient } from "@/lib/supabase/server";
import { createAdminClient, isSupabaseAdminConfigured } from "@/lib/supabase/admin";
import { getRequestAiKey, isValidAiKey } from "@/lib/ai/mistral";
import {
  AI_API_BASE_URL_SETTING,
  AI_API_MODEL_SETTING,
  AI_KEY_MODE_SETTING,
  DEFAULT_PLATFORM_AI_BASE_URL,
  DEFAULT_PLATFORM_AI_MODEL,
  parseAiKeyModeFromUnknown,
  type AiKeyMode,
} from "@/lib/ai/aiKeyModes";
import type { Json } from "@/types/supabase";

export {
  AI_KEY_MODES,
  AI_KEY_MODE_SETTING,
  AI_API_BASE_URL_SETTING,
  AI_API_MODEL_SETTING,
  DEFAULT_PLATFORM_AI_BASE_URL,
  DEFAULT_PLATFORM_AI_MODEL,
  isAiKeyMode,
  type AiKeyMode,
} from "@/lib/ai/aiKeyModes";

/** `app_secrets.key` for the shared / central API key. */
export const PLATFORM_AI_KEY_SECRET = "mistral_shared_api_key";

/** Credentials for a single AI request (key + optional custom server URL/model). */
export type ResolvedAiClient = {
  apiKey: string;
  /**
   * When set, the chat factory uses OpenAI-compatible Chat Completions against
   * this base URL (central FreeModel). Personal BYO keys omit this and hit
   * Mistral cloud via ChatMistralAI.
   */
  serverURL?: string;
  /** Model id for platform/central keys (e.g. `claude-sonnet-4-6`). */
  model?: string;
  source: "personal" | "platform";
};

/** Parse `{ mode }` from jsonb; defaults to personal. */
export function parseAiKeyModeValue(value: Json | null | undefined): AiKeyMode {
  return parseAiKeyModeFromUnknown(value);
}

/** Last-4 hint for admin UI — never the full key. */
export function aiKeyHint(key: string): string {
  const trimmed = key.trim();
  if (trimmed.length < 4) return "••••";
  return `••••${trimmed.slice(-4)}`;
}

function envPlatformAiKey(): string | null {
  const key =
    process.env.MISTRAL_SHARED_API_KEY?.trim() ||
    process.env.MISTRAL_API_KEY?.trim() ||
    null;
  return isValidAiKey(key) ? key : null;
}

function normalizeBaseUrl(raw: string): string | null {
  const trimmed = raw.trim().replace(/\/+$/, "");
  if (!trimmed) return null;
  try {
    const u = new URL(trimmed);
    if (u.protocol !== "https:" && u.protocol !== "http:") return null;
    return u.origin + (u.pathname === "/" ? "" : u.pathname.replace(/\/+$/, ""));
  } catch {
    return null;
  }
}

function envPlatformAiBaseUrl(): string | null {
  const fromEnv =
    process.env.AI_API_BASE_URL?.trim() ||
    process.env.MISTRAL_SERVER_URL?.trim() ||
    null;
  return fromEnv ? normalizeBaseUrl(fromEnv) : null;
}

function parseAiApiBaseUrlValue(value: Json | null | undefined): string | null {
  if (!value || typeof value !== "object" || Array.isArray(value)) return null;
  const url = (value as { url?: unknown }).url;
  if (typeof url !== "string") return null;
  return normalizeBaseUrl(url);
}

function normalizeModelId(raw: string): string | null {
  const trimmed = raw.trim();
  if (!trimmed || trimmed.length > 128) return null;
  if (!/^[A-Za-z0-9_./:-]+$/.test(trimmed)) return null;
  return trimmed;
}

function envPlatformAiModel(): string | null {
  const fromEnv = process.env.AI_API_MODEL?.trim() || null;
  return fromEnv ? normalizeModelId(fromEnv) : null;
}

function parseAiApiModelValue(value: Json | null | undefined): string | null {
  if (!value || typeof value !== "object" || Array.isArray(value)) return null;
  const model = (value as { model?: unknown }).model;
  if (typeof model !== "string") return null;
  return normalizeModelId(model);
}

/**
 * Base URL for the platform/central key (FreeModel by default).
 * Prefer `app_settings.ai_api_base_url`, then env, then hardcoded default.
 */
export async function getPlatformAiBaseUrl(): Promise<string> {
  if (isSupabaseAdminConfigured()) {
    try {
      const admin = createAdminClient();
      const { data, error } = await admin
        .from("app_settings")
        .select("value")
        .eq("key", AI_API_BASE_URL_SETTING)
        .maybeSingle();
      if (!error && data) {
        const fromDb = parseAiApiBaseUrlValue(data.value);
        if (fromDb) return fromDb;
      }
    } catch {
      /* fall through */
    }
  }
  return envPlatformAiBaseUrl() ?? DEFAULT_PLATFORM_AI_BASE_URL;
}

/**
 * Model id for the platform/central key (Claude Sonnet 4.6 by default).
 * Prefer `app_settings.ai_api_model`, then env, then hardcoded default.
 */
export async function getPlatformAiModel(): Promise<string> {
  if (isSupabaseAdminConfigured()) {
    try {
      const admin = createAdminClient();
      const { data, error } = await admin
        .from("app_settings")
        .select("value")
        .eq("key", AI_API_MODEL_SETTING)
        .maybeSingle();
      if (!error && data) {
        const fromDb = parseAiApiModelValue(data.value);
        if (fromDb) return fromDb;
      }
    } catch {
      /* fall through */
    }
  }
  return envPlatformAiModel() ?? DEFAULT_PLATFORM_AI_MODEL;
}

/** Persist platform API base URL (service role / admin). */
export async function upsertPlatformAiBaseUrl(
  url: string,
  updatedBy: string,
): Promise<{ ok: true; url: string } | { ok: false; error: string }> {
  const normalized = normalizeBaseUrl(url);
  if (!normalized) {
    return { ok: false, error: "Invalid API base URL" };
  }
  if (!isSupabaseAdminConfigured()) {
    return { ok: false, error: "Admin data access is not configured" };
  }
  const admin = createAdminClient();
  const now = new Date().toISOString();
  const { error } = await admin.from("app_settings").upsert(
    {
      key: AI_API_BASE_URL_SETTING,
      value: { url: normalized },
      updated_at: now,
      updated_by: updatedBy,
    },
    { onConflict: "key" },
  );
  if (error) {
    console.error("[keyPolicy] upsertPlatformAiBaseUrl failed:", error);
    return { ok: false, error: "Could not save API base URL" };
  }
  return { ok: true, url: normalized };
}

/** Persist platform model id (service role / admin). */
export async function upsertPlatformAiModel(
  model: string,
  updatedBy: string,
): Promise<{ ok: true; model: string } | { ok: false; error: string }> {
  const normalized = normalizeModelId(model);
  if (!normalized) {
    return { ok: false, error: "Invalid model id" };
  }
  if (!isSupabaseAdminConfigured()) {
    return { ok: false, error: "Admin data access is not configured" };
  }
  const admin = createAdminClient();
  const now = new Date().toISOString();
  const { error } = await admin.from("app_settings").upsert(
    {
      key: AI_API_MODEL_SETTING,
      value: { model: normalized },
      updated_at: now,
      updated_by: updatedBy,
    },
    { onConflict: "key" },
  );
  if (error) {
    console.error("[keyPolicy] upsertPlatformAiModel failed:", error);
    return { ok: false, error: "Could not save model id" };
  }
  return { ok: true, model: normalized };
}

/**
 * Read shared key from `app_secrets` via service role.
 * Returns null when admin client is unavailable or row missing/invalid.
 */
export async function getDbPlatformAiKey(): Promise<{
  key: string | null;
  hint: string | null;
}> {
  if (!isSupabaseAdminConfigured()) {
    return { key: null, hint: null };
  }
  try {
    const admin = createAdminClient();
    const { data, error } = await admin
      .from("app_secrets")
      .select("value, hint")
      .eq("key", PLATFORM_AI_KEY_SECRET)
      .maybeSingle();
    if (error || !data?.value) {
      return { key: null, hint: data?.hint ?? null };
    }
    const trimmed = data.value.trim();
    if (!isValidAiKey(trimmed)) {
      return { key: null, hint: data.hint ?? null };
    }
    return {
      key: trimmed,
      hint: data.hint ?? aiKeyHint(trimmed),
    };
  } catch {
    return { key: null, hint: null };
  }
}

/**
 * Server-only shared API key. Prefer DB (`app_secrets`); fall back to
 * MISTRAL_SHARED_API_KEY / MISTRAL_API_KEY. Never expose via NEXT_PUBLIC_*.
 */
export async function getPlatformAiKey(): Promise<string | null> {
  const fromDb = await getDbPlatformAiKey();
  if (fromDb.key) return fromDb.key;
  return envPlatformAiKey();
}

export async function isPlatformAiKeyConfigured(): Promise<boolean> {
  return (await getPlatformAiKey()) !== null;
}

/** Admin meta: configured flag + masked hint (DB or env). Never the raw key. */
export async function getPlatformAiKeyAdminMeta(): Promise<{
  platformKeyConfigured: boolean;
  keyHint: string | null;
  source: "database" | "env" | null;
  apiBaseUrl: string;
  model: string;
}> {
  const [apiBaseUrl, model] = await Promise.all([
    getPlatformAiBaseUrl(),
    getPlatformAiModel(),
  ]);
  const fromDb = await getDbPlatformAiKey();
  if (fromDb.key) {
    return {
      platformKeyConfigured: true,
      keyHint: fromDb.hint,
      source: "database",
      apiBaseUrl,
      model,
    };
  }
  const envKey = envPlatformAiKey();
  if (envKey) {
    return {
      platformKeyConfigured: true,
      keyHint: aiKeyHint(envKey),
      source: "env",
      apiBaseUrl,
      model,
    };
  }
  return {
    platformKeyConfigured: false,
    keyHint: fromDb.hint,
    source: null,
    apiBaseUrl,
    model,
  };
}

/** Persist shared key (service role). Stores hint = last 4 chars. */
export async function upsertPlatformAiKey(
  apiKey: string,
  updatedBy: string,
): Promise<{ ok: true; hint: string } | { ok: false; error: string }> {
  if (!isValidAiKey(apiKey)) {
    return { ok: false, error: "Invalid API key" };
  }
  if (!isSupabaseAdminConfigured()) {
    return { ok: false, error: "Admin data access is not configured" };
  }
  const trimmed = apiKey.trim();
  const hint = aiKeyHint(trimmed);
  const admin = createAdminClient();
  const now = new Date().toISOString();
  const { error } = await admin.from("app_secrets").upsert(
    {
      key: PLATFORM_AI_KEY_SECRET,
      value: trimmed,
      hint,
      updated_at: now,
      updated_by: updatedBy,
    },
    { onConflict: "key" },
  );
  if (error) {
    console.error("[keyPolicy] upsertPlatformAiKey failed:", error);
    return { ok: false, error: "Could not save API key" };
  }
  return { ok: true, hint };
}

/**
 * Read mode via the caller's session (RLS: authenticated SELECT).
 * If the session read fails/returns null, fall back to service-role so
 * `/api/ai/key-mode` and `resolveAiClient` do not falsely report `personal`
 * when central mode is on.
 */
export async function getAiKeyMode(): Promise<AiKeyMode> {
  try {
    const supabase = await createClient();
    const { data, error } = await supabase
      .from("app_settings")
      .select("value")
      .eq("key", AI_KEY_MODE_SETTING)
      .maybeSingle();
    if (!error && data) {
      return parseAiKeyModeValue(data.value);
    }
  } catch {
    /* fall through to admin */
  }

  if (isSupabaseAdminConfigured()) {
    try {
      const admin = await getAiKeyModeAdmin();
      return admin.mode;
    } catch {
      /* fail closed */
    }
  }
  return "personal";
}

/** Admin / service-role read (bypasses RLS). */
export async function getAiKeyModeAdmin(): Promise<{
  mode: AiKeyMode;
  updatedAt: string | null;
  updatedBy: string | null;
}> {
  if (!isSupabaseAdminConfigured()) {
    return { mode: "personal", updatedAt: null, updatedBy: null };
  }
  const admin = createAdminClient();
  const { data, error } = await admin
    .from("app_settings")
    .select("value, updated_at, updated_by")
    .eq("key", AI_KEY_MODE_SETTING)
    .maybeSingle();
  if (error || !data) {
    return { mode: "personal", updatedAt: null, updatedBy: null };
  }
  return {
    mode: parseAiKeyModeValue(data.value),
    updatedAt: data.updated_at,
    updatedBy: data.updated_by,
  };
}

async function platformClient(): Promise<ResolvedAiClient | null> {
  const apiKey = await getPlatformAiKey();
  if (!apiKey) return null;
  const [serverURL, model] = await Promise.all([
    getPlatformAiBaseUrl(),
    getPlatformAiModel(),
  ]);
  return { apiKey, serverURL, model, source: "platform" };
}

/**
 * Resolve which AI credentials to use for this request.
 * - personal: header only (BYO → Mistral cloud, no custom serverURL)
 * - global: prefer personal header; else platform key + FreeModel base URL
 * - platform_only: platform key + FreeModel base URL only (authenticated)
 */
export async function resolveAiClient(
  req: Request,
  user: { id: string } | null | undefined,
): Promise<ResolvedAiClient | null> {
  const personal = getRequestAiKey(req);
  const mode = await getAiKeyMode();

  if (mode === "personal") {
    return personal
      ? { apiKey: personal, source: "personal" }
      : null;
  }

  if (mode === "platform_only") {
    if (!user?.id) return null;
    return platformClient();
  }

  // global (central / shared)
  if (personal) {
    return { apiKey: personal, source: "personal" };
  }
  if (!user?.id) return null;
  return platformClient();
}

/**
 * Resolve which API key string to use (key only — no `serverURL` / model).
 * Do **not** pass this string into `createChatModel` / `complete` for central
 * mode: FreeModel requires `resolveAiClient` so `serverURL` selects ChatOpenAI.
 * Prefer `resolveAiClient` in all generative AI routes.
 */
export async function resolveAiKey(
  req: Request,
  user: { id: string } | null | undefined,
): Promise<string | null> {
  const client = await resolveAiClient(req, user);
  return client?.apiKey ?? null;
}
