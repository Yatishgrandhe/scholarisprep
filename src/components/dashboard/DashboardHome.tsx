import Link from "next/link";
import { Card } from "@/components/ui/card";
import { ExamCountdown } from "@/components/dashboard/ExamCountdown";
import { Button } from "@/components/ui/app-button";
import { ScoreRingCard } from "@/components/dashboard/ScoreRingCard";
import { TodaysTasksPanel } from "@/components/dashboard/TodaysTasksPanel";
import { PerformanceLineChart } from "@/components/dashboard/PerformanceLineChart";
import { TopicHeatmapGrid } from "@/components/dashboard/TopicHeatmapGrid";
import type { SessionChartPoint } from "@/lib/dashboard/sessionChart";
import type { StreakDay } from "@/lib/dashboard/streakCalendar";
import type { TopicHeatmapCell } from "@/lib/dashboard/topicHeatmap";
import { tutorHref } from "@/lib/tutor/routes";
import type { ExamType, Profile } from "@/types/supabase";
import styles from "@/app/dashboard/dashboard.module.css";

export type DashboardEnrollment = {
  courseId: string;
  title: string;
  slug: string | null;
  progressPercent: number;
};

export type DashboardHomeProps = {
  profile: Pick<Profile, "full_name" | "exam_goal" | "exam_date"> | null;
  userId: string;
  hasStudyPlan: boolean;
  planData: unknown;
  predicted: number;
  targetScore: number;
  ringPercent: number;
  sessionCount: number;
  currentStreak: number;
  longestStreak: number;
  streakDays: StreakDay[];
  chartData: SessionChartPoint[];
  heatmapCells: TopicHeatmapCell[];
  lastEnrollment: DashboardEnrollment | null;
};

function getGreeting(): string {
  const hour = new Date().getHours();
  if (hour < 12) return "Good morning";
  if (hour < 17) return "Good afternoon";
  return "Good evening";
}

function daysUntilExam(examDate: string | null): number | null {
  if (!examDate) return null;
  const diff = new Date(`${examDate}T12:00:00`).getTime() - Date.now();
  return Math.max(0, Math.ceil(diff / (1000 * 60 * 60 * 24)));
}

export function DashboardHome({
  profile,
  userId,
  hasStudyPlan,
  planData,
  predicted,
  targetScore,
  ringPercent,
  sessionCount,
  currentStreak,
  longestStreak,
  streakDays,
  chartData,
  heatmapCells,
  lastEnrollment,
}: DashboardHomeProps) {
  const firstName = profile?.full_name?.split(" ")[0] ?? "there";
  const examLabel = profile?.exam_goal ?? "SAT";
  const activeExam = (profile?.exam_goal ?? "SAT") as ExamType;
  const daysLeft = daysUntilExam(profile?.exam_date ?? null);
  const showExamWarning = daysLeft !== null && daysLeft <= 7;

  const continueHref = lastEnrollment?.slug
    ? `/learn/${lastEnrollment.slug}`
    : "/dashboard/courses";

  return (
    <div className={styles.home}>
      <header className={styles.greetingHeader}>
        <div>
          <h1 className={styles.greetingTitle}>
            {getGreeting()}, {firstName}
          </h1>
          {daysLeft !== null ? (
            <ExamCountdown examLabel={examLabel} daysLeft={daysLeft} />
          ) : (
            <Link href="/dashboard/settings" className={styles.setExamLink}>
              Set your exam date →
            </Link>
          )}
        </div>
      </header>

      {showExamWarning ? (
        <div className={styles.examWarning} role="status">
          Your {examLabel} is in {daysLeft} {daysLeft === 1 ? "day" : "days"}.
          Focus on review and timed practice this week.
        </div>
      ) : null}

      <section className={styles.grid2}>
        <ScoreRingCard
          predicted={predicted}
          targetScore={targetScore}
          ringPercent={ringPercent}
          sessionCount={sessionCount}
        />

        <Card>
          <p className={styles.cardTitle}>Study streak</p>
          <div className={styles.streakBlock}>
            <span className={styles.streakNumber}>{currentStreak}</span>
            <span className={styles.streakLabel}>day streak</span>
          </div>
          <div className={styles.streakDots} aria-label="Last 7 days of practice">
            {streakDays.map((day) => (
              <div key={day.date} className={styles.streakDotWrap}>
                <span
                  className={`${styles.streakDot} ${day.practiced ? styles.streakDotFilled : ""}`}
                  title={`${day.label}: ${day.practiced ? "practiced" : "no practice"}`}
                />
                <span className={styles.streakDotLabel}>{day.label}</span>
              </div>
            ))}
          </div>
          <p className={styles.streakRecord}>
            Longest streak: {longestStreak} {longestStreak === 1 ? "day" : "days"}
          </p>
        </Card>
      </section>

      <section className={styles.grid2}>
        <TodaysTasksPanel
          hasStudyPlan={hasStudyPlan}
          initialPlanData={planData}
          userId={userId}
        />
        <PerformanceLineChart data={chartData} />
      </section>

      <section className={styles.quickActionsRow}>
        <Button href="/dashboard/practice/bank">Practice Questions</Button>
        <Button variant="outline" href={continueHref}>
          Continue Course
        </Button>
        <Button variant="ghost" href={tutorHref(activeExam)}>
          Ask Scho
        </Button>
      </section>

      <section>
        <TopicHeatmapGrid attempts={[]} precomputed={heatmapCells} />
      </section>
    </div>
  );
}
