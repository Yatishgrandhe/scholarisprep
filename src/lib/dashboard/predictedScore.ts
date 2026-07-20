import { predictSATScore, type SessionResult } from "@/lib/scorePrediction";

const DIFFICULTY_WEIGHT: Record<string, number> = {
  easy: 1,
  medium: 1.15,
  hard: 1.35,
  expert: 1.5,
};

export type AttemptWithQuestion = {
  is_correct: boolean | null;
  session_id: string | null;
  created_at: string | null;
  questions: {
    difficulty: string | null;
    topic: string | null;
  } | null;
};

export function attemptsToSessionResults(
  attempts: AttemptWithQuestion[],
  maxSessions = 10,
): SessionResult[] {
  const grouped = new Map<
    string,
    { correct: number; total: number; difficultySum: number; count: number }
  >();

  for (const attempt of attempts) {
    const key =
      attempt.session_id ??
      (attempt.created_at ? attempt.created_at.slice(0, 10) : "unknown");
    const bucket = grouped.get(key) ?? {
      correct: 0,
      total: 0,
      difficultySum: 0,
      count: 0,
    };
    bucket.total += 1;
    if (attempt.is_correct) bucket.correct += 1;
    const diff = attempt.questions?.difficulty ?? "medium";
    bucket.difficultySum += DIFFICULTY_WEIGHT[diff] ?? 1.15;
    bucket.count += 1;
    grouped.set(key, bucket);
  }

  return [...grouped.entries()]
    .map(([, bucket]) => {
      const avgWeight = bucket.difficultySum / Math.max(bucket.count, 1);
      let difficulty = "medium";
      if (avgWeight >= 1.35) difficulty = "hard";
      else if (avgWeight < 1.05) difficulty = "easy";

      return {
        correct: bucket.correct,
        total: bucket.total,
        difficulty,
      };
    })
    .slice(0, maxSessions);
}

export function predictFromAttempts(attempts: AttemptWithQuestion[]) {
  const sessions = attemptsToSessionResults(attempts, 10);
  return predictSATScore(sessions);
}

export function scoreRingPercent(
  predicted: number,
  target: number,
): number {
  const range = target - 400;
  if (range <= 0) return 0;
  return Math.min(100, Math.max(0, ((predicted - 400) / range) * 100));
}
