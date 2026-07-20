"use client";

import { ThemeToggle } from "@/components/shared/ThemeToggle";
import styles from "./DashboardThemeBar.module.css";

type DashboardThemeBarProps = {
  variant?: "sidebar" | "mobile";
};

export function DashboardThemeBar({ variant = "sidebar" }: DashboardThemeBarProps) {
  return (
    <div className={variant === "mobile" ? styles.mobileBar : styles.sidebarRow}>
      <span className={styles.label}>Theme</span>
      <ThemeToggle
        className={variant === "sidebar" ? styles.toggleOnDark : undefined}
      />
    </div>
  );
}
