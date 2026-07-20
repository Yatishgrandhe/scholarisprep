import { createBrowserClient } from "@supabase/ssr";
import type { Database } from "@/types/supabase";

/**
 * Single shared browser Supabase client.
 *
 * IMPORTANT: this MUST be a singleton. Previously createClient() returned a NEW
 * client on every call, so every component render produced a fresh instance.
 * AuthProvider stores the client and lists it in its auth effect's dependency
 * array (and in fetchProfile's deps), so a new identity each render made that
 * effect tear down and re-subscribe on a loop — firing /auth/v1/user and
 * /profiles dozens of times per second. That churn changed the `user` reference
 * constantly, which re-fired the practice session loader forever and left the
 * UI stuck on "Preparing questions...". Returning one cached instance keeps the
 * client identity stable so those effects run exactly once.
 */
let browserClient: ReturnType<typeof createBrowserClient<Database>> | null = null;

function makeClient() {
  return createBrowserClient<Database>(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
  );
}

export function createClient() {
  // Only cache in the browser. On the server, module state is shared across all
  // requests/users, so a cached client would leak between them — return a fresh
  // one for each server render instead.
  if (typeof window === "undefined") return makeClient();
  if (!browserClient) browserClient = makeClient();
  return browserClient;
}
