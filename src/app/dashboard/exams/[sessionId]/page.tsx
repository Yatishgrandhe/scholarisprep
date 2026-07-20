"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { useParams, useRouter } from "next/navigation";
import { useTheme } from "next-themes";
import { toast } from "sonner";
import { Timer, ArrowLeft, ArrowRight, Calculator, FileText } from "@phosphor-icons/react";
import { QuestionInterface } from "@/components/question/QuestionInterface";
import { ExamBreakScreen } from "@/components/exam/ExamBreakScreen";
import { ExamSessionMoreMenu } from "@/components/exam/ExamSessionMoreMenu";
import { ExamQuestionNavigator } from "@/components/exam/ExamQuestionNavigator";
import { MathReferenceSheet } from "@/components/exam/MathReferenceSheet";
import { BugReportModal } from "@/components/dashboard/BugReportModal";
import { Button } from "@/components/ui/button";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { fetchQuestionsByIds } from "@/lib/practice/queries";
import { parseExamMetadata, type FullExamMetadata } from "@/lib/exam/metadata";
import {
  breakSecondsRemaining,
  MATH_MODULE_1_SECTION_INDEX,
  shouldOfferExamBreak,
} from "@/lib/exam/break";
import { DIGITAL_SAT_BREAK_SECONDS } from "@/lib/exam/digitalSat";
import {
  attemptsFromQuestions,
  predictScoreFromAttempts,
  sectionScoreFromAttempts,
} from "@/lib/exam/predictExamScore";
import { isApOrIbExam } from "@/lib/examFamily";
import {
  checkAchievementsAfterExam,
  checkAchievementsAfterStreak,
} from "@/lib/dashboard/achievements";
import { recordActivityStreak } from "@/lib/dashboard/streaks";
import {
  toastAchievementEarned,
  toastExamComplete,
  toastStreakRecord,
} from "@/lib/dashboard/toasts";
import {
  getCurrentSectionQuestions,
  getSectionTimeLimitSeconds,
  useExamStore,
  type FullExamSessionState,
} from "@/stores/examStore";
import { cn } from "@/lib/utils";
import { isMathSection } from "@/lib/question/isMathSection";
import { isSelectionCorrect } from "@/lib/question/gridIn";
import { isFrqQuestionType } from "@/lib/ai/remixPrompts";
import { aiRequest } from "@/lib/ai/clientKey";
import {
  canUseCalculator,
  DEFAULT_CALCULATOR_LAYOUT,
  type CalculatorLayout,
} from "@/lib/desmos/calculatorAccess";
import { showExamStemTools } from "@/lib/exam/referenceSheets";
import { useSubjectStore } from "@/stores/subjectStore";
import styles from "../exam-session.module.css";

