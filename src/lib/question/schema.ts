import type { Database } from "@/types/supabase";
import type { Question } from "@/components/question/QuestionInterface";

export type QuestionRow = Database["public"]["Tables"]["questions"]["Row"];

/**
 * Hydration columns for practice/exam loads via `mapDbQuestion`.
 * Must stay a string literal (not built at runtime) for Supabase client typings.
 *
 * Always keep `difficulty` in body-load / attempt-embed selects so
 * `mapDbQuestion` → `Question.difficulty` reaches badges and navigator palettes.
 * Live DB: enum easy|medium|hard|expert, nullable column, currently ~0% null.
 *
 * Do NOT include `question_subtype` until the live DB has that column
 * (migration `20260717140000_add_questions_question_subtype.sql`). Selecting a
 * missing column makes PostgREST return 400 and Start reports empty bodies as
 * "none passed quality checks".
 */
export const QUESTION_LOAD_SELECT =
  "id, question_text, question_type, options, correct_answer, explanation, hint, stimulus_text, stimulus_type, section, topic, difficulty, exam_type, calculator_allowed, source_metadata, rubric, max_points" as const;

/** Lighter select for playability scoring / id discovery (no explanation or hint). */
export const QUESTION_PLAYABILITY_SELECT =
  "id, question_text, stimulus_text, options, section, exam_type, source_metadata, difficulty" as const;

/**
 * Fast bank scan — omits passage bodies (stimulus_text). English pools are large;
 * fetching full passages during id discovery was blocking "Preparing questions…".
 */
export const QUESTION_SCAN_SELECT =
  "id, question_text, options, section, exam_type, source_metadata, difficulty" as const;

/** Id-only pagination for maximum scan throughput. */
export const QUESTION_ID_SELECT = "id" as const;

/**
 * Lightweight select for navigator/palette difficulty colors before full body
 * hydrate (practice sessions often have hundreds of IDs, only ~10 bodies first).
 */
export const QUESTION_DIFFICULTY_SELECT =
  "id, difficulty, source_metadata" as const;

/**
 * Nested `questions(...)` columns for attempt/list joins (mistakes log, etc.).
 * Must include `difficulty` — omitting it leaves UI chips blank even when DB is populated.
 */
export const QUESTION_LIST_EMBED_SELECT =
  "topic, question_text, difficulty, section" as const;

/** `question_attempts` join that embeds question load columns on `questions`. */
export const QUESTION_ATTEMPT_JOIN_SELECT =
  "id, question_id, is_correct, selected_option_id, time_spent_seconds, questions(id, question_text, question_type, options, correct_answer, explanation, hint, stimulus_text, stimulus_type, section, topic, difficulty, exam_type, calculator_allowed, source_metadata, rubric, max_points)" as const;

export function asQuestionRows(data: unknown): QuestionRow[] {
  return (data ?? []) as QuestionRow[];
}

export type QuestionSource =
  | "college_board_opensat"
  | "ai_generated"
  | "creator"
  | string;

/** Raw option shape stored in `questions.options` JSONB. */
export type QuestionOptionJson = {
  id: string;
  text: string;
  is_correct?: boolean;
  explanation?: string;
};

export function isOfficialQuestion(row: { source?: string | null }): boolean {
  const source = row.source ?? "";
  return (
    source === "college_board_opensat" || source.toLowerCase().includes("college_board")
  );
}

export function hasStoredExplanation(question: Pick<Question, "explanation">): boolean {
  return Boolean(question.explanation?.trim());
}

export function explanationForOption(
  question: Question,
  optionId: string,
): string {
  const opt = question.options.find((o) => o.id === optionId);
  return opt?.explanation?.trim() || question.explanation?.trim() || "";
}
