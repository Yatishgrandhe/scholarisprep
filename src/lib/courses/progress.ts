export type LessonWithProgress = {
  id: string;
  order_index: number;
  completed: boolean;
};

export function computeProgressPercent(
  completedCount: number,
  totalLessons: number,
): number {
  if (totalLessons <= 0) return 0;
  return Math.round((completedCount / totalLessons) * 100);
}

export function findContinueLessonId(
  lessons: LessonWithProgress[],
): string | null {
  const sorted = [...lessons].sort((a, b) => a.order_index - b.order_index);
  const firstIncomplete = sorted.find((l) => !l.completed);
  if (firstIncomplete) return firstIncomplete.id;
  return sorted[0]?.id ?? null;
}
