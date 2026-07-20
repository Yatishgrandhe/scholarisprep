"use client";

import { useEffect, useRef } from "react";
import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";
import {
  PRACTICE_HYDRATE_BATCH_SIZE,
  fetchQuestionsByIds,
} from "@/lib/practice/queries";
import { practiceSessionHasPendingQuestions } from "@/lib/practice/sessionState";
import { useExamStore } from "@/stores/examStore";

type Client = SupabaseClient<Database>;

/**
 * Background-loads remaining practice questions after a fast session bootstrap.
 */
export function useHydratePracticeQuestions(
  supabase: Client,
  examType: Database["public"]["Enums"]["exam_type"],
) {
  const practiceSession = useExamStore((s) => s.practiceSession);
  const hydratePracticeQuestions = useExamStore((s) => s.hydratePracticeQuestions);
  const hydratingRef = useRef(false);

  useEffect(() => {
    if (!practiceSession || !practiceSessionHasPendingQuestions(practiceSession)) {
      hydratingRef.current = false;
      return;
    }
    if (hydratingRef.current) return;

    const sessionId = practiceSession.sessionId;
    hydratingRef.current = true;
    let cancelled = false;

    void (async () => {
      while (!cancelled) {
        const current = useExamStore.getState().practiceSession;
        if (
          !current ||
          current.sessionId !== sessionId ||
          !practiceSessionHasPendingQuestions(current)
        ) {
          break;
        }

        const pendingBefore =
          current.questionOrder.length - current.questions.length;
        const loaded = current.questions.length;
        const batchIds = current.questionOrder.slice(
          loaded,
          loaded + PRACTICE_HYDRATE_BATCH_SIZE,
        );
        if (!batchIds.length) break;

        // fetchQuestionsByIds already retries missing IDs without the exam-type
        // scope, so anything still absent from the result is genuinely
        // unloadable. Pass batchIds so the store prunes those dead IDs.
        const batch = await fetchQuestionsByIds(supabase, batchIds, examType);
        if (cancelled) break;

        hydratePracticeQuestions(batch, batchIds);

        // Safety: if neither a question loaded nor a dead ID was pruned, the
        // pending count can't shrink — bail instead of spinning forever.
        const after = useExamStore.getState().practiceSession;
        if (!after || after.sessionId !== sessionId) break;
        const pendingAfter = after.questionOrder.length - after.questions.length;
        if (pendingAfter >= pendingBefore) break;
      }
    })().finally(() => {
      hydratingRef.current = false;
    });

    return () => {
      cancelled = true;
    };
  }, [
    supabase,
    examType,
    practiceSession?.sessionId,
    practiceSession?.questions.length,
    practiceSession?.questionOrder.length,
    hydratePracticeQuestions,
  ]);
}
