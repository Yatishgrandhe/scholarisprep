import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database, ExamType } from "@/types/supabase";
import type { TutorPerformanceData } from "@/lib/promptBuilder";

type Client = SupabaseClient<Database>;

/**
 * Build the student's score/weak-area snapshot for the tutor system prompt, so
 * Scho already knows their current score, target, exam date, and weak topics
 * instead of asking for them. Every query is best-effort: a missing table/row
 * just omits that field.
 */
export async function getTutorPerformanceData(
  supabase: Client,
  userId: string,
  examType: ExamType,
): Promise<TutorPerformanceData | undefined> {
  const [diag, active, plan, sessions] = await Promise.all([
    (async () => {
      try {
        const { data } = await supabase
          .from("subject_diagnostic_results")
          .select("overall_score, predicted_score, weak_topics, strong_topics, taken_at")
          .eq("user_id", userId)
          .eq("exam_type", examType)
          .order("taken_at", { ascending: false })
          .limit(1)
          .maybeSingle();
        return data;
      } catch {
        return null;
      }
    })(),
    (async () => {
      try {
        const { data } = await supabase
          .from("user_active_subjects")
          .select("baseline_score, target_score, exam_date")
          .eq("user_id", userId)
          .eq("exam_type", examType)
          .maybeSingle();
        return data;
      } catch {
        return null;
      }
    })(),
    (async () => {
      try {
        const { data } = await supabase
          .from("multi_subject_study_plans")
          .select("baseline_score, target_score, exam_date")
          .eq("user_id", userId)
          .eq("course_id", examType)
          .maybeSingle();
        return data;
      } catch {
        return null;
      }
    })(),
    (async () => {
      try {
        const { data } = await supabase
          .from("exam_sessions")
          .select("correct_count, total_questions")
          .eq("user_id", userId)
          .order("started_at", { ascending: false })
          .limit(10);
        return data ?? [];
      } catch {
        return [];
      }
    })(),
  ]);

  const data: TutorPerformanceData = {};

  const currentScore = diag?.overall_score ?? active?.baseline_score ?? plan?.baseline_score;
  if (currentScore != null) data.currentScore = currentScore;

  const targetScore = active?.target_score ?? plan?.target_score;
  if (targetScore != null) data.targetScore = targetScore;

  if (diag?.predicted_score != null) data.predictedScore = diag.predicted_score;

  const examDate = active?.exam_date ?? plan?.exam_date;
  if (examDate) data.examDate = examDate;

  const weak = diag?.weak_topics;
  if (weak?.length) data.weakTopics = weak.slice(0, 8);
  const strong = diag?.strong_topics;
  if (strong?.length) data.strongTopics = strong.slice(0, 6);

  // Recent accuracy across the last few sessions.
  let correct = 0;
  let total = 0;
  for (const s of sessions) {
    correct += s.correct_count ?? 0;
    total += s.total_questions ?? 0;
  }
  if (total > 0) {
    data.recentAccuracyPercent = Math.round((correct / total) * 100);
    data.sessionsCompleted = sessions.length;
  }

  return Object.keys(data).length ? data : undefined;
}
