/**
 * Browser-side storage for the user's own Mistral API key.
 *
 * The key lives ONLY in this browser's localStorage — it is never sent to or
 * stored in our database. Every AI request reads it from here and forwards it
 * to the API route via the `x-ai-key` header (see `aiKeyHeaders` / `aiFetch`).
 *
 * When the platform AI key mode is `global` or `platform_only`, requests may
 * proceed without a local key — the server resolves the shared DB/env key.
 */

import {
  isAiKeyMode,
  type AiKeyMode,
} from "@/lib/ai/aiKeyModes";

/** localStorage slot holding the user's Mistral key. */
const STORAGE_KEY = "scholaris.mistralKey";

/** Header the key is forwarded to API routes on. Mirrors `AI_KEY_HEADER`. */
export const AI_KEY_HEADER = "x-ai-key";

/**
 * Window event fired when an AI feature is used on a device that has no stored
 * key. `AiKeyPrompt` listens for this and opens the "add your key" modal so the
 * user can re-enter their key on this device. Kept as a string literal (not
 * importing the server-only mistral lib) to keep this module client-safe.
 */
export const AI_KEY_REQUIRED_EVENT = "scholaris:ai-key-required";

const NO_KEY_CLIENT_MESSAGE =
  "Add your free Mistral API key to use AI features on this device.";

const MODE_CACHE_TTL_MS = 60_000;
let modeCache: { mode: AiKeyMode; at: number } | null = null;

/** Ask the UI to prompt the user to (re)enter their Mistral key. */
export function promptForAiKey(): void {
  if (typeof window === "undefined") return;
  window.dispatchEvent(new CustomEvent(AI_KEY_REQUIRED_EVENT));
}

/** The stored Mistral key for this browser, or null if none/SSR. */
export function getStoredAiKey(): string | null {
  if (typeof window === "undefined") return null;
  try {
    const key = window.localStorage.getItem(STORAGE_KEY)?.trim();
    return key && key.length > 0 ? key : null;
  } catch {
    return null;
  }
}

/** Persist the user's Mistral key to this browser. */
export function setStoredAiKey(key: string): void {
  if (typeof window === "undefined") return;
  try {
    window.localStorage.setItem(STORAGE_KEY, key.trim());
  } catch {
    /* storage disabled (private mode / quota) — nothing else to do */
  }
}

/** Remove the stored Mistral key from this browser. */
export function clearStoredAiKey(): void {
  if (typeof window === "undefined") return;
  try {
    window.localStorage.removeItem(STORAGE_KEY);
  } catch {
    /* ignore */
  }
}

/** True when a non-empty key is stored in this browser. */
export function hasStoredAiKey(): boolean {
  return getStoredAiKey() !== null;
}

/**
 * Current platform AI key mode (cached briefly). Fails closed to `personal`
 * so BYO remains the default if the endpoint is unavailable.
 */
export async function getClientAiKeyMode(): Promise<AiKeyMode> {
  if (modeCache && Date.now() - modeCache.at < MODE_CACHE_TTL_MS) {
    return modeCache.mode;
  }
  try {
    const res = await fetch("/api/ai/key-mode", { credentials: "same-origin" });
    if (res.ok) {
      const json = (await res.json()) as { mode?: unknown };
      // Accept mode only — ignore any other fields if present.
      const mode = isAiKeyMode(json.mode) ? json.mode : "personal";
      modeCache = { mode, at: Date.now() };
      return mode;
    }
  } catch {
    /* ignore — fail closed */
  }
  return "personal";
}

/** True when the server may supply a shared key (no local key required). */
export async function canUsePlatformAiKey(): Promise<boolean> {
  const mode = await getClientAiKeyMode();
  return mode === "global" || mode === "platform_only";
}

/**
 * Header object carrying the stored key, or empty when none is set.
 * Spread into a fetch `headers` for any AI endpoint:
 *   headers: { "Content-Type": "application/json", ...aiKeyHeaders() }
 */
export function aiKeyHeaders(): Record<string, string> {
  const key = getStoredAiKey();
  return key ? { [AI_KEY_HEADER]: key } : {};
}

/** `fetch` wrapper that attaches the stored Mistral key header. */
export function aiFetch(input: RequestInfo | URL, init: RequestInit = {}) {
  const headers = new Headers(init.headers);
  const key = getStoredAiKey();
  if (key) headers.set(AI_KEY_HEADER, key);

  return fetch(input, {
    ...init,
    headers,
  });
}

/**
 * The stored key, or null — and when null, prompt the user to (re)enter it
 * unless the platform mode allows a shared key.
 */
export async function requireAiKey(): Promise<string | null> {
  const key = getStoredAiKey();
  if (key) return key;
  if (await canUsePlatformAiKey()) return null;
  promptForAiKey();
  return null;
}

/**
 * `fetch` for AI endpoints. Attaches the key header when present.
 * When this device has no key and mode is `personal`, pops the key prompt and
 * returns a graceful 400. When mode is `global` / `platform_only`, still calls
 * the server so it can resolve the platform key.
 */
export async function aiRequest(
  input: RequestInfo | URL,
  init: RequestInit = {},
): Promise<Response> {
  const key = getStoredAiKey();
  if (!key) {
    const platformOk = await canUsePlatformAiKey();
    if (!platformOk) {
      promptForAiKey();
      return new Response(
        JSON.stringify({ error: NO_KEY_CLIENT_MESSAGE, code: "NO_AI_KEY" }),
        { status: 400, headers: { "content-type": "application/json" } },
      );
    }
    return fetch(input, init);
  }

  const headers = new Headers(init.headers);
  headers.set(AI_KEY_HEADER, key);

  return fetch(input, {
    ...init,
    headers,
  });
}
