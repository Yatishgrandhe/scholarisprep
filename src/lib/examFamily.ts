import type { ExamType } from "@/types/supabase";

/** True for Advanced Placement exam_type values (`AP_*`). */
export function isApExam(examType: string): boolean {
  return examType.startsWith("AP_");
}

/** True for IB Diploma Programme exam_type values (`IB_*`). */
export function isIbExam(examType: string): boolean {
  return examType.startsWith("IB_");
}

/** AP or IB — goal-only planner, Forms A–J, unit tests (not SAT Bluebook). */
export function isApOrIbExam(examType: string): boolean {
  return isApExam(examType) || isIbExam(examType);
}

/** Human-readable label for nav / planner copy. */
export function examFamilyLabel(examType: ExamType | string): string {
  if (examType === "ACT") return "ACT";
  if (examType === "SAT" || examType === "PSAT") return "SAT";
  if (isApExam(examType)) {
    return examType.replace(/^AP_/, "AP ").replace(/_/g, " ");
  }
  if (isIbExam(examType)) {
    return examType.replace(/^IB_/, "IB ").replace(/_/g, " ");
  }
  return String(examType).replace(/_/g, " ");
}

/** Full-length Forms A–J letter codes. */
export const FULL_EXAM_FORM_LETTERS = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
] as const;

export type FullExamFormLetter = (typeof FULL_EXAM_FORM_LETTERS)[number];
