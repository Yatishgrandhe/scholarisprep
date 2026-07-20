import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import type { ExamType } from "@/types/supabase";

/** Active course slug — Scholaris uses exam_type as the course identity. */
function resolveCourseId(raw: string | null | undefined): ExamType | null {
  if (!raw || !raw.trim()) return null;
  return raw.trim() as ExamType;
}

export async function GET(request: Request) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const params = new URL(request.url).searchParams;
  const courseId =
    resolveCourseId(params.get("courseId")) ??
    resolveCourseId(params.get("examType"));
  if (!courseId) {
    return NextResponse.json(
      { error: "Missing courseId (or examType)" },
      { status: 400 },
    );
  }
  const questionId = params.get("questionId");
  const idsOnly = params.get("idsOnly") === "1";

  // Fast path: bookmark status for one question in the active course.
  if (questionId) {
    const { data, error } = await supabase
      .from("saved_questions")
      .select("id")
      .eq("user_id", user.id)
      .eq("course_id", courseId)
      .eq("question_id", questionId)
      .maybeSingle();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({ saved: Boolean(data), courseId });
  }

  // Lightweight id list for bank filters / status maps.
  if (idsOnly) {
    const { data, error } = await supabase
      .from("saved_questions")
      .select("question_id")
      .eq("user_id", user.id)
      .eq("course_id", courseId)
      .order("created_at", { ascending: false });

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({
      items: (data ?? []).map((row) => ({ question_id: row.question_id })),
      courseId,
    });
  }

  const { data, error } = await supabase
    .from("saved_questions")
    .select(
      "id, question_id, course_id, created_at, questions(id, topic, section, unit_code, question_text, difficulty, source_metadata)",
    )
    .eq("user_id", user.id)
    .eq("course_id", courseId)
    .order("created_at", { ascending: false });

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ items: data ?? [], courseId });
}

export async function POST(request: Request) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const body = (await request.json()) as {
    questionId?: string;
    courseId?: ExamType;
    examType?: ExamType;
  };

  const courseId =
    resolveCourseId(body.courseId) ?? resolveCourseId(body.examType);
  if (!body.questionId || !courseId) {
    return NextResponse.json(
      { error: "Missing questionId or courseId" },
      { status: 400 },
    );
  }

  const { data, error } = await supabase
    .from("saved_questions")
    .upsert(
      {
        user_id: user.id,
        question_id: body.questionId,
        course_id: courseId,
        exam_type: courseId,
      },
      { onConflict: "user_id,course_id,question_id" },
    )
    .select("id")
    .single();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ id: data.id });
}

export async function DELETE(request: Request) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const params = new URL(request.url).searchParams;
  const questionId = params.get("questionId");
  const courseId =
    resolveCourseId(params.get("courseId")) ??
    resolveCourseId(params.get("examType"));

  if (!questionId) {
    return NextResponse.json({ error: "Missing questionId" }, { status: 400 });
  }
  if (!courseId) {
    return NextResponse.json({ error: "Missing courseId" }, { status: 400 });
  }

  const { error } = await supabase
    .from("saved_questions")
    .delete()
    .eq("user_id", user.id)
    .eq("course_id", courseId)
    .eq("question_id", questionId);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ ok: true });
}
