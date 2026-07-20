import type { UserRole } from "@/types/supabase";

/** Post-login / post-auth home path for a profile role. */
export function roleHome(role: UserRole): string {
  switch (role) {
    case "creator":
      return "/creator";
    case "org_admin":
      return "/org";
    case "platform_admin":
      return "/admin";
    default:
      return "/dashboard";
  }
}

/**
 * Honor an explicit post-auth redirect, but map the default `/dashboard`
 * (and missing next) to the role-aware home so platform_admin lands on /admin.
 */
export function resolvePostAuthDestination(
  role: UserRole,
  next: string | null | undefined,
): string {
  if (next?.startsWith("/") && next !== "/dashboard") {
    return next;
  }
  return roleHome(role);
}
