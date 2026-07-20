"use client";

import type { ReactNode } from "react";
import styles from "./course-chat.module.css";

export type CourseChatHeaderProps = {
  title: string;
  subtitle?: string;
  badge?: string;
  actions?: ReactNode;
};

export function CourseChatHeader({
  title,
  subtitle,
  badge,
  actions,
}: CourseChatHeaderProps) {
  return (
    <header className={styles.header}>
      <div className={styles.headerMain}>
        <div className={styles.headerTitleRow}>
          <h2 className={styles.headerTitle}>{title}</h2>
          {badge ? <span className={styles.headerBadge}>{badge}</span> : null}
        </div>
        {subtitle ? <p className={styles.headerSubtitle}>{subtitle}</p> : null}
      </div>
      {actions ? <div className={styles.headerActions}>{actions}</div> : null}
    </header>
  );
}
