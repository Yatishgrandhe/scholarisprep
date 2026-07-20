export type SessionChartPoint = {
  date: string;
  label: string;
  accuracy: number;
};

export type SessionAccuracySource = {
  completed_at: string | null;
  started_at: string | null;
  correct_count: number | null;
  total_questions: number | null;
};

export function buildSessionAccuracyChart(
  sessions: SessionAccuracySource[],
  limit = 10,
): SessionChartPoint[] {
  return sessions
    .filter((s) => s.total_questions && s.total_questions > 0)
    .slice(0, limit)
    .reverse()
    .map((s) => {
      const ts = s.completed_at ?? s.started_at ?? new Date().toISOString();
      const date = new Date(ts);
      const accuracy = Math.round(
        ((s.correct_count ?? 0) / (s.total_questions ?? 1)) * 100,
      );
      return {
        date: ts,
        label: date.toLocaleDateString("en-US", {
          month: "short",
          day: "numeric",
        }),
        accuracy,
      };
    });
}
