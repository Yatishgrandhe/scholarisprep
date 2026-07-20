/**
 * Build-time environment validation.
 * Import only from next.config.ts (Node) — do not import from Client Components.
 */

import {
  type EnvVarSpec,
  REQUIRED_PUBLIC_ENV,
  validatePublicEnv,
} from "./env";

// Only the Supabase service-role key is strictly required to build/run. AI now
// runs on each user's own Mistral key (stored in the browser, not env/DB), and every
// other integration (Resend email, YouTube course import) guards itself at the
// call site via an `isXConfigured()` check, so a missing key degrades gracefully
// instead of failing the build.
export const REQUIRED_SERVER_ENV: EnvVarSpec[] = [
  {
    name: "SUPABASE_SERVICE_ROLE_KEY",
    hint: "Supabase Dashboard → Project Settings → API → service_role secret",
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

export function validateServerEnv(): void {
  const missing = REQUIRED_SERVER_ENV.filter((spec) => !readEnv(spec.name));
  if (missing.length > 0) {
    throw new Error(formatEnvError("server", missing));
  }
}

export function validateEnv(): void {
  validatePublicEnv();
  validateServerEnv();
}
