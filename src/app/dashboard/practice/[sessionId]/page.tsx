"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { useParams, useRouter } from "next/navigation";
import { toast } from "sonner";
import { ArrowCounterClockwise, ArrowLeft, ArrowRight, Info, Sparkle, ListBullets, Shuffle, X } from "@phosphor-icons/react";
import { QuestionInterface, type Question } from "@/components/question/QuestionInterface";
import { aiRequest } from "@/lib/ai/clientKey";
import { loadRemixes, setRemix, removeRemix, clearAllRemixes, type RemixMap } from "@/lib/question/remixStore";
import { ExamShell } from "@/components/exam/ExamShell";
import { ExamQuestionHeader } from "@/components/exam/ExamQuestionHeader";
import { QuestionBankModal } from "@/components/exam/QuestionBankModal";
import { SchoSidePanel } from "@/components/exam/SchoSidePanel";
import { RushHud } from "@/components/exam/RushHud";
import { SessionLoadingOverlay } from "@/components/exam/SessionLoadingOverlay";
import { QuestionNoteDialog } from "@/components/exam/QuestionNoteDialog";
import { BugReportModal } from "@/components/dashboard/BugReportModal";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import {
  fetchQuestionsByIds,
  fetchQuestionDifficultyMetaByIds,
  type QuestionDifficultyMeta,
  type SessionMetadata,
} from "@/lib/practice/queries";
import {
  practiceQuestionAt,
  practiceQuestionCount,
} from "@/lib/practice/sessionState";
import { recordActivityStreak } from "@/lib/dashboard/streaks";
import { getShowPreviousAttempts } from "@/lib/dashboard/userPreferences";
import { useHydratePracticeQuestions } from "@/hooks/useHydratePracticeQuestions";
import { isMathSection } from "@/lib/question/isMathSection";
import { isFrqQuestionType } from "@/lib/ai/remixPrompts";
import { isGridInOptions, isSelectionCorrect } from "@/lib/question/gridIn";
import type { FrqGradeResult } from "@/components/question/FrqResponse";
import {
  canUseCalculator,
  resolveCalculatorType,
} from "@/lib/desmos/calculatorAccess";
import { useExamStore } from "@/stores/examStore";
import { useSubjectStore } from "@/stores/subjectStore";
import styles from "./session.module.css";

/** How many leading questions to load before showing the session. */
const SESSION_BOOTSTRAP_COUNT = 10;

function formatTime(seconds: number) {
  const m = Math.floor(seconds / 60);
  const s = seconds % 60;
  return `${m}:${s.toString().padStart(2, "0")}`;
}

