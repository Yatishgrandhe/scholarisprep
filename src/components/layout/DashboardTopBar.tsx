"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { Bug, MagnifyingGlass } from "@phosphor-icons/react";
import { useAuth } from "@/hooks/useAuth";
import { getProfileAvatarInitial } from "@/lib/dashboard/userDisplay";
import { BugReportModal } from "@/components/dashboard/BugReportModal";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { SubjectSwitcher } from "@/components/shared/SubjectSwitcher";
import toggleStyles from "@/components/shared/theme-toggle.module.css";
import styles from "./DashboardTopBar.module.css";

export function DashboardTopBar() {
  const router = useRouter();
  const [bugOpen, setBugOpen] = useState(false);
  const { displayEmail, displayAvatarUrl } = useAuth();

  const avatarInitial = getProfileAvatarInitial(displayEmail);

  return (
    <header className={styles.bar} aria-label="Dashboard toolbar">
      {/* Course switcher — sidebar is display:none ≤768px */}
      <div className={styles.mobileCourse}>
        <SubjectSwitcher />
      </div>

      <div className={styles.toolbarRow}>
        <div className={styles.leading}>
          <button
            type="button"
            className={styles.searchBtn}
            onClick={() => router.push("/dashboard/practice/bank")}
            aria-label="Search questions"
          >
            <MagnifyingGlass size={18} weight="bold" aria-hidden />
            <span className={styles.searchPlaceholder}>
              Search questions, topics...
            </span>
            <span className={styles.searchPlaceholderShort}>Search</span>
            <span className={styles.searchKbd}>⌘K</span>
          </button>
        </div>

        <div className={styles.actions}>
          <button
            type="button"
            className={styles.bugReportBtn}
            onClick={() => setBugOpen(true)}
            aria-haspopup="dialog"
            aria-expanded={bugOpen}
          >
            <Bug size={17} weight="duotone" aria-hidden />
            <span>Report a bug</span>
          </button>

          {/* Single theme toggle — only here, nowhere else */}
          <ThemeToggle className={toggleStyles.toggle} />

          <button
            type="button"
            className={styles.avatarBtn}
            onClick={() => router.push("/dashboard/settings")}
            aria-label="Account settings"
          >
            {displayAvatarUrl ? (
              <img
                src={displayAvatarUrl}
                alt=""
                className={styles.avatarImg}
              />
            ) : (
              <span className={styles.avatarInitial}>{avatarInitial}</span>
            )}
          </button>
        </div>
      </div>
      <BugReportModal open={bugOpen} onClose={() => setBugOpen(false)} />
    </header>
  );
}
