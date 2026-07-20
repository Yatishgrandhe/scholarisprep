"use client";

/**
 * Free Studying image attach: upload → Tesseract OCR (`ocr.ts`) → editable text.
 * Mistral receives telemetry `ocr_text` only — never image bytes.
 */

import { useEffect, useId, useRef, useState } from "react";
import {
  Image as ImageIcon,
  PaperPlaneTilt,
  TextAa,
} from "@phosphor-icons/react";
import {
  recognizeImageText,
  type OcrProgress,
} from "@/lib/free-study/ocr";
import styles from "./free-study-image-ask.module.css";

const ACCEPT = "image/png,image/jpeg,image/webp,image/gif,image/bmp";

export type FreeStudyImageAskProps = {
  /** Called whenever OCR text changes (for hub telemetry `ocr_text`). */
  ocrText: string;
  onOcrTextChange: (text: string) => void;
  /**
   * Ask Scho with a chat-ready message. Hub should send `ocrText` via
   * telemetry — do not upload the image to the tutor API.
   */
  onAsk: (message: string, ocrText: string) => void;
  askDisabled?: boolean;
  className?: string;
  /** Optional progress hook (e.g. ModelProgressBar). */
  onOcrProgress?: (p: OcrProgress | null) => void;
};

function formatImageAskPrompt(ocrText: string): string {
  return `Help me understand this from a photo I uploaded (OCR text):\n${ocrText.slice(0, 2000)}`;
}

export function FreeStudyImageAsk({
  ocrText,
  onOcrTextChange,
  onAsk,
  askDisabled = false,
  className,
  onOcrProgress,
}: FreeStudyImageAskProps) {
  const inputId = useId();
  const fileRef = useRef<HTMLInputElement>(null);
  const [file, setFile] = useState<File | null>(null);
  const [previewUrl, setPreviewUrl] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  const [progress, setProgress] = useState<OcrProgress | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [attempted, setAttempted] = useState(false);

  useEffect(() => {
    if (!file) {
      setPreviewUrl(null);
      return;
    }
    const url = URL.createObjectURL(file);
    setPreviewUrl(url);
    return () => URL.revokeObjectURL(url);
  }, [file]);

  const reportProgress = (p: OcrProgress | null) => {
    setProgress(p);
    onOcrProgress?.(p);
  };

  const runOcr = async (image: File): Promise<string | null> => {
    setBusy(true);
    setAttempted(true);
    setError(null);
    reportProgress({ status: "recognizing", progress: 0 });
    try {
      const text = await recognizeImageText(image, (p) => reportProgress(p));
      const trimmed = text.trim();
      onOcrTextChange(trimmed);
      if (!trimmed) {
        setError(
          "No readable text found. Try a clearer photo, or type the text below.",
        );
        return "";
      }
      setError(null);
      return trimmed;
    } catch (err) {
      const message = err instanceof Error ? err.message : "OCR failed";
      setError(message);
      return null;
    } finally {
      setBusy(false);
      reportProgress(null);
    }
  };

  const onFilePicked = async (next: File | null) => {
    if (!next) return;
    if (!next.type.startsWith("image/")) {
      setError("Please choose an image file (PNG, JPEG, WebP…).");
      return;
    }
    setFile(next);
    await runOcr(next);
  };

  const askFromImage = async () => {
    if (askDisabled || busy) return;
    let text = ocrText.trim();
    if (!text && file) {
      const read = await runOcr(file);
      if (read === null) return;
      text = read.trim();
    }
    if (!text) {
      setError(
        "Upload an image first, or edit the OCR text below, then Ask Scho.",
      );
      return;
    }
    setError(null);
    onAsk(formatImageAskPrompt(text), text);
  };

  const showEditor = attempted || Boolean(ocrText);
  const showProgress = busy && progress != null;

  return (
    <div
      className={[styles.root, className].filter(Boolean).join(" ")}
      role="region"
      aria-label="Image OCR ask"
    >
      <p className={styles.hint}>
        Upload a photo of a problem or notes. Text is read on-device with
        Tesseract — only the OCR text is sent to Scho (not the image).
      </p>

      <div className={styles.row}>
        <label
          className={styles.uploadLabel}
          htmlFor={inputId}
          data-disabled={busy ? "true" : undefined}
        >
          <ImageIcon size={16} weight="bold" aria-hidden />
          {busy ? "Reading…" : file ? "Replace image" : "Upload image"}
          <input
            ref={fileRef}
            id={inputId}
            type="file"
            accept={ACCEPT}
            className={styles.fileInput}
            disabled={busy}
            onChange={(e) => {
              const picked = e.target.files?.[0] ?? null;
              void onFilePicked(picked);
              e.target.value = "";
            }}
          />
        </label>

        {file && !busy ? (
          <button
            type="button"
            className={`${styles.btn} ${styles.secondary}`}
            disabled={busy}
            onClick={() => void runOcr(file)}
          >
            <TextAa size={16} weight="bold" aria-hidden />
            Re-read
          </button>
        ) : null}

        <button
          type="button"
          className={`${styles.btn} ${styles.primary}`}
          disabled={askDisabled || busy || !ocrText.trim()}
          onClick={() => void askFromImage()}
        >
          <PaperPlaneTilt size={16} weight="bold" aria-hidden />
          Ask Scho
        </button>
      </div>

      {file && previewUrl ? (
        <div className={styles.preview}>
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img
            className={styles.thumb}
            src={previewUrl}
            alt=""
            width={72}
            height={72}
          />
          <div className={styles.fileMeta}>
            <span className={styles.fileName}>{file.name}</span>
            <span>Local preview only — not uploaded to the tutor API.</span>
          </div>
        </div>
      ) : null}

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
              onOcrTextChange(e.target.value);
              if (error) setError(null);
            }}
            rows={4}
            placeholder="OCR output appears here — fix any misreads, then Ask Scho."
            aria-label="OCR text from image"
          />
        </label>
      ) : null}
    </div>
  );
}
