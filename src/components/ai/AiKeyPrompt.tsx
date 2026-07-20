"use client";

import { useEffect, useState } from "react";
import { Key, X } from "@phosphor-icons/react";
import {
  AI_KEY_REQUIRED_EVENT,
  getClientAiKeyMode,
  getStoredAiKey,
  setStoredAiKey,
} from "@/lib/ai/clientKey";
import type { AiKeyMode } from "@/lib/ai/aiKeyModes";
import styles from "./AiKeyPrompt.module.css";

/**
 * Mounted once (in DashboardShell). When an AI feature is triggered on a device
 * with no stored key — e.g. the user signed in on a NEW device, where the
 * browser localStorage is empty — `aiRequest`/`requireAiKey` fire the
 * `AI_KEY_REQUIRED_EVENT` and this modal pops so the user can re-enter their
 * free Mistral key on this device. The key is saved to localStorage only.
 *
 * When platform mode is `global`, copy is softer (personal key optional).
 * When `platform_only`, the modal is suppressed — the server supplies the key.
 */
export function AiKeyPrompt() {
  const [open, setOpen] = useState(false);
  const [keyInput, setKeyInput] = useState("");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [mode, setMode] = useState<AiKeyMode>("personal");

  useEffect(() => {
    void getClientAiKeyMode().then(setMode);
  }, []);

  useEffect(() => {
    const onRequire = () => {
      // If a key was added in another tab meanwhile, don't nag.
      if (getStoredAiKey()) return;
      void (async () => {
        const current = await getClientAiKeyMode();
        setMode(current);
        // Platform-only: no personal key needed; don't show the modal.
        if (current === "platform_only") return;
        setError(null);
        setKeyInput("");
        setOpen(true);
      })();
    };
    window.addEventListener(AI_KEY_REQUIRED_EVENT, onRequire);
    return () => window.removeEventListener(AI_KEY_REQUIRED_EVENT, onRequire);
  }, []);

  const close = () => {
    if (busy) return;
    setOpen(false);
  };

  const handleSave = async () => {
    const apiKey = keyInput.trim();
    if (apiKey.length < 20) {
      setError("Enter your full Mistral key.");
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
      setOpen(false);
    } finally {
      setBusy(false);
    }
  };

  if (!open) return null;

  const isGlobal = mode === "global";

  return (
    <div className={styles.overlay} role="dialog" aria-modal="true">
      <div className={styles.modal}>
        <div className={styles.header}>
          <h2>
            <Key size={18} weight="duotone" aria-hidden />{" "}
            {isGlobal ? "Optional: add your Mistral key" : "Add your Mistral key"}
          </h2>
          <button
            type="button"
            className={styles.close}
            onClick={close}
            aria-label="Close"
          >
            <X size={18} weight="bold" />
          </button>
        </div>
        <p className={styles.body}>
          {isGlobal ? (
            <>
              This platform can run AI features with a shared key. You can still
              paste your own free Mistral key below to use your personal quota —
              it stays only in this browser.
            </>
          ) : (
            <>
              AI features run on your own free Mistral key, stored only in this
              browser. It looks like this device doesn&apos;t have it yet — paste
              it below to unlock Ask Scho, explanations, and study plans.
              It&apos;s free and won&apos;t cost you money.
            </>
          )}
        </p>
        <p className={styles.linkRow}>
          <a
            href="https://console.mistral.ai/api-keys"
            target="_blank"
            rel="noopener noreferrer"
            className={styles.link}
          >
            Get a free Mistral key →
          </a>
        </p>

        <input
          type="password"
          autoComplete="off"
          spellCheck={false}
          placeholder="Your Mistral API key…"
          value={keyInput}
          onChange={(e) => setKeyInput(e.target.value)}
          className={styles.input}
          aria-label="Mistral API key"
          onKeyDown={(e) => {
            if (e.key === "Enter") void handleSave();
          }}
        />
        {error ? <p className={styles.error}>{error}</p> : null}

        <div className={styles.footer}>
          <button
            type="button"
            className={styles.cancel}
            onClick={close}
            disabled={busy}
          >
            {isGlobal ? "Continue without" : "Not now"}
          </button>
          <button
            type="button"
            className={styles.save}
            onClick={() => void handleSave()}
            disabled={busy}
          >
            {busy ? "Saving…" : "Save key"}
          </button>
        </div>
      </div>
    </div>
  );
}
