import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";
import type { Database } from "@/types/supabase";

/**
 * Server-side sign-out.
 *
 * Clearing the Supabase auth cookies in the SAME HTTP response that redirects
 * to /auth/login is the only fully reliable way to sign out with
 * `@supabase/ssr`. A purely client-side `signOut()` can leave the chunked
 * `sb-*-auth-token` cookies in place just long enough for middleware to read a
 * still-valid session and bounce the user straight back to the dashboard — the
 * "Log out does nothing" bug. Here the `setAll` handler writes the cleared
 * cookies onto the redirect response, so middleware sees no user on the very
 * next request.
 */
export async function GET(request: NextRequest) {
  const response = NextResponse.redirect(new URL("/auth/login", request.url));

  const supabase = createServerClient<Database>(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll();
        },
        setAll(cookiesToSet) {
          cookiesToSet.forEach(({ name, value, options }) =>
            response.cookies.set(name, value, options),
          );
        },
      },
    },
  );

  // scope:"local" clears the cookies without a network round-trip to the auth
  // server (which can hang and is what made the old global sign-out unreliable).
  try {
    await supabase.auth.signOut({ scope: "local" });
  } catch {
    /* cookies are cleared on the response regardless */
  }

  return response;
}
