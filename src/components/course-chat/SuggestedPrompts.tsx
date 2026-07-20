"use client";

import { CaretRight } from "@phosphor-icons/react";
import styles from "./course-chat.module.css";

export type SuggestedPromptItem =
  | string
  | {
      lead: string;
      text: string;
    };

export type SuggestedPromptsProps = {
  prompts: SuggestedPromptItem[];
  onSelect: (text: string) => void;
  /** `chips` for compact embedded chat; `list` for full-width tutor empty state. */
  variant?: "chips" | "list";
};

function promptToText(prompt: SuggestedPromptItem): string {
  return typeof prompt === "string" ? prompt : `${prompt.lead} ${prompt.text}`;
}

export function SuggestedPrompts({
  prompts,
  onSelect,
  variant = "chips",
}: SuggestedPromptsProps) {
  if (prompts.length === 0) return null;

  if (variant === "list") {
    return (
      <div className={styles.suggestedList}>
        {prompts.map((prompt) => {
          const text = promptToText(prompt);
          const key = typeof prompt === "string" ? prompt : prompt.lead;
          return (
            <button
              key={key}
              type="button"
              className={styles.suggestedRow}
              onClick={() => onSelect(text)}
            >
              {typeof prompt === "string" ?
                <span className={styles.suggestedText}>{prompt}</span>
              : <>
                  <span className={styles.suggestedLead}>{prompt.lead}</span>
                  <span className={styles.suggestedText}>{prompt.text}</span>
                </>
              }
              <span className={styles.suggestedChevron} aria-hidden>
                <CaretRight size={16} />
              </span>
            </button>
          );
        })}
      </div>
    );
  }

  return (
    <div className={styles.suggestedChips}>
      {prompts.map((prompt) => {
        const text = promptToText(prompt);
        const key = typeof prompt === "string" ? prompt : prompt.lead;
        return (
          <button
            key={key}
            type="button"
            className={styles.suggestedChip}
            onClick={() => onSelect(text)}
          >
            {typeof prompt === "string" ?
              prompt
            : <>
                <strong>{prompt.lead}</strong> {prompt.text}
              </>
            }
          </button>
        );
      })}
    </div>
  );
}
