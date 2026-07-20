import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";
import { aiKeyHeaders } from "@/lib/ai/clientKey";
import {
  createPracticeSessionFromQuestionIds,
  type PracticeFilters,
} from "@/lib/practice/queries";

type Client = SupabaseClient<Database>;
type ExamType = Database["public"]["Enums"]["exam_type"];

export type LaunchPlanSessionParams = {
  supabase: Client;
  userId: string;
  examType: ExamType;
  skillId: string;
  section: "reading_writing" | "math";
  /** How many questions the study-plan task assigned (e.g. 8). */
  count: number;
  mode: "bank" | "rush";
};

/**
 * Launch a practice session for a single study-plan task. The AI
 * (`/api/ai/study-plan-questions`) curates EXACTLY `count` question ids for the
 * skill; we then create a session from just those. The key header is sent when
 * present (so Mistral curates) but never required — the endpoint falls back to
 * a deterministic spread, so this works with or without a key (no key modal).
 *
 * Returns the new session id, or null on failure.
 */
export async function launchPlanSession({
  supabase,
  userId,
  examType,
  skillId,
  section,
  count,
  mode,
}: LaunchPlanSessionParams): Promise<string | null> {
  let questionIds: string[] = [];
  try {
    const res = await fetch("/api/ai/study-plan-questions", {
      method: "POST",
      headers: { "Content-Type": "application/json", ...aiKeyHeaders() },
      body: JSON.stringify({
        exam_type: examType,
        skill_id: skillId,
        section,
        count,
      }),
    });
    if (res.ok) {
      const data = (await res.json()) as { question_ids?: unknown };
      if (Array.isArray(data.question_ids)) {
        questionIds = data.question_ids.filter(
          (id): id is string => typeof id === "string",
        );
      }
    }
  } catch {
    /* fall through — handled below */
  }

  if (questionIds.length === 0) return null;

  const filters: PracticeFilters = {
    section,
    topic: "all",
    difficulty: "all",
    examType,
    skillIds: [skillId],
  };

  if (mode === "rush") {
    return createPracticeSessionFromQuestionIds(
      supabase,
      userId,
      examType,
      questionIds,
      filters,
      {
        mode: "rush",
        // ~45s per question keeps the timed feel without external config.
        timeLimitSeconds: questionIds.length * 45,
        rushConfig: {
          skills: [skillId],
          pace: "standard",
          streak: 0,
          starScores: [],
          currentIndex: 0,
          challenge: false,
        },
      },
    );
  }

  return createPracticeSessionFromQuestionIds(
    supabase,
    userId,
    examType,
    questionIds,
    filters,
    { mode: "drill" },
  );
}
