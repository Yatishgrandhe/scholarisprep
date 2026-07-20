import type { SupabaseClient } from "@supabase/supabase-js";
import { type PremiumFeature } from "@/lib/subscriptionGates";
import type { Database } from "@/types/supabase";

type Client = SupabaseClient<Database>;

export async function userHasPremiumFeature(
  _supabase: Client,
  _userId: string,
  _feature: PremiumFeature,
): Promise<boolean> {
  // Every feature is free and unlocked for all signed-in users.
  return true;
}
