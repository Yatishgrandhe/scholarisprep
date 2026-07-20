import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";
import type { Question } from "@/components/question/QuestionInterface";
import { mapDbQuestion } from "@/lib/practice/mapQuestion";
import { QUESTION_ATTEMPT_JOIN_SELECT } from "@/lib/question/schema";
import type { QuestionRow } from "@/lib/question/schema";

type Client = SupabaseClient<Database>;

export type SessionAttemptRow = {
  id: string;
  questionId: string;
  questionNumber: number;
  sectionLabel?: string;
  section?: string;
  topic: string;
  difficulty: string;
  isCorrect: boolean;
  flagged: boolean;
  selected: string;
  correct: string;
  timeSeconds: number;
  questionText: string;
  stimulus?: string;
  stimulusType?: Question["stimulus_type"];
  explanation: string;
  options: {
    id: string;
    text: string;
    is_correct: boolean;
    explanation: string;
  }[];
};

type BuildReportOptions = {
  sessionType?: "practice" | "full_exam";
  sectionByQuestionId?: Map<string, string>;
};

/**
 * Build review rows from `question_attempts` joined to `questions`.
 * Used by practice and full-exam report pages (explanations from DB).
 */
export async function buildSessionAttemptRows(
  supabase: Client,
  sessionId: string,
  questionOrder: string[],
  flaggedIds: string[] = [],
  options: BuildReportOptions = {},
): Promise<SessionAttemptRow[]> {
  const flagged = new Set(flaggedIds);

  const { data: attemptRows } = await supabase
    .from("question_attempts")
    .select(
      QUESTION_ATTEMPT_JOIN_SELECT,
    )
    .eq("session_id", sessionId)
    .order("created_at", { ascending: true });

  const byQuestion = new Map(
    (attemptRows ?? []).map((row) => [row.question_id, row]),
  );

  const order =
    questionOrder.length > 0
      ? questionOrder
      : (attemptRows ?? [])
          .map((r) => r.question_id)
          .filter((id): id is string => Boolean(id));

  return order
    .map((qid, index): SessionAttemptRow | null => {
      const row = byQuestion.get(qid);
      if (!row?.questions) return null;
      const question = mapDbQuestion(row.questions as QuestionRow);
      const sprOption = question.options.find((o) => o.id === "SPR");
      const correctId =
        sprOption?.text ??
        question.options.find((o) => o.is_correct)?.id ??
        question.options[0]?.id ??
        "—";

      return {
        id: row.id,
        questionId: question.id,
        questionNumber: index + 1,
        sectionLabel: options.sectionByQuestionId?.get(question.id),
        topic: question.topic,
        difficulty: question.difficulty,
        isCorrect: row.is_correct ?? false,
        flagged: flagged.has(question.id),
        selected: row.selected_option_id ?? "—",
        correct: correctId,
        timeSeconds: row.time_spent_seconds ?? 0,
        questionText: question.question_text,
        stimulus: question.stimulus_text,
        stimulusType: question.stimulus_type,
        section: question.section,
        explanation: question.explanation,
        options: question.options,
      };
    })
    .filter((a): a is SessionAttemptRow => a !== null);
}
