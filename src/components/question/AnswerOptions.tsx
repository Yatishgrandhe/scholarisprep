"use client";

import styles from "./AnswerOptions.module.css";

export type QuestionOption = {
  id: string;
  text: string;
  is_correct?: boolean;
};

type AnswerOptionsProps = {
  options: QuestionOption[];
  selectedId: string | null;
  onSelect: (id: string) => void;
  showResults?: boolean;
  eliminated?: Set<string>;
  onEliminate?: (id: string) => void;
  disabled?: boolean;
};

export function AnswerOptions({
  options,
  selectedId,
  onSelect,
  showResults = false,
  eliminated = new Set(),
  onEliminate,
  disabled = false,
}: AnswerOptionsProps) {
  return (
    <ul className={styles.list} role="listbox" aria-label="Answer choices">
      {options.map((option) => {
        const isSelected = selectedId === option.id;
        const isEliminated = eliminated.has(option.id);
        const isCorrect = showResults && option.is_correct;
        const isWrong = showResults && isSelected && !option.is_correct;

        const className = [
          styles.option,
          isSelected && styles.selected,
          isCorrect && styles.correct,
          isWrong && styles.incorrect,
          isEliminated && styles.eliminated,
        ]
          .filter(Boolean)
          .join(" ");

        return (
          <li key={option.id}>
            <button
              type="button"
              className={className}
              onClick={() => !disabled && !isEliminated && onSelect(option.id)}
              disabled={disabled || isEliminated}
              role="option"
              aria-selected={isSelected}
            >
              <span className={styles.label}>{option.id}</span>
              <span className={styles.text}>{option.text}</span>
              {onEliminate && !showResults && (
                <span
                  className={styles.eliminateBtn}
                  onClick={(e) => {
                    e.stopPropagation();
                    onEliminate(option.id);
                  }}
                  role="button"
                  tabIndex={0}
                  onKeyDown={(e) => {
                    if (e.key === "Enter") {
                      e.stopPropagation();
                      onEliminate(option.id);
                    }
                  }}
                >
                  ✕
                </span>
              )}
            </button>
          </li>
        );
      })}
    </ul>
  );
}
