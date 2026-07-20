"use client";

/**
 * Free Studying PDF path: upload → client pdf.js extract → editable excerpt →
 * PdfIntentChooser. Never sends raw PDF bytes to Mistral — only extracted text
 * via `onChange` (`pdf_excerpt` telemetry) and `onIntent` / `onAskScho`.
 */

import {
  useCallback,
  useId,
  useRef,
  useState,
  type ChangeEvent,
} from "react";
import { FilePdf, Trash, UploadSimple } from "@phosphor-icons/react";
import { toast } from "sonner";
import { extractPdfTextClient } from "@/lib/pdf/extractText";
import type { FreeStudyTelemetry } from "@/lib/ai/telemetryPayload";
import {
  PdfIntentChooser,
  buildSummarizeFromExcerpt,
  promptForPdfIntent,
  type PdfIntent,
} from "@/components/free-study/PdfIntentChooser";
import styles from "./free-study-pdf.module.css";

/** Matches `telemetryPayload` clip for `pdf_excerpt`. */
export const FREE_STUDY_PDF_EXCERPT_MAX = 6000;
const MAX_UPLOAD_BYTES = 10 * 1024 * 1024;

export type FreeStudyPdfPaneProps = {
  /** Controlled excerpt (hub stores for `pdf_excerpt` telemetry). */
  value?: string;
  defaultValue?: string;
  /** Fires whenever excerpt changes (upload, edit, clear) — text only. */
  onChange?: (excerpt: string) => void;
  /**
   * Fired for every intent with the current excerpt (text only).
   * Hub wires quiz / flashcards / ask / summarize here.
   */
  onIntent?: (intent: PdfIntent, excerpt: string) => void;
  /**
   * Fallback when `onIntent` is omitted: Ask Scho with text + optional
   * telemetry (never a File). Handles ask + summarize only.
   */
  onAskScho?: (
    message: string,
    telemetry?: FreeStudyTelemetry | null,
  ) => void | Promise<void>;
  /** Disable upload / intents while tutor streams or quiz builds. */
  disabled?: boolean;
  className?: string;
};

function clipExcerpt(raw: string): string {
  const clean = raw.replace(/\u0000/g, "").trimStart();
  if (clean.length <= FREE_STUDY_PDF_EXCERPT_MAX) return clean;
  return `${clean.slice(0, FREE_STUDY_PDF_EXCERPT_MAX)}…`;
}

