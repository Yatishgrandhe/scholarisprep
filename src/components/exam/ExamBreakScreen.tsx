"use client";

import { Coffee, Timer } from "@phosphor-icons/react";
import { Button } from "@/components/ui/button";
import { DIGITAL_SAT_BREAK_MINUTES } from "@/lib/exam/digitalSat";
import styles from "./ExamBreakScreen.module.css";

type ExamBreakScreenProps = {
  timeLeftSeconds: number;
  onSkip: () => void;
  onContinue: () => void;
};

function formatTime(seconds: number) {
  const m = Math.floor(seconds / 60);
  const s = seconds % 60;
  return `${m}:${s.toString().padStart(2, "0")}`;
}

export function ExamBreakScreen({
  timeLeftSeconds,
  onSkip,
  onContinue,
}: ExamBreakScreenProps) {
  const canContinue = timeLeftSeconds <= 0;

  return (
    <div className={styles.overlay}>
      <div className={styles.card}>
        <span className={styles.iconWrap} aria-hidden>
          <Coffee size={32} weight="duotone" />
        </span>
        <h1 className={styles.title}>Scheduled break</h1>
        <p className={styles.body}>
          You finished Reading and Writing. Take up to{" "}
          {DIGITAL_SAT_BREAK_MINUTES} minutes before Math, just like Bluebook on
          test day.
        </p>
        <div className={styles.timer}>
          <Timer size={20} aria-hidden />
          <span>{formatTime(timeLeftSeconds)}</span>
        </div>
        <p className={styles.hint}>
          {canContinue
            ? "Break time is up. Continue when you're ready."
            : "Stay on this screen or skip the break to start Math early."}
        </p>
        <div className={styles.actions}>
          <Button type="button" variant="outline" onClick={onSkip}>
            Skip break
          </Button>
          <Button type="button" onClick={onContinue} disabled={!canContinue}>
            {canContinue ? "Start Math" : "Continue when timer ends"}
          </Button>
        </div>
      </div>
    </div>
  );
}
