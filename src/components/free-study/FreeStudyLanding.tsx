"use client";

import Link from "next/link";
import {
  FileText,
  Lightning,
  Brain,
  Stack,
  NoteBlank,
  Flame,
  Trophy,
  Star,
} from "@phosphor-icons/react";
import styles from "./free-study-landing.module.css";

const STATS = [
  { label: "Total Notes", value: 0, icon: NoteBlank, color: "blue" },
  { label: "Study Streak", value: "0d", icon: Flame, color: "orange" },
  { label: "Quizzes Taken", value: "0", icon: Brain, color: "green" },
  { label: "Cards Mastered", value: "0", icon: Star, color: "purple" },
] as const;

const ACTIONS = [
  {
    id: "notes",
    title: "Notes",
    description: "Write, organize, and review your notes",
    icon: FileText,
    href: "/dashboard/free-study?dest=notes",
    gradient: "blue",
  },
  {
    id: "quiz",
    title: "Quiz Generator",
    description: "Test your knowledge with AI quizzes",
    icon: Lightning,
    href: "/dashboard/free-study/quiz",
    gradient: "amber",
  },
  {
    id: "flashcards",
    title: "Flashcards",
    description: "Memorize key concepts",
    icon: Stack,
    href: "/dashboard/free-study/flashcards",
    gradient: "green",
  },
] as const;

export function FreeStudyLanding() {
  return (
    <div className={styles.page}>
      <header className={styles.greeting}>
        <h1 className={styles.greetingTitle}>Free Studying</h1>
        <p className={styles.greetingSub}>Your study command center</p>
      </header>

      <div className={styles.statsRow}>
        {STATS.map((s) => {
          const Icon = s.icon;
          return (
            <div key={s.label} className={styles.statCard}>
              <div className={`${styles.statIconCircle} ${styles[s.color]}`}>
                <Icon size={18} weight="duotone" aria-hidden />
              </div>
              <div className={styles.statInfo}>
                <span className={styles.statValue}>{s.value}</span>
                <span className={styles.statLabel}>{s.label}</span>
              </div>
            </div>
          );
        })}
      </div>

      <nav className={styles.actionsGrid} aria-label="Study tools">
        {ACTIONS.map((a) => {
          const Icon = a.icon;
          return (
            <Link
              key={a.id}
              href={a.href}
              className={styles.actionCard}
            >
              <div className={`${styles.actionIconWrap} ${styles[a.gradient]}`}>
                <Icon size={28} weight="duotone" aria-hidden />
              </div>
              <div className={styles.actionBody}>
                <h2 className={styles.actionTitle}>{a.title}</h2>
                <p className={styles.actionDesc}>{a.description}</p>
              </div>
            </Link>
          );
        })}
      </nav>

      <section className={styles.activitySection}>
        <h2 className={styles.activityTitle}>Recent Activity</h2>
        <p className={styles.activityEmpty}>
          No recent activity yet. Start studying to see your progress here.
        </p>
      </section>
    </div>
  );
}
