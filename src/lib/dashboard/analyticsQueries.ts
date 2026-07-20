import type { SupabaseClient } from "@supabase/supabase-js";
import { courseIdForExam } from "@/lib/dashboard/courseScope";
import type { Database, ExamType } from "@/types/supabase";

type Client = SupabaseClient<Database>;

/** Max attempts loaded for charts (recent-first window keeps queries fast). */
export const ANALYTICS_ATTEMPT_LIMIT = 5_000;

const ATTEMPT_SELECT =
  "is_correct, time_spent_seconds, created_at, questions(section, topic, subtopic, difficulty, unit_code)";

export type AnalyticsAttemptRow = {
  is_correct: boolean | null;
  time_spent_seconds: number | null;
  created_at: string | null;
  questions: {
    section: string | null;
    topic: string | null;
    subtopic: string | null;
    difficulty: string | null;
    unit_code: string | null;
  } | null;
};

export type AnalyticsAttemptStats = {
  total: number;
  correct: number;
  saved: number;
};

/**
 * Fetch practice attempts scoped to one course/exam (`exam_type` enum).
 * Strict filter — null exam_type rows never leak into another course's analytics.
 */
export async function fetchAnalyticsAttempts(
  supabase: Client,
  userId: string,
  examType: ExamType,
): Promise<AnalyticsAttemptRow[]> {
  // Newest-first window so recent activity is never truncated; reverse for charts.
  const { data, error } = await supabase
    .from("question_attempts")
    .select(ATTEMPT_SELECT)
    .eq("user_id", userId)
    .eq("exam_type", examType)
    .order("created_at", { ascending: false })
    .limit(ANALYTICS_ATTEMPT_LIMIT);

  if (error) {
    console.error("[analytics] fetchAnalyticsAttempts failed:", error.message);
    return [];
  }

  const rows = (data ?? []) as unknown as AnalyticsAttemptRow[];
  return rows.reverse();
}

/** Head-only counts for stat strips — no row payload. */
export async function fetchAnalyticsAttemptStats(
  supabase: Client,
  userId: string,
  examType: ExamType,
): Promise<AnalyticsAttemptStats> {
  const courseId = courseIdForExam(examType);
  const [totalRes, correctRes, savedRes] = await Promise.all([
    supabase
      .from("question_attempts")
      .select("*", { count: "exact", head: true })
      .eq("user_id", userId)
      .eq("exam_type", examType),
    supabase
      .from("question_attempts")
      .select("*", { count: "exact", head: true })
      .eq("user_id", userId)
      .eq("exam_type", examType)
      .eq("is_correct", true),
    supabase
      .from("saved_questions")
      .select("id", { count: "exact", head: true })
      .eq("user_id", userId)
      .eq("course_id", courseId),
  ]);

  return {
    total: totalRes.count ?? 0,
    correct: correctRes.count ?? 0,
    saved: savedRes.count ?? 0,
  };
}
