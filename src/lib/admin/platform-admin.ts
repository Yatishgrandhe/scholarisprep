import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database, UserRole } from "@/types/supabase";

type AuthedClient = SupabaseClient<Database>;

/** Strict role string check used by middleware, layout, and API gates. */
export function isPlatformAdminRole(
  role: string | null | undefined,
): role is "platform_admin" {
  return role === "platform_admin";
}

/**
 * Resolve whether the signed-in user is a platform admin.
 *
 * Prefer `profiles.role` (same source as the admin UI). If that read fails or
 * returns null (transient RLS / session race), fall back to the SECURITY DEFINER
 * RPC `is_platform_admin()` so admins are not falsely bounced to /dashboard.
 * Explicit non-admin profile rows still deny (students must not pass via RPC).
 */
export async function resolveIsPlatformAdmin(
  supabase: AuthedClient,
  userId: string,
): Promise<boolean> {
  const { data: profile, error } = await supabase
    .from("profiles")
    .select("role")
    .eq("id", userId)
    .maybeSingle();

  if (!error && isPlatformAdminRole(profile?.role)) {
    return true;
  }

  // Trusted negative: profile row exists with a non-admin role.
  if (!error && profile != null && !isPlatformAdminRole(profile.role)) {
    return false;
  }

  // Profile missing or select errored — RPC avoids false /admin → /dashboard.
  const { data: rpcAdmin } = await supabase.rpc("is_platform_admin");
  return rpcAdmin === true;
}

/**
 * Role used for post-auth / onboarding home routing.
 * Same profile-first + RPC fallback so platform_admin is not collapsed to student.
 */
export async function resolveSessionRole(
  supabase: AuthedClient,
  userId: string,
): Promise<UserRole> {
  const { data: profile, error } = await supabase
    .from("profiles")
    .select("role")
    .eq("id", userId)
    .maybeSingle();

  if (!error && profile?.role) {
    return profile.role;
  }

  const { data: rpcAdmin } = await supabase.rpc("is_platform_admin");
  if (rpcAdmin === true) {
    return "platform_admin";
  }

  return (profile?.role ?? "student") as UserRole;
}
