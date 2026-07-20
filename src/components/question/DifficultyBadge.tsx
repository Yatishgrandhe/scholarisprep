import { cn } from "@/lib/utils";
import {
  difficultyTone,
  formatDifficultyLabel,
} from "@/lib/question/difficulty";
import styles from "./DifficultyBadge.module.css";

type DifficultyBadgeProps = {
  difficulty?: string | null;
  challenged?: boolean;
  className?: string;
  /** Visually quieter chip for dense list rows. */
  size?: "sm" | "md";
};

/**
 * Colored Easy / Medium / Hard / Challenge chip from DB `questions.difficulty`
 * (and optional challenged overlay).
 */
export function DifficultyBadge({
  difficulty,
  challenged = false,
  className,
  size = "md",
}: DifficultyBadgeProps) {
  const tone = difficultyTone(difficulty, { challenged });
  const label = formatDifficultyLabel(difficulty, { challenged });

  return (
    <span
      className={cn(
        styles.badge,
        styles[tone],
        size === "sm" && styles.sm,
        className,
      )}
      data-difficulty={tone}
    >
      {label}
    </span>
  );
}
