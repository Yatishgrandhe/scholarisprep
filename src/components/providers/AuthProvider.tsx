"use client";

import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useRef,
  useState,
  type ReactNode,
} from "react";
import type { AuthChangeEvent, User } from "@supabase/supabase-js";
import { createClient } from "@/lib/supabase/client";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import {
  clearStoredAccount,
  getStoredAccount,
  saveStoredAccount,
  subscribeStoredAccount,
  type StoredAccount,
  type StoredAccountInput,
} from "@/lib/dashboard/userPreferences";
import { useSubjectStore } from "@/stores/subjectStore";
import type { ExamType, Profile } from "@/types/supabase";

function buildStoredAccountInput(
  authUser: User,
  profile: Profile | null,
  cached: StoredAccount | null,
  activeExam: ExamType | null,
  lastLoginAt?: string,
): StoredAccountInput {
  const sameUser = cached?.id === authUser.id;

  return {
    id: authUser.id,
    email: authUser.email ?? "",
    displayName: profile?.full_name ?? (sameUser ? cached?.displayName ?? null : null),
    avatarUrl: profile?.avatar_url ?? (sameUser ? cached?.avatarUrl ?? null : null),
    activeExam:
      activeExam ??
      profile?.exam_goal ??
      (sameUser ? cached?.activeExam ?? null : null),
    lastLoginAt:
      lastLoginAt ??
      (sameUser ? cached?.lastLoginAt ?? new Date().toISOString() : new Date().toISOString()),
  };
}

type AuthContextValue = {
  user: User | null;
  profile: Profile | null;
  loading: boolean;
  signOut: () => Promise<void>;
  supabase: ReturnType<typeof createClient>;
  refreshProfile: (userId: string, authUser?: User) => Promise<Profile | null>;
  storedAccount: StoredAccount | null;
  displayName: string | null;
  displayEmail: string;
  displayAvatarUrl: string | null;
};

