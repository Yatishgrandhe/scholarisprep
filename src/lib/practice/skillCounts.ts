import type { SupabaseClient } from "@supabase/supabase-js";
import { questionCountsBySkillRpc } from "@/lib/practice/platformBankRpc";

export type SkillCount = { total: number; challenged: number };

export type SectionCounts = {
  /** skill_id → counts */
  bySkill: Record<string, SkillCount>;
  total: number;
  challenged: number;
};

export type RushCounts = {
  reading_writing: SectionCounts;
  math: SectionCounts;
};

const EMPTY = (): SectionCounts => ({ bySkill: {}, total: 0, challenged: 0 });

/**
 * Live per-skill question counts for the Question Rush wizard, via the
 * `question_counts_by_skill` RPC. Math is aggregated across the math/math_calc/
 * math_no_calc section variants.
 */
export async function fetchRushCounts(
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  supabase: SupabaseClient<any, any, any>,
  examType: string,
): Promise<RushCounts> {
  const result: RushCounts = {
    reading_writing: EMPTY(),
    math: EMPTY(),
  };

  const data = await questionCountsBySkillRpc(supabase, { examType });

  for (const row of data) {
    if (!row.skill_id || !row.section) continue;
    const bucket = row.section.startsWith("math")
      ? result.math
      : row.section === "reading_writing"
        ? result.reading_writing
        : null;
    if (!bucket) continue;

    const prev = bucket.bySkill[row.skill_id] ?? { total: 0, challenged: 0 };
    bucket.bySkill[row.skill_id] = {
      total: prev.total + Number(row.total),
      challenged: prev.challenged + Number(row.challenged),
    };
    bucket.total += Number(row.total);
    bucket.challenged += Number(row.challenged);
  }

  return result;
}
