"use client";

import { useId, useState } from "react";
import {
  ChatsCircle,
  Exam,
  Cards,
  TextAlignLeft,
} from "@phosphor-icons/react";
import {
  SUMMARIZE_USER_MESSAGE,
  buildSummarizeTutorTurn,
} from "@/lib/free-study/summarizeIntent";
import type { FreeStudyTelemetry } from "@/lib/ai/telemetryPayload";
import styles from "./pdf-intent.module.css";

export type PdfIntent = "ask" | "quiz" | "summarize" | "flashcards";

export type PdfIntentChooserProps = {
  /** Extracted / editable PDF excerpt shown above the intent grid. */
  excerpt: string;
  /** Fired when the learner picks an intent (excerpt is the current editor value). */
  onIntent: (intent: PdfIntent, excerpt: string) => void;
  /** Optional controlled excerpt change (hub can keep `pdfText` in sync). */
  onExcerptChange?: (excerpt: string) => void;
  disabled?: boolean;
  className?: string;
};

/** Summarize chip → tutor message + telemetry (text only, never PDF bytes). */
export function buildSummarizeFromExcerpt(excerpt: string): {
  message: string;
  telemetry: FreeStudyTelemetry;
} {
  return buildSummarizeTutorTurn({ text: excerpt, channel: "pdf" });
}

const INTENTS: {
  id: PdfIntent;
  label: string;
  hint: string;
  Icon: typeof ChatsCircle;
  primary?: boolean;
}[] = [
  {
    id: "quiz",
    label: "Generate quiz",
    hint: "Check understanding with targeted questions",
    Icon: Exam,
    primary: true,
  },
  {
    id: "ask",
    label: "Ask Scho",
    hint: "Talk through the passage with your tutor",
    Icon: ChatsCircle,
  },
  {
    id: "summarize",
    label: "Summarize",
    hint: "Key ideas in a clear, short brief",
    Icon: TextAlignLeft,
  },
  {
    id: "flashcards",
    label: "Flashcards",
    hint: "Terms and concepts to drill later",
    Icon: Cards,
  },
];

/** Prompt templates the hub (or callers) can send to Scho. */
export function promptForPdfIntent(intent: PdfIntent, excerpt: string): string {
  const clip = excerpt.trim().slice(0, 2000);
  switch (intent) {
    case "ask":
      return `Help me understand this PDF excerpt:\n${clip}`;
    case "quiz":
      return `Generate a short quiz (4–6 questions with answers) from this PDF excerpt. Mix recall and application.\n\nExcerpt:\n${clip}`;
    case "summarize":
      // Full excerpt rides in telemetry via buildSummarizeFromExcerpt —
      // keep the chat message short (tutor route max ~3k).
      return SUMMARIZE_USER_MESSAGE;
    case "flashcards":
      return `Create flashcards (front/back) from this PDF excerpt — focus on terms, formulas, and must-know facts.\n\nExcerpt:\n${clip}`;
  }
}

/**
 * Post-extract intent UI for Free Studying PDF mode.
 * Shows an editable excerpt + Ask Scho / quiz / summarize / flashcards.
 */
export function PdfIntentChooser({
  excerpt,
  onIntent,
  onExcerptChange,
  disabled = false,
  className,
}: PdfIntentChooserProps) {
  const titleId = useId();
  const [local, setLocal] = useState(excerpt);
  const value = onExcerptChange ? excerpt : local;

  const setValue = (next: string) => {
    if (onExcerptChange) onExcerptChange(next);
    else setLocal(next);
  };

  const charLabel =
    value.length > 8000
      ? `${value.length.toLocaleString()} chars (showing edit window)`
      : `${value.length.toLocaleString()} chars`;

  return (
    <section
      className={[styles.root, className].filter(Boolean).join(" ")}
      aria-labelledby={titleId}
    >
      <header className={styles.header}>
        <p className={styles.eyebrow}>PDF ready</p>
        <h2 id={titleId} className={styles.title}>
          What do you want to do?
        </h2>
        <p className={styles.sub}>
          Edit the excerpt if needed, then pick how Scho should help.
        </p>
      </header>

      <div className={styles.excerptShell}>
        <textarea
          className={styles.excerpt}
          value={value.slice(0, 8000)}
          onChange={(e) => setValue(e.target.value)}
          rows={8}
          disabled={disabled}
          aria-label="PDF excerpt"
        />
        <div className={styles.meta}>
          <span>Excerpt</span>
          <span>{charLabel}</span>
        </div>
      </div>

      <div className={styles.grid} role="group" aria-label="PDF study intents">
        {INTENTS.map(({ id, label, hint, Icon, primary }) => (
          <button
            key={id}
            type="button"
            className={[styles.tile, primary ? styles.tilePrimary : ""]
              .filter(Boolean)
              .join(" ")}
            data-intent={id}
            disabled={disabled || !value.trim()}
            onClick={() => onIntent(id, value.trim())}
          >
            <span className={styles.tileIcon} aria-hidden>
              <Icon size={18} weight="duotone" />
            </span>
            <span className={styles.tileLabel}>{label}</span>
            <span className={styles.tileHint}>{hint}</span>
          </button>
        ))}
      </div>
    </section>
  );
}
