/**
 * Free Studying deep-link destination parsing.
 * Contract uses `?dest=`; landing historically used `?mode=` — accept both.
 */

export type FreeStudyDest = "tutor" | "pdf" | "voice" | "notes";

const DEST_SET = new Set<FreeStudyDest>(["tutor", "pdf", "voice", "notes"]);

export function parseFreeStudyDest(
  value: string | null | undefined,
): FreeStudyDest | null {
  if (!value || !DEST_SET.has(value as FreeStudyDest)) return null;
  return value as FreeStudyDest;
}

/** Prefer `dest`, fall back to legacy `mode`. */
export function resolveFreeStudyDest(
  dest: string | null | undefined,
  mode: string | null | undefined,
): FreeStudyDest | null {
  return parseFreeStudyDest(dest) ?? parseFreeStudyDest(mode);
}
