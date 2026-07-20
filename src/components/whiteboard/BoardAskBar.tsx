"use client";

/**
 * OCR ask strip for Whiteboard Studio.
 * Snapshot → boardOcr / free-study `ocrImage` → editable text → chat.
 */

import { useState } from "react";
import { PaperPlaneTilt, TextAa } from "@phosphor-icons/react";
import {
  formatBoardChatPrompt,
  ocrBoardSnapshot,
  type BoardOcrResult,
  type OcrProgress,
} from "./boardOcr";
import styles from "./board-ask.module.css";

export type BoardAskBarProps = {
  /** PNG (or other) board snapshot for OCR. */
  getSnapshot: () => Promise<Blob | null>;
  /** Whether the board currently has ink. */
  hasInk: boolean;
  /**
   * Send OCR-backed prompt into the chat dock.
   * `message` is chat-ready; `ocrText` is the raw recognized/edited text.
   */
  onAsk: (message: string, ocrText: string) => void;
  askDisabled?: boolean;
  className?: string;
  /** Controlled OCR text (optional). */
  ocrText?: string;
  onOcrTextChange?: (text: string) => void;
  /** Optional progress hook (e.g. telemetry model bar). */
  onOcrProgress?: (p: OcrProgress | null) => void;
};

function resultError(result: BoardOcrResult): string | null {
  return result.ok ? null : result.error;
}

export function BoardAskBar({
  getSnapshot,
  hasInk,
  onAsk,
  askDisabled = false,
  className,
  ocrText: controlledText,
  onOcrTextChange,
  onOcrProgress,
}: BoardAskBarProps) {
  const [internalText, setInternalText] = useState("");
  const [busy, setBusy] = useState(false);
  const [progress, setProgress] = useState<OcrProgress | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [attempted, setAttempted] = useState(false);

  const ocrText = controlledText ?? internalText;

  const setOcrText = (next: string) => {
    if (controlledText === undefined) setInternalText(next);
    onOcrTextChange?.(next);
  };

  const reportProgress = (p: OcrProgress | null) => {
    setProgress(p);
    onOcrProgress?.(p);
  };

  const runOcr = async (): Promise<string | null> => {
    setBusy(true);
    setAttempted(true);
    setError(null);
    reportProgress({ status: "recognizing", progress: 0 });
    try {
      if (!hasInk) {
        const empty = await ocrBoardSnapshot(null, { hasInk: false });
        setError(resultError(empty));
        return null;
      }
      const blob = await getSnapshot();
      const result = await ocrBoardSnapshot(blob, {
        hasInk: true,
        requireInk: false,
        onProgress: (p) => reportProgress(p),
      });
      if (!result.ok) {
        setError(result.error);
        if (result.code === "no_text") setOcrText("");
        return result.code === "no_text" ? "" : null;
      }
      setOcrText(result.text);
      setError(null);
      return result.text;
    } finally {
      setBusy(false);
      reportProgress(null);
    }
  };

  const askFromBoard = async () => {
    if (askDisabled || busy) return;
    let text = ocrText.trim();
    if (!text) {
      const read = await runOcr();
      if (read === null) return;
      text = read.trim();
    }
    if (!text) {
      setError(
        "Edit the OCR text below, or rewrite more clearly and try again.",
      );
      return;
    }
    setError(null);
    onAsk(formatBoardChatPrompt(text), text);
  };

  const showEditor = attempted || Boolean(ocrText);
  const showProgress = busy && progress != null;

  return (
    <div
      className={[styles.strip, className].filter(Boolean).join(" ")}
      role="region"
      aria-label="Board handwriting ask"
    >
      <div className={styles.row}>
        <button
          type="button"
          className={`${styles.btn} ${styles.secondary}`}
          disabled={busy || !hasInk}
          onClick={() => void runOcr()}
        >
          <TextAa size={16} weight="bold" aria-hidden />
          {busy ? "Reading…" : "Read handwriting"}
        </button>
        <button
          type="button"
          className={`${styles.btn} ${styles.primary}`}
          disabled={askDisabled || busy || (!hasInk && !ocrText.trim())}
          onClick={() => void askFromBoard()}
        >
          <PaperPlaneTilt size={16} weight="bold" aria-hidden />
          Ask Scho
        </button>
      </div>

      {error ? (
        <p className={styles.error} role="alert">
          {error}
        </p>
      ) : null}

      {showProgress ? (
        <div className={styles.progress} aria-live="polite">
          <div className={styles.progressMeta}>
            <span>{progress.status}</span>
            <span>{Math.round(progress.progress * 100)}%</span>
          </div>
          <div className={styles.track}>
            <div
              className={styles.fill}
              style={{ width: `${Math.round(progress.progress * 100)}%` }}
            />
          </div>
        </div>
      ) : null}

      {showEditor ? (
        <label className={styles.label}>
          Recognized text (edit before asking)
          <textarea
            className={styles.textarea}
            value={ocrText}
            onChange={(e) => {
              setOcrText(e.target.value);
              if (error) setError(null);
            }}
            rows={4}
            placeholder="OCR output appears here — fix any misreads, then Ask Scho."
            aria-label="OCR text"
          />
        </label>
      ) : null}
    </div>
  );
}
