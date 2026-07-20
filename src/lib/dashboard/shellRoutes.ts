/** Practice sub-routes that keep the dashboard sidebar and shell chrome. */
const PRACTICE_SHELL_SEGMENTS = new Set(["bank", "challenge"]);

/**
 * True when `/dashboard/practice/:segment` is an active question session
 * (fullscreen — hide sidebar), not a static hub page like bank or challenge.
 */
export function isPracticeSessionRoute(pathname: string): boolean {
  const match = pathname.match(/^\/dashboard\/practice\/([^/]+)$/);
  if (!match) return false;
  return !PRACTICE_SHELL_SEGMENTS.has(match[1]!);
}

/** Routes that use the minimal exam layout (no sidebar / top bar). */
export function isExamFullscreenRoute(pathname: string): boolean {
  if (!pathname) return false;
  if (isPracticeSessionRoute(pathname)) return true;
  if (pathname.startsWith("/dashboard/question-rush/session")) return true;
  if (pathname.startsWith("/dashboard/exams/") && pathname !== "/dashboard/exams") {
    return true;
  }
  return false;
}
