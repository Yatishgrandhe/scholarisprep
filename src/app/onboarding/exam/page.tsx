"use client";

import { Suspense, useEffect, useState } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { format } from "date-fns";
import {
  Books,
  Check,
  Certificate,
  GraduationCap,
  PencilSimpleLine,
} from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import type { ExamType } from "@/types/supabase";
import { Button } from "@/components/ui/app-button";
import { Slider } from "@/components/ui/slider";
import { ExamDatePicker } from "@/components/onboarding/ExamDatePicker";
import { ApIbCoursePicker } from "@/components/onboarding/ApIbCoursePicker";
import { defaultStudyPlanData } from "@/lib/dashboard/studyPlan";
import {
  ONBOARDING_EXAM_PROGRAMS,
  defaultTargetForExam,
  examProgramLabel,
  programKindForExam,
  scoreBoundsForExam,
  type OnboardingProgramKind,
} from "@/lib/onboarding/examPrograms";
import { isApExam, isIbExam, isApOrIbExam } from "@/lib/apIbCatalog";
import styles from "../onboarding.module.css";
import apIbStyles from "../ap-ib-onboarding.module.css";

const FAMILY_STYLE: Record<OnboardingProgramKind, string> = {
  SAT: apIbStyles.familySat,
  ACT: apIbStyles.familyAct,
  AP: apIbStyles.familyAp,
  IB: apIbStyles.familyIb,
};

const FAMILY_ICON: Record<
  OnboardingProgramKind,
  typeof GraduationCap
> = {
  SAT: PencilSimpleLine,
  ACT: Books,
  AP: GraduationCap,
  IB: Certificate,
};

type PerExamSettings = {
  examDate?: Date;
  targetScore: number;
};

