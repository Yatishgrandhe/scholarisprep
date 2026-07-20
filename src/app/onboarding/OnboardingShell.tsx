"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { Check } from "@phosphor-icons/react";
import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import shellStyles from "@/components/app/shell.module.css";
import styles from "./onboarding.module.css";

const STEPS = [
  { path: "/onboarding/role", label: "Your role", num: 1 },
  { path: "/onboarding/exam", label: "Exam goals", num: 2 },
  { path: "/onboarding/ai-key", label: "AI features", num: 3 },
] as const;

export function OnboardingShell({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const currentIndex = STEPS.findIndex((s) => s.path === pathname);
  const step = currentIndex >= 0 ? currentIndex + 1 : 1;
  const progressPercent = (step / STEPS.length) * 100;

  return (
    <div className={shellStyles.page}>
      <div className={shellStyles.aurora} aria-hidden />
      <div className={shellStyles.gridLines} aria-hidden />

      <div
        className={shellStyles.progressTrack}
        role="progressbar"
        aria-valuenow={step}
        aria-valuemin={1}
        aria-valuemax={STEPS.length}
        aria-label={`Setup step ${step} of ${STEPS.length}`}
      >
        <div
          className={shellStyles.progressFill}
          style={{ width: `${progressPercent}%` }}
        />
      </div>

      <header className={shellStyles.topbar}>
        <BrandHomeLink size="sm" />
        <div className={shellStyles.topbarActions}>
          <Link href="/dashboard" className={styles.skipLink}>
            Skip for now
          </Link>
          <ThemeToggle />
        </div>
      </header>

      <nav className={shellStyles.stepRail} aria-label="Setup progress">
        {STEPS.map((s, i) => {
          const isActive = s.path === pathname;
          const isDone = currentIndex > i;
          return (
            <span
              key={s.path}
              className={`${shellStyles.stepPill} ${isActive ? shellStyles.stepPillActive : ""} ${isDone ? shellStyles.stepPillDone : ""}`}
              aria-current={isActive ? "step" : undefined}
            >
              <span className={shellStyles.stepNum}>
                {isDone ? <Check size={12} weight="bold" /> : s.num}
              </span>
              {s.label}
            </span>
          );
        })}
      </nav>

      <main className={shellStyles.main}>
        <div className={shellStyles.contentCard}>{children}</div>
      </main>
    </div>
  );
}
