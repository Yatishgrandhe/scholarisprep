import type { Session, SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";

type Client = SupabaseClient<Database>;

// Refresh when the access token is expired or within this window of expiring.
const REFRESH_SKEW_MS = 120_000; // 2 minutes

// Dedupe concurrent refreshes — several loaders fire on mount; they should
// share ONE refresh round-trip, not stampede the auth server.
let inflight: Promise<Session | null> | null = null;

/**
 * Guarantee a non-stale Supabase session before doing auth-dependent work.
 *
 * Why this exists: `@supabase/ssr` keeps the session in cookies. `getSession()`
 * only reads local storage (the "validated locally" part), so right after a
 * reopen / long idle / client-side navigation the access token can be expired.
 * Queries then fail RLS (empty results) and — because middleware does NOT run
 * for `/api/*` — server route handlers read a stale cookie and 401.
 *
 * Calling `refreshSession()` on the browser client both mints a fresh access
 * token AND writes it back to the cookies, so subsequent client queries and
 * server API routes all see a valid session without a manual page refresh.
 *
 * Returns the fresh session, the still-valid existing session, or null when the
 * user genuinely has no session (truly signed out).
 */
export async function ensureFreshSession(supabase: Client): Promise<Session | null> {
  const {
    data: { session },
  } = await supabase.auth.getSession();

  if (!session) return null;

  const expiresAtMs = (session.expires_at ?? 0) * 1000;
  if (expiresAtMs - Date.now() > REFRESH_SKEW_MS) {
    return session; // still comfortably valid — no network call needed
  }

  if (!inflight) {
    inflight = supabase.auth
      .refreshSession()
      .then(({ data, error }) => {
        if (error) {
          // Refresh failed (e.g. revoked refresh token). Fall back to whatever
          // we have; callers/onAuthStateChange handle a real sign-out.
          return session;
        }
        return data.session ?? session;
      })
      .catch(() => session)
      .finally(() => {
        inflight = null;
      });
  }

  return inflight;
}
