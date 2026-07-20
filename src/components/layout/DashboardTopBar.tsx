"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { Bug, Gear, MagnifyingGlass, Notebook, SignOut } from "@phosphor-icons/react";
import { useAuth } from "@/hooks/useAuth";
import { getProfileAvatarInitial } from "@/lib/dashboard/userDisplay";
import { BugReportModal } from "@/components/dashboard/BugReportModal";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { SubjectSwitcher } from "@/components/shared/SubjectSwitcher";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import toggleStyles from "@/components/shared/theme-toggle.module.css";
import styles from "./DashboardTopBar.module.css";

export function DashboardTopBar() {
  const router = useRouter();
  const [bugOpen, setBugOpen] = useState(false);
  const { displayEmail, displayAvatarUrl, displayName, signOut } = useAuth();

  const avatarInitial = getProfileAvatarInitial(displayEmail);

  const handleSignOut = async () => {
    try {
      await signOut();
    } finally {
      window.location.href = "/auth/signout";
    }
  };

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

          <DropdownMenu>
            <DropdownMenuTrigger
              className={styles.avatarBtn}
              aria-label="Account menu"
            >
              {displayAvatarUrl ? (
                // eslint-disable-next-line @next/next/no-img-element
                <img
                  src={displayAvatarUrl}
                  alt=""
                  className={styles.avatarImg}
                />
              ) : (
                <span className={styles.avatarInitial}>{avatarInitial}</span>
              )}
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end" sideOffset={8} className={styles.accountMenu}>
              <DropdownMenuLabel className={styles.accountLabel}>
                <span className={styles.accountName}>
                  {displayName || "Account"}
                </span>
                {displayEmail ? (
                  <span className={styles.accountEmail}>{displayEmail}</span>
                ) : null}
              </DropdownMenuLabel>
              <DropdownMenuSeparator />
              <DropdownMenuItem
                className={styles.accountItem}
                onClick={() => router.push("/dashboard/free-study")}
              >
                <Notebook size={16} weight="duotone" aria-hidden />
                Free Studying
              </DropdownMenuItem>
              <DropdownMenuItem
                className={styles.accountItem}
                onClick={() => router.push("/dashboard/settings")}
              >
                <Gear size={16} weight="duotone" aria-hidden />
                Settings
              </DropdownMenuItem>
              <DropdownMenuSeparator />
              <DropdownMenuItem
                variant="destructive"
                className={styles.accountItem}
                onClick={() => void handleSignOut()}
              >
                <SignOut size={16} weight="bold" aria-hidden />
                Sign out
              </DropdownMenuItem>
            </DropdownMenuContent>
          </DropdownMenu>
        </div>
      </div>
      <BugReportModal open={bugOpen} onClose={() => setBugOpen(false)} />
    </header>
  );
}
