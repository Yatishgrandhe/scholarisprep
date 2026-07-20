import type { SupabaseClient } from "@supabase/supabase-js";

export type College = {
  id: string;
  name: string;
  city: string | null;
  state: string | null;
  type: "public" | "private" | null;
  sat_low: number | null;
  sat_high: number | null;
  act_low: number | null;
  act_high: number | null;
  acceptance_rate: number | null;
  enrollment: number | null;
  setting: string | null;
  website: string | null;
};

const COLLEGE_COLUMNS =
  "id, name, city, state, type, sat_low, sat_high, act_low, act_high, acceptance_rate, enrollment, setting, website";

/**
 * Load the full college reference set (≈100+ rows) for client-side search and
 * fit scoring. The table is small and public-read, so one fetch is cheapest.
 */
export async function fetchAllColleges(
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  supabase: SupabaseClient<any, any, any>,
): Promise<College[]> {
  const { data, error } = await supabase
    .from("colleges")
    .select(COLLEGE_COLUMNS)
    .order("acceptance_rate", { ascending: true, nullsFirst: false });

  if (error) {
    console.error("fetchAllColleges failed:", error.message);
    return [];
  }
  return (data ?? []) as College[];
}
