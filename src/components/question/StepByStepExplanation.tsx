"use client";

import { useMemo, useState } from "react";
import Link from "next/link";
import { Check, Sparkle, X } from "@phosphor-icons/react";
import { cn } from "@/lib/utils";
import {
  parseStepExplanation,
  type HighlightColor,
  type TextSegment,
} from "@/lib/question/parseStepExplanation";
import type { Question } from "./QuestionInterface";
import { MathRenderer } from "./MathRenderer";
import styles from "./StepByStepExplanation.module.css";

export type StepByStepExplanationProps = {
  question: Pick<
    Question,
    | "id"
    | "explanation"
    | "options"
    | "stimulus_text"
    | "stimulus_type"
    | "section"
  >;
  selectedOptionId?: string | null;
  variant?: "inline" | "drawer";
  /** Pin the panel to the light "paper" palette (exam UI). Report pages stay theme-aware. */
  paper?: boolean;
  showAskScho?: boolean;
  onAskScho?: (prompt?: string) => void;
};

function highlightClass(color: HighlightColor): string {
  if (color === "blue") return styles.highlightBlue;
  if (color === "pink") return styles.highlightPink;
  return styles.highlightYellow;
}

function PassageExcerptBlock({ segments }: { segments: TextSegment[] }) {
  return (
    <blockquote className={styles.passageExcerpt}>
      {segments.map((segment, index) =>
        segment.type === "text" ? (
          <span key={index}>{segment.value}</span>
        ) : (
          <mark key={index} className={highlightClass(segment.color)}>
            {segment.value}
          </mark>
        ),
      )}
    </blockquote>
  );
}

export function StepByStepExplanation({
  question,
  selectedOptionId,
  variant = "inline",
  paper = false,
  showAskScho = false,
  onAskScho,
}: StepByStepExplanationProps) {
  const parsed = useMemo(() => parseStepExplanation(question), [question]);
  const correctOption = question.options.find((o) => o.is_correct);

  const [activeOptionId, setActiveOptionId] = useState(
    selectedOptionId ?? parsed.correctOptionId ?? question.options[0]?.id,
  );
  const [showPlainText, setShowPlainText] = useState(false);

  const activeVerdict = parsed.optionVerdicts.find((v) => v.id === activeOptionId);
  const hasExplanation =
    Boolean(question.explanation?.trim()) ||
    question.options.some((o) => o.explanation?.trim());

  if (!hasExplanation) return null;

  return (
    <div
      className={cn(
        styles.panel,
        variant === "drawer" ? styles.panelDrawer : styles.panelInline,
        (paper || variant === "drawer") && styles.paper,
      )}
      role="region"
      aria-label="Step-by-step explanation"
    >
      <header className={styles.header}>
        <h2 className={styles.title}>Step-by-step explanation</h2>
        <div className={styles.headerActions}>
          <button
            type="button"
            className={cn(
              styles.togglePlain,
              showPlainText && styles.togglePlainActive,
            )}
            onClick={() => setShowPlainText((value) => !value)}
            aria-pressed={showPlainText}
          >
            {showPlainText ? "Show step-by-step" : "Show text explanation"}
          </button>
          <Link
            href={`/dashboard/feedback?type=question&q=${question.id}`}
            className={styles.reportLink}
          >
            Report
          </Link>
        </div>
      </header>

      {question.options.length > 0 ? (
        <div className={styles.optionTabs} role="tablist" aria-label="Answer choices">
          {question.options.map((opt) => {
            const isSelected = opt.id === selectedOptionId;
            const isActive = opt.id === activeOptionId;
            return (
              <button
                key={opt.id}
                type="button"
                role="tab"
                aria-selected={isActive}
                className={cn(
                  styles.optionTab,
                  isActive && styles.optionTabActive,
                  opt.is_correct && styles.optionTabCorrect,
                  isSelected && !opt.is_correct && styles.optionTabWrong,
                )}
                onClick={() => setActiveOptionId(opt.id)}
                aria-label={`Choice ${opt.id}${opt.is_correct ? ", correct" : ""}`}
              >
                {opt.id}
                {opt.is_correct ? (
                  <Check size={12} weight="bold" className={styles.tabIcon} />
                ) : isSelected ? (
                  <X size={12} weight="bold" className={styles.tabIcon} />
                ) : null}
              </button>
            );
          })}
        </div>
      ) : null}

      {activeVerdict ? (
        <div
          className={cn(
            styles.verdict,
            activeVerdict.isCorrect ? styles.verdictCorrect : styles.verdictWrong,
          )}
        >
          <p className={styles.verdictLabel}>
            {activeVerdict.isCorrect ? (
              <>
                <Check size={16} weight="bold" aria-hidden />
                Correct Answer
              </>
            ) : (
              <>
                <X size={16} weight="bold" aria-hidden />
                Why this answer is wrong
              </>
            )}
          </p>
          <div className={styles.verdictChoice}>
            <span className={styles.choiceBadge}>{activeVerdict.id}</span>
            <p className={styles.choiceText}>
              <MathRenderer text={activeVerdict.text} />
            </p>
          </div>
          {activeVerdict.rationale ? (
            <p className={styles.verdictRationale}>
              <MathRenderer text={activeVerdict.rationale} />
            </p>
          ) : null}
        </div>
      ) : null}

      {showPlainText ? (
        <p className={styles.plainText}>
          <MathRenderer text={parsed.plainText} />
        </p>
      ) : (
        <ol className={styles.timeline}>
          {parsed.steps.map((step, index) => {
            return (
              <li
                key={`${step.number}-${index}`}
                className={styles.timelineItem}
              >
                <span className={styles.timelineDot} aria-hidden>
                  {step.number}
                </span>
                <div>
                  <h3 className={styles.stepTitle}>
                    Step {step.number}: {step.title}
                  </h3>
                  <p className={styles.stepBody}>
                    <MathRenderer text={step.body} />
                  </p>
                  {step.passageExcerpt ? (
                    <PassageExcerptBlock segments={step.passageExcerpt.segments} />
                  ) : null}
                  {step.eliminatedOptions.length > 0 ? (
                    <div className={styles.eliminatedList}>
                      {step.eliminatedOptions.map((option) => (
                        <div
                          key={option.id}
                          className={styles.eliminatedOption}
                        >
                          <div className={styles.eliminatedHead}>
                            <span className={styles.eliminatedBadge}>
                              {option.id}
                            </span>
                            <p className={styles.eliminatedText}>
                              <MathRenderer text={option.text} />
                            </p>
                          </div>
                          {option.rationale ? (
                            <p className={styles.eliminatedRationale}>
                              <MathRenderer text={option.rationale} />
                            </p>
                          ) : null}
                        </div>
                      ))}
                    </div>
                  ) : null}
                </div>
              </li>
            );
          })}
        </ol>
      )}

      <footer className={styles.footer}>End of explanation</footer>

      {showAskScho && onAskScho ? (
        <button
          type="button"
          className={styles.askCta}
          onClick={() =>
            onAskScho(
              `Can you walk me through why choice ${correctOption?.id ?? activeOptionId} is correct${
                selectedOptionId && selectedOptionId !== correctOption?.id
                  ? ` and why choice ${selectedOptionId} is wrong`
                  : ""
              } for this question?`,
            )
          }
        >
          <Sparkle size={16} weight="fill" aria-hidden />
          Still stuck? Ask Scho
        </button>
      ) : null}
    </div>
  );
}
