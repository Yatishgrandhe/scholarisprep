"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useEffect } from "react";
import { X } from "@phosphor-icons/react";
import { FREE_STUDY_HREF } from "@/lib/dashboard/navRoutes";
import styles from "./BoardTopEsc.module.css";

export type BoardTopEscProps = {
  /** Override exit href (defaults to Free Studying hub). */
  href?: string;
  className?: string;
  /** When true, Escape key navigates back (Stitch-like leave). Default true. */
  escapeKey?: boolean;
};

/**
 * Minimal corner back/close for Whiteboard Studio — not a fat header bar.
 * Returns to Free Studying; Escape also exits when enabled.
 */
export function BoardTopEsc({
  href = FREE_STUDY_HREF,
  className,
  escapeKey = true,
}: BoardTopEscProps) {
  const router = useRouter();

  useEffect(() => {
    if (!escapeKey) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key !== "Escape") return;
      const target = e.target;
      if (
        target instanceof HTMLElement &&
        (target.closest("input, textarea, [contenteditable='true']") ||
          target.isContentEditable)
      ) {
        return;
      }
      e.preventDefault();
      router.push(href);
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [escapeKey, href, router]);

  return (
    <div className={[styles.root, className].filter(Boolean).join(" ")}>
      <Link
        href={href}
        className={styles.esc}
        aria-label="Close whiteboard and return to Free Studying"
        title="Close (Esc)"
      >
        <X className={styles.icon} size={16} weight="bold" aria-hidden />
        <span className={styles.label}>Close</span>
      </Link>
    </div>
  );
}
