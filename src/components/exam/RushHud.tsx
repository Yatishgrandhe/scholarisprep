"use client";

import { useEffect, useState } from "react";
import { CaretLeft, CaretRight, Star } from "@phosphor-icons/react";
import styles from "./RushHud.module.css";

type RushHudProps = {
  /** Timestamp (ms) the current question started. */
  startedAtMs: number;
  /** Per-question time budget in seconds. */
  budgetSeconds: number;
  paused: boolean;
  onPause: () => void;
  timerHidden: boolean;
  onToggleTimer: () => void;
  questionNumber: number;
  totalQuestions: number;
  onPrev: () => void;
  onNext: () => void;
  canPrev: boolean;
  canNext: boolean;
  /** Current question has a recorded answer — freeze the clock. */
  answered: boolean;
  /** Stars earned on the current question (shown once answered). */
  earnedStars: number | null;
  /** Frozen elapsed seconds for the answered question. */
  answeredElapsedSeconds: number | null;
  /** Stars per question, index-aligned to the full order (null = unanswered). */
  questionStars: (number | null)[];
  /** Jump to a question by index. */
  onJump: (index: number) => void;
};

const RING = 2 * Math.PI * 52; // r=52

export function RushHud({
  startedAtMs,
  budgetSeconds,
  paused,
  onPause,
  timerHidden,
  onToggleTimer,
  questionNumber,
  totalQuestions,
  onPrev,
  onNext,
  canPrev,
  canNext,
  answered,
  earnedStars,
  answeredElapsedSeconds,
  questionStars,
  onJump,
}: RushHudProps) {
  const [now, setNow] = useState(() => Date.now());

  // Stop ticking once the question is answered (or paused) so the side clock
  // freezes at the time it took, instead of running on.
  useEffect(() => {
    if (paused || answered) return;
    const id = setInterval(() => setNow(Date.now()), 250);
    return () => clearInterval(id);
  }, [paused, answered]);

  const liveElapsed = Math.max(0, Math.floor((now - startedAtMs) / 1000));
  const elapsed =
    answered && answeredElapsedSeconds != null
      ? answeredElapsedSeconds
      : liveElapsed;
  const secondsLeft = Math.max(0, budgetSeconds - elapsed);
  const frac = budgetSeconds > 0 ? secondsLeft / budgetSeconds : 0;
  const low = secondsLeft <= 10;

  const tiers = [
    { stars: 3, maxSeconds: Math.max(1, Math.round(budgetSeconds * 0.27)) },
    { stars: 2, maxSeconds: Math.max(2, Math.round(budgetSeconds * 0.46)) },
    { stars: 1, maxSeconds: budgetSeconds },
  ];
  const liveTier = tiers.find((t) => elapsed <= t.maxSeconds)?.stars ?? 1;
  // Once answered, show the stars actually earned; otherwise preview the live tier.
  const activeTier = answered ? earnedStars ?? liveTier : liveTier;

  return (
    <div className={styles.rail}>
      <div className={styles.ringWrap}>
        <svg className={styles.ring} viewBox="0 0 120 120" aria-hidden>
          <circle
            className={styles.ringTrack}
            cx="60"
            cy="60"
            r="52"
            fill="none"
          />
          <circle
            className={`${styles.ringFill} ${low ? styles.ringLow : ""}`}
            cx="60"
            cy="60"
            r="52"
            fill="none"
            strokeDasharray={RING}
            strokeDashoffset={RING * (1 - frac)}
            transform="rotate(-90 60 60)"
          />
        </svg>
        <div className={styles.ringCenter}>
          <span className={`${styles.ringNum} ${low ? styles.ringNumLow : ""}`}>
            {timerHidden ? "––" : secondsLeft}
          </span>
          <span className={styles.ringLabel}>seconds left</span>
        </div>
      </div>

      <div className={styles.controls}>
        <button type="button" className={styles.controlBtn} onClick={onPause}>
          {paused ? "Resume" : "Pause"}
        </button>
        <button
          type="button"
          className={styles.controlBtn}
          onClick={onToggleTimer}
        >
          {timerHidden ? "Show timer" : "Hide timer"}
        </button>
      </div>

      <div className={styles.starRow} aria-label={`${activeTier} of 3 stars available`}>
        {[1, 2, 3].map((n) => (
          <Star
            key={n}
            size={26}
            weight="fill"
            className={n <= activeTier ? styles.starOn : styles.starOff}
          />
        ))}
      </div>

      <ul className={styles.tierList}>
        {tiers.map((t) => (
          <li
            key={t.stars}
            className={`${styles.tierRow} ${t.stars === activeTier ? styles.tierActive : ""}`}
          >
            <span className={styles.tierStars}>
              {"★".repeat(t.stars)}
              <span className={styles.tierStarsDim}>{"★".repeat(3 - t.stars)}</span>
            </span>
            <span className={styles.tierTime}>≤{t.maxSeconds}s</span>
          </li>
        ))}
      </ul>

      <div className={styles.nav}>
        <div className={styles.navHead}>
          <span className={styles.navLabel}>
            Questions
            <span className={styles.navTotal}>
              {questionNumber} of {totalQuestions}
            </span>
          </span>
          <div className={styles.navArrows}>
            <button
              type="button"
              className={styles.navArrow}
              onClick={onPrev}
              disabled={!canPrev}
              aria-label="Previous question"
            >
              <CaretLeft size={14} />
            </button>
            <button
              type="button"
              className={styles.navArrow}
              onClick={onNext}
              disabled={!canNext}
              aria-label="Next question"
            >
              <CaretRight size={14} />
            </button>
          </div>
        </div>
        <ul className={styles.navGrid}>
          {questionStars.map((stars, i) => {
            const isCurrent = i === questionNumber - 1;
            return (
              <li key={i}>
                <button
                  type="button"
                  className={`${styles.navCell} ${
                    isCurrent ? styles.navCellCurrent : ""
                  } ${stars != null ? styles.navCellDone : ""}`}
                  onClick={() => onJump(i)}
                  aria-current={isCurrent ? "true" : undefined}
                  aria-label={`Question ${i + 1}${
                    stars != null ? `, ${stars} of 3 stars` : ""
                  }`}
                >
                  <span className={styles.cellNum}>{i + 1}</span>
                  <span className={styles.cellStars}>
                    {stars != null
                      ? [1, 2, 3].map((n) => (
                          <Star
                            key={n}
                            size={7}
                            weight="fill"
                            className={n <= stars ? styles.cellStarOn : styles.cellStarOff}
                          />
                        ))
                      : null}
                  </span>
                </button>
              </li>
            );
          })}
        </ul>
      </div>
    </div>
  );
}
