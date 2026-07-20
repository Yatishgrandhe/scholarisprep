"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import Link from "next/link";
import { Key, Sparkle } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { completeOnboarding } from "@/lib/onboarding/completeOnboarding";
import { setStoredAiKey } from "@/lib/ai/clientKey";
import { isApOrIbExam } from "@/lib/apIbCatalog";
import { tutorCtaLabel, tutorHref } from "@/lib/tutor/routes";
import { Button } from "@/components/ui/app-button";
import { useAuth } from "@/hooks/useAuth";
import type { ExamType } from "@/types/supabase";
import styles from "../onboarding.module.css";

/**
 * Final, optional onboarding step. Pasting a free Mistral key unlocks the AI
 * features (Ask Scho, explanations, study plans, recommendations); skipping
 * lets the student in right away and they can add a key later in Settings.
 *
 * Onboarding is only marked complete here (not on the exam step), so this page
 * stays reachable until the student finishes or skips it.
 */
export default function OnboardingAiKeyPage() {
  const router = useRouter();
  const supabase = createClient();
  const { profile } = useAuth();
  const primaryExam = (profile?.exam_goal ?? "SAT") as ExamType;
  const showCourseTutor = isApOrIbExam(primaryExam);
  const [keyInput, setKeyInput] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const finish = async () => {
    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (user) {
      await completeOnboarding(supabase, user.id);
    }
    router.push("/dashboard");
    router.refresh();
  };

  const handleSkip = async () => {
    setBusy(true);
    setError(null);
    try {
      await finish();
    } finally {
      setBusy(false);
    }
  };

  const handleSaveAndContinue = async () => {
    const apiKey = keyInput.trim();
    if (apiKey.length < 20) {
      setError("Enter your full Mistral key, or skip for now.");
      return;
    }
    setBusy(true);
    setError(null);
    try {
      const res = await fetch("/api/ai/verify-key", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ api_key: apiKey }),
      });
      const data = await res.json().catch(() => ({}));
      if (!res.ok || data.valid === false) {
        setError(data.error ?? "Could not verify that key.");
        return;
      }
      setStoredAiKey(apiKey);
      await finish();
    } finally {
      setBusy(false);
    }
  };

  return (
    <>
      <h1 className={styles.title}>
        <Sparkle size={24} weight="duotone" aria-hidden /> Unlock AI features
      </h1>
      <p className={styles.subtitle}>
        Add your free Mistral key to turn on Ask Scho, answer explanations,
        study plans, and recommendations.
      </p>
      <p className={styles.examSelectHint}>
        Scholaris is 100% free — and so is the key. It uses the
        {" "}
        <code>mistral-small-2506</code> model and won&apos;t cost you money.
        Your key is stored only in this browser, never on our servers. You can
        always add or change it later in Settings.
      </p>

      <p className={styles.hint} style={{ textAlign: "center" }}>
        <a
          href="https://console.mistral.ai/api-keys"
          target="_blank"
          rel="noopener noreferrer"
          className={styles.inlineLink}
        >
          Get a free Mistral key →
        </a>
      </p>

      {error ? (
        <p className={styles.fieldError} style={{ textAlign: "center" }}>
          {error}
        </p>
      ) : null}

      <div className={styles.field}>
        <label htmlFor="mistral-key">
          <Key size={16} weight="duotone" aria-hidden /> Mistral API key
        </label>
        <input
          id="mistral-key"
          type="password"
          autoComplete="off"
          spellCheck={false}
          placeholder="Your Mistral API key…"
          value={keyInput}
          onChange={(e) => setKeyInput(e.target.value)}
        />
      </div>

      <div className={styles.actions}>
        <Button
          variant="outline"
          onClick={() => void handleSkip()}
          disabled={busy}
        >
          Skip for now
        </Button>
        <Button onClick={() => void handleSaveAndContinue()} disabled={busy}>
          {busy ? "Saving…" : "Save key & finish"}
        </Button>
      </div>

      {showCourseTutor ? (
        <p className={styles.hint} style={{ textAlign: "center", marginTop: "1.25rem" }}>
          After setup, open{" "}
          <Link href={tutorHref(primaryExam)} className={styles.inlineLink}>
            {tutorCtaLabel(primaryExam)}
          </Link>{" "}
          to ask Scho about your course.
        </p>
      ) : null}
    </>
  );
}
