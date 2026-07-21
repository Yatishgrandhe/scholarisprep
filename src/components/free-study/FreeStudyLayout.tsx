"use client";

import type { ReactNode } from "react";
import styles from "./free-study-layout.module.css";

export function FreeStudyLayout({
  children,
}: {
  mode?: string;
  children: ReactNode;
}) {
  return <div className={styles.content}>{children}</div>;
}
