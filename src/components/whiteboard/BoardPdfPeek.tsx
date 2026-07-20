"use client";

/**
 * Optional lightweight PDF excerpt peek for Whiteboard Studio.
 * Paste text or upload a PDF (client pdf.js extract) — not a full Kami viewer.
 * Parent wires `onChange` into tutor telemetry as `pdf_excerpt`.
 */

import {
  useCallback,
  useId,
  useRef,
  useState,
  type ChangeEvent,
} from "react";
import { FilePdf, Trash, UploadSimple, X } from "@phosphor-icons/react";
import { toast } from "sonner";
import { extractPdfTextClient } from "@/lib/pdf/extractText";
import styles from "./board-pdf-peek.module.css";

/** Matches tutor telemetry clip in `telemetryPayload` (pdf_excerpt). */
export const BOARD_PDF_EXCERPT_MAX = 6000;
const MAX_UPLOAD_BYTES = 10 * 1024 * 1024;

export type BoardPdfPeekProps = {
  /** Controlled excerpt. */
  value?: string;
  /** Uncontrolled initial excerpt. */
  defaultValue?: string;
  /** Fires on paste / upload / clear (truncated to BOARD_PDF_EXCERPT_MAX). */
  onChange?: (excerpt: string) => void;
  /** Start open (default collapsed — optional chrome). */
  defaultOpen?: boolean;
  className?: string;
};

function clipExcerpt(raw: string): string {
  const clean = raw.replace(/\u0000/g, "").trimStart();
  if (clean.length <= BOARD_PDF_EXCERPT_MAX) return clean;
  return `${clean.slice(0, BOARD_PDF_EXCERPT_MAX)}…`;
}

export function BoardPdfPeek({
  value,
  defaultValue = "",
  onChange,
  defaultOpen = false,
  className,
}: BoardPdfPeekProps) {
  const panelId = useId();
  const fileInputRef = useRef<HTMLInputElement>(null);
  const [open, setOpen] = useState(defaultOpen);
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

  const onTextChange = (e: ChangeEvent<HTMLTextAreaElement>) => {
    setError(null);
    setExcerpt(e.target.value);
  };

  const clearExcerpt = () => {
    setError(null);
    setFileName(null);
    setExcerpt("");
    if (fileInputRef.current) fileInputRef.current.value = "";
  };

  const onUpload = async (file: File | null) => {
    if (!file) return;
    setError(null);

    if (file.type && file.type !== "application/pdf") {
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
      const text = await extractPdfTextClient(file);
      const clipped = clipExcerpt(text);
      if (!clipped.trim()) {
        const msg = "No extractable text in that PDF.";
        setError(msg);
        toast.error(msg);
        return;
      }
      setFileName(file.name);
      setExcerpt(clipped);
      toast.success("PDF text ready");
      setOpen(true);
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

  const hasExcerpt = excerpt.trim().length > 0;
  const charLabel = `${excerpt.length.toLocaleString()} / ${BOARD_PDF_EXCERPT_MAX.toLocaleString()}`;

  return (
    <div
      className={[styles.shell, className].filter(Boolean).join(" ")}
      data-board-pdf-peek=""
    >
      <button
        type="button"
        className={styles.toggle}
        aria-expanded={open}
        aria-controls={panelId}
        onClick={() => setOpen((v) => !v)}
      >
        <FilePdf size={16} weight="duotone" aria-hidden />
        PDF peek
        {hasExcerpt ? (
          <span className={styles.toggleBadge} title="Excerpt loaded" />
        ) : null}
      </button>

      {open ? (
        <aside
          id={panelId}
          className={styles.panel}
          aria-label="PDF excerpt for reference while drawing"
        >
          <div className={styles.header}>
            <p className={styles.title}>Reference excerpt</p>
            <p className={styles.meta} aria-live="polite">
              {charLabel}
            </p>
          </div>

          <div className={styles.actions}>
            <label
              className={[styles.upload, busy ? styles.uploadBusy : ""]
                .filter(Boolean)
                .join(" ")}
            >
              <UploadSimple size={14} aria-hidden />
              {busy ? "Reading…" : "Upload PDF"}
              <input
                ref={fileInputRef}
                type="file"
                accept="application/pdf,.pdf"
                className={styles.fileInput}
                disabled={busy}
                onChange={(e) => void onUpload(e.target.files?.[0] ?? null)}
              />
            </label>
            <button
              type="button"
              className={styles.ghostBtn}
              disabled={!hasExcerpt && !fileName}
              onClick={clearExcerpt}
              aria-label="Clear PDF excerpt"
            >
              <Trash size={14} aria-hidden />
              Clear
            </button>
            <button
              type="button"
              className={styles.ghostBtn}
              onClick={() => setOpen(false)}
              aria-label="Close PDF peek"
            >
              <X size={14} aria-hidden />
            </button>
          </div>

          {fileName ? <p className={styles.fileName}>{fileName}</p> : null}

          <textarea
            className={styles.textarea}
            value={excerpt}
            onChange={onTextChange}
            rows={8}
            spellCheck={false}
            placeholder="Paste a passage, or upload a PDF — text only for Scho context while you draw."
            aria-label="PDF excerpt text"
            disabled={busy}
          />

          {error ? (
            <p className={styles.error} role="alert">
              {error}
            </p>
          ) : (
            <p className={styles.hint}>
              Client-side extract · max {BOARD_PDF_EXCERPT_MAX.toLocaleString()}{" "}
              chars · not a full PDF viewer
            </p>
          )}
        </aside>
      ) : null}
    </div>
  );
}
