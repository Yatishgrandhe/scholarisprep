"use client";

import { useCallback, useEffect, useId, useState } from "react";
import {
  ArrowLeft,
  ArrowRight,
  ArrowsClockwise,
  Cards,
  Sparkle,
} from "@phosphor-icons/react";
import {
  FLASHCARDS_DEFAULT_COUNT,
  generateFlashcardsFromText,
  type FreeStudyFlashcard,
} from "@/lib/free-study/generateFlashcards";
import styles from "./free-study-flashcards.module.css";

export type FreeStudyFlashcardsProps = {
  /** Extracted PDF/OCR text only — never a file blob. */
  sourceText: string;
  examType?: string;
  /** Target card count (clamped server-side). */
  count?: number;
  /** Auto-run generation when mounted with enough text. Default true. */
  autoGenerate?: boolean;
  className?: string;
  onGenerated?: (cards: FreeStudyFlashcard[]) => void;
};

/**
 * Small Free Studying flashcards deck: generate from extracted text via
 * Mistral (text-only API), flip cards, prev/next.
 */
export function FreeStudyFlashcards({
  sourceText,
  examType,
  count = FLASHCARDS_DEFAULT_COUNT,
  autoGenerate = true,
  className,
  onGenerated,
}: FreeStudyFlashcardsProps) {
  const titleId = useId();
  const [cards, setCards] = useState<FreeStudyFlashcard[]>([]);
  const [index, setIndex] = useState(0);
  const [flipped, setFlipped] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [showList, setShowList] = useState(false);

  const generate = useCallback(async () => {
    setLoading(true);
    setError(null);
    setFlipped(false);
    setIndex(0);

    const result = await generateFlashcardsFromText({
      text: sourceText,
      exam_type: examType,
      count,
    });

    setLoading(false);

    if (!result.ok) {
      setCards([]);
      setError(result.error);
      return;
    }

    setCards(result.data.cards);
    onGenerated?.(result.data.cards);
  }, [sourceText, examType, count, onGenerated]);

  useEffect(() => {
    if (!autoGenerate) return;
    if (!sourceText.trim()) return;
    void generate();
    // Run once per sourceText identity when autoGenerate is on.
    // eslint-disable-next-line react-hooks/exhaustive-deps -- intentional mount/source gate
  }, [autoGenerate, sourceText]);

  const current = cards[index];
  const canPrev = index > 0;
  const canNext = index < cards.length - 1;

  const go = (delta: number) => {
    setFlipped(false);
    setIndex((i) => Math.min(cards.length - 1, Math.max(0, i + delta)));
  };

  return (
    <section
      className={[styles.root, className].filter(Boolean).join(" ")}
      aria-labelledby={titleId}
    >
      <header className={styles.header}>
        <div>
          <p className={styles.eyebrow}>Flashcards</p>
          <h2 id={titleId} className={styles.title}>
            Drill from your text
          </h2>
          <p className={styles.sub}>
            Terms and facts from the excerpt — tap a card to flip.
          </p>
        </div>
        <div className={styles.actions}>
          <button
            type="button"
            className={`${styles.btn} ${styles.btnPrimary}`}
            onClick={() => void generate()}
            disabled={loading || !sourceText.trim()}
          >
            {loading ? (
              <>
                <ArrowsClockwise size={16} weight="bold" />
                Generating…
              </>
            ) : (
              <>
                <Sparkle size={16} weight="fill" />
                {cards.length ? "Regenerate" : "Generate"}
              </>
            )}
          </button>
          {cards.length > 0 ? (
            <button
              type="button"
              className={styles.btn}
              onClick={() => setShowList((v) => !v)}
              aria-pressed={showList}
            >
              <Cards size={16} weight="duotone" />
              {showList ? "Hide list" : "All cards"}
            </button>
          ) : null}
        </div>
      </header>

      {error ? (
        <p className={styles.error} role="alert">
          {error}
        </p>
      ) : null}

      {!loading && !error && cards.length === 0 ? (
        <p className={styles.empty}>
          Paste or extract enough text, then generate flashcards.
        </p>
      ) : null}

      {current ? (
        <div className={styles.stage}>
          <div className={styles.meta} aria-live="polite">
            <span>
              Card {index + 1} of {cards.length}
            </span>
            {current.hint ? <span>{current.hint}</span> : null}
            <span>{flipped ? "Answer" : "Prompt"}</span>
          </div>

          <button
            type="button"
            className={styles.cardButton}
            onClick={() => setFlipped((f) => !f)}
            aria-label={
              flipped
                ? "Show flashcard front"
                : "Flip flashcard to show answer"
            }
          >
            <div
              className={styles.cardInner}
              data-flipped={flipped ? "true" : "false"}
            >
              <div className={styles.cardFace}>
                <span className={styles.faceLabel}>Front</span>
                <p className={styles.faceText}>{current.front}</p>
                {current.hint ? (
                  <p className={styles.hint}>{current.hint}</p>
                ) : (
                  <p className={styles.hint}>Tap to flip</p>
                )}
              </div>
              <div className={`${styles.cardFace} ${styles.cardBack}`}>
                <span className={styles.faceLabel}>Back</span>
                <p className={styles.faceText}>{current.back}</p>
                <p className={styles.hint}>Tap to flip back</p>
              </div>
            </div>
          </button>

          <div className={styles.nav}>
            <span className={styles.progress}>
              {Math.round(((index + 1) / cards.length) * 100)}%
            </span>
            <div className={styles.navBtns}>
              <button
                type="button"
                className={styles.btn}
                onClick={() => go(-1)}
                disabled={!canPrev}
                aria-label="Previous card"
              >
                <ArrowLeft size={16} weight="bold" />
                Prev
              </button>
              <button
                type="button"
                className={styles.btn}
                onClick={() => setFlipped((f) => !f)}
              >
                Flip
              </button>
              <button
                type="button"
                className={styles.btn}
                onClick={() => go(1)}
                disabled={!canNext}
                aria-label="Next card"
              >
                Next
                <ArrowRight size={16} weight="bold" />
              </button>
            </div>
          </div>
        </div>
      ) : null}

      {showList && cards.length > 0 ? (
        <ul className={styles.list} aria-label="All flashcards">
          {cards.map((card, i) => (
            <li key={`${card.front}-${i}`}>
              <button
                type="button"
                className={styles.listItem}
                data-active={i === index ? "true" : "false"}
                onClick={() => {
                  setIndex(i);
                  setFlipped(false);
                }}
              >
                <span className={styles.listFront}>{card.front}</span>
                <span className={styles.listBack}>{card.back}</span>
              </button>
            </li>
          ))}
        </ul>
      ) : null}
    </section>
  );
}
