"use client";

import { aiRequest } from "@/lib/ai/clientKey";

import {
  useCallback,
  useEffect,
  useMemo,
  useRef,
  useState,
  type ReactNode,
} from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";
import { createClient } from "@/lib/supabase/client";
import { QuestionInterface } from "@/components/question/QuestionInterface";
import { Button } from "@/components/ui/app-button";
import {
  baselineScoreFromAnswers,
  buildTopicScores,
  checkedDiagnosticAnswers,
  DIAGNOSTIC_QUESTION_COUNT,
  getDiagnosticAnswer,
  upsertDiagnosticAnswer,
  type DiagnosticAnswer,
} from "@/lib/onboarding/diagnostic";
import {
  clearLocalDiagnosticSession,
  loadIncompleteCloudDiagnostic,
  readLocalDiagnosticSession,
  writeLocalDiagnosticSession,
} from "@/lib/onboarding/diagnosticPersistence";
import { buildDiagnosticFallbackQuestions } from "@/lib/onboarding/diagnosticFallback";
import { uploadOnboardingDiagnostic } from "@/lib/onboarding/uploadOnboardingDiagnostic";
import {
  DIAGNOSTIC_QUEUE_KEY,
  examProgramLabel,
  parseExamGoals,
} from "@/lib/onboarding/examPrograms";
import type { ExamType } from "@/types/supabase";
import type {
  Question,
  QuestionAnswerRestoreState,
} from "@/components/question/QuestionInterface";
import { useExamCalculatorPolicy } from "@/hooks/useExamCalculatorPolicy";
import styles from "@/app/onboarding/onboarding.module.css";

type GenerateDiagnosticResponse = {
  questions?: Question[];
  session_id?: string;
  session_seed?: string;
  error?: string;
};

function readDiagnosticQueue(): ExamType[] {
  if (typeof window === "undefined") return [];
  try {
    const raw = sessionStorage.getItem(DIAGNOSTIC_QUEUE_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw) as unknown;
    if (!Array.isArray(parsed)) return [];
    return parsed.filter((item): item is ExamType => typeof item === "string");
  } catch {
    return [];
  }
}

function AnalyzingScreen({
  title,
  subtitle,
  action,
}: {
  title: string;
  subtitle: string;
  action?: ReactNode;
}) {
  return (
    <div className={styles.analyzing}>
      <div className={styles.spinner} />
      <h2 className={styles.title}>{title}</h2>
      <p className={styles.subtitle}>{subtitle}</p>
      {action}
    </div>
  );
}

export type DiagnosticRunnerProps = {
  /** Exam program from query param, if any. */
  programParam?: ExamType | null;
  /** Number of questions to run (defaults to the full 35-Q diagnostic). */
  questionCount?: number;
};

/**
 * Optional score-approximation diagnostic. Lives on the dashboard —
 * it is never part of login or onboarding.
 */
