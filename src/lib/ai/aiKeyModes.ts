/** Client-safe AI key mode constants (no server imports). */

export const AI_KEY_MODES = ["personal", "global", "platform_only"] as const;
export type AiKeyMode = (typeof AI_KEY_MODES)[number];

export const AI_KEY_MODE_SETTING = "ai_key_mode";

/** `app_settings` key for the central/platform AI API base URL (JSON `{ url }`). */
export const AI_API_BASE_URL_SETTING = "ai_api_base_url";

/** `app_settings` key for the central/platform model id (JSON `{ model }`). */
export const AI_API_MODEL_SETTING = "ai_api_model";

/** Default FreeModel / OpenAI-compatible endpoint for the platform key. */
export const DEFAULT_PLATFORM_AI_BASE_URL = "https://cc.freemodel.dev";

/**
 * Default FreeModel model for central mode (Claude Sonnet 4.6).
 * OpenAI-compatible Chat Completions against cc.freemodel.dev.
 */
export const DEFAULT_PLATFORM_AI_MODEL = "claude-sonnet-4-6";

export function isAiKeyMode(value: unknown): value is AiKeyMode {
  return (
    typeof value === "string" &&
    (AI_KEY_MODES as readonly string[]).includes(value)
  );
}

export function parseAiKeyModeFromUnknown(value: unknown): AiKeyMode {
  if (!value || typeof value !== "object" || Array.isArray(value)) {
    return "personal";
  }
  const mode = (value as { mode?: unknown }).mode;
  return isAiKeyMode(mode) ? mode : "personal";
}
