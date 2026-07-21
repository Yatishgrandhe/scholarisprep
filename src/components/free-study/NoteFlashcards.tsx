"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { X } from "@phosphor-icons/react";
import type { FreeStudyFlashcard } from "@/lib/free-study/generateFlashcards";
import styles from "./note-flashcards.module.css";

type Rating = "again" | "hard" | "good" | "easy";

const RATING_ORDER: Rating[] = ["again", "hard", "good", "easy"];

type NoteFlashcardsProps = {
  cards: FreeStudyFlashcard[];
  onComplete: () => void;
  onClose: () => void;
};

export function NoteFlashcards({
  cards,
  onComplete,
  onClose,
}: NoteFlashcardsProps) {
  const [deck, setDeck] = useState<FreeStudyFlashcard[]>(() => [...cards]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [flipped, setFlipped] = useState(false);
  const [hasFlipped, setHasFlipped] = useState(false);
  const [finished, setFinished] = useState(false);
  const [ratings, setRatings] = useState<Map<number, Rating>>(new Map());
  const [showHint, setShowHint] = useState(true);
  const cardRef = useRef<HTMLDivElement>(null);

  const total = cards.length;
  const reviewedCount = ratings.size;
  const isFlipped = flipped;

  const progressSegments = useMemo(() => {
    return cards.map((_, i) => {
      const rating = ratings.get(i);
      if (rating === "again") return "again";
      if (rating === "hard") return "hard";
      if (rating === "good") return "good";
      if (rating === "easy") return "easy";
      if (i < currentIndex) return "pending";
      return "empty";
    });
  }, [cards, ratings, currentIndex]);

  const handleFlip = useCallback(() => {
    setFlipped((f) => !f);
    if (!hasFlipped) {
      setHasFlipped(true);
      setShowHint(false);
    }
  }, [hasFlipped]);

  const advanceCard = useCallback(
    (rating: Rating) => {
      setRatings((prev) => new Map(prev).set(currentIndex, rating));

      if (rating === "again") {
        const card = deck[currentIndex];
        setDeck((prev) => [...prev, card]);
        setFlipped(false);
        setHasFlipped(false);
        setShowHint(true);
        return;
      }

      if (currentIndex === deck.length - 1) {
        setFinished(true);
        onComplete();
        return;
      }

      setCurrentIndex((i) => i + 1);
      setFlipped(false);
      setHasFlipped(false);
      setShowHint(true);
    },
    [currentIndex, deck, onComplete],
  );

  useEffect(() => {
    if (finished) return;
    const handler = (e: KeyboardEvent) => {
      if (e.key === " " || e.key === "Enter") {
        e.preventDefault();
        handleFlip();
        return;
      }
      if (isFlipped) {
        if (e.key === "1") advanceCard("again");
        if (e.key === "2") advanceCard("hard");
        if (e.key === "3") advanceCard("good");
        if (e.key === "4") advanceCard("easy");
      }
    };
    window.addEventListener("keydown", handler);
    return () => window.removeEventListener("keydown", handler);
  }, [finished, isFlipped, handleFlip, advanceCard]);

  if (finished) {
    const mastered = ratings.size;
    const againCount = [...ratings.values()].filter((r) => r === "again").length;
    const hardCount = [...ratings.values()].filter((r) => r === "hard").length;
    const goodCount = [...ratings.values()].filter((r) => r === "good").length;
    const easyCount = [...ratings.values()].filter((r) => r === "easy").length;

    return (
      <div className={styles.overlay} onClick={onClose}>
        <div
          className={styles.container}
          onClick={(e) => e.stopPropagation()}
          role="dialog"
          aria-label="Flashcards complete"
        >
          <div className={styles.scoreScreen}>
            <div className={styles.scoreIcon}>
              <svg width="48" height="48" viewBox="0 0 48 48" fill="none">
                <circle cx="24" cy="24" r="24" fill="rgb(34 197 94 / 0.12)" />
                <path
                  d="M15 25L21 31L33 19"
                  stroke="rgb(34 197 94)"
                  strokeWidth="3"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                />
              </svg>
            </div>
            <span className={styles.scoreTitle}>Session Complete</span>
            <span className={styles.scoreMastered}>
              {mastered} of {total} mastered
            </span>

            <div className={styles.ratingBreakdown}>
              <div className={styles.ratingRow}>
                <span className={styles.ratingDot} style={{ background: "rgb(239 68 68)" }} />
                <span className={styles.ratingLabel}>Again</span>
                <span className={styles.ratingValue}>{againCount}</span>
              </div>
              <div className={styles.ratingRow}>
                <span className={styles.ratingDot} style={{ background: "rgb(249 115 22)" }} />
                <span className={styles.ratingLabel}>Hard</span>
                <span className={styles.ratingValue}>{hardCount}</span>
              </div>
              <div className={styles.ratingRow}>
                <span className={styles.ratingDot} style={{ background: "rgb(34 197 94)" }} />
                <span className={styles.ratingLabel}>Good</span>
                <span className={styles.ratingValue}>{goodCount}</span>
              </div>
              <div className={styles.ratingRow}>
                <span className={styles.ratingDot} style={{ background: "rgb(59 130 246)" }} />
                <span className={styles.ratingLabel}>Easy</span>
                <span className={styles.ratingValue}>{easyCount}</span>
              </div>
            </div>

            <button
              type="button"
              className={styles.scoreCloseBtn}
              onClick={onClose}
            >
              Done
            </button>
          </div>
        </div>
      </div>
    );
  }

  const current = deck[currentIndex];

  return (
    <div className={styles.overlay} onClick={onClose}>
      <div
        className={styles.container}
        onClick={(e) => e.stopPropagation()}
        role="dialog"
        aria-label="Flashcards"
      >
        <div className={styles.progressBar}>
          {progressSegments.map((seg, i) => (
            <div
              key={i}
              className={`${styles.segment} ${
                seg === "again"
                  ? styles.segmentAgain
                  : seg === "hard"
                    ? styles.segmentHard
                    : seg === "good"
                      ? styles.segmentGood
                      : seg === "easy"
                        ? styles.segmentEasy
                        : ""
              }`}
            />
          ))}
        </div>

        <div className={styles.header}>
          <span className={styles.headerCounter}>
            Card {currentIndex + 1} / {deck.length}
          </span>
          <button
            type="button"
            className={styles.closeBtn}
            onClick={onClose}
            aria-label="Close flashcards"
          >
            <X size={18} weight="bold" />
          </button>
        </div>

        <div className={styles.body}>
          <div className={styles.cardContainer}>
            <div
              ref={cardRef}
              className={`${styles.card} ${isFlipped ? styles.cardFlipped : ""}`}
              onClick={handleFlip}
              onKeyDown={(e) => {
                if (e.key === " " || e.key === "Enter") {
                  e.preventDefault();
                  handleFlip();
                }
              }}
              role="button"
              tabIndex={0}
              aria-label={isFlipped ? "Answer" : "Question — press space to flip"}
            >
              <div className={styles.cardFront}>
                <span className={styles.cardSideLabel}>Question</span>
                <span className={styles.cardContent}>{current?.front}</span>
                {current?.hint && (
                  <span className={styles.cardHint}>{current.hint}</span>
                )}
                {showHint && (
                  <span className={styles.flipHint}>Tap to reveal answer</span>
                )}
              </div>
              <div className={styles.cardBack}>
                <span className={styles.cardSideLabel}>Answer</span>
                <span className={styles.cardContent}>{current?.back}</span>
              </div>
            </div>
          </div>
        </div>

        {isFlipped && (
          <div className={styles.ratingBar}>
            <button
              type="button"
              className={`${styles.ratingBtn} ${styles.ratingAgain}`}
              onClick={() => advanceCard("again")}
              aria-label="Again — keyboard shortcut 1"
            >
              <span className={styles.ratingBtnKey}>1</span>
              <span className={styles.ratingBtnLabel}>Again</span>
            </button>
            <button
              type="button"
              className={`${styles.ratingBtn} ${styles.ratingHard}`}
              onClick={() => advanceCard("hard")}
              aria-label="Hard — keyboard shortcut 2"
            >
              <span className={styles.ratingBtnKey}>2</span>
              <span className={styles.ratingBtnLabel}>Hard</span>
            </button>
            <button
              type="button"
              className={`${styles.ratingBtn} ${styles.ratingGood}`}
              onClick={() => advanceCard("good")}
              aria-label="Good — keyboard shortcut 3"
            >
              <span className={styles.ratingBtnKey}>3</span>
              <span className={styles.ratingBtnLabel}>Good</span>
            </button>
            <button
              type="button"
              className={`${styles.ratingBtn} ${styles.ratingEasy}`}
              onClick={() => advanceCard("easy")}
              aria-label="Easy — keyboard shortcut 4"
            >
              <span className={styles.ratingBtnKey}>4</span>
              <span className={styles.ratingBtnLabel}>Easy</span>
            </button>
          </div>
        )}
      </div>
    </div>
  );
}
