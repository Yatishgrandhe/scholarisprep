"use client";

/**
 * Centered Scho opening ceremony for Whiteboard Studio.
 * Plays once in the middle of the stage (not dock-aligned), then exits.
 */

import { useEffect, useRef, useState } from "react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import styles from "./board-scho-open.module.css";

export type BoardSchoOpenProps = {
  className?: string;
  /** Fired when the ceremony finishes (or is skipped). */
  onComplete?: () => void;
  /** Hold the visible lockup before fade-out (ms). */
  holdMs?: number;
};

type Phase = "enter" | "exit" | "done";

const ENTER_MS = 1700;
const EXIT_MS = 420;
const REDUCED_ENTER_MS = 400;
const REDUCED_EXIT_MS = 160;

/**
 * Viewport-centered Scho open animation for `/dashboard/whiteboard`.
 * Intentionally ignores side-dock geometry so the lockup stays page-middle.
 */
export function BoardSchoOpen({
  className,
  onComplete,
  holdMs,
}: BoardSchoOpenProps) {
  const reduced = useReducedMotion();
  const [phase, setPhase] = useState<Phase>("enter");
  const doneRef = useRef(false);
  const onCompleteRef = useRef(onComplete);
  onCompleteRef.current = onComplete;

  useEffect(() => {
    const enter = holdMs ?? (reduced ? REDUCED_ENTER_MS : ENTER_MS);
    const exit = reduced ? REDUCED_EXIT_MS : EXIT_MS;

    const t1 = window.setTimeout(() => setPhase("exit"), enter);
    const t2 = window.setTimeout(() => {
      setPhase("done");
      if (!doneRef.current) {
        doneRef.current = true;
        onCompleteRef.current?.();
      }
    }, enter + exit);

    return () => {
      window.clearTimeout(t1);
      window.clearTimeout(t2);
    };
  }, [holdMs, reduced]);

  if (phase === "done") return null;

  return (
    <div
      className={[styles.root, className].filter(Boolean).join(" ")}
      data-phase={phase}
      role="status"
      aria-live="polite"
      aria-hidden={phase === "exit"}
    >
      <div className={styles.veil} aria-hidden />
      <div className={styles.lockup}>
        <div className={styles.markWrap} aria-hidden>
          <span className={styles.markGlow} />
          <svg
            className={styles.markSvg}
            viewBox="0 0 28 28"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <circle className={styles.ring} cx="14" cy="14" r="12" />
            <circle className={styles.core} cx="14" cy="14" r="4" />
          </svg>
        </div>
        <div className={styles.copy}>
          <p className={styles.wordmark}>Scho</p>
          <p className={styles.tag}>Whiteboard Studio</p>
        </div>
      </div>
      <span className={styles.srOnly}>Welcome to Scho on Whiteboard Studio</span>
    </div>
  );
}
