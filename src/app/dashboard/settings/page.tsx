"use client";

import { useEffect, useState } from "react";
import { useTheme } from "next-themes";
import { GearSix, Key, SignOut, Warning } from "@phosphor-icons/react";
import { ManageExamsPanel } from "@/components/dashboard/ManageExamsPanel";
import { AvatarPicker } from "@/components/dashboard/AvatarPicker";
import { ResetProgressModal } from "@/components/dashboard/ResetProgressModal";
import {
  getShowPauseDialog,
  getShowPreviousAttempts,
  setShowPauseDialog,
  setShowPreviousAttempts,
} from "@/lib/dashboard/userPreferences";
import { useAuth } from "@/hooks/useAuth";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import {
  clearStoredAiKey,
  getStoredAiKey,
  setStoredAiKey,
} from "@/lib/ai/clientKey";
import {
  formatMemberSince,
  getProfileAvatarInitial,
} from "@/lib/dashboard/userDisplay";
import { Button } from "@/components/ui/app-button";
import styles from "./settings.module.css";

export default function SettingsPage() {
  const {
    profile,
    user,
    displayName,
    displayEmail,
    displayAvatarUrl,
    loading: authLoading,
    supabase,
    signOut,
  } = useAuth();

  const handleLogout = async () => {
    try {
      await signOut();
    } finally {
      // Hard navigation to the server sign-out route, which clears the auth
      // cookies on the redirect response itself. A client-only signOut() raced
      // middleware and bounced straight back to the dashboard — that's why
      // "Log out" did nothing.
      window.location.href = "/auth/signout";
    }
  };
  const { theme, setTheme } = useTheme();
  const [showAttempts, setShowAttempts] = useState(getShowPreviousAttempts);
  const [showPause, setShowPause] = useState(getShowPauseDialog);
  const [resetting, setResetting] = useState<string | null>(null);
  const [resetModalExam, setResetModalExam] = useState<"SAT" | "ACT" | null>(null);

  // Mistral AI key — stored ONLY in this browser's localStorage, never in our
  // database. Every AI feature runs on the user's own free key.
  const [keyConfigured, setKeyConfigured] = useState(false);
  const [keyLast4, setKeyLast4] = useState<string | null>(null);
  const [keyLoading, setKeyLoading] = useState(true);
  const [keyInput, setKeyInput] = useState("");
  const [keyBusy, setKeyBusy] = useState(false);
  const [keyMessage, setKeyMessage] = useState<{
    tone: "ok" | "error";
    text: string;
  } | null>(null);

  // Read the locally-stored key on mount. No server round-trip — the key lives
  // in this browser only.
  useEffect(() => {
    const stored = getStoredAiKey();
    setKeyConfigured(Boolean(stored));
    setKeyLast4(stored && stored.length >= 4 ? stored.slice(-4) : null);
    setKeyLoading(false);
  }, []);

  const handleSaveKey = async () => {
    const apiKey = keyInput.trim();
    if (apiKey.length < 20) {
      setKeyMessage({ tone: "error", text: "Enter your full Mistral key." });
      return;
    }
    setKeyBusy(true);
    setKeyMessage(null);
    try {
      // Confirm Mistral accepts the key before saving it to this browser.
      await ensureFreshSession(supabase);
      const res = await fetch("/api/ai/verify-key", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ api_key: apiKey }),
      });
      const data = await res.json().catch(() => ({}));
      if (!res.ok || data.valid === false) {
        setKeyMessage({
          tone: "error",
          text: data.error ?? "Could not verify your key.",
        });
        return;
      }
      setStoredAiKey(apiKey);
      setKeyConfigured(true);
      setKeyLast4(apiKey.slice(-4));
      setKeyInput("");
      setKeyMessage({ tone: "ok", text: "Key saved. AI features are ready." });
    } finally {
      setKeyBusy(false);
    }
  };

  const handleRemoveKey = () => {
    clearStoredAiKey();
    setKeyConfigured(false);
    setKeyLast4(null);
    setKeyInput("");
    setKeyMessage({ tone: "ok", text: "Key removed from this browser." });
  };

  const name = displayName ?? profile?.full_name ?? "—";
  const email = displayEmail || user?.email || "—";

  const memberSince = formatMemberSince(profile?.created_at, user?.created_at);

  const handleReset = async (exam: "SAT" | "ACT") => {
    setResetting(exam);
    try {
      await fetch("/api/dashboard/reset-progress", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ examType: exam }),
      });
      setResetModalExam(null);
    } finally {
      setResetting(null);
    }
  };

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <GearSix
          size={22}
          weight="duotone"
          className={styles.headerIcon}
          aria-hidden
        />
        <div>
          <h1 className={styles.title}>Settings</h1>
          <p className={styles.subtitle}>
            Manage your profile, exams, appearance, and plan.
          </p>
        </div>
      </header>

      <div className={styles.stack}>
        <section className={styles.card} aria-labelledby="settings-profile">
          <h2 id="settings-profile" className={styles.cardTitle}>
            Profile
          </h2>
          <p className={styles.cardDesc}>
            Your identity and membership details.
          </p>
          <div className={styles.avatarRow}>
            <div className={styles.avatar} aria-hidden>
              {displayAvatarUrl ? (
                // eslint-disable-next-line @next/next/no-img-element
                <img
                  src={displayAvatarUrl}
                  alt=""
                  className={styles.avatarImg}
                />
              ) : (
                getProfileAvatarInitial(email === "—" ? null : email)
              )}
            </div>
            <div className={styles.avatarMeta}>
              <p className={styles.profileName}>{name}</p>
              <p className={styles.profileEmail}>{email}</p>
            </div>
          </div>
          <AvatarPicker />
          <dl className={styles.infoList}>
            <div className={styles.infoRow}>
              <dt>Name</dt>
              <dd>{name}</dd>
            </div>
            <div className={styles.infoRow}>
              <dt>Email</dt>
              <dd>{email}</dd>
            </div>
            <div className={styles.infoRow}>
              <dt>Member since</dt>
              <dd>{memberSince ?? "—"}</dd>
            </div>
            <div className={styles.infoRow}>
              <dt>Student type</dt>
              <dd>Student</dd>
            </div>
            <div className={styles.infoRow}>
              <dt>Graduation year</dt>
              <dd>—</dd>
            </div>
          </dl>
        </section>

        <section
          className={`${styles.card} ${styles.examsCard}`}
          aria-labelledby="settings-exams"
        >
          <h2 id="settings-exams" className={styles.cardTitle}>
            Exams
          </h2>
          <p className={styles.cardDesc}>
            Add, switch, or remove the SAT, ACT, and AP/IB courses on your
            dashboard.
          </p>
          <ManageExamsPanel />
        </section>

        <section className={styles.card} aria-labelledby="settings-appearance">
          <h2 id="settings-appearance" className={styles.cardTitle}>
            Appearance
          </h2>
          <p className={styles.cardDesc}>
            Choose how Scholaris looks on this device.
          </p>
          <div className={styles.themeGrid}>
            {(
              [
                { id: "light", preview: styles.themePreviewLight },
                { id: "dark", preview: styles.themePreviewDark },
                { id: "system", preview: styles.themePreviewSystem },
              ] as const
            ).map(({ id, preview }) => (
              <button
                key={id}
                type="button"
                className={`${styles.themeCard} ${theme === id ? styles.themeCardActive : ""}`}
                onClick={() => setTheme(id)}
              >
                <span className={`${styles.themePreview} ${preview}`} aria-hidden />
                {id.charAt(0).toUpperCase() + id.slice(1)}
              </button>
            ))}
          </div>
        </section>

        <section className={styles.card} aria-labelledby="settings-questions">
          <h2 id="settings-questions" className={styles.cardTitle}>
            Question preferences
          </h2>
          <p className={styles.cardDesc}>
            Tune in-session behavior to match how you study.
          </p>
          <div className={styles.toggleList}>
            <label className={styles.toggleRow}>
              <span>Show previous attempts</span>
              <input
                type="checkbox"
                className={styles.toggleInput}
                checked={showAttempts}
                onChange={(e) => {
                  setShowAttempts(e.target.checked);
                  setShowPreviousAttempts(e.target.checked);
                }}
              />
              <span className={styles.toggleSwitch} aria-hidden />
            </label>
            <label className={styles.toggleRow}>
              <span>Show pause dialog</span>
              <input
                type="checkbox"
                className={styles.toggleInput}
                checked={showPause}
                onChange={(e) => {
                  setShowPause(e.target.checked);
                  setShowPauseDialog(e.target.checked);
                }}
              />
              <span className={styles.toggleSwitch} aria-hidden />
            </label>
          </div>
        </section>

        <section className={styles.card} aria-labelledby="settings-ai">
          <h2 id="settings-ai" className={styles.cardTitle}>
            <Key size={18} weight="duotone" aria-hidden /> AI key
          </h2>
          <p className={styles.cardDesc}>
            Scholaris is 100% free. AI features (Ask Scho, answer explanations,
            study plans, and recommendations) run on your own free Mistral key
            using the <code>mistral-small-2506</code> model. Create a key (no
            cost) and paste it below. Your key is stored only in this browser and
            never sent to our servers for storage.
          </p>
          <p className={styles.hint}>
            <a
              href="https://console.mistral.ai/api-keys"
              target="_blank"
              rel="noopener noreferrer"
              className={styles.inlineLink}
            >
              Get a free Mistral key →
            </a>
          </p>

          {keyLoading ? (
            <p className={styles.hint}>Checking your key…</p>
          ) : keyConfigured ? (
            <p className={styles.planBadge}>
              <Key size={14} weight="fill" aria-hidden />
              Key saved{keyLast4 ? ` ••••${keyLast4}` : ""}
            </p>
          ) : (
            <p className={styles.hint}>
              No key yet. AI features stay locked until you add one.
            </p>
          )}

          <div className={styles.planActions}>
            <input
              type="password"
              autoComplete="off"
              spellCheck={false}
              placeholder="Your Mistral API key…"
              value={keyInput}
              onChange={(e) => setKeyInput(e.target.value)}
              className={styles.keyInput}
              aria-label="Mistral API key"
            />
            <Button onClick={() => void handleSaveKey()} disabled={keyBusy}>
              {keyBusy ? "Saving…" : keyConfigured ? "Replace key" : "Save key"}
            </Button>
            {keyConfigured ? (
              <Button
                variant="outline"
                onClick={() => handleRemoveKey()}
                disabled={keyBusy}
              >
                Remove
              </Button>
            ) : null}
          </div>
          {keyMessage ? (
            <p
              className={styles.hint}
              style={{
                color:
                  keyMessage.tone === "error"
                    ? "var(--color-danger, #dc2626)"
                    : "var(--color-success, #16a34a)",
              }}
            >
              {keyMessage.text}
            </p>
          ) : null}
        </section>

        <section
          className={`${styles.card} ${styles.dangerCard}`}
          aria-labelledby="settings-danger"
        >
          <h2 id="settings-danger" className={`${styles.cardTitle} ${styles.dangerTitle}`}>
            <Warning size={18} weight="bold" aria-hidden />
            Danger zone
          </h2>
          <p className={styles.cardDesc}>
            This permanently clears progress for the selected exam. Saved
            questions for that exam are also removed. Other exams are not
            affected.
          </p>
          <div className={styles.resetStack}>
            <button
              type="button"
              className={styles.resetBtn}
              disabled={resetting === "SAT"}
              onClick={() => setResetModalExam("SAT")}
            >
              Reset SAT progress
            </button>
            <button
              type="button"
              className={styles.resetBtn}
              disabled={resetting === "ACT"}
              onClick={() => setResetModalExam("ACT")}
            >
              Reset ACT progress
            </button>
          </div>
          <ResetProgressModal
            exam={resetModalExam}
            loading={resetting !== null}
            onClose={() => setResetModalExam(null)}
            onConfirm={() => resetModalExam && void handleReset(resetModalExam)}
          />
        </section>

        <section className={styles.card} aria-labelledby="settings-account">
          <h2 id="settings-account" className={styles.cardTitle}>
            Account actions
          </h2>
          <p className={styles.cardDesc}>
            Sign out of Scholaris on this device.
          </p>
          <button
            type="button"
            className={styles.logoutBtn}
            onClick={() => void handleLogout()}
          >
            <SignOut size={16} aria-hidden />
            Log out
          </button>
        </section>
      </div>
    </div>
  );
}
