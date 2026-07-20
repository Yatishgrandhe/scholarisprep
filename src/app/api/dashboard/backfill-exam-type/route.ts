import { createClient } from "@/lib/supabase/server";
import { NextResponse } from "next/server";
import type { ExamType } from "@/types/supabase";

export async function POST() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { data: attempts } = await supabase
    .from("question_attempts")
    .select("id, session_id, question_id, exam_type")
    .eq("user_id", user.id)
    .is("exam_type", null)
    .limit(500);

  if (!attempts?.length) {
    return NextResponse.json({ updated: 0 });
  }

  const sessionIds = [...new Set(attempts.map((a) => a.session_id).filter(Boolean))];
  const questionIds = [
    ...new Set(attempts.filter((a) => !a.session_id).map((a) => a.question_id).filter(Boolean)),
  ];

  const { data: sessions } = sessionIds.length
    ? await supabase
        .from("exam_sessions")
        .select("id, exam_type")
        .in("id", sessionIds as string[])
    : { data: [] as { id: string; exam_type: string | null }[] };

  const { data: questions } = questionIds.length
    ? await supabase
        .from("questions")
        .select("id, exam_type")
        .in("id", questionIds as string[])
    : { data: [] as { id: string; exam_type: string | null }[] };

  const examBySession = new Map(
    (sessions ?? []).map((s) => [s.id, s.exam_type ?? "SAT"]),
  );
  const examByQuestion = new Map(
    (questions ?? []).map((q) => [q.id, q.exam_type ?? "SAT"]),
  );

  let updated = 0;
  for (const attempt of attempts) {
    const examType = (
      attempt.session_id
        ? (examBySession.get(attempt.session_id) ?? "SAT")
        : attempt.question_id
          ? (examByQuestion.get(attempt.question_id) ?? "SAT")
          : "SAT"
    ) as ExamType;
    const { error } = await supabase
      .from("question_attempts")
      .update({ exam_type: examType })
      .eq("id", attempt.id);
    if (!error) updated += 1;
  }

  return NextResponse.json({ updated });
}