export default function PracticeSessionPage() {
  const params = useParams();
  const sessionId = params.sessionId as string;
  const router = useRouter();
  const { user, loading: authLoading } = useAuth();
  const examType = useActiveExamType();
  const activeSubject = useSubjectStore((s) => s.activeSubject);
  const subjectConfigs = useSubjectStore((s) => s.subjectConfigs);
  const calculatorPolicy = activeSubject
    ? subjectConfigs[activeSubject]?.calculator_policy
    : undefined;
  const supabase = createClient();

  const practiceSession = useExamStore((s) => s.practiceSession);
  const initPracticeSession = useExamStore((s) => s.initPracticeSession);
  const hydratePracticeQuestions = useExamStore((s) => s.hydratePracticeQuestions);
  const setCurrentIndex = useExamStore((s) => s.setCurrentIndex);
  const toggleFlag = useExamStore((s) => s.toggleFlag);
  const recordAttempt = useExamStore((s) => s.recordAttempt);
  const resetPracticeSession = useExamStore((s) => s.resetPracticeSession);

  const [loading, setLoading] = useState(true);
  const [loadStuck, setLoadStuck] = useState(false);
  const [elapsedSeconds, setElapsedSeconds] = useState(0);
  const [timeLimitSeconds, setTimeLimitSeconds] = useState<number | null>(null);
  const [paused, setPaused] = useState(false);
  const [panelOpen, setPanelOpen] = useState(false);
  const [panelTab, setPanelTab] = useState<"ask" | "explanation">("ask");
  // Pinned = docked beside the exam (which shrinks); unpinned = floating card.
  const [panelPinned, setPanelPinned] = useState(true);
  const [timerHidden, setTimerHidden] = useState(false);
  const [infoOpen, setInfoOpen] = useState(false);
  const [streakCount, setStreakCount] = useState(0);
  const [lastAnswer, setLastAnswer] = useState<{ optionId: string; isCorrect: boolean } | null>(
    null,
  );
  const [isRush, setIsRush] = useState(false);
  const [rushStreak, setRushStreak] = useState(0);
  const [rushStarScores, setRushStarScores] = useState<number[]>([]);
  const [pendingSelection, setPendingSelection] = useState<string | null>(null);
  const [checking, setChecking] = useState(false);
  const [questionStartMs, setQuestionStartMs] = useState<number>(() => Date.now());
  const [eliminateMode, setEliminateMode] = useState(false);
  const [hideStimulus, setHideStimulus] = useState(false);
  const [highlighterEnabled, setHighlighterEnabled] = useState(false);
  const [bugOpen, setBugOpen] = useState(false);
  const [noteOpen, setNoteOpen] = useState(false);
  const [hasNote, setHasNote] = useState(false);
  const [pastAttempts, setPastAttempts] = useState(0);
  const [showPastAttempts, setShowPastAttempts] = useState(true);
  const [pastIncorrectIds, setPastIncorrectIds] = useState<Set<string>>(new Set());
  const [priorIncorrectIds, setPriorIncorrectIds] = useState<Set<string>>(new Set());
  const questionStartedAt = useRef(0);
  const autoFinishedRef = useRef(false);

  // Remix: locally-generated same-skill variants, keyed by question id. Kept in
  // sessionStorage so they survive reloads/navigation within this page, but the
  // whole store is wiped on unmount — leaving and returning shows the original.
  const [remixMap, setRemixMap] = useState<RemixMap>({});
  const [remixing, setRemixing] = useState(false);
  const [frqGrade, setFrqGrade] = useState<FrqGradeResult | null>(null);
  const [savedQuestion, setSavedQuestion] = useState(false);
  const [savingBookmark, setSavingBookmark] = useState(false);
  const displayedRef = useRef<Question | null>(null);
  const [fetchedDifficultyById, setFetchedDifficultyById] = useState<
    Record<string, QuestionDifficultyMeta>
  >({});

  useHydratePracticeQuestions(supabase, examType);

  useEffect(() => {
    setShowPastAttempts(getShowPreviousAttempts());
  }, []);

  // Hydrate remixes on mount (client-only, avoids SSR mismatch) and clear them
  // all when the user leaves the page.
  useEffect(() => {
    setRemixMap(loadRemixes());
    return () => clearAllRemixes();
  }, []);

  useEffect(() => {
    if (authLoading) return;

    if (practiceSession?.sessionId === sessionId) {
      queueMicrotask(() => setLoading(false));
      void supabase
        .from("exam_sessions")
        .select("time_limit_seconds")
        .eq("id", sessionId)
        .single()
        .then(({ data }) => {
          setTimeLimitSeconds(data?.time_limit_seconds ?? null);
        });
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
        const returnPath = `/dashboard/practice/${sessionId}`;
        router.replace(`/auth/login?redirectTo=${encodeURIComponent(returnPath)}`);
        return;
      }

      const { data: session, error } = await supabase
        .from("exam_sessions")
        .select("id, question_order, metadata, completed_at, time_limit_seconds, exam_type")
        .eq("id", sessionId)
        .eq("user_id", activeUser.id)
        .single();

      if (error || !session) {
        toast.error("Could not load this practice session. Please try again.");
        router.replace("/dashboard/practice/bank");
        return;
      }

      if (session.completed_at) {
        toast.info("This session is already complete.");
        router.replace(`/dashboard/practice/${sessionId}/report`);
        return;
      }

      const questionIds = session.question_order ?? [];
      if (!questionIds.length) {
        toast.error("This session has no questions.");
        router.replace("/dashboard/practice/bank");
        return;
      }

      const sessionExamType = session.exam_type ?? examType;
      const questionIdSet = new Set(questionIds);

      // Bootstrap a small head batch (not just the first question): a single
      // dead/regenerated leading ID must not kill an otherwise-valid session.
      // fetchQuestionsByIds already retries missing IDs without the exam-type
      // scope internally, so anything absent from the result is unloadable.
      const headIds = questionIds.slice(0, SESSION_BOOTSTRAP_COUNT);
      const headBatch = await fetchQuestionsByIds(
        supabase,
        headIds,
        sessionExamType,
      );

      if (!headBatch.length) {
        toast.error("Could not load questions for this session.");
        router.replace("/dashboard/practice/bank");
        return;
      }

      // Drop dead IDs from the bootstrapped head, then take the leading run of
      // loaded questions as the initial contiguous prefix. Trailing questions
      // are background-hydrated (and further pruned) by the hydrate hook.
      const headById = new Map(headBatch.map((q) => [q.id, q]));
      const deadHead = new Set(headIds.filter((id) => !headById.has(id)));
      const questionOrder = deadHead.size
        ? questionIds.filter((id) => !deadHead.has(id))
        : questionIds;

      const questions: typeof headBatch = [];
      for (const id of questionOrder) {
        const q = headById.get(id);
        if (!q) break;
        questions.push(q);
      }

      if (!questions.length) {
        toast.error("Could not load questions for this session.");
        router.replace("/dashboard/practice/bank");
        return;
      }

      const metadata = (session.metadata ?? {}) as SessionMetadata;
      setTimeLimitSeconds(session.time_limit_seconds ?? null);
      setIsRush(metadata.mode === "rush");
      setRushStreak(metadata.rush?.streak ?? 0);
      setRushStarScores(metadata.rush?.starScores ?? []);

      const { data: wrongAttempts } = await supabase
        .from("question_attempts")
        .select("question_id")
        .eq("user_id", activeUser.id)
        .eq("exam_type", sessionExamType)
        .eq("is_correct", false);
      setPastIncorrectIds(
        new Set(
          (wrongAttempts ?? [])
            .map((row) => row.question_id)
            .filter((id): id is string => typeof id === "string" && questionIdSet.has(id)),
        ),
      );

      initPracticeSession({
        sessionId,
        questionOrder,
        questions,
        currentIndex: Math.min(
          metadata.rush?.currentIndex ?? 0,
          Math.max(0, questionOrder.length - 1),
        ),
        answers: {},
        flaggedIds: metadata.flagged_question_ids ?? [],
        attempts: {},
        correctCount: 0,
        startedAtMs: Date.now(),
      });

      setLoading(false);
    })();
  }, [
    sessionId,
    user,
    authLoading,
    supabase,
    router,
    practiceSession?.sessionId,
    initPracticeSession,
    examType,
  ]);

  // Watchdog: a deploy hiccup, a stale cached chunk, or a slow network must
  // never strand the user on an infinite "Preparing questions" spinner. If the
  // load hasn't finished in 15s, surface Reload / Back actions instead.
  useEffect(() => {
    if (!loading) {
      setLoadStuck(false);
      return;
    }
    const timer = setTimeout(() => setLoadStuck(true), 15000);
    return () => clearTimeout(timer);
  }, [loading]);

  useEffect(() => {
    if (!practiceSession || practiceSession.sessionId !== sessionId) return;
    const current = practiceQuestionAt(practiceSession, practiceSession.currentIndex);
    if (current) return;

    const targetId = practiceSession.questionOrder[practiceSession.currentIndex];
    if (!targetId) return;

    // The store keeps `questions` as a contiguous prefix of `questionOrder`,
    // so fetch the whole gap up to (and including) the jumped-to index — not
    // just the single target — otherwise the new question can't be placed and
    // navigation stalls on an unhydrated cell.
    const loaded = practiceSession.questions.length;
    const gapIds = practiceSession.questionOrder.slice(
      loaded,
      practiceSession.currentIndex + 1,
    );
    if (!gapIds.length) return;

    let cancelled = false;
    void fetchQuestionsByIds(supabase, gapIds, examType)
      .then((batch) => {
        if (cancelled) return;
        // Always hydrate with the requested gapIds so any dead IDs in the gap
        // get pruned and navigation can advance past them instead of stalling.
        hydratePracticeQuestions(batch, gapIds);
        if (!batch.length) {
          toast.error("Skipping a question that could not be loaded.");
        }
      })
      .catch(() => {
        if (!cancelled) {
          toast.error("Could not load this question.");
        }
      });

    return () => {
      cancelled = true;
    };
  }, [
    practiceSession,
    sessionId,
    supabase,
    examType,
    hydratePracticeQuestions,
  ]);

  useEffect(() => {
    if (paused) return;
    const interval = setInterval(() => {
      if (!practiceSession) return;
      setElapsedSeconds(Math.floor((Date.now() - practiceSession.startedAtMs) / 1000));
    }, 1000);
    return () => clearInterval(interval);
  }, [practiceSession, paused]);

  useEffect(() => {
    questionStartedAt.current = Date.now();
    setEliminateMode(false);
    if (!user || !practiceSession) return;
    const q = practiceQuestionAt(practiceSession, practiceSession.currentIndex);
    if (!q) return;
    const priorAttempt = practiceSession.attempts[q.id];
    if (priorAttempt) {
      setLastAnswer({
        optionId: priorAttempt.selectedOption,
        isCorrect: priorAttempt.isCorrect,
      });
      setPendingSelection(priorAttempt.selectedOption);
      setPanelTab("explanation");
    } else {
      setLastAnswer(null);
      setPendingSelection(null);
      setPanelTab("ask");
      setFrqGrade(null);
    }
    void supabase
      .from("question_attempts")
      .select("id", { count: "exact", head: true })
      .eq("user_id", user.id)
      .eq("question_id", q.id)
      .then(({ count }) => setPastAttempts(count ?? 0));
    void fetch(
      `/api/dashboard/saved-questions?courseId=${encodeURIComponent(examType)}&questionId=${encodeURIComponent(q.id)}`,
    )
      .then((r) => r.json())
      .then((data: { saved?: boolean }) => {
        setSavedQuestion(Boolean(data.saved));
      })
      .catch(() => setSavedQuestion(false));
    void supabase
      .from("user_streaks")
      .select("current_streak")
      .eq("user_id", user.id)
      .maybeSingle()
      .then(({ data }) => setStreakCount(data?.current_streak ?? 0));
    try {
      const notes = JSON.parse(localStorage.getItem("scholaris_question_notes") ?? "{}") as Record<
        string,
        string
      >;
      setHasNote(Boolean(notes[q.id]?.trim()));
    } catch {
      setHasNote(false);
    }
  }, [practiceSession?.currentIndex, user, supabase, practiceSession, examType]);

  // Reset the per-question countdown clock whenever the question changes.
  useEffect(() => {
    setQuestionStartMs(Date.now());
  }, [practiceSession?.currentIndex]);

  const persistFlagged = useCallback(
    async (flaggedIds: string[]) => {
      const { data: row } = await supabase
        .from("exam_sessions")
        .select("metadata")
        .eq("id", sessionId)
        .single();

      const metadata = (row?.metadata ?? {}) as SessionMetadata;
      await supabase
        .from("exam_sessions")
        .update({
          metadata: { ...metadata, flagged_question_ids: flaggedIds },
        })
        .eq("id", sessionId);
    },
    [sessionId, supabase],
  );

  const handleFlag = useCallback(
    (questionId: string) => {
      const current = useExamStore.getState().practiceSession?.flaggedIds ?? [];
      const nextSet = new Set(current);
      if (nextSet.has(questionId)) nextSet.delete(questionId);
      else nextSet.add(questionId);
      toggleFlag(questionId);
      void persistFlagged([...nextSet]);
    },
    [toggleFlag, persistFlagged],
  );

  const handleAttempt = useCallback(
    async (payload: {
      selectedOption: string;
      isCorrect: boolean;
      timeSpentSeconds: number;
      hintUsed: boolean;
      answerText?: string;
      aiScore?: number | null;
      aiFeedback?: string | null;
      rubricScores?: unknown;
    }) => {
      if (!user) return;

      const session = useExamStore.getState().practiceSession;
      if (!session) return;

      const question = practiceQuestionAt(session, session.currentIndex);
      if (!question) return;

      const previousAttempt = session.attempts[question.id];
      const hadWrongBefore =
        priorIncorrectIds.has(question.id) ||
        pastIncorrectIds.has(question.id) ||
        (previousAttempt !== undefined && !previousAttempt.isCorrect);

      setLastAnswer({ optionId: payload.selectedOption, isCorrect: payload.isCorrect });
      setPanelTab("explanation");
      // Auto-open the explanation panel as soon as the answer is checked
      // (skip in the timed Question Rush flow, which is meant to stay fast).
      if (!isRush) setPanelOpen(true);
      if (!payload.isCorrect) {
        setPriorIncorrectIds((prev) => new Set(prev).add(question.id));
      }
      recordAttempt(question.id, {
        selectedOption: payload.selectedOption,
        isCorrect: payload.isCorrect,
        timeSpentSeconds: payload.timeSpentSeconds,
        hintUsed: payload.hintUsed,
        hadPriorIncorrect: payload.isCorrect && hadWrongBefore,
      });

      if (isRush) {
        const nextStreak = payload.isCorrect ? rushStreak + 1 : 0;
        setRushStreak(nextStreak);
        const { data: row } = await supabase
          .from("exam_sessions")
          .select("metadata")
          .eq("id", sessionId)
          .single();
        const metadata = (row?.metadata ?? {}) as SessionMetadata;
        const starScores = [...(metadata.rush?.starScores ?? [])];
        const total = practiceQuestionCount(session);
        const budget =
          timeLimitSeconds && total > 0
            ? Math.max(30, Math.floor(timeLimitSeconds / total))
            : 45;
        const stars = !payload.isCorrect
          ? 1
          : payload.timeSpentSeconds <= Math.round(budget * 0.27)
            ? 3
            : payload.timeSpentSeconds <= Math.round(budget * 0.46)
              ? 2
              : 1;
        starScores.push(stars);
        setRushStarScores(starScores);
        await supabase
          .from("exam_sessions")
          .update({
            metadata: {
              ...metadata,
              rush: {
                ...metadata.rush,
                streak: nextStreak,
                starScores,
                currentIndex: session.currentIndex,
              },
            },
          })
          .eq("id", sessionId);
      }

      const baseInsert: Record<string, unknown> = {
        user_id: user.id,
        question_id: question.id,
        session_id: sessionId,
        selected_option_id: isFrqQuestionType(question.question_type)
          ? null
          : payload.selectedOption,
        answer_text: payload.answerText ?? null,
        is_correct: payload.isCorrect,
        time_spent_seconds: payload.timeSpentSeconds,
        hint_used: payload.hintUsed,
        ai_explanation_requested: false,
        exam_type: examType,
      };
      if (payload.aiScore != null) baseInsert.ai_score = payload.aiScore;
      if (payload.aiFeedback != null) baseInsert.ai_feedback = payload.aiFeedback;
      if (payload.rubricScores != null) baseInsert.rubric_scores = payload.rubricScores;

      const { error: insertError } = await supabase
        .from("question_attempts")
        .insert(baseInsert as never);
      if (insertError) {
        console.error("[practice] question_attempts insert failed:", insertError.message);
      }
    },
    [user, recordAttempt, sessionId, supabase, examType, isRush, rushStreak, priorIncorrectIds, pastIncorrectIds, timeLimitSeconds],
  );

  const handleResetQuestion = useCallback(() => {
    const session = useExamStore.getState().practiceSession;
    const question =
      session != null
        ? practiceQuestionAt(session, session.currentIndex)
        : undefined;
    if (question && lastAnswer && !lastAnswer.isCorrect) {
      setPriorIncorrectIds((prev) => new Set(prev).add(question.id));
    }
    setPendingSelection(null);
    setLastAnswer(null);
    setFrqGrade(null);
    setEliminateMode(false);
    setPanelTab("ask");
    questionStartedAt.current = Date.now();
  }, [lastAnswer]);

  const finishSession = useCallback(async () => {
    if (!user || !practiceSession) return;

    const totalTime = Math.floor((Date.now() - practiceSession.startedAtMs) / 1000);
    const correctCount = Object.values(practiceSession.attempts).filter((a) => a.isCorrect).length;

    await supabase
      .from("exam_sessions")
      .update({
        completed_at: new Date().toISOString(),
        correct_count: correctCount,
        time_spent_seconds: totalTime,
      })
      .eq("id", sessionId);

    await recordActivityStreak(supabase, user.id);
    resetPracticeSession();
    router.push(`/dashboard/practice/${sessionId}/report`);
  }, [user, practiceSession, sessionId, supabase, resetPracticeSession, router]);

  const handleNext = useCallback(() => {
    if (!practiceSession) return;

    const total = practiceQuestionCount(practiceSession);
    if (practiceSession.currentIndex >= total - 1) {
      void finishSession();
      return;
    }

    const nextIndex = practiceSession.currentIndex + 1;
    setCurrentIndex(nextIndex);

    if (isRush) {
      void (async () => {
        const { data: row } = await supabase
          .from("exam_sessions")
          .select("metadata")
          .eq("id", sessionId)
          .single();
        const metadata = (row?.metadata ?? {}) as SessionMetadata;
        await supabase
          .from("exam_sessions")
          .update({
            metadata: {
              ...metadata,
              rush: {
                ...metadata.rush,
                currentIndex: nextIndex,
                streak: rushStreak,
                starScores: rushStarScores,
              },
            },
          })
          .eq("id", sessionId);
      })();
    }
  }, [
    practiceSession,
    finishSession,
    setCurrentIndex,
    isRush,
    sessionId,
    supabase,
    rushStreak,
    rushStarScores,
  ]);

  const handlePrevious = useCallback(() => {
    if (!practiceSession || practiceSession.currentIndex <= 0) return;
    setCurrentIndex(practiceSession.currentIndex - 1);
  }, [practiceSession, setCurrentIndex]);

  const handleCheck = useCallback(async () => {
    if (!pendingSelection || lastAnswer || checking) return;
    const session = useExamStore.getState().practiceSession;
    // Prefer the displayed question (a remix if one is active) so its options
    // and correct answer are what gets graded.
    const question =
      displayedRef.current ??
      (session != null ? practiceQuestionAt(session, session.currentIndex) : undefined);
    if (!question) return;
    setChecking(true);
    const timeSpentSeconds = Math.max(
      1,
      Math.round((Date.now() - questionStartedAt.current) / 1000),
    );
    try {
      if (isFrqQuestionType(question.question_type)) {
        setFrqGrade(null);
        const maxPoints = question.max_points ?? 4;
        const res = await aiRequest("/api/ai/grade-frq", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            exam_type: question.exam_type ?? examType,
            question_id: question.id,
            question_text: question.question_text,
            stimulus_text: question.stimulus_text ?? "",
            topic: question.topic,
            section: question.section,
            question_subtype: question.question_subtype,
            rubric: question.rubric,
            model_answer: question.model_answer,
            explanation: question.explanation,
            student_answer: pendingSelection,
            max_points: maxPoints,
          }),
        });
        const data = (await res.json()) as {
          score?: number;
          max_points?: number;
          is_correct?: boolean;
          feedback?: string;
          strengths?: string[];
          improvements?: string[];
          rubric_scores?: unknown;
          error?: string;
        };
        if (!res.ok) {
          toast.error(data.error ?? "Couldn't grade this response.");
          return;
        }
        const grade: FrqGradeResult = {
          score: data.score ?? 0,
          max_points: data.max_points ?? maxPoints,
          is_correct: Boolean(data.is_correct),
          feedback: data.feedback ?? "",
          strengths: data.strengths ?? [],
          improvements: data.improvements ?? [],
        };
        setFrqGrade(grade);
        await handleAttempt({
          selectedOption: pendingSelection,
          isCorrect: grade.is_correct,
          timeSpentSeconds,
          hintUsed: false,
          answerText: pendingSelection,
          aiScore: grade.score,
          aiFeedback: grade.feedback,
          rubricScores: data.rubric_scores ?? null,
        });
        return;
      }

      const isCorrect = isSelectionCorrect(question.options, pendingSelection);
      await handleAttempt({
        selectedOption: pendingSelection,
        isCorrect,
        timeSpentSeconds,
        hintUsed: false,
        answerText: isGridInOptions(question.options) ? pendingSelection : undefined,
      });
    } finally {
      setChecking(false);
    }
  }, [pendingSelection, lastAnswer, checking, handleAttempt, examType]);

  // Generate a fresh same-skill variant of the CURRENT (original) question.
  const handleRemix = useCallback(async () => {
    if (remixing) return;
    const session = useExamStore.getState().practiceSession;
    const base = session ? practiceQuestionAt(session, session.currentIndex) : undefined;
    if (!base) return;
    setRemixing(true);
    try {
      const res = await aiRequest("/api/ai/remix", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          exam_type: examType,
          question: {
            id: base.id,
            question_text: base.question_text,
            stimulus_text: base.stimulus_text ?? "",
            options: base.options.map((o) => ({ id: o.id, text: o.text, is_correct: o.is_correct })),
            correct_answer: base.options.find((o) => o.is_correct)?.id ?? base.model_answer,
            explanation: base.explanation,
            topic: base.topic,
            section: base.section,
            difficulty: base.difficulty,
            math_skill_code: (base as unknown as { math_skill_code?: string }).math_skill_code,
            question_type: base.question_type,
            exam_type: base.exam_type ?? examType,
          },
        }),
      });
      const data = (await res.json()) as { question?: Partial<Question>; error?: string };
      if (!res.ok || !data.question) {
        toast.error(data?.error ?? "Couldn't remix this question.");
        return;
      }
      // Merge over the original so required fields (section, calculator, hint…) survive.
      const merged = { ...base, ...data.question, id: base.id } as Question;
      setRemixMap(setRemix(base.id, merged));
      setPendingSelection(null);
      setLastAnswer(null);
      setFrqGrade(null);
      setChecking(false);
      toast.success("Remixed, a fresh take on the same skill.");
    } catch {
      toast.error("Couldn't remix this question.");
    } finally {
      setRemixing(false);
    }
  }, [remixing, examType]);

  // Discard the remix for the current question and show the original again.
  const handleRevertRemix = useCallback(() => {
    const session = useExamStore.getState().practiceSession;
    const base = session ? practiceQuestionAt(session, session.currentIndex) : undefined;
    if (!base) return;
    setRemixMap(removeRemix(base.id));
    setPendingSelection(null);
    setLastAnswer(null);
    setFrqGrade(null);
  }, []);

  const handleToggleSave = useCallback(async () => {
    if (!user || savingBookmark) return;
    const session = useExamStore.getState().practiceSession;
    const question =
      session != null
        ? practiceQuestionAt(session, session.currentIndex)
        : undefined;
    if (!question) return;
    setSavingBookmark(true);
    try {
      if (savedQuestion) {
        const res = await fetch(
          `/api/dashboard/saved-questions?questionId=${encodeURIComponent(question.id)}&courseId=${encodeURIComponent(examType)}`,
          { method: "DELETE" },
        );
        if (!res.ok) throw new Error("unsave failed");
        setSavedQuestion(false);
        toast.success("Removed from Saved");
      } else {
        const res = await fetch("/api/dashboard/saved-questions", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            questionId: question.id,
            courseId: examType,
            examType,
          }),
        });
        if (!res.ok) throw new Error("save failed");
        setSavedQuestion(true);
        toast.success("Saved for later");
      }
    } catch {
      toast.error("Couldn't update saved questions.");
    } finally {
      setSavingBookmark(false);
    }
  }, [user, savingBookmark, savedQuestion, examType]);

  // Keyboard shortcuts: 1–4 (or A–D) pick an answer, Enter checks it.
  useEffect(() => {
    const onKey = (e: KeyboardEvent) => {
      const target = e.target as HTMLElement | null;
      if (
        target &&
        (target.tagName === "INPUT" ||
          target.tagName === "TEXTAREA" ||
          target.isContentEditable)
      ) {
        return;
      }
      const session = useExamStore.getState().practiceSession;
      const question =
        displayedRef.current ??
        (session != null ? practiceQuestionAt(session, session.currentIndex) : undefined);
      if (!question) return;

      if (e.key === "Enter") {
        if (pendingSelection && !lastAnswer) {
          e.preventDefault();
          void handleCheck();
        } else if (lastAnswer) {
          e.preventDefault();
          handleNext();
        }
        return;
      }

      if (lastAnswer) return;
      let idx = -1;
      if (/^[1-9]$/.test(e.key)) idx = Number(e.key) - 1;
      else {
        const letter = e.key.toUpperCase();
        if (/^[A-D]$/.test(letter)) idx = letter.charCodeAt(0) - 65;
      }
      const option = idx >= 0 ? question.options[idx] : undefined;
      if (option) {
        e.preventDefault();
        setPendingSelection(option.id);
      }
    };
    document.addEventListener("keydown", onKey);
    return () => document.removeEventListener("keydown", onKey);
  }, [pendingSelection, lastAnswer, handleCheck, handleNext]);

  const timeRemaining =
    timeLimitSeconds !== null ? Math.max(0, timeLimitSeconds - elapsedSeconds) : null;

  useEffect(() => {
    if (
      timeRemaining === 0 &&
      !loading &&
      practiceSession &&
      !autoFinishedRef.current
    ) {
      autoFinishedRef.current = true;
      void finishSession();
    }
  }, [timeRemaining, loading, practiceSession, finishSession]);

  // Lightweight difficulty for every session id so the navigator popup colors
  // match the DB even before question bodies finish hydrating.
  const orderLen = practiceSession?.questionOrder.length ?? 0;
  useEffect(() => {
    if (!practiceSession || practiceSession.sessionId !== sessionId) {
      setFetchedDifficultyById({});
      return;
    }
    const ids = practiceSession.questionOrder;
    if (!ids.length) {
      setFetchedDifficultyById({});
      return;
    }
    let cancelled = false;
    void fetchQuestionDifficultyMetaByIds(supabase, ids).then((map) => {
      if (!cancelled) setFetchedDifficultyById(map);
    });
    return () => {
      cancelled = true;
    };
  }, [supabase, sessionId, practiceSession?.sessionId, orderLen]);

  const difficultyById = useMemo(() => {
    const map: Record<string, QuestionDifficultyMeta> = {
      ...fetchedDifficultyById,
    };
    for (const q of practiceSession?.questions ?? []) {
      map[q.id] = {
        difficulty: q.difficulty,
        challengedProblem: Boolean(q.challengedProblem),
      };
    }
    return map;
  }, [fetchedDifficultyById, practiceSession?.questions]);

  if (loading || !practiceSession) {
    if (loadStuck) {
      return (
        <SessionLoadingOverlay
          message="This is taking longer than usual."
          actions={[
            { label: "Reload", onClick: () => window.location.reload() },
            {
              label: "Back to practice",
              onClick: () => router.replace("/dashboard/practice/bank"),
            },
          ]}
        />
      );
    }
    return <SessionLoadingOverlay />;
  }

  const totalQuestions = practiceQuestionCount(practiceSession);
  const currentQuestion = practiceQuestionAt(
    practiceSession,
    practiceSession.currentIndex,
  );

  if (!currentQuestion) {
    return (
      <SessionLoadingOverlay message="Loading question…" />
    );
  }

  // The question the student actually sees and answers: a remix when one exists
  // for this id, otherwise the original. A ref mirrors it so imperative handlers
  // (check, keyboard) grade against the same item.
  const activeRemix = remixMap[currentQuestion.id];
  const displayedQuestion = {
    ...(activeRemix ?? currentQuestion),
    exam_type: (activeRemix ?? currentQuestion).exam_type ?? examType,
  };
  displayedRef.current = displayedQuestion;

  const section = isMathSection(currentQuestion.section) ? "math" : "reading_writing";
  const isFrq = isFrqQuestionType(displayedQuestion.question_type);
  const questionCanUseCalculator = canUseCalculator({
    calculatorAllowed: displayedQuestion.calculator_allowed,
    section: displayedQuestion.section,
    calculatorPolicy,
  });
  const questionCalculatorType = resolveCalculatorType({
    calculatorAllowed: displayedQuestion.calculator_allowed,
    section: displayedQuestion.section,
    calculatorPolicy,
  });
  const timerLabel =
    timeRemaining !== null
      ? formatTime(timeRemaining)
      : formatTime(elapsedSeconds);

  const openPanel = (tab: "ask" | "explanation") => {
    setPanelTab(tab);
    setPanelOpen(true);
  };

  const orbCount = Object.keys(practiceSession.attempts).length;

  const perQuestionSeconds =
    isRush && practiceSession && timeLimitSeconds
      ? Math.max(30, Math.floor(timeLimitSeconds / totalQuestions))
      : null;

  const answeredCount = Object.keys(practiceSession.attempts).length;
  const correctCount = Object.values(practiceSession.attempts).filter(
    (a) => a.isCorrect,
  ).length;
  const accuracyPct =
    answeredCount > 0 ? Math.round((correctCount / answeredCount) * 100) : null;
  const rushBudget = perQuestionSeconds ?? 45;

  // Stars earned per question, index-aligned to the full session order. Derived
  // from the recorded attempt (same thresholds as handleAttempt) so the side
  // list survives navigating back and forth, unlike the push-ordered scores.
  const starsForAttempt = (a: { isCorrect: boolean; timeSpentSeconds: number }) => {
    if (!a.isCorrect) return 1;
    if (a.timeSpentSeconds <= Math.round(rushBudget * 0.27)) return 3;
    if (a.timeSpentSeconds <= Math.round(rushBudget * 0.46)) return 2;
    return 1;
  };
  const questionStars = practiceSession.questionOrder.map((_, i) => {
    const q = practiceSession.questions[i];
    const a = q ? practiceSession.attempts[q.id] : undefined;
    return a ? starsForAttempt(a) : null;
  });
  const currentAttempt = practiceSession.attempts[currentQuestion.id];

  const rushLeftRail = isRush ? (
    <RushHud
      startedAtMs={questionStartMs}
      budgetSeconds={rushBudget}
      paused={paused}
      onPause={() => setPaused(!paused)}
      timerHidden={timerHidden}
      onToggleTimer={() => setTimerHidden(!timerHidden)}
      questionNumber={practiceSession.currentIndex + 1}
      totalQuestions={totalQuestions}
      onPrev={handlePrevious}
      onNext={handleNext}
      canPrev={practiceSession.currentIndex > 0}
      canNext
      answered={Boolean(lastAnswer)}
      earnedStars={currentAttempt ? starsForAttempt(currentAttempt) : null}
      answeredElapsedSeconds={currentAttempt?.timeSpentSeconds ?? null}
      questionStars={questionStars}
      onJump={setCurrentIndex}
    />
  ) : undefined;

  const rushHeaderExtras = isRush ? (
    <div className={styles.rushStatStrip}>
      <span className={styles.rushStat} title="Session time">
        <span className={styles.rushStatValue}>{formatTime(elapsedSeconds)}</span>
        <span className={styles.rushStatLabel}>session</span>
      </span>
      <span className={styles.rushStat} title="Streak">
        <span className={styles.rushStatValue}>{rushStreak}</span>
        <span className={styles.rushStatLabel}>streak</span>
      </span>
      <span className={styles.rushStat} title="Correct answers">
        <span className={styles.rushStatValue}>
          {correctCount}/{answeredCount}
        </span>
        <span className={styles.rushStatLabel}>correct</span>
      </span>
      <span className={styles.rushStat} title="Accuracy">
        <span className={styles.rushStatValue}>
          {accuracyPct !== null ? `${accuracyPct}%` : "—"}
        </span>
        <span className={styles.rushStatLabel}>accuracy</span>
      </span>
    </div>
  ) : undefined;

  const pushExam = panelOpen && panelPinned;

  return (
    <>
    <div
      className={`${styles.shellArea} ${pushExam ? styles.shellAreaPushed : ""}`}
    >
    <ExamShell
      section={section}
      examType={examType}
      timerLabel={timerLabel}
      questionNumber={practiceSession.currentIndex + 1}
      totalQuestions={totalQuestions}
      leftRail={rushLeftRail}
      headerExtras={rushHeaderExtras}
      paused={paused}
      onPauseChange={setPaused}
      onEndSession={() => void finishSession()}
      onGoBack={() => router.push("/dashboard/practice/bank")}
      onBugReport={() => setBugOpen(true)}
      hideStimulus={hideStimulus}
      onHideStimulusChange={setHideStimulus}
      highlighterEnabled={highlighterEnabled}
      onHighlighterChange={setHighlighterEnabled}
      timerHidden={timerHidden}
      onTimerHiddenChange={setTimerHidden}
      streakCount={isRush ? rushStreak : streakCount}
      orbCount={orbCount}
      canUseCalculator={questionCanUseCalculator}
      calculatorType={questionCalculatorType}
      bottomBar={
        <div className={styles.bottomBar}>
          <div className={styles.bottomLeft}>
            <QuestionBankModal
              questions={practiceSession.questions}
              totalCount={totalQuestions}
              questionOrder={practiceSession.questionOrder}
              difficultyById={difficultyById}
              currentIndex={practiceSession.currentIndex}
              attempts={practiceSession.attempts}
              flaggedIds={practiceSession.flaggedIds}
              priorIncorrectIds={priorIncorrectIds}
              pastIncorrectIds={pastIncorrectIds}
              onJump={setCurrentIndex}
            />
            <button
              type="button"
              className={styles.iconBtn}
              onClick={handleResetQuestion}
              aria-label="Reset question"
              title="Reset"
            >
              <ArrowCounterClockwise size={18} aria-hidden />
            </button>
          </div>
          <div className={styles.bottomRight}>
            <div className={styles.infoWrap}>
              <button
                type="button"
                className={styles.iconBtn}
                onClick={() => setInfoOpen((v) => !v)}
                aria-label="Session info"
                aria-expanded={infoOpen}
              >
                <Info size={18} weight="fill" aria-hidden />
              </button>
              {infoOpen ? (
                <div className={styles.infoPopover} role="dialog">
                  <p>
                    {currentQuestion.section} · {currentQuestion.topic}
                    {showPastAttempts && pastAttempts > 0
                      ? ` · ${pastAttempts} past attempt${pastAttempts === 1 ? "" : "s"}`
                      : ""}
                  </p>
                </div>
              ) : null}
            </div>
            {!isRush && activeRemix ? (
              <button
                type="button"
                className={styles.remixPill}
                onClick={handleRevertRemix}
                title="Show the original question"
              >
                <span className={styles.remixDot} aria-hidden />
                Remixed
                <X size={13} weight="bold" aria-hidden />
              </button>
            ) : null}
            {!isRush ? (
              <button
                type="button"
                className={styles.remixBtn}
                onClick={() => void handleRemix()}
                disabled={remixing}
                title="Generate a fresh variant of this question in a new context"
              >
                <Shuffle size={16} weight={remixing ? "regular" : "bold"} aria-hidden className={remixing ? styles.spin : undefined} />
                {remixing ? "Remixing…" : "Remix"}
              </button>
            ) : null}
            <button
              type="button"
              className={styles.askSchoBtn}
              onClick={() => openPanel("ask")}
            >
              <Sparkle size={16} weight="fill" aria-hidden />
              Ask Scho
            </button>
            <button
              type="button"
              className={styles.footerBtn}
              onClick={() => openPanel("explanation")}
              disabled={!lastAnswer && !displayedQuestion.explanation?.trim()}
            >
              <ListBullets size={16} aria-hidden />
              Explanation
            </button>
            <div className={styles.navGroup}>
              <button
                type="button"
                className={styles.footerBtn}
                onClick={handlePrevious}
                disabled={practiceSession.currentIndex <= 0}
                aria-label="Previous question"
              >
                <ArrowLeft size={16} aria-hidden />
                Back
              </button>
              <button
                type="button"
                className={styles.footerBtn}
                onClick={handleNext}
                aria-label={
                  practiceSession.currentIndex >= totalQuestions - 1
                    ? "End session"
                    : "Next question"
                }
              >
                {practiceSession.currentIndex >= totalQuestions - 1 ? "End" : "Next"}
                <ArrowRight size={16} aria-hidden />
              </button>
            </div>
            {!lastAnswer ? (
              <button
                type="button"
                className={styles.checkBtn}
                disabled={!pendingSelection || checking}
                onClick={() => void handleCheck()}
              >
                {checking
                  ? isFrq
                    ? "Scoring…"
                    : "Checking…"
                  : "Check"}
              </button>
            ) : null}
          </div>
        </div>
      }
    >
      <QuestionInterface
        key={activeRemix ? `${currentQuestion.id}:remix` : currentQuestion.id}
        question={displayedQuestion}
        questionNumber={practiceSession.currentIndex + 1}
        totalQuestions={totalQuestions}
        elapsedSeconds={timeRemaining === null ? elapsedSeconds : undefined}
        timeRemaining={timeRemaining ?? undefined}
        sessionType="practice"
        isExamMode
        stackStimulus={isRush}
        showKeyboardHint={isRush}
        hideStimulus={hideStimulus}
        highlightMode={highlighterEnabled}
        eliminateMode={eliminateMode}
        onEliminateModeChange={setEliminateMode}
        showCalculatorToggle={false}
        selectedOptionId={pendingSelection ?? lastAnswer?.optionId ?? null}
        onSelectOption={(id) => {
          if (!lastAnswer) setPendingSelection(id);
        }}
        onAttemptRecorded={undefined}
        onNext={handleNext}
        onPrevious={practiceSession.currentIndex > 0 ? handlePrevious : undefined}
        onFlag={handleFlag}
        isFlagged={practiceSession.flaggedIds.includes(currentQuestion.id)}
        showAnswerFeedback={Boolean(lastAnswer)}
        frqGrade={frqGrade}
        frqGrading={checking && isFrq}
        questionHeader={
          <ExamQuestionHeader
            questionNumber={practiceSession.currentIndex + 1}
            isFlagged={practiceSession.flaggedIds.includes(currentQuestion.id)}
            eliminateMode={eliminateMode}
            hasNote={hasNote}
            onFlag={() => handleFlag(currentQuestion.id)}
            onToggleEliminate={() => setEliminateMode((v) => !v)}
            onAddNote={() => setNoteOpen(true)}
            questionId={currentQuestion.id}
            showEliminate={!isFrq}
            isSaved={savedQuestion}
            onToggleSave={() => void handleToggleSave()}
            saveDisabled={savingBookmark}
            difficulty={displayedQuestion.difficulty}
            challenged={Boolean(displayedQuestion.challengedProblem)}
          />
        }
      />
    </ExamShell>
    </div>
    <SchoSidePanel
      question={displayedQuestion}
      selectedOptionId={lastAnswer?.optionId ?? pendingSelection}
      isCorrect={lastAnswer?.isCorrect}
      initialTab={panelTab}
      answerRevealed={Boolean(lastAnswer)}
      examType={examType}
      open={panelOpen}
      pinned={panelPinned}
      onPinnedChange={setPanelPinned}
      onClose={() => setPanelOpen(false)}
    />
    <BugReportModal open={bugOpen} onClose={() => setBugOpen(false)} />
    <QuestionNoteDialog
      open={noteOpen}
      questionId={currentQuestion.id}
      onClose={() => {
        setNoteOpen(false);
        try {
          const notes = JSON.parse(
            localStorage.getItem("scholaris_question_notes") ?? "{}",
          ) as Record<string, string>;
          setHasNote(Boolean(notes[currentQuestion.id]?.trim()));
        } catch {
          setHasNote(false);
        }
      }}
    />
    </>
  );
}
