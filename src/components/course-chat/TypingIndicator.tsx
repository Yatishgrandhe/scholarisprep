"use client";

import styles from "./course-chat.module.css";

export type TypingIndicatorProps = {
  label?: string;
  assistantName?: string;
  avatarFallback?: string;
};

export function TypingIndicator({
  label,
  assistantName = "Scho",
  avatarFallback = "S",
}: TypingIndicatorProps) {
  return (
    <div className={styles.typingRow}>
      <span className={styles.avatar} aria-hidden>
        {avatarFallback}
      </span>
      <div className={styles.typingBody}>
        <span className={styles.roleLabel}>{assistantName}</span>
        <div
          className={styles.typingBubble}
          aria-live="polite"
          aria-label={label ?? `${assistantName} is typing`}
        >
          {label ?
            <span className={styles.typingLabel}>{label}</span>
          : <div className={styles.typingDots}>
              <span />
              <span />
              <span />
            </div>
          }
        </div>
      </div>
    </div>
  );
}
