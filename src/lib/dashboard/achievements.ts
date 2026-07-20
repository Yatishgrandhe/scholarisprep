import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";

type Client = SupabaseClient<Database>;

export type EarnedAchievement = {
  id: string;
  key: string;
  name: string;
  icon: string | null;
};

type AchievementRow = {
  id: string;
  key: string;
  name: string;
  icon: string | null;
};

/** App keys mapped to legacy + seeded DB keys (migrations may define either set). */
const ACHIEVEMENT_KEY_ALIASES: Record<string, string[]> = {
  first_practice: ["first_practice", "first_step"],
  perfect_practice: ["perfect_practice", "perfect_score"],
  first_exam: ["first_exam", "marathon_runner"],
  streak_3: ["streak_3", "on_a_roll"],
  streak_7: ["streak_7", "week_warrior"],
};

async function fetchAchievementByKey(
  supabase: Client,
  key: string,
): Promise<AchievementRow | null> {
  const candidates = ACHIEVEMENT_KEY_ALIASES[key] ?? [key];

  for (const candidate of candidates) {
    const { data } = await supabase
      .from("achievements")
      .select("id, key, name, icon")
      .eq("key", candidate)
      .maybeSingle();

    if (data) return data as AchievementRow;
  }

  return null;
}

async function userHasAchievement(
  supabase: Client,
  userId: string,
  achievementId: string,
): Promise<boolean> {
  const { data } = await supabase
    .from("user_achievements")
    .select("id")
    .eq("user_id", userId)
    .eq("achievement_id", achievementId)
    .maybeSingle();

  return Boolean(data);
}

/** Grants a single achievement by key if the user has not earned it yet. */
export async function grantAchievement(
  supabase: Client,
  userId: string,
  key: string,
): Promise<EarnedAchievement | null> {
  const achievement = await fetchAchievementByKey(supabase, key);
  if (!achievement) return null;

  if (await userHasAchievement(supabase, userId, achievement.id)) {
    return null;
  }

  const { error } = await supabase.from("user_achievements").insert({
    user_id: userId,
    achievement_id: achievement.id,
  });

  if (error) return null;

  return {
    id: achievement.id,
    key: achievement.key,
    name: achievement.name,
    icon: achievement.icon,
  };
}

export async function grantAchievements(
  supabase: Client,
  userId: string,
  keys: string[],
): Promise<EarnedAchievement[]> {
  const earned: EarnedAchievement[] = [];
  for (const key of keys) {
    const row = await grantAchievement(supabase, userId, key);
    if (row) earned.push(row);
  }
  return earned;
}

export async function checkAchievementsAfterPractice(
  supabase: Client,
  userId: string,
  stats: { correctCount: number; totalQuestions: number },
): Promise<EarnedAchievement[]> {
  const keys: string[] = [];

  const { count } = await supabase
    .from("practice_sessions")
    .select("id", { count: "exact", head: true })
    .eq("user_id", userId)
    .not("completed_at", "is", null);

  if (count === 1) {
    keys.push("first_practice");
  }

  if (
    stats.totalQuestions > 0 &&
    stats.correctCount === stats.totalQuestions
  ) {
    keys.push("perfect_practice");
  }

  return grantAchievements(supabase, userId, keys);
}

export async function checkAchievementsAfterExam(
  supabase: Client,
  userId: string,
  examMode: "full" | "section" | "simulator",
): Promise<EarnedAchievement[]> {
  if (examMode !== "full" && examMode !== "simulator") return [];

  const { count } = await supabase
    .from("exam_sessions")
    .select("id", { count: "exact", head: true })
    .eq("user_id", userId)
    .eq("session_type", "full_exam")
    .not("completed_at", "is", null);

  if (count !== 1) return [];

  return grantAchievements(supabase, userId, ["first_exam"]);
}

export async function checkAchievementsAfterStreak(
  supabase: Client,
  userId: string,
  currentStreak: number,
): Promise<EarnedAchievement[]> {
  const keys: string[] = [];
  if (currentStreak >= 7) keys.push("streak_7");
  else if (currentStreak >= 3) keys.push("streak_3");

  return grantAchievements(supabase, userId, keys);
}
