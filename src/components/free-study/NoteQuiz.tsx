"use client";

import { useCallback, useMemo, useState } from "react";
import { X, ArrowRight } from "@phosphor-icons/react";
import type { GenerateQuizQuestion } from "@/lib/free-study/generateQuiz";
import styles from "./note-quiz.module.css";

type QuizScore = { correct: number; total: number };

type NoteQuizProps = {
  questions: GenerateQuizQuestion[];
  onComplete: (score: QuizScore) => void;
  onClose: () => void;
};

const LETTERS = ["A", "B", "C", "D"] as const;

export function NoteQuiz({ questions, onComplete, onClose }: NoteQuizProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [selectedOptionId, setSelectedOptionId] = useState<string | null>(null);
  const [showExplanation, setShowExplanation] = useState(false);
  const [correctCount, setCorrectCount] = useState(0);
  const [finished, setFinished] = useState(false);

  const question = questions[currentIndex];
  const total = questions.length;
  const isLast = currentIndex === total - 1;

  const correctOption = useMemo(
    () => question?.options.find((o) => o.is_correct) ?? null,
    [question],
  );

  const handleSelect = useCallback(
    (optionId: string) => {
      if (selectedOptionId) return;
      setSelectedOptionId(optionId);
      setShowExplanation(true);
      const chosen = question?.options.find((o) => o.id === optionId);
      if (chosen?.is_correct) {
        setCorrectCount((c) => c + 1);
      }
    },
    [question, selectedOptionId],
  );

  const handleNext = useCallback(() => {
    if (isLast) {
      const score = {
        correct: correctCount + (selectedOptionId && correctOption?.id === selectedOptionId ? 0 : 0),
        total,
      };
      setFinished(true);
      onComplete(score);
      return;
    }
    setCurrentIndex((i) => i + 1);
    setSelectedOptionId(null);
    setShowExplanation(false);
  }, [isLast, correctCount, selectedOptionId, correctOption, total, onComplete]);

  const handleSkip = useCallback(() => {
    if (isLast) {
      setFinished(true);
      onComplete({ correct: correctCount, total });
      return;
    }
    setCurrentIndex((i) => i + 1);
    setSelectedOptionId(null);
    setShowExplanation(false);
  }, [isLast, correctCount, total, onComplete]);

  if (finished) {
    return (
      <div className={styles.overlay} onClick={onClose}>
        <div
          className={styles.container}
          onClick={(e) => e.stopPropagation()}
          role="dialog"
          aria-label="Quiz complete"
        >
          <div className={styles.scoreScreen}>
            <span className={styles.scoreLabel}>Quiz Complete</span>
            <span className={styles.scoreNumber}>
              {correctCount} / {total}
            </span>
            <span className={styles.scoreSub}>
              {correctCount === total
                ? "Perfect score!"
                : correctCount > total / 2
                  ? "Great job!"
                  : "Keep studying and try again!"}
            </span>
            <button
              type="button"
              className={styles.scoreCloseBtn}
              onClick={onClose}
            >
              Close
            </button>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className={styles.overlay} onClick={onClose}>
      <div
        className={styles.container}
        onClick={(e) => e.stopPropagation()}
        role="dialog"
        aria-label="Quiz"
      >
        <div className={styles.header}>
          <span className={styles.headerTitle}>
            Question {currentIndex + 1} of {total}
          </span>
          <button
            type="button"
            className={styles.closeBtn}
            onClick={onClose}
            aria-label="Close quiz"
          >
            <X size={16} weight="bold" />
          </button>
        </div>

        <div className={styles.body}>
          <p className={styles.question}>{question?.question_text}</p>

          <div className={styles.options}>
            {question?.options.map((opt, idx) => {
              const isSelected = opt.id === selectedOptionId;
              const isRevealed = showExplanation;
              const isCorrect = opt.is_correct;

              let className = styles.option;
              if (isRevealed) {
                if (isCorrect) className += ` ${styles.optionCorrect}`;
                else if (isSelected) className += ` ${styles.optionIncorrect}`;
              } else if (isSelected) {
                className += ` ${styles.optionSelected}`;
              }

              return (
                <button
                  key={opt.id}
                  type="button"
                  className={className}
                  onClick={() => handleSelect(opt.id)}
                  disabled={isRevealed}
                >
                  <span className={styles.optionBadge}>{LETTERS[idx]}</span>
                  <span className={styles.optionText}>{opt.text}</span>
                </button>
              );
            })}
          </div>

          {showExplanation && question?.explanation ? (
            <div className={styles.explanation}>
              <strong>Explanation: </strong>
              {question.explanation}
            </div>
          ) : null}
        </div>

        <div className={styles.footer}>
          {!isLast ? (
            <button
              type="button"
              className={styles.skipBtn}
              onClick={handleSkip}
            >
              Skip
            </button>
          ) : null}
          {showExplanation ? (
            <button
              type="button"
              className={styles.nextBtn}
              onClick={handleNext}
            >
              {isLast ? "Finish" : "Next"}
              <ArrowRight size={14} weight="bold" />
            </button>
          ) : null}
        </div>
      </div>
    </div>
  );
}
