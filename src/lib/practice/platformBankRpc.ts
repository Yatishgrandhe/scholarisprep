import type { SupabaseClient } from "@supabase/supabase-js";

type AnyClient = SupabaseClient;

type RpcClient = {
  rpc: (
    fn: string,
    args: Record<string, unknown>,
  ) => Promise<{ data: unknown; error: { message: string } | null }>;
};

function asRpc(supabase: AnyClient): RpcClient {
  // Keep `.rpc` bound — extracting it loses `this` and throws at runtime.
  return supabase as unknown as RpcClient;
}

export type PlatformUnitCount = {
  unit_code: string;
  question_count: number;
};

export type PlatformSkillCount = {
  section: string | null;
  skill_id: string | null;
  difficulty: string | null;
  total: number;
  challenged: number;
};

/**
 * Live DB still has legacy signatures until
 * `20260717193000_extend_platform_bank_rpcs_sat_act.sql` is applied:
 * - count_platform_questions(4)
 * - list_platform_question_ids(6, offset)
 * - question_counts_by_skill(1)
 *
 * Sending extended args before that yields PostgREST PGRST202; callers must
 * never treat that as "0 questions".
 */
export type PlatformBankRpcCapability = "unknown" | "legacy" | "extended";

let cachedCapability: PlatformBankRpcCapability = "unknown";

export function getCachedPlatformBankRpcCapability(): PlatformBankRpcCapability {
  return cachedCapability;
}

/** Test helper / forced override after a known deploy. */
export function setPlatformBankRpcCapabilityForTests(
  value: PlatformBankRpcCapability,
): void {
  cachedCapability = value;
}

function isMissingRpcSignatureError(message: string): boolean {
  return /PGRST202|Could not find the function|schema cache/i.test(message);
}

function sectionNeedsExtended(section?: string | null): boolean {
  return Boolean(section && section !== "all");
}

function skillIdsNeedExtended(skillIds?: string[] | null): boolean {
  return Boolean(skillIds && skillIds.length > 0);
}

/**
 * One-shot probe: call count with extended args. On PGRST202 → legacy.
 * Safe to call from bank Start / list paths before enabling section RPCs.
 */
export async function probePlatformBankRpcCapability(
  supabase: AnyClient,
): Promise<"legacy" | "extended"> {
  if (cachedCapability === "legacy" || cachedCapability === "extended") {
    return cachedCapability;
  }

  const { error } = await asRpc(supabase).rpc("count_platform_questions", {
    p_exam_type: "SAT",
    p_challenge_only: false,
    p_unit_code: null,
    p_difficulty: null,
    p_section: null,
    p_skill_ids: null,
  });

  if (!error) {
    cachedCapability = "extended";
    return "extended";
  }

  if (isMissingRpcSignatureError(error.message)) {
    cachedCapability = "legacy";
    return "legacy";
  }

  // Timeout / transient — do not cache; treat as legacy for this call.
  console.warn(
    "probePlatformBankRpcCapability inconclusive:",
    error.message,
  );
  return "legacy";
}

export async function countPlatformQuestionsRpc(
  supabase: AnyClient,
  options: {
    examType: string;
    challengeOnly?: boolean;
    unitCode?: string | null;
    difficulty?: "easy" | "medium" | "hard" | null;
    section?: string | null;
    skillIds?: string[] | null;
  },
): Promise<number> {
  const wantsExtended =
    sectionNeedsExtended(options.section) ||
    skillIdsNeedExtended(options.skillIds);

  if (wantsExtended && cachedCapability === "unknown") {
    await probePlatformBankRpcCapability(supabase);
  }

  const useExtended =
    cachedCapability === "extended" ||
    (cachedCapability === "unknown" && wantsExtended);

  if (useExtended) {
    const { data, error } = await asRpc(supabase).rpc(
      "count_platform_questions",
      {
        p_exam_type: options.examType,
        p_challenge_only: options.challengeOnly ?? false,
        p_unit_code: options.unitCode ?? null,
        p_difficulty: options.difficulty ?? null,
        p_section: options.section ?? null,
        p_skill_ids: options.skillIds ?? null,
      },
    );
    if (!error) {
      cachedCapability = "extended";
      return typeof data === "number" ? data : Number(data ?? 0) || 0;
    }
    if (isMissingRpcSignatureError(error.message)) {
      cachedCapability = "legacy";
      // Fall through — but section/skill filters are not expressible on legacy.
      if (wantsExtended) {
        console.warn(
          "count_platform_questions: extended RPC unavailable; section/skill args ignored",
        );
      }
    } else {
      console.error("count_platform_questions failed:", error.message);
      return 0;
    }
  }

  const { data, error } = await asRpc(supabase).rpc("count_platform_questions", {
    p_exam_type: options.examType,
    p_challenge_only: options.challengeOnly ?? false,
    p_unit_code: options.unitCode ?? null,
    p_difficulty: options.difficulty ?? null,
  });
  if (error) {
    console.error("count_platform_questions failed:", error.message);
    return 0;
  }
  return typeof data === "number" ? data : Number(data ?? 0) || 0;
}

