/**
 * Client-side recent course list for the Course Tutor hub picker.
 * Stored in localStorage only — never sent to the server.
 */

const STORAGE_KEY = "scholaris_tutor_recent_courses";
const MAX_RECENT = 6;

export function readRecentCourseIds(): string[] {
  if (typeof window === "undefined") return [];
  try {
    const raw = window.localStorage.getItem(STORAGE_KEY);
    if (!raw) return [];
    const parsed: unknown = JSON.parse(raw);
    if (!Array.isArray(parsed)) return [];
    return parsed
      .filter((id): id is string => typeof id === "string" && id.length > 0)
      .slice(0, MAX_RECENT);
  } catch {
    return [];
  }
}

export function pushRecentCourseId(examType: string): string[] {
  if (typeof window === "undefined") return [];
  const next = [
    examType,
    ...readRecentCourseIds().filter((id) => id !== examType),
  ].slice(0, MAX_RECENT);
  try {
    window.localStorage.setItem(STORAGE_KEY, JSON.stringify(next));
  } catch {
    /* ignore quota / private mode */
  }
  return next;
}
