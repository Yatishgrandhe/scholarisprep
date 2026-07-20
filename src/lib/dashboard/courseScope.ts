import type { ExamType } from "@/types/supabase";

/**
 * Scholaris course identity for study plans / bookmarks / attempts.
 * Same as exam_type enum (SAT, AP_ENVIRONMENTAL_SCIENCE, …) — not the
 * lessons `courses` UUID catalog (SAT/ACT packs only).
 */
export function courseIdForExam(examType: ExamType): ExamType {
  return examType;
}
