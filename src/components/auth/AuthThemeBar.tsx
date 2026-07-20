"use client";

import { ThemeToggle } from "@/components/shared/ThemeToggle";
import splitStyles from "./auth-split.module.css";

export function AuthThemeBar() {
  return (
    <div className={splitStyles.themeBar}>
      <ThemeToggle />
    </div>
  );
}
