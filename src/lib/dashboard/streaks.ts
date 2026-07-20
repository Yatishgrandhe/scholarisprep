import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";

type Client = SupabaseClient<Database>;

export type StreakUpdateResult = {
  currentStreak: number;
  isNewRecord: boolean;
};

function todayUtcDateString(): string {
  return new Date().toISOString().slice(0, 10);
}

function yesterdayUtcDateString(): string {
  const d = new Date();
  d.setUTCDate(d.getUTCDate() - 1);
  return d.toISOString().slice(0, 10);
}

/** Call after a completed practice session to update streak. */
export async function recordActivityStreak(
  supabase: Client,
  userId: string,
): Promise<StreakUpdateResult> {
  const today = todayUtcDateString();
  const yesterday = yesterdayUtcDateString();

  const { data: row } = await supabase
    .from("user_streaks")
    .select("current_streak, longest_streak, last_activity_date")
    .eq("user_id", userId)
    .maybeSingle();

  if (!row) {
    await supabase.from("user_streaks").insert({
      user_id: userId,
      current_streak: 1,
      longest_streak: 1,
      last_activity_date: today,
    });
    return { currentStreak: 1, isNewRecord: true };
  }

  const current = row.current_streak ?? 0;
  const longestPrior = row.longest_streak ?? 0;

  if (row.last_activity_date === today) {
    return { currentStreak: current, isNewRecord: false };
  }

  const nextStreak = row.last_activity_date === yesterday ? current + 1 : 1;
  const longest = Math.max(longestPrior, nextStreak);
  const isNewRecord = nextStreak > longestPrior;

  await supabase
    .from("user_streaks")
    .update({
      current_streak: nextStreak,
      longest_streak: longest,
      last_activity_date: today,
    })
    .eq("user_id", userId);

  return { currentStreak: nextStreak, isNewRecord };
}