/** One round-trip for all AP/IB unit cards on the bank root. */
export async function countPlatformQuestionsByUnitRpc(
  supabase: AnyClient,
  options: {
    examType: string;
    challengeOnly?: boolean;
    difficulty?: "easy" | "medium" | "hard" | null;
  },
): Promise<Record<string, number>> {
  const { data, error } = await asRpc(supabase).rpc(
    "count_platform_questions_by_unit",
    {
      p_exam_type: options.examType,
      p_challenge_only: options.challengeOnly ?? false,
      p_difficulty: options.difficulty ?? null,
    },
  );
  if (error) {
    console.error("count_platform_questions_by_unit failed:", error.message);
    return {};
  }
  const out: Record<string, number> = {};
  for (const row of (data as PlatformUnitCount[] | null) ?? []) {
    if (!row?.unit_code) continue;
    out[row.unit_code] = Number(row.question_count) || 0;
  }
  return out;
}

export type ListPlatformQuestionIdsResult = {
  ids: string[];
  /** False when PostgREST/RPC errored (vs a real empty match set). */
  ok: boolean;
};

/**
 * Paginated id list. Uses cursor (`afterId`) + section/skill filters when the
 * extended migration is live; otherwise offset-only legacy signature.
 * Live legacy args include `p_unit_code` — AP/IB unit Start uses that path.
 */
export async function listPlatformQuestionIdsRpc(
  supabase: AnyClient,
  options: {
    examType: string;
    challengeOnly?: boolean;
    unitCode?: string | null;
    difficulty?: "easy" | "medium" | "hard" | null;
    section?: string | null;
    skillIds?: string[] | null;
    limit?: number;
    offset?: number;
    afterId?: string | null;
  },
): Promise<string[]> {
  const result = await listPlatformQuestionIdsRpcDetailed(supabase, options);
  return result.ids;
}

/** Same as `listPlatformQuestionIdsRpc` but distinguishes RPC failure from empty. */
export async function listPlatformQuestionIdsRpcDetailed(
  supabase: AnyClient,
  options: {
    examType: string;
    challengeOnly?: boolean;
    unitCode?: string | null;
    difficulty?: "easy" | "medium" | "hard" | null;
    section?: string | null;
    skillIds?: string[] | null;
    limit?: number;
    offset?: number;
    afterId?: string | null;
  },
): Promise<ListPlatformQuestionIdsResult> {
  const wantsExtended =
    sectionNeedsExtended(options.section) ||
    skillIdsNeedExtended(options.skillIds) ||
    Boolean(options.afterId);

  if (wantsExtended && cachedCapability === "unknown") {
    await probePlatformBankRpcCapability(supabase);
  }

  const useExtended =
    cachedCapability === "extended" ||
    (cachedCapability === "unknown" && wantsExtended);

  if (useExtended) {
    const { data, error } = await asRpc(supabase).rpc(
      "list_platform_question_ids",
      {
        p_exam_type: options.examType,
        p_challenge_only: options.challengeOnly ?? false,
        p_unit_code: options.unitCode ?? null,
        p_difficulty: options.difficulty ?? null,
        p_limit: options.limit ?? 1000,
        p_offset: options.afterId ? 0 : (options.offset ?? 0),
        p_section: options.section ?? null,
        p_skill_ids: options.skillIds ?? null,
        p_after_id: options.afterId ?? null,
      },
    );
    if (!error) {
      cachedCapability = "extended";
      return { ids: mapIdRows(data), ok: true };
    }
    if (isMissingRpcSignatureError(error.message)) {
      cachedCapability = "legacy";
      if (wantsExtended) {
        console.warn(
          "list_platform_question_ids: extended RPC unavailable; using legacy offset list",
        );
      }
    } else {
      console.error("list_platform_question_ids failed:", error.message);
      return { ids: [], ok: false };
    }
  }

  const { data, error } = await asRpc(supabase).rpc("list_platform_question_ids", {
    p_exam_type: options.examType,
    p_challenge_only: options.challengeOnly ?? false,
    p_unit_code: options.unitCode ?? null,
    p_difficulty: options.difficulty ?? null,
    p_limit: options.limit ?? 1000,
    p_offset: options.offset ?? 0,
  });
  if (error) {
    console.error("list_platform_question_ids failed:", error.message);
    return { ids: [], ok: false };
  }
  return { ids: mapIdRows(data), ok: true };
}

