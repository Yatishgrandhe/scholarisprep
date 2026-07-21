"use client";

import Link from "next/link";
import {
  FileText,
  PencilLine,
  NoteBlank,
  Flame,
} from "@phosphor-icons/react";
import { FreeStudyLayout } from "./FreeStudyLayout";
import styles from "./free-study-landing.module.css";

const STATS = [
  { label: "Total Notes", value: 0, icon: NoteBlank },
  { label: "Study Streak", value: "0d", icon: Flame },
];

const ACTIONS = [
  {
    id: "notes",
    title: "Notes",
    description: "Write notes, attach images and PDFs, generate quizzes and flashcards",
    icon: FileText,
    href: "/dashboard/free-study?dest=notes",
  },
  {
    id: "whiteboard",
    title: "Whiteboard",
    description: "Draw diagrams and equations",
    icon: PencilLine,
    href: "/dashboard/whiteboard",
    external: true,
  },
];

export function FreeStudyLanding() {
  return (
    <FreeStudyLayout>
      <div className={styles.dashboard}>
        <header className={styles.header}>
          <h1 className={styles.title}>Free Studying</h1>
        </header>

        <div className={styles.statsRow}>
          {STATS.map((s) => {
            const Icon = s.icon;
            return (
              <div key={s.label} className={styles.statCard}>
                <Icon
                  size={18}
                  weight="duotone"
                  className={styles.statIcon}
                  aria-hidden
                />
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
                {...(a.external
                  ? { target: "_blank", rel: "noopener noreferrer" }
                  : {})}
              >
                <div className={styles.actionIconWrap}>
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
      </div>
    </FreeStudyLayout>
  );
}
