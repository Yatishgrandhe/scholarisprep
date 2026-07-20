"use client";

import { usePathname } from "next/navigation";
import styles from "./session.module.css";

export default function PracticeSessionLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const pathname = usePathname();

  // The report is a normal, long, scrolling document: let it flow inside the
  // dashboard's own chrome/scroll. Only the live question session needs the
  // fixed-height, overflow-hidden exam shell.
  if (pathname?.endsWith("/report")) {
    return <>{children}</>;
  }

  return <div className={styles.sessionShell}>{children}</div>;
}
