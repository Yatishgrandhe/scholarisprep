import type { AttemptWithQuestion } from "@/lib/dashboard/predictedScore";

export type TopicHeatmapCell = {
  topic: string;
  accuracy: number | null;
  attempted: number;
};

export function buildTopicHeatmap(
  attempts: AttemptWithQuestion[],
): TopicHeatmapCell[] {
  const byTopic = new Map<string, { correct: number; total: number }>();

  for (const attempt of attempts) {
    const topic = attempt.questions?.topic?.trim();
    if (!topic) continue;

    const bucket = byTopic.get(topic) ?? { correct: 0, total: 0 };
    bucket.total += 1;
    if (attempt.is_correct) bucket.correct += 1;
    byTopic.set(topic, bucket);
  }

  return [...byTopic.entries()]
    .map(([topic, stats]) => ({
      topic,
      accuracy:
        stats.total > 0
          ? Math.round((stats.correct / stats.total) * 100)
          : null,
      attempted: stats.total,
    }))
    .sort((a, b) => a.topic.localeCompare(b.topic));
}

export type HeatmapPillVariant = "none" | "good" | "mid" | "low";

export function heatmapPillVariant(
  accuracy: number | null,
): HeatmapPillVariant {
  if (accuracy === null) return "none";
  if (accuracy >= 80) return "good";
  if (accuracy >= 50) return "mid";
  return "low";
}
