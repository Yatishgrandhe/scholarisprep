"use client";

/**
 * Interactive Free Studying quiz panel.
 * Consumes `GenerateQuizResult` / questions from `@/lib/free-study/generateQuiz`.
 */

import { useEffect, useMemo, useState } from "react";
import {
  ArrowCounterClockwise,
  Check,
  CheckCircle,
  Exam,
  X,
  XCircle,
} from "@phosphor-icons/react";
import { cn } from "@/lib/utils";
import type {
  GenerateQuizQuestion,
  GenerateQuizResult,
} from "@/lib/free-study/generateQuiz";
import styles from "./free-study-quiz.module.css";

export type FreeStudyQuizPanelProps = {
  /** Full result from `generateQuiz`, or a bare questions array. */
  quiz: GenerateQuizResult | GenerateQuizQuestion[];
  onClose?: () => void;
  className?: string;
};

function normalizeQuestions(
  quiz: GenerateQuizResult | GenerateQuizQuestion[],
): GenerateQuizQuestion[] {
  if (Array.isArray(quiz)) return quiz;
  return quiz.questions ?? [];
}

function quizFingerprint(questions: GenerateQuizQuestion[]): string {
  return questions
    .map((q) => `${q.question_text}|${q.options.map((o) => o.id).join(",")}`)
    .join(";;");
}

function letterForIndex(i: number): string {
  return String.fromCharCode(65 + i);
}

/**
 * Render generated MCQs, collect answers, and show check + explanations.
 */