export default function ExamSessionPage() {
  const params = useParams();
  const sessionId = params.sessionId as string;
  const router = useRouter();
  const { user, loading: authLoading, supabase } = useAuth();
  const { setTheme, resolvedTheme } = useTheme();
  const isDark = resolvedTheme === "dark";

  const examSession = useExamStore((s) => s.fullExamSession);
  const initFullExamSession = useExamStore((s) => s.initFullExamSession);
  const setAnswer = useExamStore((s) => s.setAnswer);
  const toggleFlag = useExamStore((s) => s.toggleFlag);
  const setCurrentIndex = useExamStore((s) => s.setCurrentIndex);
  const setFullExamSectionIndex = useExamStore((s) => s.setFullExamSectionIndex);
  const resolveAdaptiveSection = useExamStore((s) => s.resolveAdaptiveSection);
  const patchFullExamMetadata = useExamStore((s) => s.patchFullExamMetadata);
  const setTwoMinuteWarned = useExamStore((s) => s.setTwoMinuteWarned);
  const resetFullExamSession = useExamStore((s) => s.resetFullExamSession);

  const [loading, setLoading] = useState(true);
  const [timeLeft, setTimeLeft] = useState(0);
  // Mirror the live timer into a ref so background/answer saves always persist
  // the current remaining time without a stale closure.
  const timeLeftRef = useRef(timeLeft);
  useEffect(() => {
    timeLeftRef.current = timeLeft;
  }, [timeLeft]);
  const [breakTimeLeft, setBreakTimeLeft] = useState(DIGITAL_SAT_BREAK_SECONDS);
  const [sectionModal, setSectionModal] = useState<string | null>(null);
  const [submitOpen, setSubmitOpen] = useState(false);
  const [bugOpen, setBugOpen] = useState(false);
  const calcStorageKey = `scholaris:exam-calc:${sessionId}`;

  const readStoredCalculator = (): {
    open: boolean;
    layout: CalculatorLayout;
  } => {
    if (typeof window === "undefined") {
      return { open: false, layout: DEFAULT_CALCULATOR_LAYOUT };
    }
    try {
      const raw = sessionStorage.getItem(calcStorageKey);
      if (!raw) return { open: false, layout: DEFAULT_CALCULATOR_LAYOUT };
      const saved = JSON.parse(raw) as {
        open?: boolean;
        layout?: CalculatorLayout;
      };
      return {
        open: typeof saved.open === "boolean" ? saved.open : false,
        layout: saved.layout ?? DEFAULT_CALCULATOR_LAYOUT,
      };
    } catch {
      return { open: false, layout: DEFAULT_CALCULATOR_LAYOUT };
    }
  };

  const [calculatorOpen, setCalculatorOpen] = useState(
    () => readStoredCalculator().open,
  );
  const [calculatorLayout, setCalculatorLayout] = useState<CalculatorLayout>(
    () => readStoredCalculator().layout,
  );
  const [referenceOpen, setReferenceOpen] = useState(false);

  useEffect(() => {
    try {
      sessionStorage.setItem(
        calcStorageKey,
        JSON.stringify({ open: calculatorOpen, layout: calculatorLayout }),
      );
    } catch {
      /* ignore quota errors */
    }
  }, [calcStorageKey, calculatorOpen, calculatorLayout]);

  const activeSubject = useSubjectStore((s) => s.activeSubject);
  const subjectConfigs = useSubjectStore((s) => s.subjectConfigs);
  const examType = useActiveExamType();
  const calculatorPolicy = activeSubject
    ? subjectConfigs[activeSubject]?.calculator_policy
    : undefined;

  const sectionQuestions = examSession
    ? getCurrentSectionQuestions(examSession)
    : [];
  const currentQuestion = sectionQuestions[examSession?.currentIndex ?? 0];
  const sectionMeta = examSession?.metadata.sections[
    examSession.currentSectionIndex
  ];
  // 1-based question numbers for the bottom-bar navigator (answered / flagged).
  const answeredNums = new Set<number>();
  const flaggedNums = new Set<number>();
  if (examSession) {
    sectionQuestions.forEach((q, i) => {
      if (examSession.answers[q.id]) answeredNums.add(i + 1);
      if (examSession.flaggedIds.includes(q.id)) flaggedNums.add(i + 1);
    });
  }
  const sectionIsMath =
    sectionMeta?.filter_section === "math" ||
    isMathSection(sectionMeta?.key) ||
    isMathSection(currentQuestion?.section);
  const showSectionCalculator =
    sectionIsMath &&
    canUseCalculator({
      calculatorAllowed: currentQuestion?.calculator_allowed,
      section: currentQuestion?.section ?? sectionMeta?.key,
      calculatorPolicy,
      forceMathSection: sectionIsMath,
    });
  const showReferenceSheet = showExamStemTools(
    sectionIsMath ? "math" : "reading_writing",
    currentQuestion?.exam_type ?? examType,
  );
  const isLastSection =
    examSession != null &&
    examSession.currentSectionIndex >=
      examSession.metadata.sections.length - 1;
  const onBreak = examSession?.metadata.break_status === "active";

  useEffect(() => {
    if (authLoading) return;

    if (examSession?.sessionId === sessionId) {
      void (async () => {
        if (examSession.metadata.break_status === "active") {
          setBreakTimeLeft(
            breakSecondsRemaining(
              examSession.metadata.break_started_at,
              DIGITAL_SAT_BREAK_SECONDS,
            ),
          );
          setLoading(false);
          return;
        }
        // Store still holds this session (navigated back mid-exam): recover the
        // saved remaining time from the DB so the clock doesn't reset to full.
        const sectionLimit = getSectionTimeLimitSeconds(examSession);
        const { data } = await supabase
          .from("exam_sessions")
          .select("metadata")
          .eq("id", sessionId)
          .single();
        const savedTime = parseExamMetadata(data?.metadata)
          ?.section_time_left_seconds;
        setTimeLeft(
          typeof savedTime === "number" && savedTime >= 0
            ? Math.min(savedTime, sectionLimit)
            : sectionLimit,
        );
        setLoading(false);
      })();
      return;
    }

    void (async () => {
      let activeUser = user;
      if (!activeUser) {
        const {
          data: { user: directUser },
        } = await supabase.auth.getUser();
        activeUser = directUser;
      }

      if (!activeUser) {
        const returnPath = `/dashboard/exams/${sessionId}`;
        router.replace(`/auth/login?redirectTo=${encodeURIComponent(returnPath)}`);
        return;
      }

      try {
      const { data: session, error } = await supabase
        .from("exam_sessions")
        .select("id, question_order, metadata, completed_at, exam_type")
        .eq("id", sessionId)
        .eq("user_id", activeUser.id)
        .single();

      if (error || !session) {
        toast.error("Could not load this exam session. Please try again.");
        router.replace("/dashboard/exams");
        return;
      }

      if (session.completed_at) {
        toast.info("This exam session is already complete.");
        router.replace(`/dashboard/exams/${sessionId}/report`);
        return;
      }

      const metadata = parseExamMetadata(session.metadata);
      if (!metadata) {
        router.replace("/dashboard/exams");
        return;
      }

      const allQuestions = await fetchQuestionsByIds(
        supabase,
        session.question_order ?? [],
        session.exam_type ?? undefined,
      );
      if (!allQuestions.length) {
        toast.error("Could not load exam questions. Please try again.");
        router.replace("/dashboard/exams");
        return;
      }
      const sectionQuestionsGrouped = metadata.sections.map((s) =>
        allQuestions.filter((q) => s.question_ids.includes(q.id)),
      );

      initFullExamSession({
        sessionId,
        examType:
          session.exam_type ??
          allQuestions[0]?.exam_type ??
          activeSubject ??
          "SAT",
        metadata,
        allQuestions,
        sectionQuestions: sectionQuestionsGrouped,
        currentSectionIndex: metadata.current_section_index,
        currentIndex: metadata.current_question_index ?? 0,
        answers: metadata.saved_answers ?? {},
        flaggedIds: metadata.flagged_question_ids,
        attempts: {},
        sectionStartedAtMs: Date.now(),
        examStartedAtMs: Date.now(),
        twoMinuteWarned: false,
      });

      if (metadata.break_status === "active") {
        setBreakTimeLeft(
          breakSecondsRemaining(
            metadata.break_started_at,
            DIGITAL_SAT_BREAK_SECONDS,
          ),
        );
      } else {
        const sectionLimit =
          metadata.sections[metadata.current_section_index]?.time_limit_seconds ??
          0;
        // Resume with whatever time was left last save (Save & Exit, autosave,
        // or per-answer), not the full section limit. Falls back to the limit
        // only for a brand-new section that has never been saved.
        const savedTime = metadata.section_time_left_seconds;
        const resumeTime =
          typeof savedTime === "number" && savedTime >= 0
            ? Math.min(savedTime, sectionLimit)
            : sectionLimit;
        setTimeLeft(resumeTime);
      }
      setLoading(false);
      } catch (err) {
        console.error("exam session load failed:", err);
        toast.error("Could not load this exam. Please try again.");
        setLoading(false);
        router.replace("/dashboard/exams");
      }
    })();
  }, [
    sessionId,
    user,
    authLoading,
    supabase,
    router,
    examSession?.sessionId,
    initFullExamSession,
  ]);

  useEffect(() => {
    if (!examSession || loading || onBreak) return;

    const interval = setInterval(() => {
      setTimeLeft((t) => {
        if (t <= 1) {
          clearInterval(interval);
          return 0;
        }
        return t - 1;
      });
    }, 1000);

    return () => clearInterval(interval);
  }, [examSession?.currentSectionIndex, loading, examSession?.sessionId, onBreak]);

  useEffect(() => {
    if (!onBreak || loading) return;

    const interval = setInterval(() => {
      setBreakTimeLeft((t) => {
        if (t <= 1) {
          clearInterval(interval);
          return 0;
        }
        return t - 1;
      });
    }, 1000);

    return () => clearInterval(interval);
  }, [onBreak, loading, examSession?.sessionId]);

  const handleTimeExpired = useRef(false);
  const timerArmedRef = useRef(false);
  const submitSectionRef = useRef<
    ((fromTimer?: boolean) => Promise<void>) | undefined
  >(undefined);

  const advanceToNextSection = useCallback(
    (
      nextIndex: number,
      updatedSections: FullExamSessionState["metadata"]["sections"],
      fromTimer = false,
    ) => {
      const nextLabel = updatedSections[nextIndex]?.label ?? "Next section";
      setSectionModal(
        fromTimer
          ? `Time's up! Moving to ${nextLabel}.`
          : `Starting ${nextLabel}.`,
      );
      setFullExamSectionIndex(nextIndex);
      setTimeLeft(updatedSections[nextIndex]?.time_limit_seconds ?? 0);
      handleTimeExpired.current = false;
    },
    [setFullExamSectionIndex],
  );

  const finishBreakAndContinue = useCallback(
    async (skipped: boolean) => {
      if (!examSession) return;

      const updatedMetadata = {
        ...examSession.metadata,
        break_status: "completed" as const,
        break_skipped: skipped || examSession.metadata.break_skipped,
        current_section_index: MATH_MODULE_1_SECTION_INDEX,
      };

      await supabase
        .from("exam_sessions")
        .update({
          metadata: {
            ...updatedMetadata,
            flagged_question_ids: examSession.flaggedIds,
          },
        })
        .eq("id", sessionId);

      patchFullExamMetadata(updatedMetadata);
      advanceToNextSection(
        MATH_MODULE_1_SECTION_INDEX,
        updatedMetadata.sections,
      );
    },
    [
      examSession,
      supabase,
      sessionId,
      advanceToNextSection,
      patchFullExamMetadata,
    ],
  );

  const persistMetadata = useCallback(async () => {
    // Read the freshest store state so the answer the user just clicked is
    // included (the closed-over examSession lags one render behind setAnswer).
    const live = useExamStore.getState().fullExamSession;
    if (!live || live.sessionId !== sessionId) return;
    await supabase
      .from("exam_sessions")
      .update({
        metadata: {
          ...live.metadata,
          saved_answers: live.answers,
          current_section_index: live.currentSectionIndex,
          current_question_index: live.currentIndex,
          section_time_left_seconds: timeLeftRef.current,
          flagged_question_ids: live.flaggedIds,
        },
      })
      .eq("id", sessionId);
  }, [sessionId, supabase]);

  const [exitOpen, setExitOpen] = useState(false);
  const [exiting, setExiting] = useState(false);

  /** Save in-progress answers, cursor, and remaining time, then leave the exam. */
  const saveAndExit = useCallback(async () => {
    if (!examSession) return;
    setExiting(true);
    const meta = {
      ...examSession.metadata,
      saved_answers: examSession.answers,
      current_section_index: examSession.currentSectionIndex,
      current_question_index: examSession.currentIndex,
      section_time_left_seconds: timeLeft,
      flagged_question_ids: examSession.flaggedIds,
      paused: true,
      paused_at: new Date().toISOString(),
    };
    try {
      await supabase
        .from("exam_sessions")
        .update({ metadata: meta })
        .eq("id", sessionId);
    } catch (err) {
      console.error("saveAndExit failed:", err);
    }
    resetFullExamSession();
    const hub =
      isApOrIbExam(examSession.examType) || isApOrIbExam(examType)
        ? "/dashboard/exams"
        : "/dashboard/predicted-papers";
    router.push(hub);
  }, [examSession, timeLeft, supabase, sessionId, resetFullExamSession, router, examType]);

  // Background autosave so an unexpected exit (closed tab, refresh) still resumes.
  useEffect(() => {
    if (!examSession || loading || onBreak) return;
    const id = setInterval(() => {
      void supabase
        .from("exam_sessions")
        .update({
          metadata: {
            ...examSession.metadata,
            saved_answers: examSession.answers,
            current_section_index: examSession.currentSectionIndex,
            current_question_index: examSession.currentIndex,
            section_time_left_seconds: timeLeft,
            flagged_question_ids: examSession.flaggedIds,
          },
        })
        .eq("id", sessionId);
    }, 30000);
    return () => clearInterval(id);
  }, [examSession, loading, onBreak, supabase, sessionId, timeLeft]);

  const submitSection = useCallback(
    async (fromTimer = false) => {
      if (!user || !examSession) return;

      const questions = getCurrentSectionQuestions(examSession);
      const sectionIndex = examSession.currentSectionIndex;
      const sessionExamType =
        examSession.examType ||
        examSession.allQuestions[0]?.exam_type ||
        "SAT";

      let sectionCorrect = 0;
      const frqCorrectness: Record<string, boolean | null> = {
        ...examSession.metadata.frq_correctness,
      };

      for (const q of questions) {
        const selected = examSession.answers[q.id];
        if (!selected) continue;

        if (isFrqQuestionType(q.question_type)) {
          // Never score FRQ via isSelectionCorrect — try AI grade, else mark unscored.
          let isCorrect: boolean | null = null;
          let aiScore: number | null = null;
          let aiFeedback: string | null = null;
          let rubricScores: unknown = null;

          try {
            const res = await aiRequest("/api/ai/grade-frq", {
              method: "POST",
              headers: { "Content-Type": "application/json" },
              body: JSON.stringify({
                exam_type: q.exam_type ?? sessionExamType,
                question_id: q.id,
                question_text: q.question_text,
                stimulus_text: q.stimulus_text ?? "",
                topic: q.topic,
                section: q.section,
                question_subtype: q.question_subtype,
                rubric: q.rubric,
                model_answer: q.model_answer,
                explanation: q.explanation,
                student_answer: selected,
                max_points: q.max_points ?? 4,
              }),
            });
            if (res.ok) {
              const data = (await res.json()) as {
                score?: number;
                is_correct?: boolean;
                feedback?: string;
                rubric_scores?: unknown;
              };
              isCorrect = Boolean(data.is_correct);
              aiScore = data.score ?? null;
              aiFeedback = data.feedback ?? null;
              rubricScores = data.rubric_scores ?? null;
              if (isCorrect) sectionCorrect += 1;
            }
          } catch (err) {
            console.error("exam FRQ grade-frq failed:", q.id, err);
          }

          frqCorrectness[q.id] = isCorrect;

          const frqInsert: Record<string, unknown> = {
            user_id: user.id,
            question_id: q.id,
            session_id: sessionId,
            selected_option_id: null,
            answer_text: selected,
            is_correct: isCorrect,
            time_spent_seconds: 0,
            hint_used: false,
            ai_explanation_requested: false,
            exam_type: sessionExamType,
          };
          if (aiScore != null) frqInsert.ai_score = aiScore;
          if (aiFeedback != null) frqInsert.ai_feedback = aiFeedback;
          if (rubricScores != null) frqInsert.rubric_scores = rubricScores;

          await supabase
            .from("question_attempts")
            .insert(frqInsert as never);
          continue;
        }

        const isCorrect = isSelectionCorrect(q.options, selected);
        if (isCorrect) sectionCorrect += 1;

        await supabase.from("question_attempts").insert({
          user_id: user.id,
          question_id: q.id,
          session_id: sessionId,
          selected_option_id: selected,
          is_correct: isCorrect,
          time_spent_seconds: 0,
          hint_used: false,
          ai_explanation_requested: false,
          exam_type: sessionExamType,
        } as never);
      }

      let updatedSections = examSession.metadata.sections.map((s, i) =>
        i === sectionIndex
          ? { ...s, completed_at: new Date().toISOString() }
          : s,
      );

      // Adaptive Module 2: when a Module 1 ends, score it and route the next
      // section (its Module 2) to the Easy or Hard variant. ~65% correct → Hard.
      const nextSection = updatedSections[sectionIndex + 1];
      if (
        nextSection?.adaptive &&
        !nextSection.chosen_variant &&
        nextSection.variant_options
      ) {
        const ratio = questions.length ? sectionCorrect / questions.length : 0;
        const variant: "easy" | "hard" = ratio >= 0.65 ? "hard" : "easy";
        const variantIds = nextSection.variant_options[variant];
        let variantQuestions =
          variant === "easy"
            ? examSession.sectionQuestions[sectionIndex + 1] ?? []
            : await fetchQuestionsByIds(supabase, variantIds, "SAT");
        if (variantQuestions.length < variantIds.length && variantIds.length) {
          variantQuestions = await fetchQuestionsByIds(
            supabase,
            variantIds,
            "SAT",
          );
        }
        if (
          variantQuestions.length < variantIds.length &&
          variantIds.length
        ) {
          variantQuestions = await fetchQuestionsByIds(supabase, variantIds);
        }
        if (variantQuestions.length) {
          resolveAdaptiveSection(sectionIndex + 1, variantQuestions, variant);
          updatedSections = updatedSections.map((s, i) =>
            i === sectionIndex + 1
              ? {
                  ...s,
                  chosen_variant: variant,
                  question_ids: variantQuestions.map((q) => q.id),
                }
              : s,
          );
          await supabase
            .from("exam_sessions")
            .update({
              question_order: updatedSections.flatMap((s) => s.question_ids),
            })
            .eq("id", sessionId);
        }
      }

      const hasMoreSections = sectionIndex < updatedSections.length - 1;

      if (hasMoreSections) {
        const showBreak = shouldOfferExamBreak(
          examSession.metadata,
          sectionIndex,
        );

        if (showBreak) {
          const breakStartedAt = new Date().toISOString();
          const breakMetadata = {
            ...examSession.metadata,
            sections: updatedSections,
            current_section_index: sectionIndex,
            flagged_question_ids: examSession.flaggedIds,
            break_status: "active" as const,
            break_started_at: breakStartedAt,
            frq_correctness: frqCorrectness,
          };

          await supabase
            .from("exam_sessions")
            .update({ metadata: breakMetadata })
            .eq("id", sessionId);

          patchFullExamMetadata(breakMetadata);
          setBreakTimeLeft(DIGITAL_SAT_BREAK_SECONDS);
          handleTimeExpired.current = false;
          return;
        }

        await supabase
          .from("exam_sessions")
          .update({
            metadata: {
              ...examSession.metadata,
              sections: updatedSections,
              current_section_index: sectionIndex + 1,
              flagged_question_ids: examSession.flaggedIds,
              frq_correctness: frqCorrectness,
            },
          })
          .eq("id", sessionId);

        patchFullExamMetadata({ frq_correctness: frqCorrectness });
        advanceToNextSection(sectionIndex + 1, updatedSections, fromTimer);
        return;
      }

      const allAttempts = attemptsFromQuestions(
        examSession.allQuestions,
        examSession.answers,
        frqCorrectness,
      );
      const predictedExamType = sessionExamType;
      const predicted = predictScoreFromAttempts(allAttempts, predictedExamType);
      const correctCount = allAttempts.filter((a) => a.isCorrect).length;
      const totalTime = Math.floor(
        (Date.now() - examSession.examStartedAtMs) / 1000,
      );

      const finishMetadata: FullExamMetadata = {
        ...examSession.metadata,
        sections: updatedSections,
        flagged_question_ids: examSession.flaggedIds,
        frq_correctness: frqCorrectness,
      };

      // RW/Math section scores are SAT Bluebook only — skip for AP/IB Forms.
      if (
        !isApOrIbExam(predictedExamType) &&
        (predictedExamType === "SAT" || predictedExamType === "PSAT")
      ) {
        const rwQuestions = examSession.allQuestions.filter((q) =>
          /reading|writing/i.test(q.section ?? ""),
        );
        const mathQuestions = examSession.allQuestions.filter((q) =>
          /math/i.test(q.section ?? ""),
        );
        finishMetadata.score_rw = sectionScoreFromAttempts(
          attemptsFromQuestions(rwQuestions, examSession.answers, frqCorrectness),
        );
        finishMetadata.score_math = sectionScoreFromAttempts(
          attemptsFromQuestions(mathQuestions, examSession.answers, frqCorrectness),
        );
      }

      await supabase
        .from("exam_sessions")
        .update({
          completed_at: new Date().toISOString(),
          correct_count: correctCount,
          total_questions: examSession.allQuestions.length,
          time_spent_seconds: totalTime,
          score_predicted: predicted,
          metadata: finishMetadata,
        })
        .eq("id", sessionId);

      const isFullLengthExam =
        examSession.metadata.exam_mode === "full" ||
        examSession.metadata.exam_mode === "simulator";
      if (isFullLengthExam) {
        toastExamComplete();
      }

      const streakResult = await recordActivityStreak(supabase, user.id);
      if (streakResult.isNewRecord) {
        toastStreakRecord();
      }

      const streakAchievements = await checkAchievementsAfterStreak(
        supabase,
        user.id,
        streakResult.currentStreak,
      );
      for (const achievement of streakAchievements) {
        toastAchievementEarned(achievement);
      }

      const examAchievements = await checkAchievementsAfterExam(
        supabase,
        user.id,
        examSession.metadata.exam_mode,
      );
      for (const achievement of examAchievements) {
        toastAchievementEarned(achievement);
      }

      resetFullExamSession();
      router.push(`/dashboard/exams/${sessionId}/report`);
    },
    [
      user,
      examSession,
      supabase,
      sessionId,
      setFullExamSectionIndex,
      resetFullExamSession,
      router,
      advanceToNextSection,
      patchFullExamMetadata,
    ],
  );

  useEffect(() => {
    submitSectionRef.current = submitSection;
  });

  useEffect(() => {
    if (timeLeft > 0 && examSession && !loading) {
      timerArmedRef.current = true;
    }
  }, [timeLeft, examSession, loading]);

  useEffect(() => {
    if (!timerArmedRef.current || timeLeft > 0 || !examSession || loading) {
      return;
    }
    if (handleTimeExpired.current) return;
    handleTimeExpired.current = true;
    void submitSectionRef.current?.(true);
  }, [timeLeft, examSession, loading]);

  useEffect(() => {
    if (!examSession || examSession.twoMinuteWarned) return;
    if (timeLeft === 120) {
      setTwoMinuteWarned();
      toast.warning("2 minutes remaining in this section");
    }
  }, [timeLeft, examSession, setTwoMinuteWarned]);

  const stats = useMemo(() => {
    if (!examSession) {
      return { answered: 0, unanswered: 0, flagged: 0 };
    }
    const questions = getCurrentSectionQuestions(examSession);
    const answered = questions.filter(
      (q) => examSession.answers[q.id],
    ).length;
    return {
      answered,
      unanswered: questions.length - answered,
      flagged: examSession.flaggedIds.filter((id) =>
        questions.some((q) => q.id === id),
      ).length,
    };
  }, [examSession]);

  const timerClass = cn(
    styles.timer,
    timeLeft > 0 && timeLeft <= 300 && styles.timerWarn,
    timeLeft > 0 && timeLeft <= 120 && styles.timerDanger,
    timeLeft > 0 && timeLeft <= 60 && styles.timerPulse,
  );

  const formatTime = (seconds: number) => {
    const m = Math.floor(seconds / 60);
    const s = seconds % 60;
    return `${m}:${s.toString().padStart(2, "0")}`;
  };

  if (onBreak) {
    return (
      <ExamBreakScreen
        timeLeftSeconds={breakTimeLeft}
        onSkip={() => void finishBreakAndContinue(true)}
        onContinue={() => void finishBreakAndContinue(false)}
      />
    );
  }

  if (loading || !examSession || !currentQuestion) {
    return (
      <div className={styles.loading}>
        <p>Loading exam…</p>
      </div>
    );
  }

  return (
    <div className={styles.shell}>
      <header className={styles.topBar}>
        <span className={styles.sectionName}>{sectionMeta?.label}</span>
        <div className={timerClass}>
          <Timer size={16} aria-hidden />
          <span>{formatTime(timeLeft)}</span>
        </div>
        <div className={styles.topRight}>
          {showSectionCalculator ? (
            <Button
              type="button"
              variant={calculatorOpen ? "secondary" : "outline"}
              size="sm"
              onClick={() => setCalculatorOpen((open) => !open)}
              aria-pressed={calculatorOpen}
              aria-expanded={calculatorOpen}
              className={styles.calculatorBtn}
            >
              <Calculator size={16} aria-hidden />
              Calculator
            </Button>
          ) : null}
          {showReferenceSheet ? (
            <Button
              type="button"
              variant={referenceOpen ? "secondary" : "outline"}
              size="sm"
              onClick={() => setReferenceOpen((open) => !open)}
              aria-pressed={referenceOpen}
              aria-expanded={referenceOpen}
              className={styles.calculatorBtn}
            >
              <FileText size={16} aria-hidden />
              Reference
            </Button>
          ) : null}
          <ExamSessionMoreMenu
            isDark={isDark}
            onToggleTheme={() => setTheme(isDark ? "light" : "dark")}
            onSaveExit={() => setExitOpen(true)}
            onBugReport={() => setBugOpen(true)}
          />
        </div>
      </header>

      <main className={styles.main}>
        <QuestionInterface
          key={currentQuestion.id}
          question={currentQuestion}
          questionNumber={examSession.currentIndex + 1}
          totalQuestions={sectionQuestions.length}
          sessionType="full_exam"
          isExamMode
          calculatorOpen={calculatorOpen}
          onCalculatorOpenChange={setCalculatorOpen}
          calculatorLayout={calculatorLayout}
          onCalculatorLayoutChange={setCalculatorLayout}
          showCalculatorToggle={false}
          selectedOptionId={examSession.answers[currentQuestion.id] ?? null}
          onSelectOption={(optionId) => {
            setAnswer(currentQuestion.id, optionId);
            void persistMetadata();
          }}
          onFlag={(qid) => {
            toggleFlag(qid);
            void persistMetadata();
          }}
          isFlagged={examSession.flaggedIds.includes(currentQuestion.id)}
          onNext={() => {
            if (examSession.currentIndex < sectionQuestions.length - 1) {
              setCurrentIndex(examSession.currentIndex + 1);
            }
          }}
        />
      </main>

      <footer className={styles.bottomBar}>
        <div className={styles.bottomSide} />

        <ExamQuestionNavigator
          label={sectionMeta?.label ?? "Section"}
          total={sectionQuestions.length}
          current={examSession.currentIndex}
          answered={answeredNums}
          flagged={flaggedNums}
          questions={sectionQuestions}
          onJump={(i) => setCurrentIndex(i)}
        />

        <div className={cn(styles.bottomSide, styles.bottomRight)}>
          <Button
            type="button"
            variant="outline"
            className={styles.navBtn}
            disabled={examSession.currentIndex <= 0}
            onClick={() => setCurrentIndex(examSession.currentIndex - 1)}
          >
            <ArrowLeft size={16} /> Previous
          </Button>
          <Button
            type="button"
            className={styles.navBtn}
            onClick={() => {
              if (examSession.currentIndex >= sectionQuestions.length - 1) {
                setSubmitOpen(true);
              } else {
                setCurrentIndex(examSession.currentIndex + 1);
              }
            }}
          >
            {examSession.currentIndex >= sectionQuestions.length - 1
              ? "Finish"
              : "Next"}{" "}
            <ArrowRight size={16} />
          </Button>
        </div>
      </footer>

      {sectionModal ? (
        <div className={styles.modalOverlay} role="dialog" aria-modal="true">
          <div className={styles.modalCard}>
            <h2 className={styles.modalTitle}>Section complete</h2>
            <p className={styles.modalDesc}>{sectionModal}</p>
            <div className={styles.modalActions}>
              <button
                type="button"
                className={styles.modalPrimaryBtn}
                onClick={() => setSectionModal(null)}
              >
                Continue
              </button>
            </div>
          </div>
        </div>
      ) : null}

      {submitOpen ? (
        <div
          className={styles.modalOverlay}
          role="dialog"
          aria-modal="true"
          aria-labelledby="submit-modal-title"
          onClick={() => setSubmitOpen(false)}
        >
          <div
            className={styles.modalCard}
            onClick={(e) => e.stopPropagation()}
          >
            <h2 id="submit-modal-title" className={styles.modalTitle}>
              {isLastSection ? "Finish exam?" : "Submit this section?"}
            </h2>
            <p className={styles.modalDesc}>
              Answered: {stats.answered} · Unanswered: {stats.unanswered} ·
              Flagged: {stats.flagged}
              {isLastSection
                ? ", once you finish, the exam is graded and you can't return."
                : ", you can't return to this section after submitting."}
            </p>
            <div className={styles.modalActions}>
              <button
                type="button"
                className={styles.modalGhostBtn}
                onClick={() => setSubmitOpen(false)}
              >
                Keep working
              </button>
              <button
                type="button"
                className={styles.modalPrimaryBtn}
                onClick={() => {
                  setSubmitOpen(false);
                  void submitSection();
                }}
              >
                {isLastSection ? "Finish Exam" : "Submit Section"}
              </button>
            </div>
          </div>
        </div>
      ) : null}

      {exitOpen ? (
        <div
          className={styles.modalOverlay}
          role="dialog"
          aria-modal="true"
          aria-labelledby="exit-modal-title"
          onClick={() => {
            if (!exiting) setExitOpen(false);
          }}
        >
          <div
            className={styles.modalCard}
            onClick={(e) => e.stopPropagation()}
          >
            <h2 id="exit-modal-title" className={styles.modalTitle}>
              Pause and exit this exam?
            </h2>
            <p className={styles.modalDesc}>
              Your answers, your place, and the time left on this section are
              saved. Resume anytime from Practice Exams, nothing is graded until
              you finish.
            </p>
            <div className={styles.modalActions}>
              <button
                type="button"
                className={styles.modalGhostBtn}
                disabled={exiting}
                onClick={() => setExitOpen(false)}
              >
                Keep working
              </button>
              <button
                type="button"
                className={styles.modalPrimaryBtn}
                disabled={exiting}
                onClick={() => void saveAndExit()}
              >
                {exiting ? "Saving…" : "Save & Exit"}
              </button>
            </div>
          </div>
        </div>
      ) : null}

      <BugReportModal open={bugOpen} onClose={() => setBugOpen(false)} />
      {showReferenceSheet ? (
        <MathReferenceSheet
          open={referenceOpen}
          onClose={() => setReferenceOpen(false)}
          examType={currentQuestion.exam_type ?? examType}
        />
      ) : null}
    </div>
  );
}
