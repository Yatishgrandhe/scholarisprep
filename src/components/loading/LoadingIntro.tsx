"use client";

import { motion } from "framer-motion";
import { useEffect, useRef } from "react";
import styles from "./loading-overlay.module.css";

type LoadingIntroProps = {
  reducedMotion: boolean;
  onComplete: () => void;
};

/**
 * Full brand intro: ring draws → center dot → mark shifts → wordmark pops → exit.
 * Logo geometry matches ScholarisLogoMark (open ring + center dot) — no recolor/redesign.
 */
export function LoadingIntro({ reducedMotion, onComplete }: LoadingIntroProps) {
  const doneRef = useRef(false);
  const centerOffsetRef = useRef(
    typeof window !== "undefined" && window.innerWidth <= 480 ? 78 : 118,
  );

  const finish = () => {
    if (doneRef.current) return;
    doneRef.current = true;
    onComplete();
  };

  useEffect(() => {
    const ms = reducedMotion ? 520 : 2400;
    const t = window.setTimeout(finish, ms);
    return () => window.clearTimeout(t);
    // eslint-disable-next-line react-hooks/exhaustive-deps -- mount-timed sequence
  }, [reducedMotion]);

  if (reducedMotion) {
    return (
      <div className={styles.stage} role="status" aria-live="polite">
        <span className={styles.srOnly}>Loading Scholaris</span>
        <motion.div
          className={styles.lockup}
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 0.25 }}
        >
          <div className={styles.markWrap}>
            <StaticMark />
          </div>
          <span className={styles.wordmark}>Scholaris</span>
        </motion.div>
      </div>
    );
  }

  return (
    <div className={styles.stage} role="status" aria-live="polite">
      <span className={styles.srOnly}>Loading Scholaris</span>
      <div className={styles.lockup}>
        {/* Mark starts at lockup center, then settles into the left slot. */}
        <motion.div
          className={styles.markWrap}
          initial={{ x: centerOffsetRef.current }}
          animate={{ x: 0 }}
          transition={{
            delay: 1.05,
            duration: 0.5,
            ease: [0.22, 1, 0.36, 1],
          }}
        >
          <svg
            className={styles.markSvg}
            viewBox="0 0 28 28"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            aria-hidden
          >
            <motion.circle
              cx="14"
              cy="14"
              r="12"
              stroke="currentColor"
              strokeWidth="2.5"
              strokeLinecap="round"
              strokeDasharray="60 18"
              initial={{ strokeDashoffset: 78 }}
              animate={{ strokeDashoffset: 0 }}
              transition={{ duration: 0.85, ease: [0.4, 0, 0.2, 1] }}
            />
            <motion.circle
              cx="14"
              cy="14"
              r="4"
              fill="currentColor"
              initial={{ scale: 0, opacity: 0 }}
              animate={{ scale: 1, opacity: 1 }}
              transition={{
                delay: 0.7,
                duration: 0.35,
                ease: [0.34, 1.4, 0.64, 1],
              }}
              style={{ transformOrigin: "14px 14px" }}
            />
          </svg>
        </motion.div>

        <motion.span
          className={styles.wordmark}
          initial={{ opacity: 0, y: 6 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{
            delay: 1.32,
            duration: 0.36,
            ease: [0.22, 1, 0.36, 1],
          }}
        >
          Scholaris
        </motion.span>
      </div>
    </div>
  );
}

function StaticMark() {
  return (
    <svg
      className={styles.markSvg}
      viewBox="0 0 28 28"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      aria-hidden
    >
      <circle
        cx="14"
        cy="14"
        r="12"
        stroke="currentColor"
        strokeWidth="2.5"
        strokeLinecap="round"
        strokeDasharray="60 18"
      />
      <circle cx="14" cy="14" r="4" fill="currentColor" />
    </svg>
  );
}
