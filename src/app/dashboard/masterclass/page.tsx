"use client";

import Link from "next/link";
import {
  BookOpen,
  CalendarBlank,
  ChatsCircle,
  Sparkle,
  Strategy,
  VideoCamera,
} from "@phosphor-icons/react";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import styles from "./page.module.css";

const WORKSHOPS = [
  {
    icon: Strategy,
    title: "Section strategy",
    desc: "RW vs Math pacing frameworks you can apply immediately in Speed Drill.",
  },
  {
    icon: Sparkle,
    title: "Score jumps",
    desc: "Turn missed skills into daily tasks inside your Scholaris planner.",
  },
  {
    icon: ChatsCircle,
    title: "Office hours",
    desc: "Ask Scho for help on any concept while you wait for live sessions.",
  },
  {
    icon: VideoCamera,
    title: "Recordings",
    desc: "Session replays will appear here once the first cohort launches.",
  },
] as const;

/* Vivid covers — rotated deterministically by card index (RW-style pink
   first, Math-style blue second, then violet / teal). */
const COVER_GRADIENTS = [
  "linear-gradient(135deg, #c026d3, #ec4899)",
  "linear-gradient(135deg, #2563eb, #06b6d4)",
  "linear-gradient(135deg, #7c3aed, #a855f7)",
  "linear-gradient(135deg, #0d9488, #22c55e)",
] as const;

const TIMELINE = [
  {
    phase: "Now",
    label: "Self-paced prep",
    desc: "Study plan + question bank",
    active: true,
  },
  {
    phase: "Q3",
    label: "Live cohorts",
    desc: "Weekly strategy workshops",
    active: false,
  },
  {
    phase: "Soon",
    label: "Replays on demand",
    desc: "Full session library",
    active: false,
  },
] as const;

export default function MasterclassPage() {
  const examType = useActiveExamType();
  const examLabel = examType === "CUSTOM" ? "Scholaris" : `${examType}®`;

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <BookOpen
          size={22}
          weight="duotone"
          className={styles.headerIcon}
          aria-hidden
        />
        <h1 className={styles.title}>{examLabel} Masterclass</h1>
        <span className={styles.statusPill}>Cohorts launching soon</span>
      </header>

      <section className={styles.callout} aria-labelledby="masterclass-about">
        <span className={styles.calloutIcon} aria-hidden>
          <Sparkle size={18} weight="fill" />
        </span>
        <h2 id="masterclass-about" className={styles.calloutTitle}>
          What is the Masterclass?
        </h2>
        <p className={styles.calloutText}>
          Strategy sessions from top scorers, pacing, guessing, and
          section-specific tactics. Live cohorts are rolling out soon; start
          with self-paced prep today.
        </p>
        <div className={styles.calloutActions}>
          <Link href="/dashboard/study-plan" className={styles.primaryBtn}>
            <CalendarBlank size={18} weight="fill" />
            Build my study plan
          </Link>
          <Link href="/dashboard/practice/bank" className={styles.secondaryBtn}>
            <BookOpen size={18} weight="duotone" />
            Practice in the bank
          </Link>
        </div>
      </section>

      <section className={styles.section} aria-labelledby="cohort-timeline">
        <h2 id="cohort-timeline" className={styles.sectionLabel}>
          Rollout timeline
        </h2>
        <div className={styles.timelineTrack}>
          {TIMELINE.map((step) => (
            <div
              key={step.phase}
              className={`${styles.timelineStep}${step.active ? ` ${styles.timelineStepActive}` : ""}`}
            >
              <span className={styles.stepPhase}>{step.phase}</span>
              <strong className={styles.stepLabel}>{step.label}</strong>
              <span className={styles.stepDesc}>{step.desc}</span>
            </div>
          ))}
        </div>
      </section>

      <section className={styles.section} aria-labelledby="masterclass-workshops">
        <h2 id="masterclass-workshops" className={styles.sectionLabel}>
          Workshops
        </h2>
        <div className={styles.grid}>
          {WORKSHOPS.map(({ icon: Icon, title, desc }, index) => (
            <article key={title} className={styles.card}>
              <div
                className={styles.cover}
                style={{
                  background: COVER_GRADIENTS[index % COVER_GRADIENTS.length],
                }}
              >
                <span className={styles.coverIcon} aria-hidden>
                  <Icon size={22} weight="fill" />
                </span>
                <h3 className={styles.coverTitle}>{title}</h3>
              </div>
              <div className={styles.cardBody}>
                <p className={styles.cardDesc}>{desc}</p>
              </div>
            </article>
          ))}
        </div>
      </section>

      {examType !== "CUSTOM" ? (
        <p className={styles.disclaimer}>
          {examType}&reg; is a trademark registered by its respective owner,
          which is not affiliated with and does not endorse Scholaris.
        </p>
      ) : null}
    </div>
  );
}
