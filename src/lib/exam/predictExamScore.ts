import type { Question } from "@/components/question/QuestionInterface";
import { isFrqQuestionType } from "@/lib/ai/remixPrompts";
import { isSelectionCorrect } from "@/lib/question/gridIn";
import { scoreBoundsForExam } from "@/lib/onboarding/examPrograms";

const DIFFICULTY_WEIGHT = {
  easy: 1.0,
  medium: 1.2,
  hard: 1.5,
  expert: 1.8,
} as const;

export type ScoredAttempt = {
  isCorrect: boolean;
  difficulty: keyof typeof DIFFICULTY_WEIGHT;
};

/**
 * Maps weighted accuracy to SAT scale: 40% → 800, 95% → 1550 (linear clamp).
 */
export function predictSatScoreFromAttempts(
  attempts: ScoredAttempt[],
): number {
  if (attempts.length === 0) return 800;

  let weightedCorrect = 0;
  let weightedTotal = 0;

  for (const attempt of attempts) {
    const weight = DIFFICULTY_WEIGHT[attempt.difficulty] ?? 1.0;
    weightedTotal += weight;
    if (attempt.isCorrect) weightedCorrect += weight;
  }

  const accuracy = weightedTotal > 0 ? weightedCorrect / weightedTotal : 0;
  const clamped = Math.max(0.4, Math.min(0.95, accuracy));
  const score = 800 + ((clamped - 0.4) / (0.95 - 0.4)) * (1550 - 800);
  return Math.round(score / 10) * 10;
}

/** Maps weighted section accuracy to the 200–800 SAT section scale. */
export function sectionScoreFromAttempts(attempts: ScoredAttempt[]): number {
  if (attempts.length === 0) return 400;
  let weightedCorrect = 0;
  let weightedTotal = 0;
  for (const attempt of attempts) {
    const weight = DIFFICULTY_WEIGHT[attempt.difficulty] ?? 1.0;
    weightedTotal += weight;
    if (attempt.isCorrect) weightedCorrect += weight;
  }
  const accuracy = weightedTotal > 0 ? weightedCorrect / weightedTotal : 0;
  const clamped = Math.max(0.3, Math.min(0.95, accuracy));
  const score = 200 + ((clamped - 0.3) / (0.95 - 0.3)) * (800 - 200);
  return Math.round(score / 10) * 10;
}

/**
 * Map accuracy onto the exam's native scale (AP 1–5, IB 1–7, ACT, etc.).
 * Used for AP/IB (and non-SAT) full exams — never the SAT 400–1600 predictor.
 */
export function predictScoreForExamScale(
  attempts: ScoredAttempt[],
  examType: string,
): number {
  const { min, max } = scoreBoundsForExam(examType);
  if (attempts.length === 0) return min;

  let weightedCorrect = 0;
  let weightedTotal = 0;
  for (const attempt of attempts) {
    const weight = DIFFICULTY_WEIGHT[attempt.difficulty] ?? 1.0;
    weightedTotal += weight;
    if (attempt.isCorrect) weightedCorrect += weight;
  }
  const accuracy = weightedTotal > 0 ? weightedCorrect / weightedTotal : 0;
  const score = min + accuracy * (max - min);
  return Math.round(Math.min(max, Math.max(min, score)));
}

/** Exam-aware predicted score: SAT Bluebook scale vs scoreBoundsForExam for AP/IB/ACT/etc. */
export function predictScoreFromAttempts(
  attempts: ScoredAttempt[],
  examType: string,
): number {
  if (examType === "SAT" || examType === "PSAT") {
    return predictSatScoreFromAttempts(attempts);
  }
  return predictScoreForExamScale(attempts, examType);
}

/**
 * Build scored attempts for prediction. FRQs are included only when a graded
 * correctness flag is supplied via `frqCorrectness`; otherwise they are skipped
 * (unscored FRQs must not count as wrong via isSelectionCorrect).
 */
export function attemptsFromQuestions(
  questions: Question[],
  answers: Record<string, string>,
  frqCorrectness?: Record<string, boolean | null>,
): ScoredAttempt[] {
  const out: ScoredAttempt[] = [];
  for (const q of questions) {
    const selected = answers[q.id];
    if (!selected) continue;

    if (isFrqQuestionType(q.question_type)) {
      const flagged = frqCorrectness?.[q.id];
      if (flagged == null) continue; // unscored — omit from prediction
      out.push({ isCorrect: flagged, difficulty: q.difficulty });
      continue;
    }

    out.push({
      isCorrect: isSelectionCorrect(q.options, selected),
      difficulty: q.difficulty,
    });
  }
  return out;
}