const AuthContext = createContext<AuthContextValue | null>(null);

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<User | null>(null);
  const [profile, setProfile] = useState<Profile | null>(null);
  const [loading, setLoading] = useState(true);
  // MUST start null so the first client render matches the server (which has no
  // localStorage). Reading getStoredAccount() in the initializer made the cached
  // name/avatar appear on the client's first render but NOT the server's — a
  // hydration mismatch in the dashboard sidebar (server "?" vs client "T") that
  // made React throw away and regenerate the whole tree (and crash on
  // `parentNode`), which is what blanked pages. The real cached value is filled
  // in right after mount by the effect below.
  const [storedAccount, setStoredAccount] = useState<StoredAccount | null>(null);
  const supabase = createClient();
  const initCompleteRef = useRef(false);

  useEffect(() => {
    // Hydrate the cached account AFTER mount (post-hydration), then keep it in
    // sync with other tabs / later writes.
    setStoredAccount(getStoredAccount());
    return subscribeStoredAccount(setStoredAccount);
  }, []);

  const persistAccount = useCallback((account: StoredAccountInput) => {
    saveStoredAccount(account);
  }, []);

  // Keep the `user` REFERENCE stable across same-id updates. Supabase fires
  // setUser many times for the same person (INITIAL_SESSION, the init below,
  // TOKEN_REFRESHED, and every focus/visibility re-validation), each with a
  // brand-new User object. Any consumer effect keyed on `user` (e.g. the
  // SubjectSwitcher subject loader) would then re-run and re-fetch on every one
  // of those — a request storm that hammers /auth + /profiles + /subjects dozens
  // of times per navigation. Returning the previous object when the id is
  // unchanged means those effects fire exactly once per real sign-in.
  const setUserStable = useCallback((next: User | null) => {
    setUser((prev) => (prev?.id === (next?.id ?? null) ? prev : next));
  }, []);

  // Collapse concurrent profile fetches for the same user into ONE round-trip.
  // INITIAL_SESSION, the init IIFE, and (in dev) StrictMode's double-mount all
  // call fetchProfile near-simultaneously; without this they'd each issue a
  // separate /profiles request.
  const profileInflightRef = useRef<{
    userId: string;
    promise: Promise<Profile | null>;
  } | null>(null);

  const fetchProfile = useCallback(
    async (userId: string, authUser?: User) => {
      const existing = profileInflightRef.current;
      if (existing && existing.userId === userId) return existing.promise;

      const promise = (async () => {
        const { data } = await supabase
          .from("profiles")
          .select("*")
          .eq("id", userId)
          .single();

        setProfile(data);

        const resolvedUser =
          authUser ?? (await supabase.auth.getUser()).data.user;

        if (resolvedUser?.id === userId) {
          const activeExam = useSubjectStore.getState().activeSubject;
          persistAccount(
            buildStoredAccountInput(
              resolvedUser,
              data,
              getStoredAccount(),
              activeExam,
            ),
          );
        }

        return data;
      })();

      profileInflightRef.current = { userId, promise };
      try {
        return await promise;
      } finally {
        if (profileInflightRef.current?.promise === promise) {
          profileInflightRef.current = null;
        }
      }
    },
    [supabase, persistAccount],
  );

  useEffect(() => {
    let mounted = true;

    const handleAuthUser = async (
      nextUser: User,
      event: AuthChangeEvent,
      cached: StoredAccount | null,
    ) => {
      if (cached && cached.id !== nextUser.id) {
        clearStoredAccount();
      }

      const activeExam = useSubjectStore.getState().activeSubject;
      const refreshLogin =
        event === "SIGNED_IN" ||
        event === "INITIAL_SESSION" ||
        event === "TOKEN_REFRESHED";

      persistAccount(
        buildStoredAccountInput(
          nextUser,
          null,
          cached?.id === nextUser.id ? cached : null,
          activeExam,
          refreshLogin ? new Date().toISOString() : undefined,
        ),
      );

      await fetchProfile(nextUser.id, nextUser);
    };

    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (!mounted) return;

      const nextUser = session?.user ?? null;
      setUserStable(nextUser);

      // CRITICAL: Supabase holds its auth lock while emitting this event, so
      // calling ANY Supabase method (the profiles query, getUser, refresh…)
      // synchronously inside this callback can deadlock that lock. The lock is
      // shared across every open tab of this origin (navigator LockManager), so
      // one stuck callback hangs auth + every DB query in all tabs — the whole
      // app stops loading data ("Preparing questions…" freeze, blank profile).
      // Defer all Supabase work to a fresh task so the lock is released first.
      // (Profile fetches are also wrapped so a failed query never strands the
      // app on a spinner.)
      setTimeout(() => {
        void (async () => {
          if (!mounted) return;
          try {
            if (nextUser) {
              await handleAuthUser(nextUser, event, getStoredAccount());
            } else if (event === "SIGNED_OUT") {
              setProfile(null);
              clearStoredAccount();
            }
          } catch (err) {
            console.error("[AuthProvider] auth state change handler failed:", err);
          } finally {
            if (mounted && initCompleteRef.current) {
              setLoading(false);
            }
          }
        })();
      }, 0);
    });

    void (async () => {
      try {
        // Ensure the token is actually valid (refreshing it — and the cookie —
        // when stale), not just present in local storage. Without this, a reopen
        // or long-idle tab starts with an expired access token, so the first
        // queries fail RLS and server /api routes 401 until a manual refresh.
        const session = await ensureFreshSession(supabase);

        if (!mounted) return;

        const currentUser = session?.user ?? null;
        setUserStable(currentUser);

        if (currentUser) {
          const cached = getStoredAccount();
          await handleAuthUser(currentUser, "INITIAL_SESSION", cached);
        }
      } catch (err) {
        console.error("[AuthProvider] initialization failed:", err);
      } finally {
        // CRITICAL: always resolve loading, even if getSession / profile fetch
        // throws — otherwise authLoading stays true forever and every
        // auth-gated screen (e.g. the Question Bank) is stuck "Preparing…".
        if (mounted) {
          initCompleteRef.current = true;
          setLoading(false);
        }
      }
    })();

    return () => {
      mounted = false;
      subscription.unsubscribe();
    };
  }, [supabase, fetchProfile, persistAccount, setUserStable]);

  // Re-validate the session whenever the tab is re-activated or the network
  // comes back. A token that expired while the tab was hidden/closed gets
  // refreshed here (which rewrites the cookie), so the very next interaction —
  // loading chats, calling an /api route — already has a valid session instead
  // of failing until the user manually refreshes. A successful refresh fires
  // onAuthStateChange("TOKEN_REFRESHED"), which updates `user` and re-triggers
  // any auth-dependent loaders.
  useEffect(() => {
    const refresh = () => {
      void ensureFreshSession(supabase);
    };
    const onVisibility = () => {
      if (document.visibilityState === "visible") refresh();
    };
    window.addEventListener("focus", refresh);
    window.addEventListener("online", refresh);
    document.addEventListener("visibilitychange", onVisibility);
    return () => {
      window.removeEventListener("focus", refresh);
      window.removeEventListener("online", refresh);
      document.removeEventListener("visibilitychange", onVisibility);
    };
  }, [supabase]);

  const signOut = useCallback(async () => {
    clearStoredAccount();
    // scope: "local" clears the session cookie immediately with NO network
    // round-trip. The default "global" scope calls the auth server to revoke,
    // which can hang/fail and leave the cookie in place — so the redirect to
    // /auth/login would get bounced straight back to the dashboard.
    try {
      await supabase.auth.signOut({ scope: "local" });
    } catch {
      /* ignore — cookie is cleared locally regardless */
    }
    setUser(null);
    setProfile(null);
  }, [supabase]);

  const displayName = profile?.full_name ?? storedAccount?.displayName ?? null;
  const displayEmail = user?.email ?? storedAccount?.email ?? "";
  const displayAvatarUrl = profile?.avatar_url ?? storedAccount?.avatarUrl ?? null;

  const value: AuthContextValue = {
    user,
    profile,
    loading,
    signOut,
    supabase,
    refreshProfile: fetchProfile,
    storedAccount,
    displayName,
    displayEmail,
    displayAvatarUrl,
  };

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuthContext(): AuthContextValue {
  const ctx = useContext(AuthContext);
  if (!ctx) {
    throw new Error("useAuth must be used within AuthProvider");
  }
  return ctx;
}
