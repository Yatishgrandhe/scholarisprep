"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  X,
  ArrowRight,
  Lightbulb,
  Check,
  XCircle,
  ArrowClockwise,
  Trophy,
} from "@phosphor-icons/react";
import type { GenerateQuizQuestion } from "@/lib/free-study/generateQuiz";
import styles from "./note-quiz.module.css";

type QuizScore = { correct: number; total: number };

type NoteQuizProps = {
  questions: GenerateQuizQuestion[];
  onComplete: (score: QuizScore) => void;
  onClose: () => void;
  onProgress?: (current: number, total: number) => void;
};

const NUMBERS = ["1", "2", "3", "4"] as const;
const RING_RADIUS = 54;
const RING_CIRCUMFERENCE = 2 * Math.PI * RING_RADIUS;

export function NoteQuiz({
  questions,
  onComplete,
  onClose,
  onProgress,
}: NoteQuizProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [selectedOptionId, setSelectedOptionId] = useState<string | null>(null);
  const [isRevealed, setIsRevealed] = useState(false);
  const [correctCount, setCorrectCount] = useState(0);
  const [skippedCount, setSkippedCount] = useState(0);
  const [finished, setFinished] = useState(false);
  const [animDir, setAnimDir] = useState<"next" | "prev">("next");
  const [explanationOpen, setExplanationOpen] = useState(true);
  const [showFeedback, setShowFeedback] = useState(false);

  const autoAdvanceRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const containerRef = useRef<HTMLDivElement>(null);

  const total = questions.length;
  const question = questions[currentIndex];
  const isLast = currentIndex === total - 1;
  const progress = total > 0 ? ((currentIndex + (isRevealed ? 1 : 0)) / total) * 100 : 0;

  const correctOption = useMemo(
    () => question?.options.find((o) => o.is_correct) ?? null,
    [question],
  );

  const isCorrectSelection =
    selectedOptionId !== null && correctOption?.id === selectedOptionId;

  useEffect(() => {
    onProgress?.(currentIndex, total);
  }, [currentIndex, total, onProgress]);

  useEffect(() => {
    return () => {
      if (autoAdvanceRef.current) clearTimeout(autoAdvanceRef.current);
    };
  }, []);

  const handleSelect = useCallback(
    (optionId: string) => {
      if (isRevealed) return;
      setSelectedOptionId(optionId);
      setIsRevealed(true);
      setShowFeedback(true);
      setExplanationOpen(false);

      const chosen = question?.options.find((o) => o.id === optionId);
      if (chosen?.is_correct) {
        setCorrectCount((c) => c + 1);
      }

      autoAdvanceRef.current = setTimeout(() => {
        if (isLast) {
          const score = {
            correct:
              correctCount +
              (chosen?.is_correct ? 1 : 0),
            total,
          };
          setFinished(true);
          onComplete(score);
        } else {
          setAnimDir("next");
          setCurrentIndex((i) => i + 1);
          setSelectedOptionId(null);
          setIsRevealed(false);
          setShowFeedback(false);
          setExplanationOpen(true);
        }
      }, 1500);
    },
    [question, isRevealed, isLast, correctCount, total, onComplete],
  );

  const handleSkip = useCallback(() => {
    if (autoAdvanceRef.current) clearTimeout(autoAdvanceRef.current);
    setSkippedCount((s) => s + 1);
    if (isLast) {
      setFinished(true);
      onComplete({ correct: correctCount, total });
    } else {
      setAnimDir("next");
      setCurrentIndex((i) => i + 1);
      setSelectedOptionId(null);
      setIsRevealed(false);
      setShowFeedback(false);
      setExplanationOpen(true);
    }
  }, [isLast, correctCount, total, onComplete]);

  const handleNext = useCallback(() => {
    if (autoAdvanceRef.current) clearTimeout(autoAdvanceRef.current);
    if (isLast) {
      setFinished(true);
      onComplete({ correct: correctCount, total });
    } else {
      setAnimDir("next");
      setCurrentIndex((i) => i + 1);
      setSelectedOptionId(null);
      setIsRevealed(false);
      setShowFeedback(false);
      setExplanationOpen(true);
    }
  }, [isLast, correctCount, total, onComplete]);

  const handlePracticeAgain = useCallback(() => {
    setCurrentIndex(0);
    setSelectedOptionId(null);
    setIsRevealed(false);
    setCorrectCount(0);
    setSkippedCount(0);
    setFinished(false);
    setShowFeedback(false);
    setExplanationOpen(true);
  }, []);

  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if (finished) return;
      const key = e.key;

      if (!isRevealed) {
        if (key >= "1" && key <= "4") {
          const idx = parseInt(key) - 1;
          if (question?.options[idx]) {
            handleSelect(question.options[idx].id);
          }
        }
      }

      if (isRevealed && (key === "Enter" || key === " ")) {
        e.preventDefault();
        handleNext();
      }
    };

    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [finished, isRevealed, question, handleSelect, handleNext]);

  if (finished) {
    const percentage = total > 0 ? Math.round((correctCount / total) * 100) : 0;
    const incorrect = total - correctCount - skippedCount;

    return (
      <div className={styles.overlay} onClick={onClose}>
        <div
          className={styles.container}
          onClick={(e) => e.stopPropagation()}
          role="dialog"
          aria-label="Quiz complete"
        >
          <div className={styles.scoreScreen}>
            <div className={styles.confettiWrapper}>
              {Array.from({ length: 24 }).map((_, i) => (
                <div
                  key={i}
                  className={styles.confettiDot}
                  style={{
                    left: `${Math.random() * 100}%`,
                    top: `${Math.random() * 100}%`,
                    animationDelay: `${Math.random() * 2}s`,
                    animationDuration: `${2 + Math.random() * 3}s`,
                    background: [
                      "var(--duo-green)",
                      "var(--duo-blue)",
                      "var(--duo-yellow)",
                      "var(--duo-orange)",
                      "var(--duo-red)",
                    ][i % 5],
                    width: `${6 + Math.random() * 8}px`,
                    height: `${6 + Math.random() * 8}px`,
                  }}
                />
              ))}
            </div>

            <div className={styles.scoreTrophy}>
              <Trophy size={48} weight="fill" />
            </div>

            <div className={styles.scoreRingWrapper}>
              <svg
                className={styles.scoreRing}
                viewBox="0 0 120 120"
              >
                <circle
                  className={styles.scoreRingBg}
                  cx="60"
                  cy="60"
                  r={RING_RADIUS}
                  fill="none"
                  strokeWidth="8"
                />
                <circle
                  className={`${styles.scoreRingFill} ${
                    percentage >= 80
                      ? styles.scoreRingGreen
                      : percentage >= 50
                        ? styles.scoreRingYellow
                        : styles.scoreRingRed
                  }`}
                  cx="60"
                  cy="60"
                  r={RING_RADIUS}
                  fill="none"
                  strokeWidth="8"
                  strokeDasharray={RING_CIRCUMFERENCE}
                  strokeDashoffset={
                    RING_CIRCUMFERENCE - (RING_CIRCUMFERENCE * percentage) / 100
                  }
                  strokeLinecap="round"
                  transform="rotate(-90 60 60)"
                />
              </svg>
              <div className={styles.scorePercent}>
                <span className={styles.scorePercentNumber}>{percentage}</span>
                <span className={styles.scorePercentSign}>%</span>
              </div>
            </div>

            <h2 className={styles.scoreTitle}>
              {percentage === 100
                ? "Perfect Score!"
                : percentage >= 80
                  ? "Great Job!"
                  : percentage >= 50
                    ? "Not Bad!"
                    : "Keep Practicing!"}
            </h2>

            <div className={styles.scoreBreakdown}>
              <div className={styles.scoreBreakdownItem}>
                <div className={`${styles.scoreBreakdownDot} ${styles.dotGreen}`} />
                <span className={styles.scoreBreakdownLabel}>Correct</span>
                <span className={`${styles.scoreBreakdownValue} ${styles.valueGreen}`}>
                  {correctCount}
                </span>
              </div>
              <div className={styles.scoreBreakdownItem}>
                <div className={`${styles.scoreBreakdownDot} ${styles.dotRed}`} />
                <span className={styles.scoreBreakdownLabel}>Incorrect</span>
                <span className={`${styles.scoreBreakdownValue} ${styles.valueRed}`}>
                  {incorrect}
                </span>
              </div>
              <div className={styles.scoreBreakdownItem}>
                <div className={`${styles.scoreBreakdownDot} ${styles.dotGray}`} />
                <span className={styles.scoreBreakdownLabel}>Skipped</span>
                <span className={`${styles.scoreBreakdownValue} ${styles.valueGray}`}>
                  {skippedCount}
                </span>
              </div>
            </div>

            <div className={styles.scoreActions}>
              <button
                type="button"
                className={styles.practiceAgainBtn}
                onClick={handlePracticeAgain}
              >
                <ArrowClockwise size={18} weight="bold" />
                Practice Again
              </button>
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
      </div>
    );
  }

  const ringOffset =
    RING_CIRCUMFERENCE - (RING_CIRCUMFERENCE * progress) / 100;

  return (
    <div className={styles.overlay} onClick={onClose}>
      <div
        ref={containerRef}
        className={styles.container}
        onClick={(e) => e.stopPropagation()}
        role="dialog"
        aria-label="Quiz"
      >
        <div className={styles.header}>
          <div className={styles.progressRingWrapper}>
            <svg className={styles.progressRing} viewBox="0 0 120 120">
              <circle
                className={styles.progressRingBg}
                cx="60"
                cy="60"
                r={RING_RADIUS}
                fill="none"
                strokeWidth="7"
              />
              <circle
                className={styles.progressRingFill}
                cx="60"
                cy="60"
                r={RING_RADIUS}
                fill="none"
                strokeWidth="7"
                strokeDasharray={RING_CIRCUMFERENCE}
                strokeDashoffset={ringOffset}
                strokeLinecap="round"
                transform="rotate(-90 60 60)"
              />
            </svg>
            <span className={styles.progressRingText}>
              {currentIndex + 1}/{total}
            </span>
          </div>

          <div className={styles.headerCenter}>
            <span className={styles.headerTitle}>Question {currentIndex + 1}</span>
            <div className={styles.progressDots}>
              {questions.map((_, i) => (
                <div
                  key={i}
                  className={`${styles.progressDot} ${
                    i < currentIndex
                      ? styles.progressDotDone
                      : i === currentIndex
                        ? styles.progressDotActive
                        : ""
                  }`}
                />
              ))}
            </div>
          </div>

          <button
            type="button"
            className={styles.closeBtn}
            onClick={onClose}
            aria-label="Close quiz"
          >
            <X size={18} weight="bold" />
          </button>
        </div>

        <div className={styles.body}>
          <div
            key={currentIndex}
            className={`${styles.questionSlide} ${
              animDir === "next" ? styles.slideInNext : styles.slideInPrev
            }`}
          >
            <p className={styles.question}>{question?.question_text}</p>

            <div className={styles.options}>
              {question?.options.map((opt, idx) => {
                const isSelected = opt.id === selectedOptionId;
                const isCorrect = opt.is_correct;

                let optionClassName = styles.option;
                if (isRevealed) {
                  if (isCorrect) optionClassName += ` ${styles.optionCorrect}`;
                  else if (isSelected) optionClassName += ` ${styles.optionIncorrect}`;
                } else if (isSelected) {
                  optionClassName += ` ${styles.optionSelected}`;
                }

                return (
                  <button
                    key={opt.id}
                    type="button"
                    className={optionClassName}
                    onClick={() => handleSelect(opt.id)}
                    disabled={isRevealed}
                  >
                    <span
                      className={`${styles.optionBadge} ${
                        isRevealed && isCorrect
                          ? styles.badgeCorrect
                          : isRevealed && isSelected
                            ? styles.badgeIncorrect
                            : ""
                      }`}
                    >
                      {isRevealed && isCorrect ? (
                        <Check size={14} weight="bold" />
                      ) : isRevealed && isSelected && !isCorrect ? (
                        <XCircle size={14} weight="bold" />
                      ) : (
                        NUMBERS[idx]
                      )}
                    </span>
                    <span className={styles.optionText}>{opt.text}</span>
                    {isRevealed && isCorrect && (
                      <span className={styles.correctLabel}>Correct</span>
                    )}
                    {isRevealed && isSelected && !isCorrect && (
                      <span className={styles.incorrectLabel}>Incorrect</span>
                    )}
                  </button>
                );
              })}
            </div>

            {isRevealed && showFeedback && (
              <div
                className={`${styles.feedbackBanner} ${
                  isCorrectSelection ? styles.feedbackCorrect : styles.feedbackIncorrect
                }`}
              >
                {isCorrectSelection ? (
                  <>
                    <Check size={20} weight="bold" />
                    <span>Correct!</span>
                  </>
                ) : (
                  <>
                    <XCircle size={20} weight="bold" />
                    <span>Incorrect</span>
                  </>
                )}
              </div>
            )}

            {isRevealed && question?.explanation && (
              <div className={styles.explanationWrapper}>
                <button
                  type="button"
                  className={styles.explanationToggle}
                  onClick={() => setExplanationOpen((o) => !o)}
                >
                  <Lightbulb size={16} weight="fill" />
                  <span>Explanation</span>
                  <span
                    className={`${styles.explanationChevron} ${
                      explanationOpen ? styles.chevronOpen : ""
                    }`}
                  >
                    &#9660;
                  </span>
                </button>
                {explanationOpen && (
                  <div className={styles.explanationContent}>
                    {question.explanation}
                  </div>
                )}
              </div>
            )}
          </div>
        </div>

        <div className={styles.footer}>
          {!isRevealed ? (
            <button
              type="button"
              className={styles.skipBtn}
              onClick={handleSkip}
            >
              Skip
            </button>
          ) : (
            <div />
          )}
          {isRevealed ? (
            <button
              type="button"
              className={styles.nextBtn}
              onClick={handleNext}
            >
              {isLast ? "Finish" : "Continue"}
              <ArrowRight size={16} weight="bold" />
            </button>
          ) : (
            <div />
          )}
        </div>
      </div>
    </div>
  );
}
