"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import styles from "../onboarding.module.css";

// Scholaris is student-only for self-serve signup. New accounts already get
// role=student from handle_new_user / column default — do not force-update
// here, or elevated roles (platform_admin, creator, org_admin) get demoted
// whenever middleware sends a user through this path.
export default function OnboardingRolePage() {
  const router = useRouter();
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const supabase = createClient();
    let cancelled = false;

    (async () => {
      const {
        data: { user },
      } = await supabase.auth.getUser();
      if (!user) {
        if (!cancelled) router.replace("/auth/login");
        return;
      }

      const { data: profile, error: profileError } = await supabase
        .from("profiles")
        .select("role")
        .eq("id", user.id)
        .maybeSingle();

      if (profileError) {
        if (!cancelled) setError(profileError.message);
        return;
      }

      // Only backfill student for brand-new rows missing a role; never demote.
      if (!profile?.role) {
        const { error: updateError } = await supabase
          .from("profiles")
          .update({ role: "student" })
          .eq("id", user.id);
        if (updateError) {
          if (!cancelled) setError(updateError.message);
          return;
        }
      }

      if (!cancelled) {
        router.replace("/onboarding/exam");
        router.refresh();
      }
    })();

    return () => {
      cancelled = true;
    };
  }, [router]);

  return (
    <>
      <h1 className={styles.title}>Setting up your account…</h1>
      <p className={styles.subtitle}>
        One moment while we get your student dashboard ready.
      </p>
      {error && (
        <p className={styles.fieldError} style={{ textAlign: "center" }}>
          {error}
        </p>
      )}
    </>
  );
}
