"use client";

import { useEffect, useRef, useState } from "react";
import { DotsThree } from "@phosphor-icons/react";
import styles from "./ExamShellMoreMenu.module.css";

type ExamSessionMoreMenuProps = {
  isDark: boolean;
  onToggleTheme: () => void;
  onSaveExit: () => void;
  onBugReport: () => void;
};

/**
 * In-exam "More" menu (top-right 3-dots) holding every exam control:
 * Save and Exit, Fullscreen, theme switch, and Bug Report. Mirrors the
 * OnePrep layout where the header stays clean and controls live here.
 */
export function ExamSessionMoreMenu({
  isDark,
  onToggleTheme,
  onSaveExit,
  onBugReport,
}: ExamSessionMoreMenuProps) {
  const [open, setOpen] = useState(false);
  const wrapRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (!open) return;
    const onDoc = (e: MouseEvent) => {
      if (!wrapRef.current?.contains(e.target as Node)) setOpen(false);
    };
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") setOpen(false);
    };
    document.addEventListener("mousedown", onDoc);
    document.addEventListener("keydown", onKey);
    return () => {
      document.removeEventListener("mousedown", onDoc);
      document.removeEventListener("keydown", onKey);
    };
  }, [open]);

  const run = (fn: () => void) => {
    setOpen(false);
    fn();
  };

  return (
    <div className={styles.wrap} ref={wrapRef}>
      <button
        type="button"
        className={styles.trigger}
        onClick={() => setOpen((v) => !v)}
        aria-expanded={open}
        aria-haspopup="menu"
      >
        <DotsThree size={22} weight="bold" /> More
      </button>
      {open ? (
        <div className={styles.menu} role="menu">
          <button
            type="button"
            role="menuitem"
            className={styles.item}
            onClick={() => run(onSaveExit)}
          >
            Save and Exit
          </button>
          <button
            type="button"
            role="menuitem"
            className={styles.item}
            onClick={() => run(() => document.documentElement.requestFullscreen?.())}
          >
            Fullscreen
          </button>
          <button
            type="button"
            role="menuitem"
            className={styles.item}
            onClick={() => run(onToggleTheme)}
          >
            {isDark ? "Switch to light mode" : "Switch to dark mode"}
          </button>
          <button
            type="button"
            role="menuitem"
            className={styles.item}
            onClick={() => run(onBugReport)}
          >
            Bug Report
          </button>
        </div>
      ) : null}
    </div>
  );
}
