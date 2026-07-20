export type StreakDay = {
  date: string;
  label: string;
  practiced: boolean;
};

function formatUtcDate(d: Date): string {
  return d.toISOString().slice(0, 10);
}

function shortDayLabel(d: Date): string {
  return d.toLocaleDateString("en-US", { weekday: "short" });
}

/** Last 7 calendar days (oldest → newest) with practice activity from attempt dates. */
export function buildLastSevenDays(
  activityDates: string[],
): StreakDay[] {
  const active = new Set(activityDates);
  const days: StreakDay[] = [];
  const today = new Date();

  for (let offset = 6; offset >= 0; offset -= 1) {
    const d = new Date(today);
    d.setUTCDate(today.getUTCDate() - offset);
    const date = formatUtcDate(d);
    days.push({
      date,
      label: shortDayLabel(d),
      practiced: active.has(date),
    });
  }

  return days;
}

export function collectActivityDates(
  attemptTimestamps: (string | null)[],
): string[] {
  const dates = new Set<string>();
  for (const ts of attemptTimestamps) {
    if (ts) dates.add(ts.slice(0, 10));
  }
  return [...dates];
}
