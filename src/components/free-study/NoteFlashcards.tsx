"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import {
  X,
  ArrowLeft,
  ArrowRight,
  CheckCircle,
  XCircle,
} from "@phosphor-icons/react";
import type { FreeStudyFlashcard } from "@/lib/free-study/generateFlashcards";
import styles from "./note-flashcards.module.css";

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
  const [currentIndex, setCurrentIndex] = useState(0);
  const [flipped, setFlipped] = useState(false);
  const [knownCards, setKnownCards] = useState<Set<number>>(new Set());
  const [finished, setFinished] = useState(false);

  const total = cards.length;
  const current = cards[currentIndex];

  const progress = useMemo(
    () => (total > 0 ? ((currentIndex + 1) / total) * 100 : 0),
    [currentIndex, total],
  );

  const go = useCallback(
    (delta: number) => {
      const next = currentIndex + delta;
      if (next < 0 || next >= total) return;
      setCurrentIndex(next);
      setFlipped(false);
    },
    [currentIndex, total],
  );

  const handleKnown = useCallback(() => {
    setKnownCards((prev) => new Set(prev).add(currentIndex));
    if (currentIndex === total - 1) {
      setFinished(true);
      onComplete();
      return;
    }
    setCurrentIndex((i) => i + 1);
    setFlipped(false);
  }, [currentIndex, total, onComplete]);

  const handleReview = useCallback(() => {
    if (currentIndex === total - 1) {
      setFinished(true);
      onComplete();
      return;
    }
    setCurrentIndex((i) => i + 1);
    setFlipped(false);
  }, [currentIndex, total, onComplete]);

  useEffect(() => {
    if (finished) return;
    const handler = (e: KeyboardEvent) => {
      if (e.key === "ArrowLeft") go(-1);
      if (e.key === "ArrowRight") go(1);
      if (e.key === " " || e.key === "Enter") {
        e.preventDefault();
        setFlipped((f) => !f);
      }
    };
    window.addEventListener("keydown", handler);
    return () => window.removeEventListener("keydown", handler);
  }, [finished, go]);

  if (finished) {
    return (
      <div className={styles.overlay} onClick={onClose}>
        <div
          className={styles.container}
          onClick={(e) => e.stopPropagation()}
          role="dialog"
          aria-label="Flashcards complete"
        >
          <div className={styles.scoreScreen}>
            <span className={styles.scoreLabel}>All Done</span>
            <span className={styles.scoreNumber}>Review Complete</span>
            <span className={styles.scoreSub}>
              {knownCards.size} of {total} marked as known
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
        aria-label="Flashcards"
      >
        <div className={styles.progressBar}>
          <div
            className={styles.progressFill}
            style={{ width: `${progress}%` }}
          />
        </div>

        <div className={styles.header}>
          <span className={styles.headerTitle}>
            Card {currentIndex + 1} of {total}
          </span>
          <button
            type="button"
            className={styles.closeBtn}
            onClick={onClose}
            aria-label="Close flashcards"
          >
            <X size={16} weight="bold" />
          </button>
        </div>

        <div className={styles.body}>
          <div
            className={styles.cardWrapper}
            onClick={() => setFlipped((f) => !f)}
          >
            <div
              className={`${styles.card} ${flipped ? styles.cardFlipped : ""}`}
            >
              <div className={styles.cardFront}>
                <span className={styles.cardLabel}>Front</span>
                <span className={styles.cardContent}>{current?.front}</span>
                {current?.hint ? (
                  <span className={styles.cardHint}>{current.hint}</span>
                ) : null}
              </div>
              <div className={styles.cardBack}>
                <span className={styles.cardLabel}>Back</span>
                <span className={styles.cardContent}>{current?.back}</span>
              </div>
            </div>
          </div>

          {!flipped ? (
            <span className={styles.flipHint}>Tap to flip</span>
          ) : null}
        </div>

        <div className={styles.controls}>
          <div className={styles.rateRow}>
            <button
              type="button"
              className={`${styles.rateBtn} ${styles.knownBtn}`}
              onClick={handleKnown}
            >
              <CheckCircle size={16} weight="fill" />
              Know it
            </button>
            <button
              type="button"
              className={`${styles.rateBtn} ${styles.reviewBtn}`}
              onClick={handleReview}
            >
              <XCircle size={16} weight="fill" />
              Review
            </button>
          </div>

          <div className={styles.navRow}>
            <button
              type="button"
              className={styles.navBtn}
              onClick={() => go(-1)}
              disabled={currentIndex === 0}
              aria-label="Previous card"
            >
              <ArrowLeft size={16} weight="bold" />
            </button>
            <button
              type="button"
              className={styles.navBtn}
              onClick={() => go(1)}
              disabled={currentIndex === total - 1}
              aria-label="Next card"
            >
              <ArrowRight size={16} weight="bold" />
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
