import Link from "next/link";
import { Notebook, Sparkle } from "@phosphor-icons/react/dist/ssr";
import { createClient } from "@/lib/supabase/server";
import {
  predictFromAttempts,
  type AttemptWithQuestion,
} from "@/lib/dashboard/predictedScore";
import {
  getTodaysTasks,
  type StudyPlanData,
} from "@/lib/dashboard/studyPlan";
import { apIbDisplayName, isApOrIbExam } from "@/lib/apIbCatalog";
import {
  defaultTargetForExam,
  scoreBoundsForExam,
} from "@/lib/onboarding/examPrograms";
import { FREE_STUDY_HREF } from "@/lib/dashboard/navRoutes";
import { tutorCtaLabel, tutorHref } from "@/lib/tutor/routes";
import type { ExamType, Profile } from "@/types/supabase";
import {
  HomeAnalyticsStrip,
  HomeScoreCards,
  HomeStudyPlanBlock,
  type HomeStats,
} from "@/components/dashboard/HomeAnalyticsStrip";
import { ExamCountdownCard } from "@/components/dashboard/ExamCountdownCard";
import styles from "./dashboard.module.css";

function daysUntilExam(examDate: string | null): number | null {
  if (!examDate) return null;
  const diff = new Date(examDate).getTime() - Date.now();
  return Math.max(0, Math.ceil(diff / (1000 * 60 * 60 * 24)));
}

function greetingForHour(hour: number): string {
  if (hour < 12) return "Good morning";
  if (hour < 17) return "Good afternoon";
  return "Good evening";
}

function examDisplayLabel(exam: ExamType): string {
  if (isApOrIbExam(exam)) return apIbDisplayName(exam);
  if (exam === "ACT") return "ACT";
  if (exam === "SAT" || exam === "PSAT") return "SAT";
  return String(exam).replace(/_/g, " ");
}

/** Map practice accuracy onto AP 1–5 / IB 1–7 (never SAT 400–1600). */
function predictApIbFromAttempts(
  attempts: AttemptWithQuestion[],
  examType: ExamType,
): number | null {
  if (attempts.length === 0) return null;
  const { min, max } = scoreBoundsForExam(examType);
  const correct = attempts.filter((a) => a.is_correct).length;
  const rate = correct / attempts.length;
  return Math.min(max, Math.max(min, Math.round(min + rate * (max - min))));
}

type AttemptRow = AttemptWithQuestion & {
  time_spent_seconds: number | null;
  exam_type?: ExamType | null;
};

