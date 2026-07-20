"use client";

import { Sparkle } from "@phosphor-icons/react";
import type { SparkSuggestion } from "@/lib/tutor/sparkKeywords";
import styles from "./spark-suggestion-card.module.css";

type SparkSuggestionCardProps = {
  suggestion: SparkSuggestion;
  onTryIt: (prompt: string) => void;
  onDismiss: () => void;
};

export function SparkSuggestionCard({
  suggestion,
  onTryIt,
  onDismiss,
}: SparkSuggestionCardProps) {
  return (
    <div className={styles.card} role="status" aria-label={suggestion.title}>
      <div className={styles.header}>
        <span className={styles.icon} aria-hidden>
          <Sparkle size={16} weight="fill" />
        </span>
        <span className={styles.title}>{suggestion.title}</span>
        <button
          type="button"
          className={styles.dismiss}
          onClick={onDismiss}
          aria-label="Dismiss suggestion"
        >
          ×
        </button>
      </div>
      <p className={styles.description}>{suggestion.description}</p>
      {suggestion.tryPrompt ? (
        <button
          type="button"
          className={styles.tryBtn}
          onClick={() => onTryIt(suggestion.tryPrompt!)}
        >
          Try it
        </button>
      ) : null}
    </div>
  );
}
