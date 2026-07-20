"use client";

/**
 * Course tutor layouts previously synced subject here.
 *
 * Source of truth for course selection:
 *   `useSubjectStore.activeSubject` (persisted `scholaris_active_exam`)
 *
 * Sync owner: `ActiveExamScopeEffect` (in `DashboardShell`)
 *   - URL → store on `/dashboard/courses/[courseId]/…`
 *   - Store → `courseTutorPath(activeSubject)` when sidebar changes on tutor routes
 *   - Bare `/dashboard/tutor` → per-course hub
 *
 * Kept as a no-op mount point so layout imports stay stable.
 */
export function CourseTutorSubjectSync() {
  return null;
}
