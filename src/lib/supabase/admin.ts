import { createClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";

function readTrimmed(name: string): string | undefined {
  const value = process.env[name];
  if (typeof value !== "string") return undefined;
  const trimmed = value.trim();
  return trimmed.length > 0 ? trimmed : undefined;
}

/** True when the value looks like a usable Supabase service_role JWT. */
export function isServiceRoleKey(value: string | undefined): boolean {
  if (!value) return false;
  if (value.startsWith("placeholder")) return false;
  const parts = value.split(".");
  if (parts.length !== 3 || !parts[1]) return false;
  try {
    const b64 = parts[1].replace(/-/g, "+").replace(/_/g, "/");
    const padded = b64 + "=".repeat((4 - (b64.length % 4)) % 4);
    const json =
      typeof atob === "function"
        ? atob(padded)
        : Buffer.from(parts[1], "base64url").toString("utf8");
    const payload = JSON.parse(json) as { role?: string };
    return payload.role === "service_role";
  } catch {
    return false;
  }
}

export function createAdminClient() {
  const url = readTrimmed("NEXT_PUBLIC_SUPABASE_URL");
  const serviceKey = readTrimmed("SUPABASE_SERVICE_ROLE_KEY");

  if (!url || !isServiceRoleKey(serviceKey)) {
    throw new Error("Supabase admin client is not configured");
  }

  return createClient<Database>(url, serviceKey!, {
    auth: {
      autoRefreshToken: false,
      persistSession: false,
    },
  });
}

export function isSupabaseAdminConfigured(): boolean {
  return Boolean(
    readTrimmed("NEXT_PUBLIC_SUPABASE_URL") &&
      isServiceRoleKey(readTrimmed("SUPABASE_SERVICE_ROLE_KEY")),
  );
}
