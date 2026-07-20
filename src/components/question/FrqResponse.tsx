"use client";

import { useId } from "react";
import { CheckCircle, CircleHalf, Sparkle, XCircle } from "@phosphor-icons/react";
import { cn } from "@/lib/utils";
import { frqScoreState, type FrqScoreState, type FrqPart } from "@/lib/ai/frqGrading";
import { MathRenderer } from "./MathRenderer";
import styles from "./FrqResponse.module.css";

export type FrqGradeResult = {
  score: number;
  max_points: number;
  is_correct: boolean;
  feedback: string;
  strengths?: string[];
  improvements?: string[];
};

type FrqResponseProps = {
  value: string;
  onChange: (value: string) => void;
  disabled?: boolean;
  revealed?: boolean;
  grading?: boolean;
  grade?: FrqGradeResult | null;
  placeholder?: string;
  rows?: number;
  parts?: FrqPart[];
  partValues?: Record<string, string>;
  onPartChange?: (partId: string, value: string) => void;
};

function scoreStateClass(state: FrqScoreState): string {
  if (state === "full") return styles.resultFull;
  if (state === "partial") return styles.resultPartial;
  return styles.resultZero;
}

function textareaStateClass(state: FrqScoreState): string {
  if (state === "full") return styles.textareaFull;
  if (state === "partial") return styles.textareaPartial;
  return styles.textareaZero;
}

/**
 * Free-response / short-answer textarea — supports multi-part FRQs
 * with separate labeled textboxes for each part (a), (b), (c), etc.
 */
export function FrqResponse({
  value,
  onChange,
  disabled = false,
  revealed = false,
  grading = false,
  grade = null,
  placeholder = "Write your response here…",
  rows = 8,
  parts = [],
  partValues = {},
  onPartChange,
}: FrqResponseProps) {
  const id = useId();
  const hasParts = parts.length >= 2;
  const state =
    grade != null ? frqScoreState(grade.score, grade.max_points) : null;

  return (
    <div className={styles.wrap}>
      {hasParts ? (
        <div className={styles.partsContainer}>
          {parts.map((part) => {
            const partId = `${id}-part-${part.id}`;
            const partValue = partValues[part.id] ?? "";
            return (
              <div key={part.id} className={styles.partBlock}>
                <label htmlFor={partId} className={styles.partLabel}>
                  <span className={styles.partBadge}>{part.label}</span>
                  <span className={styles.partPrompt}>{part.prompt}</span>
                </label>
                <textarea
                  id={partId}
                  className={cn(styles.textarea, styles.textareaPart)}
                  value={partValue}
                  rows={4}
                  disabled={disabled || grading}
                  placeholder={`Your response for part ${part.label}…`}
                  onChange={(e) => onPartChange?.(part.id, e.target.value)}
                  aria-describedby={`${partId}-help`}
                />
                {partValue.trim() ? (
                  <span className={styles.charCount}>{partValue.length}</span>
                ) : null}
              </div>
            );
          })}
        </div>
      ) : (
        <>
          <label htmlFor={id} className={styles.label}>
            Your response
          </label>
          <textarea
            id={id}
            className={cn(
              styles.textarea,
              revealed && state && textareaStateClass(state),
            )}
            value={value}
            rows={rows}
            disabled={disabled || grading}
            placeholder={placeholder}
            onChange={(e) => onChange(e.target.value)}
            aria-describedby={`${id}-help`}
          />
        </>
      )}

      {grading ? (
        <p className={styles.grading} role="status" aria-live="polite">
          <Sparkle size={16} weight="fill" aria-hidden className={styles.spin} />
          Scoring your response…
        </p>
      ) : null}

      {revealed && grade && state ? (
        <div
          className={cn(styles.result, scoreStateClass(state))}
          role="status"
          aria-live="polite"
        >
          <div className={styles.scoreRow}>
            {state === "full" ? (
              <CheckCircle size={18} weight="fill" aria-hidden />
            ) : state === "partial" ? (
              <CircleHalf size={18} weight="fill" aria-hidden />
            ) : (
              <XCircle size={18} weight="fill" aria-hidden />
            )}
            <span>
              Score: <strong>{grade.score}</strong> / {grade.max_points}
              {state === "partial" ? (
                <span className={styles.stateLabel}> · Partial credit</span>
              ) : state === "zero" ? (
                <span className={styles.stateLabel}> · No credit</span>
              ) : (
                <span className={styles.stateLabel}> · Full credit</span>
              )}
            </span>
          </div>
          {grade.feedback ? (
            <div className={styles.feedback}>
              {grade.feedback.split("\n").map((line, i) => (
                <p key={i}>
                  <MathRenderer text={line} />
                </p>
              ))}
            </div>
          ) : null}
          {grade.strengths && grade.strengths.length > 0 ? (
            <div className={styles.listBlock}>
              <p className={styles.listTitle}>Strengths</p>
              <ul className={styles.list}>
                {grade.strengths.map((s) => (
                  <li key={s}><MathRenderer text={s} /></li>
                ))}
              </ul>
            </div>
          ) : null}
          {grade.improvements && grade.improvements.length > 0 ? (
            <div className={styles.listBlock}>
              <p className={styles.listTitle}>Improvements</p>
              <ul className={styles.list}>
                {grade.improvements.map((s) => (
                  <li key={s}><MathRenderer text={s} /></li>
                ))}
              </ul>
            </div>
          ) : null}
        </div>
      ) : null}

      <p className={styles.help} id={`${hasParts ? parts[0]?.id : id}-help`}>
        {hasParts
          ? "Answer each part separately. Scho will score each part against the rubric."
          : "Write in complete sentences. Show reasoning for multi-part prompts. Scho will score this against the rubric."}
      </p>
    </div>
  );
}
