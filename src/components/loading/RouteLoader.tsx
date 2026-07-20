"use client";

import { motion } from "framer-motion";
import { useEffect } from "react";
import { ScholarisLogoMark } from "@/components/brand/ScholarisLogoMark";
import styles from "./loading-overlay.module.css";

type RouteLoaderProps = {
  reducedMotion: boolean;
  onComplete: () => void;
  /** Minimum visible time so the sweep reads as intentional. */
  minMs?: number;
};

/**
 * Lighter loader for refresh / App Router navigations within the intro cooldown:
 * logo mark + progress track with a sweeping highlight.
 */
export function RouteLoader({
  reducedMotion,
  onComplete,
  minMs = 720,
}: RouteLoaderProps) {
  useEffect(() => {
    const duration = reducedMotion ? Math.min(280, minMs) : minMs;
    const t = window.setTimeout(onComplete, duration);
    return () => window.clearTimeout(t);
  }, [onComplete, reducedMotion, minMs]);

  return (
    <div className={styles.plainStack} role="status" aria-live="polite">
      <span className={styles.srOnly}>Loading</span>
      <motion.div
        className={styles.plainMark}
        initial={reducedMotion ? false : { opacity: 0, y: 6, scale: 0.94 }}
        animate={{ opacity: 1, y: 0, scale: 1 }}
        transition={{ duration: 0.28, ease: [0.22, 1, 0.36, 1] }}
      >
        <ScholarisLogoMark size={44} />
      </motion.div>

      <div className={styles.progressTrack} aria-hidden>
        <motion.div
          className={styles.progressFill}
          initial={{ scaleX: 0 }}
          animate={{ scaleX: 1 }}
          transition={{
            duration: reducedMotion ? 0.25 : 0.7,
            ease: [0.4, 0, 0.2, 1],
          }}
        />
        {!reducedMotion ? <span className={styles.progressSweep} /> : null}
      </div>
    </div>
  );
}
