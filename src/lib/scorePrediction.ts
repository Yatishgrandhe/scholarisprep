export interface TopicScore {
  correct: number;
  total: number;
  difficulty_weights: { easy: number; medium: number; hard: number };
}

export interface SessionResult {
  correct: number;
  total: number;
  difficulty: string;
}

export interface SATPrediction {
  predicted: number;
  math: number;
  readingWriting: number;
  confidence: number;
}

function satScale(accuracy: number): number {
  if (accuracy < 0.4) return 400 + accuracy * 1000;
  if (accuracy < 0.7) return 800 + (accuracy - 0.4) * 1667;
  if (accuracy < 0.9) return 1300 + (accuracy - 0.7) * 1500;
  return Math.min(1600, 1600 - (1 - accuracy) * 500);
}

const EMPTY_PREDICTION: SATPrediction = {
  predicted: 0,
  math: 0,
  readingWriting: 0,
  confidence: 0,
};

export function predictSATScore(
  recentSessions: SessionResult[],
  _topicScores: Record<string, TopicScore> = {},
): SATPrediction {
  if (recentSessions.length === 0) {
    return EMPTY_PREDICTION;
  }

  if (recentSessions.length < 3) {
    return { predicted: 1000, math: 500, readingWriting: 500, confidence: 0.3 };
  }

  const weights = recentSessions.map((_, i) =>
    Math.pow(0.85, recentSessions.length - 1 - i),
  );
  const totalWeight = weights.reduce((a, b) => a + b, 0);

  const weightedAccuracy =
    recentSessions.reduce((sum, session, i) => {
      const accuracy =
        session.total > 0 ? session.correct / session.total : 0;
      return sum + accuracy * weights[i];
    }, 0) / totalWeight;

  const difficultyBonus =
    recentSessions.reduce((sum, session) => {
      if (session.difficulty === "hard") return sum + 0.05;
      if (session.difficulty === "medium") return sum + 0.02;
      return sum;
    }, 0) / recentSessions.length;

  const adjustedAccuracy = Math.min(1, weightedAccuracy + difficultyBonus);
  const total = Math.round(satScale(adjustedAccuracy) / 10) * 10;
  const math = Math.round(total / 2 / 10) * 10;
  const readingWriting = total - math;
  const confidence = Math.min(0.95, 0.5 + recentSessions.length * 0.05);

  return { predicted: total, math, readingWriting, confidence };
}