export function FreeStudyPdfPane({
  value,
  defaultValue = "",
  onChange,
  onIntent,
  onAskScho,
  disabled = false,
  className,
}: FreeStudyPdfPaneProps) {
  const headingId = useId();
  const pasteId = useId();
  const fileInputRef = useRef<HTMLInputElement>(null);
  const [uncontrolled, setUncontrolled] = useState(defaultValue);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [fileName, setFileName] = useState<string | null>(null);

  const controlled = value !== undefined;
  const excerpt = controlled ? value : uncontrolled;

  const setExcerpt = useCallback(
    (next: string) => {
      const clipped = clipExcerpt(next);
      if (!controlled) setUncontrolled(clipped);
      onChange?.(clipped);
    },
    [controlled, onChange],
  );

  const clearExcerpt = () => {
    setError(null);
    setFileName(null);
    setExcerpt("");
    if (fileInputRef.current) fileInputRef.current.value = "";
  };

  const onUpload = async (file: File | null) => {
    if (!file || disabled) return;
    setError(null);

    const looksPdf =
      file.type === "application/pdf" ||
      file.name.toLowerCase().endsWith(".pdf");
    if (!looksPdf) {
      const msg = "Choose a PDF file.";
      setError(msg);
      toast.error(msg);
      return;
    }
    if (file.size > MAX_UPLOAD_BYTES) {
      const msg = "PDF must be 10 MB or smaller.";
      setError(msg);
      toast.error(msg);
      return;
    }

    setBusy(true);
    try {
      // Client-only extract — File stays in the browser; Mistral gets text later.
      const text = await extractPdfTextClient(file);
      const clipped = clipExcerpt(text);
      if (!clipped.trim()) {
        const msg =
          "No extractable text in that PDF (it may be a scanned image).";
        setError(msg);
        toast.error(msg);
        return;
      }
      setFileName(file.name);
      setExcerpt(clipped);
      toast.success("PDF text ready");
    } catch (err) {
      const msg =
        err instanceof Error ? err.message : "Could not read that PDF.";
      setError(msg);
      toast.error(msg);
    } finally {
      setBusy(false);
      if (fileInputRef.current) fileInputRef.current.value = "";
    }
  };

  const handleIntent = (intent: PdfIntent, nextExcerpt: string) => {
    const clipped = clipExcerpt(nextExcerpt);
    setExcerpt(clipped);
    if (!clipped.trim()) {
      toast.error("Add some excerpt text first.");
      return;
    }

    if (onIntent) {
      onIntent(intent, clipped);
      return;
    }

    // Standalone fallback — text prompts only (no File blobs).
    if (!onAskScho) return;

    if (intent === "summarize") {
      try {
        const turn = buildSummarizeFromExcerpt(clipped);
        void onAskScho(turn.message, turn.telemetry);
      } catch (err) {
        toast.error(
          err instanceof Error ? err.message : "Nothing to summarize",
        );
      }
      return;
    }

    if (intent === "ask") {
      void onAskScho(promptForPdfIntent("ask", clipped), {
        source: "pdf",
        intent: "ask",
        pdf_excerpt: clipped,
      });
      return;
    }

    // quiz / flashcards need hub wiring (generateQuiz / FreeStudyFlashcards)
    toast.message("Open Free Studying PDF studio for quiz and flashcards.");
  };

  const onPasteExcerpt = (e: ChangeEvent<HTMLTextAreaElement>) => {
    setError(null);
    setExcerpt(e.target.value);
  };

  const hasExcerpt = excerpt.trim().length > 0;
  const locked = disabled || busy;
  const charLabel = `${excerpt.length.toLocaleString()} / ${FREE_STUDY_PDF_EXCERPT_MAX.toLocaleString()}`;

  return (
    <div
      className={[styles.shell, className].filter(Boolean).join(" ")}
      data-free-study-pdf=""
      aria-labelledby={headingId}
    >
      {!hasExcerpt ? (
        <div
          className={styles.uploadZone}
          data-busy={busy ? "true" : "false"}
        >
          <div className={styles.titleRow}>
            <FilePdf size={18} weight="duotone" aria-hidden />
            <p id={headingId} className={styles.uploadTitle}>
              Study from a PDF
            </p>
          </div>
          <p className={styles.uploadHint}>
            We extract readable text in your browser with pdf.js. Scho only
            receives that text — never the raw PDF file.
          </p>
          <div className={styles.actions}>
            <label className={styles.uploadBtn}>
              <UploadSimple size={16} aria-hidden />
              {busy ? "Reading…" : "Upload PDF"}
              <input
                ref={fileInputRef}
                type="file"
                accept="application/pdf,.pdf"
                className={styles.fileInput}
                disabled={locked}
                onChange={(e) => void onUpload(e.target.files?.[0] ?? null)}
              />
            </label>
          </div>
          <label className={styles.uploadHint} htmlFor={pasteId}>
            Or paste a passage:
          </label>
          <textarea
            id={pasteId}
            className={styles.pasteArea}
            rows={5}
            value={excerpt}
            onChange={onPasteExcerpt}
            disabled={locked}
            placeholder="Paste text if you already have an excerpt…"
            aria-label="Paste PDF excerpt"
          />
          {error ? (
            <p className={styles.error} role="alert">
              {error}
            </p>
          ) : (
            <p className={styles.safeNote}>
              Max 10 MB · text clipped to{" "}
              {FREE_STUDY_PDF_EXCERPT_MAX.toLocaleString()} chars for tutor
              context
            </p>
          )}
        </div>
      ) : (
        <>
          <div className={styles.metaRow}>
            <p className={styles.fileName} title={fileName ?? undefined}>
              {fileName ? fileName : "Excerpt ready"}
            </p>
            <p className={styles.charCount} aria-live="polite">
              {charLabel}
            </p>
          </div>
          <div className={styles.actions}>
            <label className={styles.ghostBtn}>
              <UploadSimple size={14} aria-hidden />
              {busy ? "Reading…" : "Replace PDF"}
              <input
                ref={fileInputRef}
                type="file"
                accept="application/pdf,.pdf"
                className={styles.fileInput}
                disabled={locked}
                onChange={(e) => void onUpload(e.target.files?.[0] ?? null)}
              />
            </label>
            <button
              type="button"
              className={styles.ghostBtn}
              disabled={locked}
              onClick={clearExcerpt}
              aria-label="Clear PDF excerpt"
            >
              <Trash size={14} aria-hidden />
              Clear
            </button>
          </div>
          {error ? (
            <p className={styles.error} role="alert">
              {error}
            </p>
          ) : (
            <p className={styles.safeNote}>
              Text only goes to Scho via <code>pdf_excerpt</code> telemetry —
              not the PDF bytes.
            </p>
          )}
          <PdfIntentChooser
            excerpt={excerpt}
            onExcerptChange={setExcerpt}
            onIntent={handleIntent}
            disabled={locked}
          />
        </>
      )}
    </div>
  );
}
