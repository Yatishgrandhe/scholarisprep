/**
 * Browser client for `/api/admin/ai-key-policy`.
 * Never sends an empty/partial `apiKey` — omit the field to keep the existing
 * production central key untouched.
 */
import type { AiKeyMode } from "@/lib/ai/aiKeyModes";

export type AiKeyPolicyResponse = {
  mode: AiKeyMode;
  platformKeyConfigured: boolean;
  keyHint?: string | null;
  keySource?: "database" | "env" | null;
  apiBaseUrl?: string;
  model?: string;
  updatedAt: string | null;
};

export type AiKeyPolicyError = {
  status: number;
  message: string;
};

export type AiKeyPolicyResult =
  | { ok: true; data: AiKeyPolicyResponse }
  | { ok: false; error: AiKeyPolicyError };

export type AiKeyPolicyPatch = {
  mode: AiKeyMode;
  /** Only set when the admin pastes a full replacement key. */
  apiKey?: string;
  apiBaseUrl?: string;
  model?: string;
};

const POLICY_PATH = "/api/admin/ai-key-policy";

/** Masked hints and short fragments must never be PATCH'd as a new key. */
function isSafeReplacementKey(raw: string): boolean {
  const trimmed = raw.trim();
  if (trimmed.length < 20) return false;
  if (/^•/.test(trimmed) || /•{2,}/.test(trimmed)) return false;
  if (/^\*{3,}/.test(trimmed) || /^x{4,}/i.test(trimmed)) return false;
  return true;
}

async function readError(
  res: Response,
  fallback: string,
): Promise<AiKeyPolicyError> {
  const err = (await res.json().catch(() => ({}))) as { error?: string };
  if (res.status === 401 || res.status === 403) {
    return {
      status: res.status,
      message:
        err.error ??
        "Sign in as platform_admin to manage AI key policy.",
    };
  }
  return {
    status: res.status,
    message: err.error ?? fallback,
  };
}

export async function fetchAiKeyPolicy(): Promise<AiKeyPolicyResult> {
  try {
    const res = await fetch(POLICY_PATH, { credentials: "same-origin" });
    if (!res.ok) {
      return {
        ok: false,
        error: await readError(
          res,
          `Could not load AI key policy (${res.status})`,
        ),
      };
    }
    const data = (await res.json()) as AiKeyPolicyResponse;
    return { ok: true, data };
  } catch {
    return {
      ok: false,
      error: { status: 0, message: "Network error loading AI key policy" },
    };
  }
}

/**
 * PATCH policy. Omits `apiKey` unless a full replacement key is provided —
 * blank / hint / short values are dropped so the DB secret is never wiped.
 */
export async function patchAiKeyPolicy(
  patch: AiKeyPolicyPatch,
): Promise<AiKeyPolicyResult> {
  const body: AiKeyPolicyPatch = { mode: patch.mode };

  if (patch.apiKey !== undefined) {
    const trimmed = patch.apiKey.trim();
    if (isSafeReplacementKey(trimmed)) {
      body.apiKey = trimmed;
    }
    // else: intentionally omit — keep existing central key
  }

  if (patch.apiBaseUrl?.trim()) {
    body.apiBaseUrl = patch.apiBaseUrl.trim();
  }
  if (patch.model?.trim()) {
    body.model = patch.model.trim();
  }

  try {
    const res = await fetch(POLICY_PATH, {
      method: "PATCH",
      credentials: "same-origin",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
    });
    if (!res.ok) {
      return {
        ok: false,
        error: await readError(
          res,
          res.status === 401 || res.status === 403
            ? "platform_admin required (or CSRF Origin mismatch)."
            : "Could not save policy",
        ),
      };
    }
    const data = (await res.json()) as AiKeyPolicyResponse;
    return { ok: true, data };
  } catch {
    return {
      ok: false,
      error: { status: 0, message: "Network error saving policy" },
    };
  }
}
