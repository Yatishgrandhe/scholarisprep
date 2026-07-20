const STORAGE_KEY = "scholaris:new-achievement-ids";

export function markAchievementNewlyEarned(achievementId: string): void {
  if (typeof window === "undefined") return;
  const ids = getNewlyEarnedAchievementIds();
  if (!ids.includes(achievementId)) {
    ids.push(achievementId);
    sessionStorage.setItem(STORAGE_KEY, JSON.stringify(ids));
  }
}

export function getNewlyEarnedAchievementIds(): string[] {
  if (typeof window === "undefined") return [];
  try {
    const raw = sessionStorage.getItem(STORAGE_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw) as unknown;
    return Array.isArray(parsed)
      ? parsed.filter((id): id is string => typeof id === "string")
      : [];
  } catch {
    return [];
  }
}

export function clearNewlyEarnedAchievementId(achievementId: string): void {
  if (typeof window === "undefined") return;
  const next = getNewlyEarnedAchievementIds().filter((id) => id !== achievementId);
  if (next.length === 0) {
    sessionStorage.removeItem(STORAGE_KEY);
  } else {
    sessionStorage.setItem(STORAGE_KEY, JSON.stringify(next));
  }
}
