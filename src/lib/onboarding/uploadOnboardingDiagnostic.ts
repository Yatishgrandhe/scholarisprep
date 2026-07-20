import type { Question } from "@/components/question/QuestionInterface";
import type { SupabaseClient } from "@supabase/supabase-js";
import type { ExamType } from "@/types/supabase";
import type { Database } from "@/types/supabase";
import { DIAGNOSTIC_SEED_KEY } from "@/lib/onboarding/diagnostic";
import {
  checkedDiagnosticAnswers,
  type DiagnosticAnswer,
} from "@/lib/onboarding/diagnostic";

const ONBOARDING_POOL_KEY = "onboarding_diagnostic_v2";

export type UploadOnboardingDiagnosticInput = {
  sessionId: string;
  sessionSeed?: string;
  examType: ExamType;
  questions: Question[];
  answers: DiagnosticAnswer[];
  topicScores: Record<string, { correct: number; total: number }>;
  baselineScore: number;
  startedAt?: string;
};

function buildSectionScores(
  answers: DiagnosticAnswer[],
): Record<string, { correct: number; total: number }> {
  const scores: Record<string, { correct: number; total: number }> = {};
  for (const answer of answers) {
    const key =
      answer.section.toLowerCase().includes("math") ||
      answer.section === "math"
        ? "math"
        : "reading_writing";
    if (!scores[key]) scores[key] = { correct: 0, total: 0 };
    scores[key].total += 1;
    if (answer.isCorrect) scores[key].correct += 1;
  }
  return scores;
}

function weakAndStrongTopics(
  topicScores: Record<string, { correct: number; total: number }>,
): { weak: string[]; strong: string[] } {
  const weak: string[] = [];
  const strong: string[] = [];
  for (const [topic, stats] of Object.entries(topicScores)) {
    if (stats.total === 0) continue;
    const ratio = stats.correct / stats.total;
    if (ratio < 0.6) weak.push(topic);
    else if (ratio >= 0.8) strong.push(topic);
  }
  return { weak, strong };
}

export async function uploadOnboardingDiagnostic(
  supabase: SupabaseClient<Database>,
  userId: string,
  input: UploadOnboardingDiagnosticInput,
): Promise<{ error: string | null }> {
  const {
    sessionId,
    sessionSeed,
    examType,
    questions,
    answers,
    topicScores,
    baselineScore,
    startedAt,
  } = input;

  const questionIds = questions.map((q) => q.id);
  const scoredAnswers = checkedDiagnosticAnswers(answers);
  const correctCount = scoredAnswers.filter((a) => a.isCorrect).length;
  const now = new Date().toISOString();
  const { weak, strong } = weakAndStrongTopics(topicScores);
  const sectionScores = buildSectionScores(answers);

  const { error: sessionError } = await supabase.from("exam_sessions").upsert(
    {
      id: sessionId,
      user_id: userId,
      exam_type: examType,
      session_type: "diagnostic",
      status: "completed",
      pool_key: ONBOARDING_POOL_KEY,
      total_questions: questions.length,
      question_order: questionIds,
      current_question_index: questions.length,
      correct_count: correctCount,
      completed_at: now,
      started_at: startedAt ?? now,
      score_predicted: baselineScore,
      session_state: {
        source: "onboarding",
        session_seed: sessionSeed ?? `${DIAGNOSTIC_SEED_KEY}_${sessionId}`,
        pool_key: ONBOARDING_POOL_KEY,
      },
      metadata: {
        onboarding: true,
        uploaded_at: now,
      },
    },
    { onConflict: "id" },
  );

  if (sessionError) {
    return { error: sessionError.message };
  }

  const sessionItems = questions.map((question, position) => {
    const answer = scoredAnswers.find((a) => a.questionId === question.id);
    return {
      session_id: sessionId,
      question_id: question.id,
      position,
      selected_option_id: answer?.selectedOption ?? null,
      is_correct: answer?.isCorrect ?? null,
      answered_at: answer ? now : null,
      time_spent_seconds: answer?.timeSpentSeconds ?? 0,
      flagged: false,
    };
  });

  const { error: itemsError } = await supabase
    .from("diagnostic_session_items")
    .upsert(sessionItems, { onConflict: "session_id,question_id" });

  if (itemsError) {
    return { error: itemsError.message };
  }

  if (scoredAnswers.length > 0) {
    const attempts = scoredAnswers.map((answer) => ({
      user_id: userId,
      question_id: answer.questionId,
      session_id: sessionId,
      selected_option_id: answer.selectedOption,
      is_correct: answer.isCorrect,
      exam_type: examType,
      subject_section: answer.section,
      time_spent_seconds: answer.timeSpentSeconds ?? 0,
      hint_used: answer.hintUsed ?? false,
      ai_explanation_requested: false,
    }));

    const { error: attemptsError } = await supabase
      .from("question_attempts")
      .insert(attempts);

    if (attemptsError) {
      return { error: attemptsError.message };
    }
  }

  const { error: subjectError } = await supabase
    .from("subject_diagnostic_results")
    .upsert(
      {
        user_id: userId,
        exam_type: examType,
        session_id: sessionId,
        topic_scores: topicScores,
        section_scores: sectionScores,
        overall_score: baselineScore,
        predicted_score: baselineScore,
        recommended_focus: weak,
        weak_topics: weak,
        strong_topics: strong,
        taken_at: now,
      },
      { onConflict: "user_id,exam_type" },
    );

  if (subjectError) {
    return { error: subjectError.message };
  }

  return { error: null };
}
