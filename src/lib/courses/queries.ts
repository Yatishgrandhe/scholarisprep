import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";
import { QUESTION_LOAD_SELECT, asQuestionRows } from "@/lib/question/schema";
import { computeProgressPercent, findContinueLessonId } from "./progress";

type CourseRow = Database["public"]["Tables"]["courses"]["Row"];
type LessonRow = Database["public"]["Tables"]["lessons"]["Row"];

export type EnrolledCourseCard = {
  enrollmentId: string;
  progressPercent: number;
  continueLessonId: string | null;
  course: CourseRow & { creator_name: string | null };
};

export type CatalogCourseCard = CourseRow & {
  creator_name: string | null;
  is_enrolled: boolean;
};

export async function fetchEnrolledCourses(
  supabase: SupabaseClient,
  userId: string,
): Promise<EnrolledCourseCard[]> {
  const { data: enrollments } = await supabase
    .from("enrollments")
    .select(
      `
      id,
      progress_percent,
      course_id,
      courses (
        id,
        title,
        description,
        thumbnail_url,
        exam_type,
        subject,
        level,
        status,
        is_free,
        price_cents,
        total_lessons,
        creator_id,
        created_at
      )
    `,
    )
    .eq("user_id", userId)
    .order("enrolled_at", { ascending: false });

  if (!enrollments?.length) return [];

  const courseIds = enrollments
    .map((e) => e.course_id)
    .filter((id): id is string => Boolean(id));

  const { data: lessons } = await supabase
    .from("lessons")
    .select("id, course_id, order_index")
    .in("course_id", courseIds)
    .order("order_index");

  const { data: progressRows } = await supabase
    .from("lesson_progress")
    .select("lesson_id, completed, course_id")
    .eq("user_id", userId)
    .in("course_id", courseIds);

  const progressByLesson = new Map(
    (progressRows ?? []).map((p) => [p.lesson_id, p.completed ?? false]),
  );

  const creatorIds = [
    ...new Set(
      enrollments
        .map((e) => {
          const raw = e.courses as CourseRow | CourseRow[] | null;
          const c = Array.isArray(raw) ? raw[0] : raw;
          return c?.creator_id;
        })
        .filter((id): id is string => Boolean(id)),
    ),
  ];

  const { data: creators } = await supabase
    .from("profiles")
    .select("id, full_name")
    .in("id", creatorIds);

  const creatorNameById = new Map(
    (creators ?? []).map((p) => [p.id, p.full_name]),
  );

  return enrollments
    .map((enrollment) => {
      const rawCourse = enrollment.courses as CourseRow | CourseRow[] | null;
      const course = Array.isArray(rawCourse) ? rawCourse[0] : rawCourse;
      if (!course) return null;

      const courseLessons = (lessons ?? []).filter(
        (l) => l.course_id === course.id,
      );
      const lessonsWithProgress = courseLessons.map((l) => ({
        id: l.id,
        order_index: l.order_index,
        completed: progressByLesson.get(l.id) ?? false,
      }));

      return {
        enrollmentId: enrollment.id,
        progressPercent: Number(enrollment.progress_percent ?? 0),
        continueLessonId: findContinueLessonId(lessonsWithProgress),
        course: {
          ...course,
          creator_name: course.creator_id
            ? (creatorNameById.get(course.creator_id) ?? null)
            : null,
        },
      };
    })
    .filter((row): row is EnrolledCourseCard => row !== null);
}

export type CatalogFilters = {
  examType?: string;
  subject?: string;
  freeOnly?: boolean;
  paidOnly?: boolean;
};

export async function fetchPublishedCourses(
  supabase: SupabaseClient,
  userId: string,
  filters: CatalogFilters,
): Promise<CatalogCourseCard[]> {
  let query = supabase
    .from("courses")
    .select("*")
    .eq("status", "published")
    .order("created_at", { ascending: false });

  if (filters.examType && filters.examType !== "all") {
    query = query.eq("exam_type", filters.examType);
  }
  if (filters.subject?.trim()) {
    query = query.ilike("subject", `%${filters.subject.trim()}%`);
  }
  if (filters.freeOnly) query = query.eq("is_free", true);
  if (filters.paidOnly) query = query.eq("is_free", false);

  const { data: courses } = await query;
  if (!courses?.length) return [];

  const { data: enrollments } = await supabase
    .from("enrollments")
    .select("course_id")
    .eq("user_id", userId);

  const enrolledSet = new Set((enrollments ?? []).map((e) => e.course_id));

  const creatorIds = [
    ...new Set(courses.map((c) => c.creator_id).filter((id): id is string => Boolean(id))),
  ];

  const { data: creators } = await supabase
    .from("profiles")
    .select("id, full_name")
    .in("id", creatorIds);

  const creatorNameById = new Map(
    (creators ?? []).map((p) => [p.id, p.full_name]),
  );

  return courses.map((course) => ({
    ...course,
    creator_name: course.creator_id
      ? (creatorNameById.get(course.creator_id) ?? null)
      : null,
    is_enrolled: enrolledSet.has(course.id),
  }));
}

