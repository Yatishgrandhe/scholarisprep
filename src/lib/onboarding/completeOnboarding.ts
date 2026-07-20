import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";

/**
 * Marks onboarding as complete so the user can reach the dashboard
 * immediately. The diagnostic is intentionally NOT part of onboarding —
 * it lives at /dashboard/diagnostic as an optional score predictor.
 */
export async function completeOnboarding(
  supabase: SupabaseClient<Database>,
  userId: string,
): Promise<{ error: string | null }> {
  const { error } = await supabase
    .from("profiles")
    .update({ onboarding_completed: true })
    .eq("id", userId);

  return { error: error?.message ?? null };
}
