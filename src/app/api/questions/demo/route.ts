import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { mapDbQuestion } from "@/lib/practice/mapQuestion";
import { QUESTION_LOAD_SELECT, asQuestionRows } from "@/lib/question/schema";

export const revalidate = 300;

/**
 * Public demo question for the homepage: one real College Board-style
 * Reading & Writing question from the platform bank (anon RLS allows
 * reading platform questions).
 */
export async function GET() {
  const supabase = await createClient();

  const { data, error } = await supabase
    .from("questions")
    .select(QUESTION_LOAD_SELECT)
    .eq("is_platform_question", true)
    .eq("challenge_only", false)
    .eq("exam_type", "SAT")
    .eq("section", "reading_writing")
    .not("stimulus_text", "is", null)
    .limit(40);

  if (error || !data?.length) {
    return NextResponse.json(
      { error: "No demo question available" },
      { status: 404 },
    );
  }

  // Prefer questions with compact stimuli that fit the homepage layout.
  const rows = asQuestionRows(data);
  const candidates = rows.filter(
    (row) =>
      (row.stimulus_text?.length ?? 0) > 80 &&
      (row.stimulus_text?.length ?? 0) < 700 &&
      Array.isArray(row.options) &&
      (row.options as unknown[]).length === 4,
  );
  const pool = candidates.length > 0 ? candidates : rows;
  const row = pool[Math.floor(Math.random() * pool.length)]!;
  const question = mapDbQuestion(row);

  return NextResponse.json({
    question: {
      stimulus: question.stimulus_text ?? null,
      question_text: question.question_text,
      options: question.options.map((o) => ({
        id: o.id,
        text: o.text,
        is_correct: o.is_correct,
      })),
      explanation: question.explanation,
      difficulty: question.difficulty,
      topic: question.topic,
    },
  });
}