function OnboardingExamPageInner({
  allowMultiple,
}: {
  allowMultiple: boolean;
}) {
  const router = useRouter();
  const supabase = createClient();
  const [selectedExams, setSelectedExams] = useState<ExamType[]>(
    allowMultiple ? [] : ["SAT"],
  );
  const [activeFamily, setActiveFamily] = useState<OnboardingProgramKind | null>(
    allowMultiple ? null : "SAT",
  );
  const [examDate, setExamDate] = useState<Date | undefined>();
  const [targetScore, setTargetScore] = useState(1400);
  const [weeklyHours, setWeeklyHours] = useState(10);
  const [perExam, setPerExam] = useState<Partial<Record<string, PerExamSettings>>>(
    {},
  );
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const primaryExam = selectedExams[0] ?? "SAT";
  const multiMode = allowMultiple || selectedExams.length > 1;
  const showPerExamFields = multiMode && selectedExams.length > 1;
  const scoreBounds = scoreBoundsForExam(primaryExam);

  useEffect(() => {
    if (showPerExamFields) return;
    setTargetScore(defaultTargetForExam(primaryExam));
  }, [primaryExam, showPerExamFields]);

  const familySelected = (kind: OnboardingProgramKind): boolean => {
    if (kind === "SAT") return selectedExams.includes("SAT");
    if (kind === "ACT") return selectedExams.includes("ACT");
    if (kind === "AP") return selectedExams.some((e) => isApExam(e));
    if (kind === "IB") return selectedExams.some((e) => isIbExam(e));
    return false;
  };

  const toggleDirectExam = (exam: ExamType) => {
    setActiveFamily(programKindForExam(exam));
    if (!allowMultiple && !multiMode && selectedExams.length <= 1) {
      setSelectedExams([exam]);
      return;
    }
    setSelectedExams((prev) => {
      if (prev.includes(exam)) {
        const next = prev.filter((e) => e !== exam);
        return next.length > 0 ? next : prev;
      }
      return [...prev, exam];
    });
  };

  const handleFamilyClick = (kind: OnboardingProgramKind) => {
    setActiveFamily(kind);
    if (kind === "SAT" || kind === "ACT") {
      toggleDirectExam(kind);
      return;
    }
    // AP / IB: open course picker; selection happens via courses.
  };

  const toggleCourse = (exam: ExamType) => {
    setSelectedExams((prev) => {
      if (prev.includes(exam)) {
        return prev.filter((e) => e !== exam);
      }
      return [...prev, exam];
    });
  };

  const removeCourse = (exam: ExamType) => {
    setSelectedExams((prev) => prev.filter((e) => e !== exam));
  };

  const getPerExamSettings = (exam: ExamType): PerExamSettings => ({
    targetScore: defaultTargetForExam(exam),
    ...perExam[exam],
  });

  const handleContinue = async () => {
    if (selectedExams.length === 0) {
      setError("Select at least one program or course to continue.");
      return;
    }

    setLoading(true);
    setError(null);
    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (!user) {
      setError("You must be signed in to continue.");
      setLoading(false);
      return;
    }

    const entries = selectedExams.map((exam, index) => {
      const settings = showPerExamFields ? getPerExamSettings(exam) : null;
      const date = showPerExamFields
        ? settings?.examDate
        : index === 0
          ? examDate
          : settings?.examDate;
      const target = showPerExamFields
        ? (settings?.targetScore ?? defaultTargetForExam(exam))
        : index === 0
          ? targetScore
          : defaultTargetForExam(exam);
      return {
        exam,
        examDateStr: date ? format(date, "yyyy-MM-dd") : null,
        target,
        isPrimary: index === 0,
        priority: index + 1,
      };
    });

    const primary = entries[0];

    const { error: profileError } = await supabase
      .from("profiles")
      .update({
        exam_goal: primary.exam,
        exam_goals: selectedExams,
        exam_date: primary.examDateStr,
      })
      .eq("id", user.id);

    if (profileError) {
      setError(profileError.message);
      setLoading(false);
      return;
    }

    for (const entry of entries) {
      const { error: subjectError } = await supabase
        .from("user_active_subjects")
        .upsert(
          {
            user_id: user.id,
            exam_type: entry.exam,
            exam_date: entry.examDateStr,
            target_score: entry.target,
            is_primary: entry.isPrimary,
            priority: entry.priority,
            updated_at: new Date().toISOString(),
          },
          { onConflict: "user_id,exam_type" },
        );
      if (subjectError) {
        setError(subjectError.message);
        setLoading(false);
        return;
      }

      const { error: multiPlanError } = await supabase
        .from("multi_subject_study_plans")
        .upsert(
          {
            user_id: user.id,
            course_id: entry.exam,
            exam_type: entry.exam,
            exam_date: entry.examDateStr,
            target_score: entry.target,
            weekly_hours_allocated: weeklyHours,
            plan_data: defaultStudyPlanData(),
            generated_at: new Date().toISOString(),
            last_updated: new Date().toISOString(),
          },
          { onConflict: "user_id,course_id" },
        );
      if (multiPlanError) {
        setError(multiPlanError.message);
        setLoading(false);
        return;
      }

      const { error: planRowError } = await supabase.from("study_plans").upsert(
        {
          user_id: user.id,
          course_id: entry.exam,
          exam_type: entry.exam,
          exam_date: entry.examDateStr,
          target_score: entry.target,
          weekly_hours: weeklyHours,
          plan_data: defaultStudyPlanData(),
        },
        { onConflict: "user_id,course_id" },
      );
      if (planRowError) {
        setError(planRowError.message);
        setLoading(false);
        return;
      }
    }

    if (allowMultiple) {
      router.push("/dashboard");
      router.refresh();
      return;
    }

    router.push("/onboarding/ai-key");
  };

  const showApPicker = activeFamily === "AP" || selectedExams.some((e) => isApExam(e));
  const showIbPicker = activeFamily === "IB" || selectedExams.some((e) => isIbExam(e));

  return (
    <>
      <h1 className={styles.title}>
        {allowMultiple
          ? "Add another exam"
          : "What are you preparing for?"}
      </h1>
      <p className={styles.subtitle}>
        {allowMultiple
          ? "Pick SAT, ACT, or an AP/IB course to add to your dashboard"
          : "Select SAT, ACT, and/or AP & IB courses — you can choose more than one"}
      </p>
      <p className={styles.examSelectHint}>
        {allowMultiple
          ? "New programs get their own practice experience. AP scores use 1–5; IB uses 1–7."
          : "Each program has its own practice experience. AP scores use 1–5; IB uses 1–7. Optional diagnostics are available from your dashboard."}
      </p>

      {error ? (
        <p className={styles.fieldError} style={{ textAlign: "center" }}>
          {error}
        </p>
      ) : null}

      <p className={styles.examSelectionCount}>
        {allowMultiple
          ? `${selectedExams.length} program${selectedExams.length === 1 ? "" : "s"} to add`
          : `${selectedExams.length} program${selectedExams.length === 1 ? "" : "s"} selected`}
      </p>

      <div className={apIbStyles.familyGrid}>
        {ONBOARDING_EXAM_PROGRAMS.map((program) => {
          const isSelected = familySelected(program.value);
          const isOpen = activeFamily === program.value;
          const Icon = FAMILY_ICON[program.value];
          return (
            <button
              key={program.value}
              type="button"
              className={`${apIbStyles.familyCard} ${FAMILY_STYLE[program.value]} ${
                isOpen ? apIbStyles.familyCardOpen : ""
              } ${isSelected ? apIbStyles.familyCardSelected : ""}`}
              onClick={() => handleFamilyClick(program.value)}
              aria-pressed={isSelected}
              aria-expanded={
                program.value === "AP" || program.value === "IB"
                  ? isOpen || isSelected
                  : undefined
              }
            >
              <div className={apIbStyles.familyIcon} aria-hidden>
                {isSelected ? (
                  <Check size={20} weight="bold" />
                ) : (
                  <Icon size={20} weight="duotone" />
                )}
              </div>
              <h2 className={apIbStyles.familyTitle}>{program.label}</h2>
              <p className={apIbStyles.familyDesc}>{program.description}</p>
            </button>
          );
        })}
      </div>

      {showApPicker ? (
        <ApIbCoursePicker
          family="AP"
          selectedExams={selectedExams}
          onToggleCourse={toggleCourse}
          onRemoveCourse={removeCourse}
        />
      ) : null}

      {showIbPicker ? (
        <ApIbCoursePicker
          family="IB"
          selectedExams={selectedExams}
          onToggleCourse={toggleCourse}
          onRemoveCourse={removeCourse}
        />
      ) : null}

      {showPerExamFields ? (
        <section className={apIbStyles.examSettings} aria-label="Exam dates and targets">
          <h3 className={apIbStyles.examSettingsTitle}>Dates &amp; targets</h3>
          <div className={apIbStyles.examFormGridMulti}>
            {selectedExams.map((exam) => {
              const settings = getPerExamSettings(exam);
              const bounds = scoreBoundsForExam(exam);
              return (
                <div key={exam} className={styles.examPerSubjectBlock}>
                  <h3 className={styles.examPerSubjectTitle}>
                    {examProgramLabel(exam)}
                  </h3>
                  <div className={styles.field}>
                    <label>Exam date (optional)</label>
                    <ExamDatePicker
                      value={settings.examDate}
                      onChange={(date) =>
                        setPerExam((prev) => ({
                          ...prev,
                          [exam]: {
                            ...getPerExamSettings(exam),
                            examDate: date,
                          },
                        }))
                      }
                    />
                  </div>
                  <div className={styles.field}>
                    <label htmlFor={`target-${exam}`}>
                      Target score:{" "}
                      <strong className={styles.sliderValue}>
                        {settings.targetScore}
                      </strong>
                    </label>
                    <input
                      id={`target-${exam}`}
                      type="number"
                      min={bounds.min}
                      max={bounds.max}
                      value={settings.targetScore}
                      onChange={(e) =>
                        setPerExam((prev) => ({
                          ...prev,
                          [exam]: {
                            ...getPerExamSettings(exam),
                            targetScore: Number(e.target.value),
                          },
                        }))
                      }
                    />
                  </div>
                </div>
              );
            })}
          </div>
          <div className={styles.field}>
            <label htmlFor="weeklyHoursMulti">
              Weekly available hours:{" "}
              <strong className={styles.sliderValue}>{weeklyHours}h</strong>
            </label>
            <Slider
              id="weeklyHoursMulti"
              min={1}
              max={40}
              value={[weeklyHours]}
              onValueChange={(values) => {
                const next = Array.isArray(values) ? values[0] : values;
                setWeeklyHours(typeof next === "number" ? next : 10);
              }}
            />
          </div>
        </section>
      ) : selectedExams.length > 0 ? (
        <section className={apIbStyles.examSettings} aria-label="Exam date and study settings">
          <h3 className={apIbStyles.examSettingsTitle}>Date, target &amp; hours</h3>
          <div
            className={`${apIbStyles.examFormGrid} ${apIbStyles.examFormGridSingle}`}
          >
            <div className={styles.field}>
              <label>
                Exam date for {examProgramLabel(primaryExam)} (optional)
              </label>
              <ExamDatePicker value={examDate} onChange={setExamDate} />
            </div>

            <div className={styles.field}>
              <label htmlFor="targetScore">
                Target score ({examProgramLabel(primaryExam)}):{" "}
                <strong className={styles.sliderValue}>{targetScore}</strong>
              </label>
              <input
                id="targetScore"
                type="number"
                min={scoreBounds.min}
                max={scoreBounds.max}
                value={targetScore}
                onChange={(e) => setTargetScore(Number(e.target.value))}
              />
            </div>

            <div className={styles.field}>
              <label htmlFor="weeklyHours">
                Weekly available hours:{" "}
                <strong className={styles.sliderValue}>{weeklyHours}h</strong>
              </label>
              <Slider
                id="weeklyHours"
                min={1}
                max={40}
                value={[weeklyHours]}
                onValueChange={(values) => {
                  const next = Array.isArray(values) ? values[0] : values;
                  setWeeklyHours(typeof next === "number" ? next : 10);
                }}
              />
            </div>
          </div>
        </section>
      ) : null}

      {selectedExams.some((exam) => isApOrIbExam(exam)) ? (
        <p className={styles.examSelectHint} style={{ textAlign: "center" }}>
          Every AP/IB course includes <strong>Ask AI</strong> — open your course
          tutor from the dashboard after you continue.
        </p>
      ) : null}

      <div className={apIbStyles.primaryActions}>
        <Button
          size="lg"
          variant="outline"
          href={allowMultiple ? "/dashboard" : "/onboarding/role"}
        >
          Back
        </Button>
        <Button
          size="lg"
          onClick={() => void handleContinue()}
          disabled={loading || selectedExams.length === 0}
        >
          {loading
            ? "Saving…"
            : allowMultiple
              ? "Add to dashboard"
              : "Continue"}
        </Button>
      </div>
    </>
  );
}

function OnboardingExamPageContent() {
  const searchParams = useSearchParams();
  const allowMultiple =
    searchParams.get("allowMultiple") === "1" ||
    searchParams.get("allowMultiple") === "true";
  return <OnboardingExamPageInner allowMultiple={allowMultiple} />;
}

export default function OnboardingExamPage() {
  return (
    <Suspense fallback={<p className={styles.subtitle}>Loading…</p>}>
      <OnboardingExamPageContent />
    </Suspense>
  );
}
