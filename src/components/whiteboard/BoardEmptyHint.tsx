"use client";

import styles from "./board-empty.module.css";

export type BoardEmptyHintProps = {
  /**
   * True once the canvas has received its first stroke.
   * Hint fades out and stays hidden while ink remains.
   */
  hasStroke?: boolean;
  className?: string;
};

/**
 * Elegant first-paint overlay for Whiteboard Studio.
 * Copy: “Write anything — then talk to Scho”. Dismisses on first stroke.
 */
export function BoardEmptyHint({
  hasStroke = false,
  className,
}: BoardEmptyHintProps) {
  const dismissed = hasStroke;

  return (
    <div
      className={[styles.root, className].filter(Boolean).join(" ")}
      data-dismissed={dismissed ? "true" : "false"}
      aria-hidden={dismissed}
    >
      <div className={styles.inner}>
        <span className={styles.mark} aria-hidden />
        <p className={styles.line}>
          Write anything
          <span className={styles.em}> — </span>
          then talk to <span className={styles.scho}>Scho</span>
        </p>
        <p className={styles.sub}>Whiteboard Studio</p>
      </div>
    </div>
  );
}
