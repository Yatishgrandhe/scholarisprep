"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import { format } from "date-fns";
import { toast } from "sonner";
import {
  CheckCircle,
  CircleNotch,
  Key,
  Keyhole,
  User,
  Warning,
} from "@phosphor-icons/react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Input } from "@/components/ui/input";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import type { AiKeyMode } from "@/lib/ai/aiKeyModes";
import {
  DEFAULT_PLATFORM_AI_BASE_URL,
  DEFAULT_PLATFORM_AI_MODEL,
} from "@/lib/ai/aiKeyModes";
import {
  fetchAiKeyPolicy,
  patchAiKeyPolicy,
  type AiKeyPolicyResponse,
} from "@/lib/admin/aiKeyPolicyClient";
import styles from "@/app/admin/admin.module.css";

type ToggleMode = Extract<AiKeyMode, "personal" | "global">;
type SaveStatus = "idle" | "dirty" | "saving" | "saved" | "error";

/** Admin toggle: personal BYO vs central shared (maps to `global`). */
const MODE_OPTIONS: {
  value: ToggleMode;
  title: string;
  shortLabel: string;
  description: string;
  Icon: typeof User;
}[] = [
  {
    value: "personal",
    title: "BYO Mistral only",
    shortLabel: "Personal",
    description:
      "Every user must bring their own Mistral key in the browser. Default and safest for production.",
    Icon: User,
  },
  {
    value: "global",
    title: "Shared FreeModel key",
    shortLabel: "Central",
    description:
      "Authenticated users use the platform FreeModel key (Claude Sonnet) stored in the database. Personal Mistral keys still win when present.",
    Icon: Keyhole,
  },
];

function toToggleMode(mode: AiKeyMode): ToggleMode {
  return mode === "platform_only" || mode === "global" ? "global" : "personal";
}

