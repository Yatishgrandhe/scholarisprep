import { isApOrIbExam } from "@/lib/apIbCatalog";
import type { ExamType } from "@/types/supabase";

/** Generic tutor entry — uses active subject when no course is specified. */
export const TUTOR_PATH = "/dashboard/tutor";

/** Per-course tutor hub (`courseId` is the `exam_type` slug). */
export function courseTutorPath(examType: ExamType | string): string {
  return `/dashboard/courses/${encodeURIComponent(String(examType))}/tutor`;
}

/** Deep link to Ask Scho / Course Tutor with course context. */
export function tutorHref(examType: ExamType | string): string {
  return courseTutorPath(examType);
}

/** True when pathname is any tutor surface (hub or per-course). */
export function isTutorRoute(pathname: string): boolean {
  if (pathname === TUTOR_PATH || pathname.startsWith(`${TUTOR_PATH}/`)) {
    return true;
  }
  return /\/dashboard\/courses\/[^/]+\/tutor(?:\/|$)/.test(pathname);
}

/** Sidebar / primary nav label. */
export function tutorNavLabel(examType: ExamType | string): string {
  return isApOrIbExam(examType) ? "Course Tutor" : "Ask Scho";
}

/** CTA buttons on dashboard, reports, onboarding. */
export function tutorCtaLabel(examType: ExamType | string): string {
  return isApOrIbExam(examType) ? "Ask AI" : "Ask Scho";
}

/** Compact label for mobile tab bar. */
export function tutorTabLabel(examType: ExamType | string): string {
  return isApOrIbExam(examType) ? "Tutor" : "Scho";
}
