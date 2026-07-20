/**
 * Per-course Scho preload blocks for AP/IB (and fallbacks for other exams).
 * Delegates to `src/lib/courseTutorContext.server.ts` (src/data/tutor-preload on disk).
 */
import type { SubjectConfig } from "@/lib/subjectContext";
import {
  loadTutorPreloadJson,
  resolveCoursePreloadBlock,
} from "@/lib/courseTutorContext.server";

export type { TutorPreloadJson } from "@/lib/courseTutorContext";

export { loadTutorPreloadJson };

/**
 * Resolve a course-specific tutor preload string.
 * Safe to call from Node API routes.
 */
export async function resolveCoursePreload(
  examType: string,
  subjectConfig?: SubjectConfig | null,
): Promise<string> {
  return resolveCoursePreloadBlock(examType, subjectConfig);
}