export function AiKeyPolicyPanel() {
  const [loading, setLoading] = useState(true);
  const [loadError, setLoadError] = useState<string | null>(null);
  const [saveStatus, setSaveStatus] = useState<SaveStatus>("idle");
  const [saveError, setSaveError] = useState<string | null>(null);
  const [mode, setMode] = useState<AiKeyMode>("personal");
  const [draft, setDraft] = useState<ToggleMode>("personal");
  const [apiKeyDraft, setApiKeyDraft] = useState("");
  const [platformKeyConfigured, setPlatformKeyConfigured] = useState(false);
  const [keyHint, setKeyHint] = useState<string | null>(null);
  const [keySource, setKeySource] = useState<"database" | "env" | null>(null);
  const [apiBaseUrl, setApiBaseUrl] = useState(DEFAULT_PLATFORM_AI_BASE_URL);
  const [model, setModel] = useState(DEFAULT_PLATFORM_AI_MODEL);
  const [updatedAt, setUpdatedAt] = useState<string | null>(null);
  const savedFlashTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const applyResponse = (json: AiKeyPolicyResponse) => {
    const nextMode = toToggleMode(json.mode);
    setMode(json.mode);
    setDraft(nextMode);
    setPlatformKeyConfigured(json.platformKeyConfigured);
    setKeyHint(json.keyHint ?? null);
    setKeySource(json.keySource ?? null);
    setApiBaseUrl(json.apiBaseUrl ?? DEFAULT_PLATFORM_AI_BASE_URL);
    setModel(json.model ?? DEFAULT_PLATFORM_AI_MODEL);
    setUpdatedAt(json.updatedAt);
    setApiKeyDraft("");
    setLoadError(null);
    setSaveError(null);
  };

  const load = useCallback(async () => {
    setLoading(true);
    setLoadError(null);
    setSaveError(null);
    setSaveStatus("idle");
    const result = await fetchAiKeyPolicy();
    if (!result.ok) {
      setLoadError(result.error.message);
      toast.error(result.error.message);
      setLoading(false);
      return;
    }
    applyResponse(result.data);
    setLoading(false);
  }, []);

  useMountLoad(load, [load]);

  useEffect(() => {
    return () => {
      if (savedFlashTimer.current) clearTimeout(savedFlashTimer.current);
    };
  }, []);

  const savedToggle = toToggleMode(mode);
  const dirty = draft !== savedToggle || apiKeyDraft.trim().length > 0;
  const needsKey =
    draft === "global" && !platformKeyConfigured && !apiKeyDraft.trim();
  const showCentralDetails = draft === "global";
  const saving = saveStatus === "saving";

  useEffect(() => {
    if (saveStatus === "saving" || saveStatus === "saved") return;
    if (dirty) {
      setSaveStatus("dirty");
      setSaveError(null);
    } else if (saveStatus === "dirty" || saveStatus === "error") {
      setSaveStatus("idle");
      setSaveError(null);
    }
  }, [dirty, saveStatus]);

  const save = async () => {
    if (!dirty || saving || needsKey) return;
    setSaveStatus("saving");
    setSaveError(null);

    // Only pass apiKey when the admin pasted a full replacement — never "".
    const trimmedKey = apiKeyDraft.trim();
    const result = await patchAiKeyPolicy({
      mode: draft,
      ...(trimmedKey ? { apiKey: trimmedKey } : {}),
    });

    if (!result.ok) {
      setSaveStatus("error");
      setSaveError(result.error.message);
      toast.error(result.error.message);
      return;
    }

    applyResponse(result.data);
    setSaveStatus("saved");
    toast.success(
      draft === "global"
        ? "Central FreeModel key mode is on"
        : "Personal keys-only mode is on",
    );
    if (savedFlashTimer.current) clearTimeout(savedFlashTimer.current);
    savedFlashTimer.current = setTimeout(() => {
      setSaveStatus("idle");
    }, 2200);
  };

  const resetDraft = () => {
    setDraft(toToggleMode(mode));
    setApiKeyDraft("");
    setSaveError(null);
    setSaveStatus("idle");
  };

  return (
    <div className={`adminPage ${styles.policyPage}`}>
      <header className="adminHeader">
        <div className="adminHeaderMain">
          <p className="adminEyebrow">Platform admin</p>
          <h1 className="adminHeaderTitle">Central API</h1>
          <p className="adminHeaderSubtitle">
            Toggle personal BYO Mistral keys vs a central FreeModel key. The
            full key is never shown after save — only a masked hint. Leave the
            key field blank to keep the existing production key.
          </p>
        </div>
        <div className="adminHeaderActions">
          <ThemeToggle className="hidden md:flex" />
        </div>
      </header>

      {loading ? (
        <div className={`${styles.policyCard} adminCard`} aria-busy="true">
          <div className={styles.policySkeletonRow} />
          <div className={styles.policySkeletonToggle} />
          <div className={styles.policySkeletonRow} />
          <p className={styles.loading}>Loading policy…</p>
        </div>
      ) : loadError ? (
        <div className={`${styles.policyCard} adminCard`}>
          <p className={styles.policyWarning} role="alert">
            <Warning size={18} weight="fill" aria-hidden />
            <span>{loadError}</span>
          </p>
          <div className={styles.policyActions}>
            <Button type="button" onClick={() => void load()}>
              Retry
            </Button>
          </div>
        </div>
      ) : (
        <div className={`${styles.policyCard} adminCard`}>
          <div className={styles.policyLiveMode} role="status">
            <span className={styles.policyLiveModeLabel}>Live mode</span>
            <Badge variant={savedToggle === "global" ? "default" : "outline"}>
              {savedToggle === "global"
                ? "Central (FreeModel)"
                : "Personal keys only"}
            </Badge>
          </div>

          <div
            className={styles.policyToggle}
            role="radiogroup"
            aria-label="AI key mode"
          >
            {MODE_OPTIONS.map((opt) => {
              const selected = draft === opt.value;
              const Icon = opt.Icon;
              return (
                <button
                  key={opt.value}
                  type="button"
                  role="radio"
                  aria-checked={selected}
                  className={`${styles.policyToggleBtn} ${
                    selected ? styles.policyToggleBtnActive : ""
                  }`}
                  onClick={() => setDraft(opt.value)}
                >
                  <span className={styles.policyToggleHead}>
                    <span className={styles.policyToggleIcon} aria-hidden>
                      <Icon size={18} weight={selected ? "fill" : "regular"} />
                    </span>
                    <span className={styles.policyToggleLabel}>
                      {opt.shortLabel}
                    </span>
                  </span>
                  <span className={styles.policyToggleHint}>{opt.title}</span>
                </button>
              );
            })}
          </div>

          <p className={styles.policyToggleDesc}>
            {MODE_OPTIONS.find((o) => o.value === draft)?.description}
          </p>

          <div className={styles.policyMeta}>
            <div className={styles.policyMetaItem}>
              <span className={styles.detailLabel}>Platform key</span>
              <Badge variant={platformKeyConfigured ? "default" : "outline"}>
                <Key size={12} weight="bold" aria-hidden />
                {platformKeyConfigured
                  ? keyHint
                    ? `Configured ${keyHint}`
                    : "Configured"
                  : "Not configured"}
              </Badge>
              {keySource ? (
                <span className={styles.policyOptionDesc}>
                  Source:{" "}
                  {keySource === "database" ? "database" : "server env"}
                </span>
              ) : null}
            </div>
            <div className={styles.policyMetaItem}>
              <span className={styles.detailLabel}>Last updated</span>
              <span className={styles.policyMetaValue}>
                {updatedAt
                  ? format(new Date(updatedAt), "MMM d, yyyy · h:mm a")
                  : "—"}
              </span>
            </div>
          </div>

          {showCentralDetails ? (
            <div className={styles.policyCentralBox}>
              <div className={styles.policyCentralHeader}>
                <p className={styles.policyCentralTitle}>FreeModel (central)</p>
                <p className={styles.policyCentralSubtitle}>
                  OpenAI-compatible Chat Completions — not Mistral cloud
                </p>
              </div>
              <dl className={styles.policyCentralGrid}>
                <div className={styles.policyCentralRow}>
                  <dt className={styles.detailLabel}>Endpoint</dt>
                  <dd>
                    <code className={styles.policyCode}>{apiBaseUrl}</code>
                  </dd>
                </div>
                <div className={styles.policyCentralRow}>
                  <dt className={styles.detailLabel}>Model</dt>
                  <dd>
                    <code className={styles.policyCode}>{model}</code>
                  </dd>
                </div>
              </dl>
            </div>
          ) : null}

          {needsKey ? (
            <p className={styles.policyWarning} role="status">
              <Warning size={18} weight="fill" aria-hidden />
              <span>
                Paste a FreeModel API key below (or set{" "}
                <code>MISTRAL_SHARED_API_KEY</code> in server env) before
                central mode can serve AI requests.
              </span>
            </p>
          ) : null}

          {showCentralDetails ? (
            <div className={styles.policyKeyField}>
              <label className={styles.detailLabel} htmlFor="central-ai-key">
                Central API key
              </label>
              <Input
                id="central-ai-key"
                type="password"
                autoComplete="off"
                spellCheck={false}
                placeholder={
                  keyHint
                    ? `Leave blank to keep current key (${keyHint})`
                    : "Paste FreeModel API key to store in database"
                }
                value={apiKeyDraft}
                onChange={(e) => setApiKeyDraft(e.target.value)}
              />
              <p className={styles.policyOptionDesc}>
                Leave blank to keep the existing key — saving never clears
                production. New keys are stored only in{" "}
                <code>app_secrets</code> and never returned to the browser.
              </p>
            </div>
          ) : null}

          {saveError ? (
            <p className={styles.policyWarning} role="alert">
              <Warning size={18} weight="fill" aria-hidden />
              <span>{saveError}</span>
            </p>
          ) : null}

          <div
            className={styles.policySaveBar}
            role="status"
            aria-live="polite"
          >
            {saveStatus === "saving" ? (
              <span className={styles.policySaveStatus}>
                <CircleNotch
                  size={16}
                  className={styles.policySaveSpin}
                  aria-hidden
                />
                Saving policy…
              </span>
            ) : saveStatus === "saved" ? (
              <span
                className={`${styles.policySaveStatus} ${styles.policySaveOk}`}
              >
                <CheckCircle size={16} weight="fill" aria-hidden />
                Saved
              </span>
            ) : saveStatus === "error" ? (
              <span
                className={`${styles.policySaveStatus} ${styles.policySaveErr}`}
              >
                <Warning size={16} weight="fill" aria-hidden />
                Save failed — fix and retry
              </span>
            ) : dirty ? (
              <span className={styles.policySaveStatus}>Unsaved changes</span>
            ) : (
              <span className={styles.policySaveMuted}>All changes saved</span>
            )}
          </div>

          <div className={styles.policyActions}>
            <Button
              type="button"
              onClick={() => void save()}
              disabled={!dirty || saving || needsKey}
            >
              {saving
                ? "Saving…"
                : draft === "global"
                  ? "Save: use Central key"
                  : "Save: Personal keys only"}
            </Button>
            {dirty ? (
              <Button
                type="button"
                variant="outline"
                onClick={resetDraft}
                disabled={saving}
              >
                Reset
              </Button>
            ) : null}
          </div>
        </div>
      )}
    </div>
  );
}
