"use client";

import { useEffect, useState } from "react";
import styles from "./ExamCountdownCard.module.css";

type ExamCountdownCardProps = {
  examLabel: string;
  /** ISO date string for the exam day */
  examDate: string;
};

type Remaining = {
  days: number;
  hours: number;
  minutes: number;
};

function getRemaining(examDate: string): Remaining {
  const diff = Math.max(0, new Date(examDate).getTime() - Date.now());
  const minutesTotal = Math.floor(diff / 60_000);
  return {
    days: Math.floor(minutesTotal / (60 * 24)),
    hours: Math.floor((minutesTotal / 60) % 24),
    minutes: minutesTotal % 60,
  };
}

export function ExamCountdownCard({ examLabel, examDate }: ExamCountdownCardProps) {
  const [remaining, setRemaining] = useState<Remaining>(() =>
    getRemaining(examDate),
  );

  useEffect(() => {
    setRemaining(getRemaining(examDate));
    const id = setInterval(() => setRemaining(getRemaining(examDate)), 30_000);
    return () => clearInterval(id);
  }, [examDate]);

  const dateLabel = new Date(examDate).toLocaleDateString("en-US", {
    weekday: "long",
    month: "long",
    day: "numeric",
  });

  return (
    <aside className={styles.card} role="status">
      <p className={styles.title}>Time left to {examLabel} exam</p>
      <div className={styles.row} suppressHydrationWarning>
        <span className={styles.unit}>
          <strong>{remaining.days}</strong>
          <small>days</small>
        </span>
        <span className={styles.unit}>
          <strong>{remaining.hours}</strong>
          <small>hrs</small>
        </span>
        <span className={styles.unit}>
          <strong>{remaining.minutes}</strong>
          <small>min</small>
        </span>
      </div>
      <p className={styles.date}>{dateLabel}</p>
    </aside>
  );
}