export default async function DashboardPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  let profile: Pick<
    Profile,
    "full_name" | "exam_goal" | "exam_date"
  > | null = null;
  let activeExam: ExamType = "SAT";
  let targetScore: number | null = null;
  let hasPlan = false;
  let planTasks: ReturnType<typeof getTodaysTasks> = [];
  let savedCount = 0;
  let attempts: AttemptRow[] = [];
  let diagnostic: {
    predicted_score: number | null;
    taken_at: string;
  } | null = null;
  let examDate: string | null = null;

  if (user) {
    const [profileRes, activeSubjectRes] = await Promise.all([
      supabase
        .from("profiles")
        .select("full_name, exam_goal, exam_date")
        .eq("id", user.id)
        .single(),
      supabase
        .from("user_active_subjects")
        .select("exam_type, target_score, exam_date")
        .eq("user_id", user.id)
        .eq("is_primary", true)
        .maybeSingle(),
    ]);

    profile = profileRes.data;
    activeExam =
      activeSubjectRes.data?.exam_type ??
      (profile?.exam_goal as ExamType | undefined) ??
      "SAT";

    const [attemptsRes, planRes, diagnosticRes, savedRes] = await Promise.all([
      supabase
        .from("question_attempts")
        .select(
          "is_correct, session_id, created_at, time_spent_seconds, exam_type, questions(difficulty, topic)",
        )
        .eq("user_id", user.id)
        .eq("exam_type", activeExam)
        .order("created_at", { ascending: false })
        .limit(500),
      supabase
        .from("multi_subject_study_plans")
        .select("target_score, plan_data")
        .eq("user_id", user.id)
        .eq("course_id", activeExam)
        .maybeSingle(),
      supabase
        .from("subject_diagnostic_results")
        .select("predicted_score, taken_at, exam_type")
        .eq("user_id", user.id)
        .eq("exam_type", activeExam)
        .order("taken_at", { ascending: false })
        .limit(1)
        .maybeSingle(),
      supabase
        .from("saved_questions")
        .select("id", { count: "exact", head: true })
        .eq("user_id", user.id)
        .eq("course_id", activeExam),
    ]);

    targetScore =
      activeSubjectRes.data?.target_score ??
      planRes.data?.target_score ??
      null;
    examDate = activeSubjectRes.data?.exam_date ?? profile?.exam_date ?? null;
    hasPlan = Boolean(planRes.data?.plan_data);
    if (planRes.data?.plan_data) {
      planTasks = getTodaysTasks(planRes.data.plan_data as StudyPlanData);
    }
    attempts = (attemptsRes.data ?? []) as AttemptRow[];
    diagnostic = diagnosticRes.data;
    savedCount = savedRes.count ?? 0;
  }

  const examLabel = examDisplayLabel(activeExam);
  const apIb = isApOrIbExam(activeExam);
  const scoreBounds = scoreBoundsForExam(activeExam);
  const firstName = profile?.full_name?.split(" ")[0];
  const hour = new Date().getHours();
  const daysLeft = daysUntilExam(examDate);

  const scopedAttempts = attempts;
  const correctCount = scopedAttempts.filter((a) => a.is_correct).length;
  const homeStats: HomeStats = {
    questionsAttempted: scopedAttempts.length,
    currentAccuracy:
      scopedAttempts.length > 0
        ? Math.round((correctCount / scopedAttempts.length) * 100)
        : null,
    savedCount,
    errorCount: scopedAttempts.filter((a) => !a.is_correct).length,
  };

  const practicePrediction = apIb
    ? predictApIbFromAttempts(scopedAttempts, activeExam)
    : scopedAttempts.length > 0
      ? (predictFromAttempts(scopedAttempts)?.predicted ?? null)
      : null;
  const predictedScore = diagnostic?.predicted_score ?? practicePrediction;

  const goalScore =
    targetScore ?? (apIb ? defaultTargetForExam(activeExam) : null);

  return (
    <div className={styles.homePage}>
      {/* Greeting + live exam countdown */}
      <section className={styles.homeHero} aria-labelledby="dashboard-heading">
        <div className={styles.homeHeroCopy}>
          <h1 id="dashboard-heading" className={styles.greeting}>
            {greetingForHour(hour)},{" "}
            <span className={styles.greetingName}>{firstName ?? "there"}</span>
          </h1>
          <p className={styles.greetingSub}>
            {hasPlan
              ? daysLeft !== null
                ? `${examLabel} in ${daysLeft} days, stay on track.`
                : `Your ${examLabel} prep, all in one place.`
              : "Let's start by creating a study plan"}
          </p>
          <div className={styles.homeHeroActions}>
            {!hasPlan ? (
              <Link href="/dashboard/study-plan" className={styles.greetingCta}>
                Create my study plan
              </Link>
            ) : null}
            <Link
              href={FREE_STUDY_HREF}
              className={
                hasPlan ? styles.greetingCta : styles.homeApIbCtaSecondary
              }
            >
              <Notebook size={16} weight="duotone" aria-hidden />
              Free Studying
            </Link>
          </div>
          {apIb ? (
            <div className={styles.homeApIbCtas}>
              <Link href="/dashboard/exams" className={styles.homeApIbCta}>
                Practice Exams (Forms A–J)
              </Link>
              <Link href="/dashboard/unit-tests" className={styles.homeApIbCtaSecondary}>
                Unit Tests
              </Link>
              <Link href={tutorHref(activeExam)} className={styles.homeApIbCtaSecondary}>
                {tutorCtaLabel(activeExam)}
              </Link>
            </div>
          ) : null}
        </div>
        {examDate ? (
          <ExamCountdownCard examLabel={examLabel} examDate={examDate} />
        ) : null}
      </section>

      {/* Score report banner — SAT/ACT PDF wizard only */}
      {!apIb ? (
        <section className={styles.scoreBanner} aria-label="Score report">
          <span className={styles.scoreBannerIcon} aria-hidden>
            <Sparkle size={20} weight="fill" />
          </span>
          <p className={styles.scoreBannerText}>
            <strong>Got your {examLabel} score?</strong> Turn your score report
            into a personalized study plan
          </p>
          <Link
            href="/dashboard/study-plan/score-report"
            className={styles.scoreBannerCta}
          >
            Upload score report
          </Link>
        </section>
      ) : null}

      {/* Analytics strip, full width */}
      <HomeAnalyticsStrip stats={homeStats} />

      {/* Study plan + score cards */}
      <section className={styles.homeGrid} aria-label="Dashboard overview">
        <div className={styles.homeMain}>
          <HomeStudyPlanBlock
            hasPlan={hasPlan}
            examLabel={examLabel}
            tasks={planTasks}
            apIb={apIb}
          />
        </div>
        <aside className={styles.homeAside}>
          <HomeScoreCards
            currentScore={predictedScore}
            goalScore={goalScore}
            daysUntilExam={daysLeft}
            examLabel={examLabel}
            scoreMax={apIb ? scoreBounds.max : null}
            goalTone={apIb ? "neutral" : "sat"}
          />
        </aside>
      </section>
    </div>
  );
}
