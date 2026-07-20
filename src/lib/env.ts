/**
 * Client-safe env helpers and public (NEXT_PUBLIC_*) build validation.
 * Server secrets are validated in `env.server.ts` (imported from next.config only).
 */

export type EnvVarSpec = {
  name: string;
  hint: string;
};

/** Required at build — exposed to the browser */
export const REQUIRED_PUBLIC_ENV: EnvVarSpec[] = [
  {
    name: "NEXT_PUBLIC_SUPABASE_URL",
    hint: "Supabase Dashboard → Project Settings → API → Project URL",
  },
  {
    name: "NEXT_PUBLIC_SUPABASE_ANON_KEY",
    hint: "Supabase Dashboard → Project Settings → API → anon public key",
  },
];

function readEnv(name: string): string | undefined {
  const value = process.env[name];
  if (typeof value !== "string") return undefined;
  const trimmed = value.trim();
  return trimmed.length > 0 ? trimmed : undefined;
}

function formatEnvError(
  scope: "public" | "server",
  missing: EnvVarSpec[],
): string {
  const bulletLines = missing
    .map((v) => `  • ${v.name}\n    ${v.hint}`)
    .join("\n");

  return [
    `Scholaris: missing required ${scope} environment variable(s):`,
    bulletLines,
    "",
    "Copy scholaris/.env.example to scholaris/.env.local and set each value.",
    "See comments in .env.example for which modules consume each variable.",
  ].join("\n");
}

/** Validates NEXT_PUBLIC_* vars — safe to import from client-bound code (call only at build). */
export function validatePublicEnv(): void {
  const missing = REQUIRED_PUBLIC_ENV.filter((spec) => !readEnv(spec.name));
  if (missing.length > 0) {
    throw new Error(formatEnvError("public", missing));
  }
}

export function getAppUrl(): string {
  const url =
    process.env.NEXT_PUBLIC_APP_URL ??
    process.env.VERCEL_URL ??
    "http://localhost:3000";
  if (url.startsWith("http")) {
    return url.replace(/\/$/, "");
  }
  return `https://${url.replace(/\/$/, "")}`;
}

export function getResendFromAddress(): string {
  return (
    process.env.RESEND_FROM_EMAIL ?? "Scholaris <onboarding@resend.dev>"
  );
}

function hasAnyGeminiPoolKey(): boolean {
  const names = [
    "GOOGLE_GEMINI_API_KEY",
    "GOOGLE_GEMINI_API_KEY_1",
    "GOOGLE_GEMINI_API_KEY_2",
    "GOOGLE_GEMINI_API_KEY_3",
    "GOOGLE_GEMINI_API_KEY_4",
    "GOOGLE_GEMINI_API_KEY_5",
  ];
  return names.some((name) => Boolean(process.env[name]?.trim()));
}

export function isGeminiConfigured(): boolean {
  return hasAnyGeminiPoolKey();
}

/** True when geminiPool has at least one API key (legacy or numbered pool). */
export function isGeminiPoolConfigured(): boolean {
  return hasAnyGeminiPoolKey();
}

/**
 * True when RESEND_API_KEY looks like a real Resend key (re_…), not an
 * .env.example placeholder such as `re_...`.
 */
export function isResendConfigured(): boolean {
  const key = process.env.RESEND_API_KEY?.trim();
  if (!key) return false;
  // Placeholder / docs values that would 401 against Resend
  if (
    key === "re_..." ||
    /^re_\.+$/i.test(key) ||
    /^re_x+$/i.test(key) ||
    /placeholder|changeme|your[_-]?api[_-]?key/i.test(key)
  ) {
    return false;
  }
  // Resend keys are `re_` + a long opaque suffix
  return /^re_[A-Za-z0-9]{20,}$/.test(key);
}

export function isDesmosConfigured(): boolean {
  return Boolean(process.env.NEXT_PUBLIC_DESMOS_API_KEY?.trim());
}