function mapIdRows(data: unknown): string[] {
  const rows = (data as Array<{ id: string }> | null) ?? [];
  return rows
    .map((r) => r.id)
    .filter((id): id is string => typeof id === "string" && id.length > 0);
}

/**
 * Skill/unit aggregates. Extra filters are sent only when extended RPC is live;
 * otherwise callers filter in JS from the 1-arg result.
 */
export async function questionCountsBySkillRpc(
  supabase: AnyClient,
  options: {
    examType: string;
    challengeOnly?: boolean;
    difficulty?: "easy" | "medium" | "hard" | null;
    section?: string | null;
    unitCode?: string | null;
  },
): Promise<PlatformSkillCount[]> {
  const wantsExtended =
    options.challengeOnly === true ||
    Boolean(options.difficulty) ||
    sectionNeedsExtended(options.section) ||
    Boolean(options.unitCode);

  if (wantsExtended && cachedCapability === "unknown") {
    await probePlatformBankRpcCapability(supabase);
  }

  const useExtended =
    cachedCapability === "extended" ||
    (cachedCapability === "unknown" && wantsExtended);

  if (useExtended) {
    const { data, error } = await asRpc(supabase).rpc(
      "question_counts_by_skill",
      {
        p_exam_type: options.examType,
        p_challenge_only: options.challengeOnly ?? false,
        p_difficulty: options.difficulty ?? null,
        p_section: options.section ?? null,
        p_unit_code: options.unitCode ?? null,
      },
    );
    if (!error) {
      cachedCapability = "extended";
      return mapSkillRows(data);
    }
    if (isMissingRpcSignatureError(error.message)) {
      cachedCapability = "legacy";
    } else {
      console.error("question_counts_by_skill failed:", error.message);
      return [];
    }
  }

  const { data, error } = await asRpc(supabase).rpc("question_counts_by_skill", {
    p_exam_type: options.examType,
  });
  if (error) {
    console.error("question_counts_by_skill failed:", error.message);
    return [];
  }

  let rows = mapSkillRows(data);
  // Legacy RPC returns the full exam — apply client-side filters when present.
  if (options.unitCode) {
    rows = rows.filter((r) => r.skill_id === options.unitCode);
  }
  if (sectionNeedsExtended(options.section)) {
    const section = options.section!.toLowerCase();
    rows = rows.filter((r) => {
      const s = (r.section ?? "").toLowerCase();
      if (section === "math") return s.startsWith("math");
      if (section === "reading_writing" || section === "english" || section === "en") {
        return s === "reading_writing" || s === "english";
      }
      return s === section;
    });
  }
  if (options.difficulty) {
    rows = rows.filter(
      (r) => !r.difficulty || r.difficulty === options.difficulty,
    );
  }
  return rows;
}

function mapSkillRows(data: unknown): PlatformSkillCount[] {
  const rows = (data as Array<{
    section?: string | null;
    skill_id?: string | null;
    difficulty?: string | null;
    total?: number | string;
    challenged?: number | string;
  }> | null) ?? [];

  return rows.map((row) => ({
    section: row.section ?? null,
    skill_id: row.skill_id ?? null,
    difficulty: row.difficulty ?? null,
    total: Number(row.total) || 0,
    challenged: Number(row.challenged) || 0,
  }));
}
