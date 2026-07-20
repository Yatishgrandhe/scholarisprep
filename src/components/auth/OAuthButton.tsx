"use client";

import { useState } from "react";
import { GoogleLogo } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { getAppUrl } from "@/lib/env";
import styles from "./auth.module.css";

type OAuthButtonProps = {
  label?: string;
  /** In-app path to land on after the OAuth callback (e.g. ?redirectTo=). */
  next?: string;
};

export function OAuthButton({
  label = "Continue with Google",
  next,
}: OAuthButtonProps) {
  const [loading, setLoading] = useState(false);
  const supabase = createClient();

  const handleGoogleSignIn = async () => {
    setLoading(true);
    const appUrl = getAppUrl();
    const callbackUrl =
      next && next.startsWith("/")
        ? `${appUrl}/auth/callback?next=${encodeURIComponent(next)}`
        : `${appUrl}/auth/callback`;
    await supabase.auth.signInWithOAuth({
      provider: "google",
      options: {
        redirectTo: callbackUrl,
      },
    });
    setLoading(false);
  };

  return (
    <button
      type="button"
      className={styles.oauthButton}
      onClick={() => void handleGoogleSignIn()}
      disabled={loading}
      aria-busy={loading}
    >
      <GoogleLogo size={20} weight="bold" aria-hidden />
      {loading ? "Connecting…" : label}
    </button>
  );
}
