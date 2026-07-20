import { create } from "zustand";
import type { Question } from "@/components/question/QuestionInterface";
import type { ExamSectionKey } from "@/lib/exam/config";
import type { FullExamMetadata } from "@/lib/exam/metadata";

export type AttemptRecord = {
  selectedOption: string;
  isCorrect: boolean;
  timeSpentSeconds: number;
  hintUsed: boolean;
  /** Answered correctly after one or more incorrect tries (same session). */
  hadPriorIncorrect?: boolean;
};

export type PracticeSessionState = {
  sessionId: string;
  /** Full session order from exam_sessions.question_order (may exceed loaded questions). */
  questionOrder: string[];
  questions: Question[];
  currentIndex: number;
  answers: Record<string, string>;
  flaggedIds: string[];
  attempts: Record<string, AttemptRecord>;
  correctCount: number;
  startedAtMs: number;
};

export type FullExamSessionState = {
  sessionId: string;
  /** Session exam_type from exam_sessions (SAT / ACT / AP_* / IB_*). */
  examType: string;
  metadata: FullExamMetadata;
  allQuestions: Question[];
  sectionQuestions: Question[][];
  currentSectionIndex: number;
  currentIndex: number;
  answers: Record<string, string>;
  flaggedIds: string[];
  attempts: Record<string, AttemptRecord>;
  sectionStartedAtMs: number;
  examStartedAtMs: number;
  twoMinuteWarned: boolean;
};

type ExamStore = {
  practiceSession: PracticeSessionState | null;
  fullExamSession: FullExamSessionState | null;
  initPracticeSession: (session: Omit<PracticeSessionState, "questionOrder"> & {
    questionOrder?: string[];
  }) => void;
  /**
   * Merge a freshly fetched batch into the session.
   *
   * `requestedIds` are the IDs we attempted to load for this batch. Any
   * requested ID that is NOT present after the merge is treated as permanently
   * unloadable (deleted/regenerated row, exam-type mismatch, or unmappable) and
   * pruned from `questionOrder` so the contiguous-prefix invariant can always
   * advance past holes. Without this, one dead ID stalls the session forever.
   */
  hydratePracticeQuestions: (batch: Question[], requestedIds?: string[]) => void;
  initFullExamSession: (session: FullExamSessionState) => void;
  setAnswer: (questionId: string, optionId: string) => void;
  toggleFlag: (questionId: string) => void;
  recordAttempt: (questionId: string, attempt: AttemptRecord) => void;
  setCurrentIndex: (index: number) => void;
  setFullExamSectionIndex: (index: number) => void;
  /** Adaptive Module 2: swap a section's questions to the chosen Easy/Hard route. */
  resolveAdaptiveSection: (
    index: number,
    questions: Question[],
    variant: "easy" | "hard",
  ) => void;
  patchFullExamMetadata: (patch: Partial<FullExamMetadata>) => void;
  setTwoMinuteWarned: () => void;
  resetPracticeSession: () => void;
  resetFullExamSession: () => void;
};

