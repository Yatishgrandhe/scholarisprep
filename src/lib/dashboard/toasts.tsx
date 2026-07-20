"use client";

import { motion } from "framer-motion";
import { toast } from "sonner";
import { resolveAchievementIcon } from "@/lib/dashboard/achievementIcons";
import { markAchievementNewlyEarned } from "@/lib/dashboard/achievementCelebration";
import type { EarnedAchievement } from "@/lib/dashboard/achievements";
import styles from "./toasts.module.css";

export function toastThreeInARow(): void {
  toast.success("3 in a row 🔥");
}

export function toastExamComplete(): void {
  toast.success("Exam complete — your results are ready", {
    duration: 6000,
  });
}

export function toastStreakRecord(): void {
  toast.success("New streak record!", { duration: 5000 });
}

export function toastAchievementEarned(achievement: EarnedAchievement): void {
  markAchievementNewlyEarned(achievement.id);
  const Icon = resolveAchievementIcon(achievement.icon);

  toast.custom(
    () => (
      <motion.div
        className={styles.achievementToast}
        initial={{ opacity: 0, y: 8, scale: 0.96 }}
        animate={{ opacity: 1, y: 0, scale: 1 }}
        transition={{ type: "spring", stiffness: 420, damping: 28 }}
      >
        <span className={styles.achievementToastIcon} aria-hidden>
          <Icon size={22} weight="duotone" />
        </span>
        <span className={styles.achievementToastBody}>
          <span className={styles.achievementToastLabel}>Achievement unlocked</span>
          <span className={styles.achievementToastName}>{achievement.name}</span>
        </span>
      </motion.div>
    ),
    { duration: 5500 },
  );
}
