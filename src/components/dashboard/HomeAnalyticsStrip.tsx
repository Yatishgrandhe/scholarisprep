"use client";

import Link from "next/link";
import {
  Bookmark,
  ChartBar,
  ChartLine,
  CheckCircle,
  ListChecks,
  Sparkle,
  WarningCircle,
} from "@phosphor-icons/react";
import {
  taskDisplayLabel,
  taskEstimatedMinutes,
  taskTypeBadgeLabel,
  type StudyTask,
} from "@/lib/dashboard/studyPlan";
import styles from "./HomeAnalyticsStrip.module.css";

export type HomeStats = {
  questionsAttempted: number;
  currentAccuracy: number | null;
  savedCount: number;
  errorCount: number;
};

export function HomeAnalyticsStrip({ stats }: { stats: HomeStats }) {
  return (
    <section className={styles.section}>
      <div className={styles.header}>
        <h3 className={styles.heading}>
          <ChartLine size={20} weight="fill" className={styles.headingIcon} />
          Analytics
        </h3>
        <Link href="/dashboard/analytics" className={styles.viewAll}>
          View all analytics
        </Link>
      </div>
      <div className={styles.strip}>
        <div className={styles.cell}>
          <p className={styles.statLabel}>Questions Attempted</p>
          <p className={styles.statValue}>
            {stats.questionsAttempted.toLocaleString()}
          </p>
          <CheckCircle size={72} weight="fill" className={styles.watermark} aria-hidden />
        </div>
        <div className={styles.cell}>
          <p className={styles.statLabel}>Current Accuracy</p>
          <p className={styles.statValue}>
            {stats.currentAccuracy !== null ? `${stats.currentAccuracy}%` : "—"}
          </p>
          <ChartBar size={72} weight="fill" className={styles.watermark} aria-hidden />
        </div>
        <div className={styles.cell}>
          <p className={styles.statLabel}>Saved Questions</p>
          <p className={styles.statValue}>{stats.savedCount}</p>
          <Link href="/dashboard/saved" className={styles.cellAction}>
            View Saved
          </Link>
          <Bookmark size={72} weight="fill" className={styles.watermark} aria-hidden />
        </div>
        <div className={styles.cell}>
          <p className={styles.statLabel}>Recent Errors</p>
          <p className={styles.statValue}>{stats.errorCount}</p>
          <Link href="/dashboard/mistakes" className={styles.cellAction}>
            Start Review
          </Link>
          <WarningCircle size={72} weight="fill" className={styles.watermark} aria-hidden />
        </div>
      </div>
    </section>
  );
}

export function HomeStudyPlanBlock({
  hasPlan,
  examLabel,
  tasks = [],
  apIb = false,
}: {
  hasPlan: boolean;
  examLabel: string;
  tasks?: StudyTask[];
  apIb?: boolean;
}) {
  const pendingTasks = tasks.filter((t) => !t.completed && !t.done);

  return (
    <section className={styles.studySection}>
      <div className={styles.header}>
        <h3 className={styles.heading}>
          <ListChecks size={20} weight="bold" className={styles.headingIcon} />
          Today&apos;s Study Plan
        </h3>
      </div>
      <div
        className={`${styles.studyCard} ${!hasPlan ? styles.studyCardEmpty : ""}`}
      >
        {!hasPlan ? (
          <>
            <div className={styles.schoMascot} aria-hidden>
              <Sparkle size={30} weight="fill" />
            </div>
            <p className={styles.studyTitle}>Create a study plan</p>
            <p className={styles.studySub}>
              Get a personalized study plan based on your test date and skill
              level.
            </p>
            <Link href="/dashboard/study-plan" className={styles.studyCtaPrimary}>
              Create my study plan
            </Link>
            {apIb ? (
              <div className={styles.studyExtraLinks}>
                <Link href="/dashboard/exams" className={styles.studyCta}>
                  Practice Exams
                </Link>
                <Link href="/dashboard/unit-tests" className={styles.studyCta}>
                  Unit Tests
                </Link>
              </div>
            ) : null}
          </>
        ) : pendingTasks.length > 0 ? (
          <>
            <ul className={styles.taskList}>
              {pendingTasks.map((task) => (
                <li key={task.id} className={styles.taskRow}>
                  <span className={styles.taskBadge}>
                    {taskTypeBadgeLabel(task.type)}
                  </span>
                  <span className={styles.taskLabel}>
                    {taskDisplayLabel(task)}
                  </span>
                  <span className={styles.taskMeta}>
                    {taskEstimatedMinutes(task)} min
                  </span>
                </li>
              ))}
            </ul>
            <Link href="/dashboard/study-plan" className={styles.studyCta}>
              View full plan
            </Link>
          </>
        ) : (
          <>
            <p className={styles.studyTitle}>You&apos;re caught up today</p>
            <p className={styles.studySub}>
              Nice work
              {apIb
                ? ` — try a unit test or a full ${examLabel} practice exam.`
                : `, explore the bank or run Speed Drill for extra ${examLabel} practice.`}
            </p>
            {apIb ? (
              <div className={styles.studyExtraLinks}>
                <Link href="/dashboard/unit-tests" className={styles.studyCta}>
                  Unit Tests
                </Link>
                <Link href="/dashboard/exams" className={styles.studyCta}>
                  Practice Exams
                </Link>
              </div>
            ) : (
              <Link href="/dashboard/study-plan" className={styles.studyCta}>
                View study plan
              </Link>
            )}
          </>
        )}
      </div>
    </section>
  );
}

function formatScoreDisplay(
  score: number | null,
  scoreMax: number | null,
): string {
  if (score === null || score === undefined) return "—";
  if (scoreMax != null) return `${score} / ${scoreMax}`;
  return String(score);
}

export function HomeScoreCards({
  currentScore,
  goalScore,
  daysUntilExam,
  examLabel = "SAT",
  scoreMax = null,
  goalTone = "sat",
}: {
  currentScore: number | null;
  goalScore: number | null;
  daysUntilExam: number | null;
  examLabel?: string;
  /** When set (AP 5 / IB 7), scores render as `4 / 5`. */
  scoreMax?: number | null;
  goalTone?: "sat" | "neutral";
}) {
  return (
    <div className={styles.scoreGrid}>
      <Link href="/dashboard/diagnostic" className={styles.scoreCard}>
        <p className={styles.scoreLabel}>Current Score</p>
        <p className={styles.scoreNum}>
          {formatScoreDisplay(currentScore, scoreMax)}
        </p>
      </Link>
      <div className={styles.scoreRow}>
        <div
          className={`${styles.scoreCard} ${
            goalTone === "sat" ? styles.scoreCardPurple : styles.scoreCardNeutral
          }`}
        >
          <p className={styles.scoreLabel}>Goal Score</p>
          <p className={styles.scoreNum}>
            {formatScoreDisplay(goalScore, scoreMax)}
          </p>
          {!goalScore ? (
            <Link href="/dashboard/settings" className={styles.setGoal}>
              Set goal
            </Link>
          ) : null}
        </div>
        <div className={`${styles.scoreCard} ${styles.scoreCardOrange}`}>
          <p className={styles.scoreLabel}>Days Until {examLabel}</p>
          <p className={styles.scoreNum}>{daysUntilExam ?? "—"}</p>
        </div>
      </div>
    </div>
  );
}
