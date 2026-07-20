import type { SupabaseClient } from "@supabase/supabase-js";
import type { ExamType } from "@/types/supabase";
import {
  formatDifficultyLabel,
  normalizeQuestionDifficulty,
  type QuestionDifficulty,
} from "@/lib/question/difficulty";
import { QUESTION_LIST_EMBED_SELECT } from "@/lib/question/schema";

export type Difficulty = Extract<
  QuestionDifficulty,
  "easy" | "medium" | "hard"
>;

export type MistakeAttemptRow = {
  question_id: string;
  created_at: string | null;
  questions: {
    topic: string | null;
    question_text: string;
    difficulty: Difficulty | null;
    section: string | null;
  } | null;
};

export type MistakeEntry = {
  questionId: string;
  text: string;
  topic: string | null;
  difficulty: Difficulty | null;
  section: string | null;
  wrongCount: number;
  lastWrong: number;
  corrected: boolean;
};

/** Strip AI scaffolding and tidy a stem for one-glance reading. */
export function cleanMistakeStem(raw: string): string {
  return raw
    .replace(/^\[Passage[^\]]*\]\s*/i, "")
    .replace(/^Text\s+\d+[:.]?\s*/i, "")
    .replace(/\$/g, "")
    .replace(/\s+/g, " ")
    .trim();
}

export function sectionLabelForMistake(
  section: string | null,
  examType: string,
  topic?: string | null,
): string {
  if (examType.startsWith("AP_") || examType.startsWith("IB_")) {
    if (topic?.trim()) return topic.trim();
    if (section?.trim()) {
      const s = section.trim();
      if (/^mcq$/i.test(s)) return "MCQ";
      if (/^frq$/i.test(s)) return "FRQ";
      return s.replace(/_/g, " ");
    }
    return "Unit";
  }
  if (section && /math/i.test(section)) return "Math";
  return "Reading & Writing";
}

export function difficultyLabel(d: Difficulty | null): string {
  return formatDifficultyLabel(d);
}

/** Load wrong attempts + correction status for a single exam/course scope. */
export async function fetchMistakesForExam(
  supabase: SupabaseClient,
  userId: string,
  examType: ExamType,
): Promise<MistakeEntry[]> {
  const [wrongRes, correctRes] = await Promise.all([
    supabase
      .from("question_attempts")
      .select(`question_id, created_at, questions(${QUESTION_LIST_EMBED_SELECT})`)
      .eq("user_id", userId)
      .eq("exam_type", examType)
      .eq("is_correct", false)
      .order("created_at", { ascending: false })
      .limit(400),
    supabase
      .from("question_attempts")
      .select("question_id")
      .eq("user_id", userId)
      .eq("exam_type", examType)
      .eq("is_correct", true)
      .limit(2000),
  ]);

  const correctedSet = new Set(
    (correctRes.data ?? []).map((r) => r.question_id),
  );

  const byQuestion = new Map<string, MistakeEntry>();
  for (const row of (wrongRes.data ?? []) as unknown as MistakeAttemptRow[]) {
    if (!row.question_id || !row.questions) continue;
    const at = row.created_at ? new Date(row.created_at).getTime() : 0;
    const existing = byQuestion.get(row.question_id);
    if (existing) {
      existing.wrongCount += 1;
      existing.lastWrong = Math.max(existing.lastWrong, at);
    } else {
      byQuestion.set(row.question_id, {
        questionId: row.question_id,
        text: cleanMistakeStem(row.questions.question_text ?? "Question"),
        topic: row.questions.topic,
        difficulty: (() => {
          const d = normalizeQuestionDifficulty(row.questions.difficulty);
          return d === "expert" ? "hard" : d;
        })(),
        section: row.questions.section,
        wrongCount: 1,
        lastWrong: at,
        corrected: correctedSet.has(row.question_id),
      });
    }
  }

  return [...byQuestion.values()].sort((a, b) => b.lastWrong - a.lastWrong);
}

/** Simple list for legacy MistakesLogClient (no aggregation). */
export async function fetchMistakeRowsForExam(
  supabase: SupabaseClient,
  userId: string,
  examType: ExamType,
  limit = 50,
): Promise<MistakeAttemptRow[]> {
  const { data } = await supabase
    .from("question_attempts")
    .select(`question_id, created_at, questions(${QUESTION_LIST_EMBED_SELECT})`)
    .eq("user_id", userId)
    .eq("exam_type", examType)
    .eq("is_correct", false)
    .order("created_at", { ascending: false })
    .limit(limit);

  return (data ?? []) as unknown as MistakeAttemptRow[];
}
