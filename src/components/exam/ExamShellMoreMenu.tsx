"use client";

import { useState } from "react";
import { DotsThree } from "@phosphor-icons/react";
import {
  getMuteSchoPopups,
  setMuteSchoPopups,
} from "@/lib/dashboard/userPreferences";
import styles from "./ExamShellMoreMenu.module.css";

type ExamShellMoreMenuProps = {
  onToggleTheme: () => void;
  onBugReport: () => void;
  isDark?: boolean;
};

export function ExamShellMoreMenu({
  onToggleTheme,
  onBugReport,
  isDark = true,
}: ExamShellMoreMenuProps) {
  const [open, setOpen] = useState(false);
  const [muted, setMuted] = useState(getMuteSchoPopups);

  return (
    <div className={styles.wrap}>
      <button
        type="button"
        className={styles.trigger}
        onClick={() => setOpen((v) => !v)}
        aria-expanded={open}
      >
        <DotsThree size={22} weight="bold" /> More
      </button>
      {open ? (
        <div className={styles.menu} role="menu">
          <button type="button" className={styles.item} onClick={() => document.documentElement.requestFullscreen?.()}>
            Fullscreen
          </button>
          <button
            type="button"
            className={styles.item}
            onClick={() => {
              const next = !muted;
              setMuted(next);
              setMuteSchoPopups(next);
            }}
          >
            {muted ? "Unmute Scho popups" : "Mute Scho popups"}
          </button>
          <button type="button" className={styles.item} onClick={onToggleTheme}>
            {isDark ? "Switch to light mode" : "Switch to dark mode"}
          </button>
          <button
            type="button"
            className={styles.item}
            onClick={() => {
              onBugReport();
              setOpen(false);
            }}
          >
            Bug Report
          </button>
        </div>
      ) : null}
    </div>
  );
}