export async function enrollInCourse(
  supabase: SupabaseClient,
  userId: string,
  courseId: string,
): Promise<{ lessonId: string | null; error?: string }> {
  const { data: existing } = await supabase
    .from("enrollments")
    .select("id")
    .eq("user_id", userId)
    .eq("course_id", courseId)
    .maybeSingle();

  if (!existing) {
    const { error } = await supabase.from("enrollments").insert({
      user_id: userId,
      course_id: courseId,
      progress_percent: 0,
    });
    if (error) return { lessonId: null, error: error.message };

    const { data: courseRow } = await supabase
      .from("courses")
      .select("enrolled_count")
      .eq("id", courseId)
      .single();
    if (courseRow) {
      await supabase
        .from("courses")
        .update({ enrolled_count: (courseRow.enrolled_count ?? 0) + 1 })
        .eq("id", courseId);
    }
  }

  const { data: firstLesson } = await supabase
    .from("lessons")
    .select("id")
    .eq("course_id", courseId)
    .order("order_index", { ascending: true })
    .limit(1)
    .maybeSingle();

  return { lessonId: firstLesson?.id ?? null };
}

export async function markLessonComplete(
  supabase: SupabaseClient,
  userId: string,
  courseId: string,
  lessonId: string,
): Promise<{ progressPercent: number; error?: string }> {
  const { error: progressError } = await supabase.from("lesson_progress").upsert(
    {
      user_id: userId,
      course_id: courseId,
      lesson_id: lessonId,
      completed: true,
      last_watched_at: new Date().toISOString(),
    },
    { onConflict: "user_id,lesson_id" },
  );

  if (progressError) {
    return { progressPercent: 0, error: progressError.message };
  }

  const { data: lessons } = await supabase
    .from("lessons")
    .select("id")
    .eq("course_id", courseId);

  const { data: completedRows } = await supabase
    .from("lesson_progress")
    .select("lesson_id")
    .eq("user_id", userId)
    .eq("course_id", courseId)
    .eq("completed", true);

  const total = lessons?.length ?? 0;
  const completed = completedRows?.length ?? 0;
  const progressPercent = computeProgressPercent(completed, total);

  await supabase
    .from("enrollments")
    .update({
      progress_percent: progressPercent,
      completed_at:
        progressPercent >= 100 ? new Date().toISOString() : null,
    })
    .eq("user_id", userId)
    .eq("course_id", courseId);

  return { progressPercent };
}

export async function fetchCoursePlayerData(
  supabase: SupabaseClient,
  userId: string,
  courseId: string,
  lessonId: string,
) {
  const { data: enrollment } = await supabase
    .from("enrollments")
    .select("id")
    .eq("user_id", userId)
    .eq("course_id", courseId)
    .maybeSingle();

  const { data: course } = await supabase
    .from("courses")
    .select("id, title, status, creator_id")
    .eq("id", courseId)
    .single();

  if (!course) return null;

  const isCreator = course.creator_id === userId;
  if (!enrollment && !isCreator && course.status !== "published") {
    return null;
  }

  const { data: lessons } = await supabase
    .from("lessons")
    .select("*")
    .eq("course_id", courseId)
    .order("order_index", { ascending: true });

  const lesson = (lessons ?? []).find((l) => l.id === lessonId) as LessonRow | undefined;
  if (!lesson) return null;

  const { data: progressRows } = await supabase
    .from("lesson_progress")
    .select("lesson_id, completed")
    .eq("user_id", userId)
    .eq("course_id", courseId);

  const progressMap = new Map(
    (progressRows ?? []).map((p) => [p.lesson_id, p.completed ?? false]),
  );

  const { data: questions } = await supabase
    .from("questions")
    .select(QUESTION_LOAD_SELECT)
    .eq("lesson_id", lessonId)
    .order("created_at", { ascending: true })
    .limit(5);

  return {
    course,
    lessons: lessons ?? [],
    lesson,
    progressMap,
    questions: asQuestionRows(questions),
  };
}
