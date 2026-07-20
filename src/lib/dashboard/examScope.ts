import { isExamType } from "@/lib/examTypes";
import type { ExamType } from "@/types/supabase";

/** Fired when the active exam/course context changes (subject switcher or URL). */
export const EXAM_SCOPE_CHANGE_EVENT = "scholaris:exam-scope-change";

/** Extract exam_type from `/dashboard/courses/[courseId]/…` paths. */
export function examTypeFromDashboardPath(pathname: string): ExamType | null {
  const match = pathname.match(/^\/dashboard\/courses\/([^/]+)/);
  if (!match?.[1]) return null;
  let raw: string;
  try {
    raw = decodeURIComponent(match[1]);
  } catch {
    raw = match[1];
  }
  return isExamType(raw) ? raw : null;
}

export function dispatchExamScopeChange(examType: ExamType): void {
  if (typeof window === "undefined") return;
  window.dispatchEvent(
    new CustomEvent(EXAM_SCOPE_CHANGE_EVENT, { detail: { examType } }),
  );
}
