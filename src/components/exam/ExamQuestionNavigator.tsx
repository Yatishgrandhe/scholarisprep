"use client";

import { useEffect, useRef, useState } from "react";
import { CaretUp, Flag, X } from "@phosphor-icons/react";
import {
  resolveQuestionBankDifficulty,
  type BankDifficulty,
} from "@/lib/practice/questionBankGrid";
import styles from "./ExamQuestionNavigator.module.css";

type NavigatorQuestion = {
  difficulty?: string;
  challengedProblem?: boolean;
};

type ExamQuestionNavigatorProps = {
  label: string;
  total: number;
  /** 0-based index of the current question. */
  current: number;
  /** 1-based question numbers that have an answer. */
  answered: Set<number>;
  /** 1-based question numbers flagged for review. */
  flagged: Set<number>;
  /** Section questions — difficulty colors come from DB-mapped fields. */
  questions?: NavigatorQuestion[];
  onJump: (index: number) => void;
};

function difficultyClass(difficulty: BankDifficulty): string {
  if (difficulty === "easy") return styles.diffEasy;
  if (difficulty === "hard") return styles.diffHard;
  if (difficulty === "challenge") return styles.diffChallenge;
  return styles.diffMedium;
}

/**
 * Bottom-bar question navigator (OnePrep style): a compact "{n} of {total}"
 * trigger that opens a panel above it with the section label, a legend, and
 * the full numbered grid. Cell backgrounds use DB difficulty (same palette as
 * practice QuestionBankModal).
 */
export function ExamQuestionNavigator({
  label,
  total,
  current,
  answered,
  flagged,
  questions = [],
  onJump,
}: ExamQuestionNavigatorProps) {
  const [open, setOpen] = useState(false);
  const wrapRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (!open) return;
    const onDoc = (e: MouseEvent) => {
      if (!wrapRef.current?.contains(e.target as Node)) setOpen(false);
    };
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") setOpen(false);
    };
    document.addEventListener("mousedown", onDoc);
    document.addEventListener("keydown", onKey);
    return () => {
      document.removeEventListener("mousedown", onDoc);
      document.removeEventListener("keydown", onKey);
    };
  }, [open]);

  return (
    <div className={styles.wrap} ref={wrapRef}>
      {open ? (
        <div className={styles.panel} role="dialog" aria-label="Question navigator">
          <div className={styles.panelHead}>
            <span className={styles.panelTitle}>{label}</span>
            <button
              type="button"
              className={styles.closeBtn}
              onClick={() => setOpen(false)}
              aria-label="Close"
            >
              <X size={16} weight="bold" />
            </button>
          </div>

          <div className={styles.legend}>
            <span className={styles.legendItem}>
              <span className={styles.legendUnanswered} aria-hidden />
              Unanswered
            </span>
            <span className={styles.legendItem}>
              <Flag size={14} weight="fill" className={styles.legendFlag} aria-hidden />
              For Review
            </span>
          </div>

          <div className={styles.grid}>
            {Array.from({ length: total }, (_, i) => {
              const num = i + 1;
              const isCurrent = i === current;
              const isAnswered = answered.has(num);
              const isFlagged = flagged.has(num);
              const q = questions[i];
              const diff = resolveQuestionBankDifficulty(q ?? {});
              return (
                <button
                  key={num}
                  type="button"
                  className={[
                    styles.cell,
                    difficultyClass(diff),
                    isAnswered ? styles.cellAnswered : styles.cellUnanswered,
                    isCurrent ? styles.cellCurrent : "",
                  ]
                    .filter(Boolean)
                    .join(" ")}
                  aria-label={`Question ${num}, ${diff}${isCurrent ? ", current" : ""}${isAnswered ? ", answered" : ", unanswered"}${isFlagged ? ", for review" : ""}`}
                  onClick={() => {
                    onJump(i);
                    setOpen(false);
                  }}
                >
                  {isFlagged ? (
                    <Flag
                      size={11}
                      weight="fill"
                      className={styles.cellFlag}
                      aria-hidden
                    />
                  ) : null}
                  {num}
                </button>
              );
            })}
          </div>
        </div>
      ) : null}

      <button
        type="button"
        className={styles.trigger}
        onClick={() => setOpen((v) => !v)}
        aria-expanded={open}
        aria-haspopup="dialog"
      >
        {current + 1} of {total}
        <CaretUp
          size={13}
          weight="bold"
          className={open ? styles.caretOpen : styles.caret}
          aria-hidden
        />
      </button>
    </div>
  );
}