export function DiagnosticRunner({
  programParam = null,
  questionCount = DIAGNOSTIC_QUESTION_COUNT,
}: DiagnosticRunnerProps) {
  const router = useRouter();
  const supabase = createClient();

  const [queue, setQueue] = useState<ExamType[]>([]);
  const [examType, setExamType] = useState<ExamType>("SAT");
  const [questions, setQuestions] = useState<Question[]>([]);
  const [loadingQuestions, setLoadingQuestions] = useState(true);
  const [loadError, setLoadError] = useState<string | null>(null);
  const [index, setIndex] = useState(0);
  const [answers, setAnswers] = useState<DiagnosticAnswer[]>([]);
  const [sessionId, setSessionId] = useState<string | null>(null);
  const [sessionSeed, setSessionSeed] = useState<string | undefined>();
  const [sessionStartedAt, setSessionStartedAt] = useState<string | null>(null);
  const [userId, setUserId] = useState<string | null>(null);
  const [analyzing, setAnalyzing] = useState(false);
  const questionEnteredAtMs = useRef(0);
  const calculatorPolicy = useExamCalculatorPolicy(examType);

  const persistLocalSession = useCallback(
    (
      overrides: Partial<{
        questions: Question[];
        answers: DiagnosticAnswer[];
        currentIndex: number;
        sessionId: string;
        sessionSeed: string | undefined;
        startedAt: string;
      }> = {},
    ) => {
      const activeSessionId = overrides.sessionId ?? sessionId;
      if (!activeSessionId || (overrides.questions ?? questions).length === 0) {
        return;
      }

      writeLocalDiagnosticSession({
        userId,
        sessionId: activeSessionId,
        sessionSeed: overrides.sessionSeed ?? sessionSeed,
        examType,
        questions: overrides.questions ?? questions,
        answers: overrides.answers ?? answers,
        currentIndex: overrides.currentIndex ?? index,
        startedAt:
          overrides.startedAt ??
          sessionStartedAt ??
          new Date().toISOString(),
      });
    },
    [
      sessionId,
      sessionSeed,
      userId,
      examType,
      questions,
      answers,
      index,
      sessionStartedAt,
    ],
  );

  const queuePosition = useMemo(() => {
    if (queue.length === 0) return { current: 1, total: 1 };
    const idx = queue.indexOf(examType);
    return {
      current: idx >= 0 ? idx + 1 : 1,
      total: queue.length,
    };
  }, [queue, examType]);

  const remainingAfterCurrent = useMemo(() => {
    const idx = queue.indexOf(examType);
    if (idx < 0) return [];
    return queue.slice(idx + 1);
  }, [queue, examType]);

  useEffect(() => {
    async function resolveProgram() {
      const storedQueue = readDiagnosticQueue();
      const {
        data: { user },
      } = await supabase.auth.getUser();

      const { data: profile } = user
        ? await supabase
            .from("profiles")
            .select("exam_goal, exam_goals")
            .eq("id", user.id)
            .single()
        : { data: null };

      const goals = parseExamGoals(
        profile?.exam_goals as ExamType[] | null,
        profile?.exam_goal,
      );
      const activeQueue: ExamType[] =
        storedQueue.length > 0 ? storedQueue : goals.length > 0 ? goals : ["SAT"];
      const activeProgram: ExamType =
        programParam && activeQueue.includes(programParam)
          ? programParam
          : (activeQueue[0] ?? "SAT");

      setQueue(activeQueue);
      setExamType(activeProgram);
    }

    void resolveProgram();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [programParam]);

  useEffect(() => {
    if (!examType) return;

    async function loadQuestions() {
      setLoadingQuestions(true);
      setLoadError(null);

      const {
        data: { user },
      } = await supabase.auth.getUser();
      const activeUserId = user?.id ?? null;
      setUserId(activeUserId);

      const applySession = (
        nextQuestions: Question[],
        nextAnswers: DiagnosticAnswer[],
        nextIndex: number,
        nextSessionId: string,
        nextSessionSeed?: string,
        startedAt?: string,
      ) => {
        setQuestions(nextQuestions);
        setAnswers(nextAnswers);
        setIndex(nextIndex);
        setSessionId(nextSessionId);
        setSessionSeed(nextSessionSeed);
        const started = startedAt ?? new Date().toISOString();
        setSessionStartedAt(started);
        writeLocalDiagnosticSession({
          userId: activeUserId,
          sessionId: nextSessionId,
          sessionSeed: nextSessionSeed,
          examType,
          questions: nextQuestions,
          answers: nextAnswers,
          currentIndex: nextIndex,
          startedAt: started,
        });
      };

      const local = readLocalDiagnosticSession(activeUserId, examType);
      if (local?.questions.length) {
        applySession(
          local.questions,
          local.answers,
          local.currentIndex,
          local.sessionId,
          local.sessionSeed,
          local.startedAt,
        );
        setLoadingQuestions(false);
        return;
      }

      if (activeUserId) {
        const cloud = await loadIncompleteCloudDiagnostic(
          supabase,
          activeUserId,
          examType,
        );
        if (cloud?.questions.length) {
          applySession(
            cloud.questions,
            cloud.answers,
            cloud.currentIndex,
            cloud.sessionId,
            cloud.sessionSeed,
          );
          setLoadingQuestions(false);
          return;
        }
      }

      setQuestions([]);
      setIndex(0);
      setAnswers([]);
      setSessionId(null);
      setSessionSeed(undefined);
      setSessionStartedAt(null);

      try {
        const res = await aiRequest("/api/ai/generate-diagnostic", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ exam_type: examType }),
        });

        const data = (await res.json()) as GenerateDiagnosticResponse;

        if (res.ok && (data.questions?.length ?? 0) >= questionCount) {
          const id = data.session_id ?? crypto.randomUUID();
          applySession(
            data.questions!.slice(0, questionCount),
            [],
            0,
            id,
            data.session_seed,
          );
          setLoadingQuestions(false);
          return;
        }

        if (!res.ok && res.status !== 429) {
          console.warn("[diagnostic] generate failed", data.error);
        }
      } catch {
        /* fall through to fallback */
      }

      const fallbackQuestions = buildDiagnosticFallbackQuestions(examType).slice(
        0,
        questionCount,
      );
      applySession(fallbackQuestions, [], 0, crypto.randomUUID());
      if (!user) {
        setLoadError("Sign in to save your diagnostic to your profile.");
      }
      setLoadingQuestions(false);
    }

    void loadQuestions();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [examType]);

  useEffect(() => {
    if (!sessionId || questions.length === 0 || loadingQuestions) return;
    persistLocalSession();
  }, [sessionId, questions.length, loadingQuestions, persistLocalSession]);

  useEffect(() => {
    questionEnteredAtMs.current = Date.now();
  }, [index]);

  const total = questions.length;
  const current = questions[index];
  const progress = total > 0 ? ((index + 1) / total) * 100 : 0;

  const goToNextProgramOrDashboard = useCallback(() => {
    if (remainingAfterCurrent.length > 0) {
      const next = remainingAfterCurrent[0]!;
      toast.success(`${examProgramLabel(examType)} diagnostic saved.`);
      router.push(
        `/dashboard/diagnostic?program=${encodeURIComponent(next)}`,
      );
      router.refresh();
      return;
    }

    sessionStorage.removeItem(DIAGNOSTIC_QUEUE_KEY);
    toast.success("Diagnostic saved — your predicted score is on the dashboard.");
    router.push("/dashboard");
    router.refresh();
  }, [remainingAfterCurrent, examType, router]);

  const finishDiagnostic = useCallback(
    async (finalAnswers: DiagnosticAnswer[]) => {
      const scoredAnswers = checkedDiagnosticAnswers(finalAnswers);
      if (scoredAnswers.length < total && total > 0) {
        toast.error("Check each answer before finishing.");
        return;
      }

      setAnalyzing(true);

      const {
        data: { user },
      } = await supabase.auth.getUser();

      const topicScores = buildTopicScores(scoredAnswers);
      const baseline = baselineScoreFromAnswers(scoredAnswers, examType);

      if (user && sessionId) {
        const { error: uploadError } = await uploadOnboardingDiagnostic(
          supabase,
          user.id,
          {
            sessionId,
            sessionSeed,
            examType,
            questions,
            answers: scoredAnswers,
            topicScores,
            baselineScore: baseline,
            startedAt: sessionStartedAt ?? undefined,
          },
        );

        if (uploadError) {
          console.warn("[diagnostic] cloud upload failed", uploadError);
          toast.error("Could not save diagnostic results. Please try again.");
          setAnalyzing(false);
          return;
        }

        clearLocalDiagnosticSession(user.id, examType, sessionId);
      } else if (sessionId) {
        clearLocalDiagnosticSession(null, examType, sessionId);
      }

      const { data: studyPlan } = user
        ? await supabase
            .from("multi_subject_study_plans")
            .select("target_score, weekly_hours_allocated")
            .eq("user_id", user.id)
            .eq("course_id", examType)
            .maybeSingle()
        : { data: null };

      // Study-plan refresh is best-effort; it never blocks the user.
      try {
        const res = await aiRequest("/api/ai/generate-study-plan", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            exam_type: examType,
            topic_scores: topicScores,
            answers: scoredAnswers.map((a) => ({
              question_id: a.questionId,
              topic: a.topic,
              section: a.section,
              is_correct: a.isCorrect,
              selected_option: a.selectedOption,
            })),
            target_score: studyPlan?.target_score ?? undefined,
            weekly_hours: studyPlan?.weekly_hours_allocated ?? undefined,
            baseline_score: baseline,
          }),
        });

        if (!res.ok) {
          throw new Error("Failed to generate study plan");
        }
      } catch {
        toast.warning(
          "Results saved, but your study plan could not be refreshed.",
        );
      }

      goToNextProgramOrDashboard();
    },
    [
      supabase,
      total,
      examType,
      goToNextProgramOrDashboard,
      sessionId,
      sessionSeed,
      questions,
      sessionStartedAt,
    ],
  );

  const savedAnswerForCurrent = useMemo(
    () => (current ? getDiagnosticAnswer(answers, current.id) : undefined),
    [answers, current],
  );

  const initialAnswerState = useMemo((): QuestionAnswerRestoreState | null => {
    if (!savedAnswerForCurrent?.selectedOption) return null;
    return {
      selectedOptionId: savedAnswerForCurrent.selectedOption,
      isChecked: savedAnswerForCurrent.checked,
      isCorrect: savedAnswerForCurrent.isCorrect,
      hintUsed: savedAnswerForCurrent.hintUsed,
    };
  }, [savedAnswerForCurrent]);

  const handleSelectionChange = useCallback(
    (optionId: string) => {
      if (!current) return;

      setAnswers((prev) => {
        const next = upsertDiagnosticAnswer(prev, {
          questionId: current.id,
          topic: current.topic,
          section: current.section,
          selectedOption: optionId,
          isCorrect: false,
          checked: false,
        });
        persistLocalSession({ answers: next, currentIndex: index });
        return next;
      });
    },
    [current, index, persistLocalSession],
  );

  const handleRecorded = (result: {
    isCorrect: boolean;
    selectedOption: string;
    hintUsed: boolean;
  }) => {
    if (!current) return;

    const timeSpentSeconds = Math.max(
      0,
      Math.round((Date.now() - questionEnteredAtMs.current) / 1000),
    );

    setAnswers((prev) => {
      const next = upsertDiagnosticAnswer(prev, {
        questionId: current.id,
        topic: current.topic,
        section: current.section,
        isCorrect: result.isCorrect,
        selectedOption: result.selectedOption,
        checked: true,
        hintUsed: result.hintUsed,
        timeSpentSeconds,
      });
      persistLocalSession({ answers: next, currentIndex: index });
      return next;
    });
  };

  const handleNext = () => {
    if (index < total - 1) {
      const nextIndex = index + 1;
      setIndex(nextIndex);
      persistLocalSession({ currentIndex: nextIndex });
      return;
    }

    setAnswers((prev) => {
      void finishDiagnostic(prev);
      return prev;
    });
  };

  const handlePrevious = () => {
    if (index <= 0) return;
    const nextIndex = index - 1;
    setIndex(nextIndex);
    persistLocalSession({ currentIndex: nextIndex });
  };

  if (loadingQuestions) {
    return (
      <AnalyzingScreen
        title={`Building your ${examProgramLabel(examType)} diagnostic…`}
        subtitle={`Generating ${questionCount} questions (${queuePosition.current} of ${queuePosition.total} programs)`}
      />
    );
  }

  if (analyzing) {
    return (
      <AnalyzingScreen
        title={`Analyzing ${examProgramLabel(examType)} results…`}
        subtitle={
          remainingAfterCurrent.length > 0
            ? `Next up: ${remainingAfterCurrent.map(examProgramLabel).join(", ")}`
            : "Scho is estimating your predicted score"
        }
      />
    );
  }

  if (!current) {
    return (
      <AnalyzingScreen
        title="Diagnostic unavailable"
        subtitle={loadError ?? "Please try again in a moment."}
        action={
          <Button href="/dashboard" variant="ghost">
            Back to dashboard
          </Button>
        }
      />
    );
  }

  return (
    <div className={styles.diagnosticSession}>
      <div className={styles.diagnosticSessionHeader}>
        <span className={styles.diagnosticProgramBadge}>
          {examProgramLabel(examType)} diagnostic — program {queuePosition.current}{" "}
          of {queuePosition.total}
        </span>
        <div className={styles.diagnosticProgress}>
          <div className={styles.diagnosticProgressLabel}>
            <span>Question progress</span>
            <span>
              {index + 1} of {total}
            </span>
          </div>
          <div className={styles.progressBar}>
            <div
              className={styles.progressFill}
              style={{ width: `${progress}%` }}
            />
          </div>
        </div>
        {queuePosition.total > 1 ? (
          <p className={styles.diagnosticProgramNote}>
            Each program uses its own format and scoring.{" "}
            {remainingAfterCurrent.length > 0
              ? `After this, you’ll continue with ${remainingAfterCurrent.map(examProgramLabel).join(" and ")}.`
              : "This is your last diagnostic in this set."}
          </p>
        ) : null}
        {loadError ? (
          <p className={styles.diagnosticProgramNote}>{loadError}</p>
        ) : null}
      </div>

      <div className={styles.diagnosticQuestionWrap}>
        <QuestionInterface
          key={`${examType}-${current.id}`}
          question={current}
          questionNumber={index + 1}
          totalQuestions={total}
          sessionType="diagnostic"
          calculatorPolicy={calculatorPolicy}
          stimulusVariant="prose"
          hideStimulusLabel
          initialAnswerState={initialAnswerState}
          onFlag={() => {}}
          onSelectionChange={handleSelectionChange}
          onAttemptRecorded={handleRecorded}
          onNext={handleNext}
          onPrevious={index > 0 ? handlePrevious : undefined}
        />
      </div>
    </div>
  );
}
