/** localStorage key for full intro cooldown (ms timestamp). */
export const INTRO_STORAGE_KEY = "scholaris_intro_seen_at";

/** Show full intro again after this gap (2 hours). */
export const INTRO_COOLDOWN_MS = 2 * 60 * 60 * 1000;

export function shouldShowFullIntro(): boolean {
  try {
    const raw = localStorage.getItem(INTRO_STORAGE_KEY);
    if (!raw) return true;
    const ts = Number(raw);
    if (!Number.isFinite(ts)) return true;
    return Date.now() - ts >= INTRO_COOLDOWN_MS;
  } catch {
    return true;
  }
}

export function markIntroSeen(): void {
  try {
    localStorage.setItem(INTRO_STORAGE_KEY, String(Date.now()));
  } catch {
    // private mode / blocked storage — intro may replay; acceptable
  }
}
