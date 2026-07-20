import type { PracticeFilters } from "@/lib/practice/queries";

/** True when the user narrowed the pool beyond section / exam context. */
export function hasRestrictivePracticeFilters(filters: PracticeFilters): boolean {
  if (filters.topic !== "all") return true;
  if (filters.subtype) return true;
  if (filters.unit_code) return true;
  if (filters.difficulty !== "all") return true;
  if (filters.skillIds?.length) return true;
  if (filters.completed && filters.completed !== "all") return true;
  if (filters.result && filters.result !== "all") return true;
  if (filters.savedOnly) return true;
  if (filters.timeSpent && filters.timeSpent !== "all") return true;
  if (filters.questionSet && filters.questionSet !== "all") return true;
  return false;
}
