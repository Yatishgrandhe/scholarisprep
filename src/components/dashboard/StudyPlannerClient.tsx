"use client";

import { aiRequest } from "@/lib/ai/clientKey";

import { useEffect, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { CaretRight, ChartLineUp, Lightbulb, Target } from "@phosphor-icons/react";
import { toast } from "sonner";
import { WizardStepShell } from "@/components/shared/WizardStepShell";
import { StudyPlanView } from "@/components/dashboard/StudyPlanView";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useSubjectStore } from "@/stores/subjectStore";
import { useAuth } from "@/hooks/useAuth";
import { createClient } from "@/lib/supabase/client";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import { syncCourseUnitTitles } from "@/lib/dashboard/courseUnits";
import {
  getTodaysTasks,
  taskDisplayLabel,
  taskEstimatedMinutes,
  type StudyPlanData,
} from "@/lib/dashboard/studyPlan";
import { apIbDisplayName } from "@/lib/apIbCatalog";
import { isApOrIbExam } from "@/lib/examFamily";
import { defaultTargetForExam, scoreBoundsForExam } from "@/lib/onboarding/examPrograms";
import type { ExamType } from "@/types/supabase";
import styles from "./study-planner.module.css";

type SavedPlanRow = {
  plan_data: unknown;
  target_score: number | null;
  baseline_score: number | null;
  exam_date: string | null;
  weekly_hours_allocated: number | null;
  generated_at: string | null;
};

type StartingPoint = "prior" | "diagnostic" | "none" | null;

function weakTopicsFromConfidence(confidence: number, examType: ExamType): string[] {
  if (isApOrIbExam(examType)) {
    const units = syncCourseUnitTitles(examType);
    if (confidence <= 3) return units.slice(0, Math.min(3, units.length));
    if (confidence <= 6) return units.slice(0, Math.min(2, units.length));
    return units.slice(0, 1);
  }
  if (confidence <= 3) return ["Foundations", "Core skills", "Test strategy"];
  if (confidence <= 6) return ["Mixed practice", "Timing"];
  return [];
}

function baselineFromConfidence(confidence: number, examType: ExamType): number {
  if (examType === "ACT") return Math.min(36, Math.max(1, Math.round(confidence * 3.2)));
  if (isApOrIbExam(examType)) {
    const { min, max } = scoreBoundsForExam(examType);
    // Map 1–10 confidence onto the exam's score band (AP 1–5 / IB 1–7).
    const t = Math.min(10, Math.max(1, confidence)) / 10;
    return Math.round(min + t * (max - min));
  }
  return Math.min(1600, Math.max(400, 800 + confidence * 80));
}

function clampScoreForExam(examType: ExamType, raw: number): number {
  const { min, max } = scoreBoundsForExam(examType);
  if (!Number.isFinite(raw)) return defaultTargetForExam(examType);
  return Math.min(max, Math.max(min, Math.round(raw)));
}

function plannerPayload(
  examType: ExamType,
  targetScore: string,
  examDate: string,
  confidence: number | null,
) {
  const conf = confidence ?? 5;
  const parsed = Number(targetScore);
  return {
    mode: "planner" as const,
    exam_type: examType,
    target_score: clampScoreForExam(
      examType,
      Number.isFinite(parsed) && parsed > 0
        ? parsed
        : defaultTargetForExam(examType),
    ),
    exam_date: examDate || undefined,
    baseline_score: baselineFromConfidence(conf, examType),
    weak_topics: weakTopicsFromConfidence(conf, examType),
    weekly_hours: 10,
  };
}

function examDisplayLabel(examType: ExamType): string {
  if (isApOrIbExam(examType)) return apIbDisplayName(examType);
  if (examType === "ACT") return "ACT";
  if (examType === "SAT" || examType === "PSAT") return "SAT";
  return String(examType).replace(/_/g, " ");
}