export const useExamStore = create<ExamStore>((set) => ({
  practiceSession: null,
  fullExamSession: null,

  initPracticeSession: (session) =>
    set({
      practiceSession: {
        ...session,
        questionOrder:
          session.questionOrder && session.questionOrder.length > 0
            ? session.questionOrder
            : session.questions.map((q) => q.id),
      },
      fullExamSession: null,
    }),

  hydratePracticeQuestions: (batch, requestedIds) =>
    set((state) => {
      if (!state.practiceSession) return state;
      const { questions } = state.practiceSession;
      let questionOrder = state.practiceSession.questionOrder;

      const byId = new Map(questions.map((q) => [q.id, q]));
      for (const q of batch) byId.set(q.id, q);

      // Prune IDs that were requested but couldn't be loaded so the prefix can
      // advance past permanent holes (deleted/regenerated/unmappable rows).
      if (requestedIds && requestedIds.length) {
        const dead = new Set(
          requestedIds.filter((id) => !byId.has(id)),
        );
        if (dead.size) {
          questionOrder = questionOrder.filter((id) => !dead.has(id));
        }
      }

      const merged: Question[] = [];
      for (let i = 0; i < questionOrder.length; i += 1) {
        const id = questionOrder[i];
        if (!id) break;
        const q = byId.get(id) ?? (questions[i]?.id === id ? questions[i] : undefined);
        if (q) merged.push(q);
        else break;
      }

      const orderChanged = questionOrder !== state.practiceSession.questionOrder;
      if (merged.length <= questions.length && !orderChanged) return state;

      // Clamp the cursor in case pruning shortened the order.
      const maxIndex = Math.max(0, questionOrder.length - 1);
      const currentIndex = Math.min(state.practiceSession.currentIndex, maxIndex);

      return {
        practiceSession: {
          ...state.practiceSession,
          questionOrder,
          questions: merged,
          currentIndex,
        },
      };
    }),

  initFullExamSession: (session) =>
    set({ fullExamSession: session, practiceSession: null }),

  setAnswer: (questionId, optionId) =>
    set((state) => {
      if (state.fullExamSession) {
        return {
          fullExamSession: {
            ...state.fullExamSession,
            answers: {
              ...state.fullExamSession.answers,
              [questionId]: optionId,
            },
          },
        };
      }
      if (!state.practiceSession) return state;
      return {
        practiceSession: {
          ...state.practiceSession,
          answers: {
            ...state.practiceSession.answers,
            [questionId]: optionId,
          },
        },
      };
    }),

  toggleFlag: (questionId) =>
    set((state) => {
      const toggle = (ids: string[]) => {
        const flagged = new Set(ids);
        if (flagged.has(questionId)) flagged.delete(questionId);
        else flagged.add(questionId);
        return [...flagged];
      };

      if (state.fullExamSession) {
        return {
          fullExamSession: {
            ...state.fullExamSession,
            flaggedIds: toggle(state.fullExamSession.flaggedIds),
          },
        };
      }
      if (!state.practiceSession) return state;
      return {
        practiceSession: {
          ...state.practiceSession,
          flaggedIds: toggle(state.practiceSession.flaggedIds),
        },
      };
    }),

  recordAttempt: (questionId, attempt) =>
    set((state) => {
      if (state.fullExamSession) {
        return {
          fullExamSession: {
            ...state.fullExamSession,
            attempts: {
              ...state.fullExamSession.attempts,
              [questionId]: attempt,
            },
          },
        };
      }
      if (!state.practiceSession) return state;

      const wasRecorded = Boolean(state.practiceSession.attempts[questionId]);
      const correctDelta =
        !wasRecorded && attempt.isCorrect
          ? 1
          : wasRecorded &&
              !state.practiceSession.attempts[questionId].isCorrect &&
              attempt.isCorrect
            ? 1
            : wasRecorded &&
                state.practiceSession.attempts[questionId].isCorrect &&
                !attempt.isCorrect
              ? -1
              : 0;

      return {
        practiceSession: {
          ...state.practiceSession,
          attempts: {
            ...state.practiceSession.attempts,
            [questionId]: attempt,
          },
          correctCount: state.practiceSession.correctCount + correctDelta,
        },
      };
    }),

  setCurrentIndex: (index) =>
    set((state) => {
      if (state.fullExamSession) {
        return {
          fullExamSession: { ...state.fullExamSession, currentIndex: index },
        };
      }
      if (!state.practiceSession) return state;
      return {
        practiceSession: { ...state.practiceSession, currentIndex: index },
      };
    }),

  setFullExamSectionIndex: (index) =>
    set((state) => {
      if (!state.fullExamSession) return state;
      return {
        fullExamSession: {
          ...state.fullExamSession,
          currentSectionIndex: index,
          currentIndex: 0,
          sectionStartedAtMs: Date.now(),
          twoMinuteWarned: false,
        },
      };
    }),

  resolveAdaptiveSection: (index, questions, variant) =>
    set((state) => {
      const s = state.fullExamSession;
      if (!s) return state;
      const sectionQuestions = s.sectionQuestions.map((arr, i) =>
        i === index ? questions : arr,
      );
      const sections = s.metadata.sections.map((sec, i) =>
        i === index
          ? { ...sec, question_ids: questions.map((q) => q.id), chosen_variant: variant }
          : sec,
      );
      return {
        fullExamSession: {
          ...s,
          sectionQuestions,
          allQuestions: sectionQuestions.flat(),
          metadata: { ...s.metadata, sections },
        },
      };
    }),

  patchFullExamMetadata: (patch) =>
    set((state) => {
      if (!state.fullExamSession) return state;
      return {
        fullExamSession: {
          ...state.fullExamSession,
          metadata: {
            ...state.fullExamSession.metadata,
            ...patch,
          },
        },
      };
    }),

  setTwoMinuteWarned: () =>
    set((state) => {
      if (!state.fullExamSession) return state;
      return {
        fullExamSession: { ...state.fullExamSession, twoMinuteWarned: true },
      };
    }),

  resetPracticeSession: () => set({ practiceSession: null }),
  resetFullExamSession: () => set({ fullExamSession: null }),
}));

export function getCurrentSectionQuestions(
  session: FullExamSessionState,
): Question[] {
  return session.sectionQuestions[session.currentSectionIndex] ?? [];
}

export function getSectionTimeLimitSeconds(
  session: FullExamSessionState,
): number {
  return (
    session.metadata.sections[session.currentSectionIndex]
      ?.time_limit_seconds ?? 0
  );
}
