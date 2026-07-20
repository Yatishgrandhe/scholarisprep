import { createClient } from "@/lib/supabase/server";
import { NextResponse } from "next/server";

export async function POST(request: Request) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const body = (await request.json()) as { examType?: "SAT" | "ACT" };
  const examType = body.examType ?? "SAT";

  await supabase
    .from("question_attempts")
    .delete()
    .eq("user_id", user.id)
    .eq("exam_type", examType);

  await supabase
    .from("exam_sessions")
    .delete()
    .eq("user_id", user.id)
    .eq("exam_type", examType);

  await supabase
    .from("study_plans")
    .delete()
    .eq("user_id", user.id)
    .eq("course_id", examType);

  await supabase
    .from("multi_subject_study_plans")
    .delete()
    .eq("user_id", user.id)
    .eq("course_id", examType);

  await supabase
    .from("saved_questions")
    .delete()
    .eq("user_id", user.id)
    .eq("course_id", examType);

  const { data: vocabWords } = await supabase
    .from("vocabulary_words")
    .select("id")
    .eq("exam_type", examType);

  if (vocabWords?.length) {
    await supabase
      .from("user_vocabulary_progress")
      .delete()
      .eq("user_id", user.id)
      .in(
        "word_id",
        vocabWords.map((row) => row.id),
      );
  }

  return NextResponse.json({ ok: true });
}
