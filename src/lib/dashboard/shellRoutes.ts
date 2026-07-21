/** Practice sub-routes that keep the dashboard sidebar and shell chrome. */
const PRACTICE_SHELL_SEGMENTS = new Set(["bank", "challenge"]);

/** Strip query/hash and trailing slash so route checks stay stable. */
export function normalizeDashboardPath(pathname: string): string {
  if (!pathname) return "";
  const bare = pathname.split(/[?#]/, 1)[0] ?? "";
  if (bare.length > 1 && bare.endsWith("/")) return bare.slice(0, -1);
  return bare;
}

function pathMatches(pathname: string, base: string): boolean {
  const path = normalizeDashboardPath(pathname);
  return path === base || path.startsWith(`${base}/`);
}

/**
 * True when `/dashboard/practice/:segment` is an active question session
 * (fullscreen — hide sidebar), not a static hub page like bank or challenge.
 */
export function isPracticeSessionRoute(pathname: string): boolean {
  const path = normalizeDashboardPath(pathname);
  const match = path.match(/^\/dashboard\/practice\/([^/]+)$/);
  if (!match) return false;
  return !PRACTICE_SHELL_SEGMENTS.has(match[1]!);
}

/** Standalone whiteboard — full-bleed canvas (no sidebar / top bar / tab bar). */
export function isWhiteboardFullscreenRoute(pathname: string): boolean {
  return pathMatches(pathname, "/dashboard/whiteboard");
}

/**
 * Free Studying hub — only whiteboard routes get immersive fullscreen treatment.
 * All other free-study routes show the primary dashboard sidebar.
 */
export function isFreeStudyFullscreenRoute(pathname: string): boolean {
  const path = normalizeDashboardPath(pathname);
  if (path === "/dashboard/whiteboard") return true;
  if (path.startsWith("/dashboard/whiteboard/")) return true;
  const queryIndex = pathname.indexOf("?");
  if (queryIndex !== -1) {
    const base = pathname.slice(0, queryIndex);
    const query = pathname.slice(queryIndex + 1);
    if (
      (base === "/dashboard/free-study" || base === "/dashboard/free-study/") &&
      /(?:^|&)dest=whiteboard(?:&|$)/.test(query)
    ) {
      return true;
    }
  }
  return false;
}

/**
 * STEM Labs catalog + `/dashboard/labs/[simId]` — immersive lab shell.
 * Product chrome lives in `LabsShell` (own sidebar).
 */
export function isLabsFullscreenRoute(pathname: string): boolean {
  return pathMatches(pathname, "/dashboard/labs");
}

/** Routes that use the minimal exam layout (no primary sidebar / top bar). */
export function isExamFullscreenRoute(pathname: string): boolean {
  if (!pathname) return false;
  if (isWhiteboardFullscreenRoute(pathname)) return true;
  if (isFreeStudyFullscreenRoute(pathname)) return true;
  if (isLabsFullscreenRoute(pathname)) return true;
  if (isPracticeSessionRoute(pathname)) return true;
  const path = normalizeDashboardPath(pathname);
  if (path.startsWith("/dashboard/question-rush/session")) return true;
  if (path.startsWith("/dashboard/exams/") && path !== "/dashboard/exams") {
    return true;
  }
  return false;
}