export function FreeStudyQuizPanel({
  quiz,
  onClose,
  className,
}: FreeStudyQuizPanelProps) {
  const questions = useMemo(() => normalizeQuestions(quiz), [quiz]);
  const fingerprint = useMemo(
    () => quizFingerprint(questions),
    [questions],
  );

  const [selections, setSelections] = useState<Record<string, string>>({});
  const [checked, setChecked] = useState(false);

  useEffect(() => {
    setSelections({});
    setChecked(false);
  }, [fingerprint]);

  const answeredCount = useMemo(() => {
    let n = 0;
    questions.forEach((q, i) => {
      if (selections[questionKey(q, i)]) n += 1;
    });
    return n;
  }, [questions, selections]);

  const score = useMemo(() => {
    if (!checked) return null;
    let correct = 0;
    questions.forEach((q, i) => {
      const key = questionKey(q, i);
      const selectedId = selections[key];
      const opt = q.options.find((o) => o.id === selectedId);
      if (opt?.is_correct) correct += 1;
    });
    return { correct, total: questions.length };
  }, [checked, questions, selections]);

  if (questions.length === 0) {
    return (
      <section
        className={cn(styles.root, className)}
        aria-label="Quiz"
      >
        <p className={styles.empty}>No quiz questions yet.</p>
      </section>
    );
  }

  const allAnswered = answeredCount === questions.length;

  return (
    <section
      className={cn(styles.root, className)}
      aria-label="Check yourself quiz"
    >
      <header className={styles.head}>
        <div className={styles.headMain}>
          <p className={styles.kicker}>
            <Exam size={12} weight="bold" aria-hidden />
            Check yourself
          </p>
          <h2 className={styles.title}>Quiz</h2>
          <p className={styles.meta}>
            {questions.length} question{questions.length === 1 ? "" : "s"}
            {!checked
              ? ` · ${answeredCount} answered`
              : null}
          </p>
        </div>
        <div className={styles.headActions}>
          {onClose ? (
            <button
              type="button"
              className={styles.ghostBtn}
              onClick={onClose}
              aria-label="Close quiz"
            >
              <X size={15} weight="bold" aria-hidden />
              Close
            </button>
          ) : null}
        </div>
      </header>

      {score ? (
        <div className={styles.scoreBanner} role="status">
          <span className={styles.scoreValue}>
            {score.correct}/{score.total}
          </span>
          <p className={styles.scoreHint}>
            {score.correct === score.total
              ? "Perfect — you owned this set."
              : score.correct === 0
                ? "Review the explanations and try again."
                : "Nice progress — read the notes below, then retry."}
          </p>
        </div>
      ) : null}

      <ol className={styles.list}>
        {questions.map((q, qi) => {
          const key = questionKey(q, qi);
          const selectedId = selections[key] ?? null;
          const selectedOpt = q.options.find((o) => o.id === selectedId);
          const isCorrect = Boolean(selectedOpt?.is_correct);

          return (
            <li key={key} className={styles.item}>
              <p className={styles.prompt} id={`${key}-prompt`}>
                <span className={styles.promptIndex}>{qi + 1}.</span>
                {q.question_text}
              </p>
              <ul
                className={styles.options}
                role="listbox"
                aria-labelledby={`${key}-prompt`}
                aria-disabled={checked}
              >
                {q.options.map((opt, oi) => {
                  const isSelected = selectedId === opt.id;
                  const showCorrect = checked && opt.is_correct;
                  const showWrong =
                    checked && isSelected && !opt.is_correct;

                  return (
                    <li key={opt.id}>
                      <button
                        type="button"
                        role="option"
                        aria-selected={isSelected}
                        disabled={checked}
                        className={cn(
                          styles.option,
                          isSelected && !checked && styles.optionSelected,
                          showCorrect && styles.optionCorrect,
                          showWrong && styles.optionWrong,
                        )}
                        onClick={() => {
                          if (checked) return;
                          setSelections((prev) => ({
                            ...prev,
                            [key]: opt.id,
                          }));
                        }}
                      >
                        <span className={styles.letter} aria-hidden>
                          {showCorrect ? (
                            <Check size={11} weight="bold" />
                          ) : showWrong ? (
                            <X size={11} weight="bold" />
                          ) : (
                            letterForIndex(oi)
                          )}
                        </span>
                        <span className={styles.optionText}>{opt.text}</span>
                        {showCorrect ? (
                          <CheckCircle
                            className={styles.mark}
                            size={16}
                            weight="fill"
                            aria-hidden
                          />
                        ) : null}
                        {showWrong ? (
                          <XCircle
                            className={styles.mark}
                            size={16}
                            weight="fill"
                            aria-hidden
                          />
                        ) : null}
                      </button>
                    </li>
                  );
                })}
              </ul>

              {checked ? (
                <p
                  className={cn(
                    styles.feedback,
                    isCorrect ? styles.feedbackGood : styles.feedbackBad,
                  )}
                  role="status"
                >
                  {isCorrect
                    ? "Correct."
                    : selectedId
                      ? `Not quite — answer is ${q.correct_answer || "the highlighted option"}.`
                      : "No answer selected."}
                  {q.explanation?.trim() ? (
                    <span className={styles.explanation}>{q.explanation}</span>
                  ) : null}
                </p>
              ) : null}
            </li>
          );
        })}
      </ol>

      <footer className={styles.footer}>
        {!checked ? (
          <button
            type="button"
            className={styles.checkBtn}
            disabled={!allAnswered}
            onClick={() => setChecked(true)}
          >
            <CheckCircle size={16} weight="fill" aria-hidden />
            Check answers
          </button>
        ) : (
          <button
            type="button"
            className={styles.checkBtn}
            onClick={() => {
              setSelections({});
              setChecked(false);
            }}
          >
            <ArrowCounterClockwise size={16} weight="bold" aria-hidden />
            Try again
          </button>
        )}
        {!checked && !allAnswered ? (
          <p className={styles.meta}>
            Select an answer for every question to check.
          </p>
        ) : null}
      </footer>
    </section>
  );
}

function questionKey(q: GenerateQuizQuestion, index: number): string {
  const first = q.options[0]?.id ?? "q";
  return `qz-${index}-${first}`;
}

export default FreeStudyQuizPanel;