export function StudyPlannerClient({ hasPlan }: { hasPlan: boolean }) {
  const router = useRouter();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const { user } = useAuth();
  const supabase = createClient();
  const [planRow, setPlanRow] = useState<SavedPlanRow | null>(null);
  const [planChecked, setPlanChecked] = useState(false);
  const [reloadKey, setReloadKey] = useState(0);
  const [wizardOpen, setWizardOpen] = useState(false);
  const [step, setStep] = useState(1);
  const [starting, setStarting] = useState<StartingPoint>(null);
  const [confidence, setConfidence] = useState<number | null>(null);
  const [targetScore, setTargetScore] = useState("");
  const [examDate, setExamDate] = useState("");
  const [actEnglish, setActEnglish] = useState("");
  const [actMath, setActMath] = useState("");
  const [loading, setLoading] = useState(false);
  const [previewPlan, setPreviewPlan] = useState<StudyPlanData | null>(null);
  const [previewLoading, setPreviewLoading] = useState(false);

  const examLabel = examDisplayLabel(examType);
  const goalOnlyPlanner = isApOrIbExam(examType);
  const scoreBounds = scoreBoundsForExam(examType);
  const totalSteps = goalOnlyPlanner ? 3 : 4;

  const resetWizard = () => {
    setStep(1);
    setStarting(null);
    setConfidence(null);
    setTargetScore("");
    setExamDate("");
    setActEnglish("");
    setActMath("");
    setLoading(false);
    setPreviewPlan(null);
    setPreviewLoading(false);
  };

  // Load the saved plan for the ACTIVE exam and render it (this is what was
  // missing — the plan saved fine but the view was never shown). Refreshes the
  // session first so a stale token doesn't make the query come back empty.
  useEffect(() => {
    // Wait for persisted active exam so we never load the SAT plan on an AP/IB course.
    if (!user || !subjectHydrated) return;
    let active = true;
    setPlanChecked(false);
    setPlanRow(null);
    setWizardOpen(false);
    setStep(1);
    setStarting(null);
    setConfidence(null);
    setTargetScore("");
    setExamDate("");
    setActEnglish("");
    setActMath("");
    setLoading(false);
    setPreviewPlan(null);
    setPreviewLoading(false);
    void (async () => {
      await ensureFreshSession(supabase);
      const { data } = await supabase
        .from("multi_subject_study_plans")
        .select(
          "plan_data, target_score, baseline_score, exam_date, weekly_hours_allocated, generated_at",
        )
        .eq("user_id", user.id)
        .eq("course_id", examType)
        .maybeSingle();
      if (active) {
        setPlanRow((data as SavedPlanRow) ?? null);
        setPlanChecked(true);
      }
    })();
    return () => {
      active = false;
    };
  }, [user, examType, supabase, reloadKey, subjectHydrated]);

  useEffect(() => {
    const finishStep = goalOnlyPlanner ? 3 : 4;
    if (step !== finishStep || !user || confidence === null || !targetScore || !examDate) return;

    let cancelled = false;
    setPreviewLoading(true);

    void aiRequest("/api/ai/generate-study-plan", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        ...plannerPayload(examType, targetScore, examDate, confidence),
        preview: true,
      }),
    })
      .then((res) => (res.ok ? res.json() : null))
      .then((data: { plan?: StudyPlanData } | null) => {
        if (!cancelled && data?.plan) setPreviewPlan(data.plan);
      })
      .finally(() => {
        if (!cancelled) setPreviewLoading(false);
      });

    return () => {
      cancelled = true;
    };
  }, [step, user, examType, targetScore, examDate, confidence, goalOnlyPlanner]);

  const handleFinish = async () => {
    if (!user || confidence === null) return;
    setLoading(true);
    try {
      const res = await aiRequest("/api/ai/generate-study-plan", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(plannerPayload(examType, targetScore, examDate, confidence)),
      });
      if (!res.ok) {
        const detail = await res.text().catch(() => "");
        throw new Error(detail || "Failed to generate plan");
      }
      setWizardOpen(false);
      resetWizard();
      setReloadKey((k) => k + 1);
      router.refresh();
    } catch (err) {
      const message =
        err instanceof Error && err.message
          ? "Could not create your study plan. Please try again."
          : "Could not create your study plan. Please try again.";
      toast.error(message);
      setLoading(false);
    }
  };

  const confidenceHint =
    confidence === null
      ? "Pick a number, 1 is just starting out, 10 is exam-ready."
      : confidence <= 3
        ? "Beginner, we'll emphasize foundations and core skills."
        : confidence >= 8
          ? "Expert, we'll focus on advanced topics and timing."
          : "Intermediate, we'll balance review with new practice.";

  const previewTasks = previewPlan ? getTodaysTasks(previewPlan) : [];

  if (wizardOpen) {
    // AP/IB: skip SAT-centric "starting point" step — go straight to confidence.
    if (step === 1 && !goalOnlyPlanner) {
      return (
        <WizardStepShell
          step={1}
          totalSteps={totalSteps}
          title="What's your starting point?"
          subtitle="This helps us calibrate your study plan"
          onBack={() => {
            setWizardOpen(false);
            resetWizard();
          }}
          onContinue={() => setStep(2)}
          continueDisabled={!starting}
          showBackOnFirstStep
        >
          <div className={styles.optionGrid}>
            {[
              {
                id: "prior" as const,
                title: `I've taken the ${examLabel}`,
                sub: "Enter your scores",
              },
              {
                id: "diagnostic" as const,
                title: "I've taken a diagnostic test",
                sub: "We'll use your results",
              },
              { id: "none" as const, title: "None of the above", sub: "Rate your confidence" },
            ].map((opt) => (
              <button
                key={opt.id}
                type="button"
                className={`${styles.optionCard} ${starting === opt.id ? styles.optionCardActive : ""}`}
                onClick={() => setStarting(opt.id)}
              >
                <span className={styles.optionTitle}>{opt.title}</span>
                <span className={styles.optionSub}>{opt.sub}</span>
              </button>
            ))}
          </div>
        </WizardStepShell>
      );
    }

    const confidenceStep = goalOnlyPlanner ? 1 : 2;
    const goalsStep = goalOnlyPlanner ? 2 : 3;
    const finishStep = goalOnlyPlanner ? 3 : 4;

    if (step === confidenceStep || (goalOnlyPlanner && step === 1)) {
      return (
        <WizardStepShell
          step={confidenceStep}
          totalSteps={totalSteps}
          title="How confident are you?"
          subtitle="Rate yourself from 1 (beginner) to 10 (expert)"
          onBack={() => {
            if (goalOnlyPlanner) {
              setWizardOpen(false);
              resetWizard();
            } else {
              setStep(1);
            }
          }}
          onContinue={() => setStep(goalsStep)}
          continueDisabled={confidence === null}
          showBackOnFirstStep={goalOnlyPlanner}
        >
          <p className={styles.confidenceHint}>{confidenceHint}</p>
          <div className={styles.ratingLabels}>
            <span>Beginner</span>
            <span>Expert</span>
          </div>
          <div className={styles.ratingGrid}>
            {Array.from({ length: 10 }, (_, i) => i + 1).map((n) => (
              <button
                key={n}
                type="button"
                className={`${styles.ratingBtn} ${confidence === n ? styles.ratingBtnActive : ""}`}
                onClick={() => setConfidence(n)}
              >
                {n}
              </button>
            ))}
          </div>
        </WizardStepShell>
      );
    }

    if (step === goalsStep) {
      return (
        <WizardStepShell
          step={goalsStep}
          totalSteps={totalSteps}
          title={`Set your ${examLabel} goals`}
          subtitle="Tell us your test date and target score"
          onBack={() => setStep(confidenceStep)}
          onContinue={() => setStep(finishStep)}
          continueDisabled={!targetScore || !examDate}
        >
          <div className={styles.formStack}>
            <label className={styles.field}>
              <span>
                {examType === "ACT"
                  ? "Target composite"
                  : goalOnlyPlanner
                    ? `Target score (${scoreBounds.min}–${scoreBounds.max})`
                    : "Target score"}
              </span>
              <input
                type="number"
                value={targetScore}
                onChange={(e) => setTargetScore(e.target.value)}
                placeholder={String(defaultTargetForExam(examType))}
                min={scoreBounds.min}
                max={scoreBounds.max}
                step={goalOnlyPlanner || examType === "ACT" ? 1 : 10}
              />
            </label>
            {examType === "ACT" ? (
              <>
                <label className={styles.field}>
                  <span>English section goal</span>
                  <input
                    type="number"
                    value={actEnglish}
                    onChange={(e) => setActEnglish(e.target.value)}
                    placeholder="30"
                  />
                </label>
                <label className={styles.field}>
                  <span>Math section goal</span>
                  <input
                    type="number"
                    value={actMath}
                    onChange={(e) => setActMath(e.target.value)}
                    placeholder="30"
                  />
                </label>
              </>
            ) : null}
            <label className={styles.field}>
              <span>Test date</span>
              <input
                type="date"
                value={examDate}
                onChange={(e) => setExamDate(e.target.value)}
              />
            </label>
          </div>
        </WizardStepShell>
      );
    }

    return (
      <WizardStepShell
        step={finishStep}
        totalSteps={totalSteps}
        title="Create your plan"
        subtitle={`Review your daily preview, then save your ${examLabel} study plan`}
        onBack={() => setStep(goalsStep)}
        onContinue={() => void handleFinish()}
        isFinalStep
        finalLabel="Create plan"
        isLoading={loading}
      >
        <p className={styles.previewText}>
          Target: <strong>{targetScore || "—"}</strong> · Test date:{" "}
          <strong>{examDate || "—"}</strong> · Confidence:{" "}
          <strong>{confidence ?? "—"}/10</strong>
        </p>
        <div className={styles.previewBlock}>
          <h3 className={styles.previewHeading}>Today&apos;s preview</h3>
          {previewLoading ? (
            <p className={styles.previewText}>Generating preview…</p>
          ) : previewTasks.length > 0 ? (
            <ul className={styles.previewList}>
              {previewTasks.map((task) => (
                <li key={task.id}>
                  <span>{taskDisplayLabel(task)}</span>
                  <span className={styles.previewMinutes}>{taskEstimatedMinutes(task)} min</span>
                </li>
              ))}
            </ul>
          ) : (
            <p className={styles.previewText}>
              Your plan will include daily practice sessions tailored to your goals.
            </p>
          )}
        </div>
      </WizardStepShell>
    );
  }

  // A plan exists for this exam → show it. (This render was missing, which is
  // why the plan "didn't load" after building it.)
  if (planRow) {
    return (
      <StudyPlanView
        userId={user?.id ?? ""}
        examType={examType}
        initialPlanData={planRow.plan_data}
        initialMeta={{
          target_score: planRow.target_score,
          baseline_score: planRow.baseline_score,
          exam_date: planRow.exam_date,
          weekly_hours: planRow.weekly_hours_allocated,
          generated_at: planRow.generated_at,
        }}
        profileExamDate={planRow.exam_date}
      />
    );
  }

  // Still checking for a saved plan (e.g. just built one) — show a brief loader
  // instead of flashing the "start from scratch" landing.
  if (hasPlan && !planChecked) {
    return (
      <div className={styles.pageShell}>
        <div className={styles.landing}>
          <p className={styles.heroSub}>Pulling up your study plan…</p>
        </div>
      </div>
    );
  }

  return (
    <div className={styles.pageShell}>
      <div className={styles.landing}>
      <div className={styles.hero}>
        <div className={styles.illustration} aria-hidden>
          <div className={styles.illoCard}>
            <span className={`${styles.illoBar} ${styles.illoBarBlue}`} />
            <span className={styles.illoLine} />
            <span className={styles.illoLineShort} />
          </div>
          <div className={`${styles.illoCard} ${styles.illoCardMid}`}>
            <span className={`${styles.illoBar} ${styles.illoBarPurple}`} />
            <span className={`${styles.illoBar} ${styles.illoBarGreen}`} />
            <span className={styles.illoLine} />
          </div>
          <div className={styles.illoCard}>
            <span className={`${styles.illoBar} ${styles.illoBarYellow}`} />
            <span className={`${styles.illoBar} ${styles.illoBarRed}`} />
            <span className={styles.illoLineShort} />
          </div>
        </div>
        <h1 className={styles.heroTitle}>Create a game plan for your exams</h1>
        {hasPlan ? (
          <p className={styles.heroSub}>Your {examLabel} study plan is active.</p>
        ) : null}
      </div>

      <div
        className={`${styles.entryGrid} ${goalOnlyPlanner ? styles.entryGridSingle : ""}`}
      >
        <button
          type="button"
          className={styles.entryCard}
          onClick={() => {
            resetWizard();
            setWizardOpen(true);
          }}
        >
          <h2>Start from scratch</h2>
          <p>Answer a few questions and we&apos;ll build a plan from your goals.</p>
          <span className={styles.pillBtn}>
            Continue
            <CaretRight size={13} weight="bold" aria-hidden />
          </span>
        </button>
        {!goalOnlyPlanner ? (
          <Link href="/dashboard/study-plan/score-report" className={styles.entryCard}>
            <h2>Upload your {examLabel} score report</h2>
            <p>
              We&apos;ll read your skills report and tailor checkpoints to your strengths
              and gaps.
            </p>
            <span className={styles.pillBtn}>
              Continue
              <CaretRight size={13} weight="bold" aria-hidden />
            </span>
          </Link>
        ) : null}
      </div>

      <section className={styles.howSection}>
        <h3 className={styles.howTitle}>How It Works</h3>
        <div className={styles.howGrid}>
          <div className={styles.howCol}>
            <span className={styles.iconTile} aria-hidden>
              <Target size={24} weight="duotone" />
            </span>
            <h4>Set Your Goals</h4>
            <p>Tell us your test date and target score, and we&apos;ll build a personalized day-by-day plan.</p>
          </div>
          <div className={styles.howCol}>
            <span className={styles.iconTile} aria-hidden>
              <Lightbulb size={24} weight="duotone" />
            </span>
            <h4>Study Smarter</h4>
            <p>Follow daily sessions with questions, notes, and practice tailored to your weak areas.</p>
          </div>
          <div className={styles.howCol}>
            <span className={styles.iconTile} aria-hidden>
              <ChartLineUp size={24} weight="duotone" />
            </span>
            <h4>Track Your Growth</h4>
            <p>See your progress across topics and adjust your plan as you improve.</p>
          </div>
        </div>
      </section>
      </div>
    </div>
  );
}
