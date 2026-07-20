import { NextResponse, type NextRequest } from "next/server";
import {
  isPlatformAdminRole,
  resolveIsPlatformAdmin,
  resolveSessionRole,
} from "@/lib/admin/platform-admin";
import { roleHome } from "@/lib/auth/roleHome";
import { updateSession } from "@/lib/supabase/middleware";
import type { UserRole } from "@/types/supabase";

const PROTECTED_PREFIXES = ["/dashboard", "/creator", "/org", "/admin"];
const AUTH_PREFIX = "/auth";
const ONBOARDING_PREFIX = "/onboarding";

function isProtected(pathname: string): boolean {
  return PROTECTED_PREFIXES.some(
    (prefix) => pathname === prefix || pathname.startsWith(`${prefix}/`),
  );
}

function isAuthRoute(pathname: string): boolean {
  return pathname === AUTH_PREFIX || pathname.startsWith(`${AUTH_PREFIX}/`);
}

/** Auth routes signed-in users may stay on (password recovery / sign-out). */
function isAuthAllowWhenSignedIn(pathname: string): boolean {
  return (
    pathname === "/auth/signout" ||
    pathname === "/auth/reset-password" ||
    pathname === "/auth/confirm" ||
    pathname.startsWith("/auth/confirm/") ||
    pathname === "/auth/callback" ||
    pathname.startsWith("/auth/callback/")
  );
}

function isOnboardingRoute(pathname: string): boolean {
  return (
    pathname === ONBOARDING_PREFIX ||
    pathname.startsWith(`${ONBOARDING_PREFIX}/`)
  );
}

/** Preserve session refresh cookies when issuing a middleware redirect. */
function redirectWithSession(
  url: URL,
  supabaseResponse: NextResponse,
): NextResponse {
  const redirect = NextResponse.redirect(url);
  // Pass the full ResponseCookie (path/httpOnly/secure/sameSite/maxAge).
  // Name+value only drops attrs and can break the session after redirects.
  supabaseResponse.cookies.getAll().forEach((cookie) => {
    redirect.cookies.set(cookie);
  });
  return redirect;
}

export async function middleware(request: NextRequest) {
  const { pathname } = request.nextUrl;
  // The sign-out route must always run, even for a still-authenticated user —
  // otherwise the "redirect signed-in users away from /auth/*" rule below would
  // bounce them to the dashboard before the route can clear their cookies, and
  // sign-out would silently do nothing. Pass through with a clean response so
  // updateSession's token refresh can't re-set a cookie that competes with the
  // route handler's cookie-clear.
  if (pathname === "/auth/signout") {
    return NextResponse.next({ request });
  }

  const { supabaseResponse, user, supabase } = await updateSession(request);

  if (isProtected(pathname) || isAuthRoute(pathname) || isOnboardingRoute(pathname)) {
    if (!user && (isProtected(pathname) || isOnboardingRoute(pathname))) {
      const loginUrl = request.nextUrl.clone();
      loginUrl.pathname = "/auth/login";
      loginUrl.searchParams.set("redirectTo", pathname);
      return redirectWithSession(loginUrl, supabaseResponse);
    }

    if (user) {
      const { data: profile } = await supabase
        .from("profiles")
        .select("role, onboarding_completed")
        .eq("id", user.id)
        .maybeSingle();

      // Never collapse a failed/missing profile read to "student" for admins —
      // that caused false /admin → /dashboard redirects.
      const role: UserRole =
        profile?.role ?? (await resolveSessionRole(supabase, user.id));
      // Platform admins skip student onboarding (including when the profile row
      // exists but onboarding_completed is null/false — that used to bounce
      // /admin → /onboarding/role before the role gate ran).
      const onboardingDone =
        isPlatformAdminRole(role) || profile?.onboarding_completed === true;

      if (isAuthRoute(pathname) && !isAuthAllowWhenSignedIn(pathname)) {
        const dest = onboardingDone ? roleHome(role) : "/onboarding/role";
        return redirectWithSession(new URL(dest, request.url), supabaseResponse);
      }

      if (!onboardingDone && !isOnboardingRoute(pathname)) {
        return redirectWithSession(
          new URL("/onboarding/role", request.url),
          supabaseResponse,
        );
      }

      if (onboardingDone && isOnboardingRoute(pathname)) {
        // Allow adding another exam program after onboarding is complete.
        const allowMultiple =
          pathname === "/onboarding/exam" &&
          ["1", "true"].includes(
            request.nextUrl.searchParams.get("allowMultiple") ?? "",
          );
        // Legacy diagnostic links redirect themselves to /dashboard/diagnostic.
        const isLegacyDiagnostic = pathname === "/onboarding/diagnostic";
        if (!allowMultiple && !isLegacyDiagnostic) {
          return redirectWithSession(
            new URL(roleHome(role), request.url),
            supabaseResponse,
          );
        }
      }

      // Exact /admin or /admin/... — use RPC-aware check (same as layout), not
      // profile.role alone, so transient profile reads don't false-bounce admins.
      const isAdminPath =
        pathname === "/admin" || pathname.startsWith("/admin/");
      if (isAdminPath) {
        const isAdmin = await resolveIsPlatformAdmin(supabase, user.id);
        if (!isAdmin) {
          return redirectWithSession(
            new URL("/dashboard", request.url),
            supabaseResponse,
          );
        }
      }

      if (pathname.startsWith("/org") && role !== "org_admin") {
        return redirectWithSession(
          new URL("/dashboard", request.url),
          supabaseResponse,
        );
      }

      if (pathname.startsWith("/creator") && role !== "creator") {
        return redirectWithSession(
          new URL("/dashboard", request.url),
          supabaseResponse,
        );
      }
    }
  }

  return supabaseResponse;
}

export const config = {
  matcher: [
    "/dashboard",
    "/dashboard/:path*",
    "/creator",
    "/creator/:path*",
    "/org",
    "/org/:path*",
    "/admin",
    "/admin/:path*",
    "/auth",
    "/auth/:path*",
    "/onboarding",
    "/onboarding/:path*",
  ],
};
