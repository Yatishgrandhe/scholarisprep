"use client";

import type { ReactNode } from "react";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import styles from "./free-study-layout.module.css";

export function FreeStudyLayout({
  children,
}: {
  mode?: string;
  children: ReactNode;
}) {
  return (
    <div className={styles.content}>
      <div className={styles.topBar}>
        <div />
        <ThemeToggle className={styles.themeToggle} />
      </div>
      {children}
    </div>
  );
}
