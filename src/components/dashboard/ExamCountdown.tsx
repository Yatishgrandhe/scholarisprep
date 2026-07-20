"use client";

import { Calendar } from "@phosphor-icons/react";
import styles from "@/app/dashboard/dashboard.module.css";

type ExamCountdownProps = {
  examLabel: string;
  daysLeft: number;
};

export function ExamCountdown({ examLabel, daysLeft }: ExamCountdownProps) {
  return (
    <p className={styles.examCountdown}>
      <Calendar size={18} weight="duotone" aria-hidden />
      {examLabel} in {daysLeft} {daysLeft === 1 ? "day" : "days"}
    </p>
  );
}
