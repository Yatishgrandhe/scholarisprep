"use client";

import type { ReactNode } from "react";
import { ArrowLeft } from "@phosphor-icons/react";
import Link from "next/link";
import styles from "./free-study-layout.module.css";

export function FreeStudyLayout({
  mode,
  children,
}: {
  mode?: string;
  children: ReactNode;
}) {
  return (
    <div className={styles.shell}>
      <header className={styles.header}>
        <Link href="/dashboard/free-study" className={styles.backLink}>
          <ArrowLeft size={16} weight="bold" aria-hidden />
          <span>Free Studying</span>
        </Link>
        {mode ? <span className={styles.modeLabel}>{mode}</span> : null}
      </header>
      <main className={styles.content}>{children}</main>
    </div>
  );
}
