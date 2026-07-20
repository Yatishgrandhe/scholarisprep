"use client";

import styles from "./QuestionNavPills.module.css";

type QuestionNavPillsProps = {
  total: number;
  current: number;
  answered: Set<number>;
  flagged: Set<number>;
  onJump: (index: number) => void;
};

export function QuestionNavPills({
  total,
  current,
  answered,
  flagged,
  onJump,
}: QuestionNavPillsProps) {
  return (
    <div className={styles.wrap} aria-label="Question navigation">
      {Array.from({ length: total }, (_, i) => {
        const num = i + 1;
        const active = num === current;
        const done = answered.has(num);
        const flag = flagged.has(num);
        return (
          <button
            key={num}
            type="button"
            className={`${styles.pill} ${active ? styles.pillActive : ""} ${done ? styles.pillDone : ""} ${flag ? styles.pillFlagged : ""}`}
            onClick={() => onJump(i)}
            aria-current={active ? "step" : undefined}
          >
            {num}
          </button>
        );
      })}
    </div>
  );
}
