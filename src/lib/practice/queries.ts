import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";
import { fetchFullExamQuestionSet } from "@/lib/exam/assembleQuestions";
import {
  DIGITAL_SAT_MODULES,
  DIGITAL_SAT_TOTAL_QUESTIONS,
} from "@/lib/exam/digitalSat";
import { mapDbQuestion, safeMapDbQuestion, shuffle } from "@/lib/practice/mapQuestion";
import {
  QUESTION_LOAD_SELECT,
  QUESTION_ID_SELECT,
  QUESTION_DIFFICULTY_SELECT,
  asQuestionRows,
} from "@/lib/question/schema";
import {
  filterPlayableQuestionsWithFallback,
  isChallengedProblem,
  sortQuestionsByFetchQuality,
} from "@/lib/question/questionQuality";
import { normalizeQuestionDifficulty } from "@/lib/question/difficulty";
import type { Question } from "@/components/question/QuestionInterface";
import {
  domainTopicsForSkillIds,
  isKnownSkillId,
} from "@/lib/dashboard/bankTaxonomy";
import {
  countPlatformQuestionsRpc,
  getCachedPlatformBankRpcCapability,
  listPlatformQuestionIdsRpcDetailed,
  probePlatformBankRpcCapability,
} from "@/lib/practice/platformBankRpc";

type Client = SupabaseClient<Database>;

export type PracticeFilters = {
  section: "all" | "reading_writing" | "math";
  topic: string;
  /** Skill label or code — filters skill_id / subtopic / math_skill_code. */
  subtype?: string;
  difficulty: "all" | "easy" | "medium" | "hard";
  /** Multi-select difficulty pools (Question Rush). Overrides `difficulty`. */
  difficulties?: Array<"easy" | "medium" | "hard">;
  /** Include DSAT challenged problems (additive pool). */
  includeChallenge?: boolean;
  /** Drop challenged problems from the result (e.g. Hard without Challenge). */
  excludeChallenge?: boolean;
  /**
   * Only DSAT Challenge-tier items. These live behind the `challenge_only`
   * column and are exclusive to the Challenge Questions page — every other
   * pool excludes them automatically.
   */
  challengeOnly?: boolean;
  examType?: Database["public"]["Enums"]["exam_type"];
  skillIds?: string[];
  /** AP/IB course unit code (source_metadata.unit_code / skill_id). */
  unit_code?: string;
  completed?: "all" | "done" | "not_done";
  result?: "all" | "correct" | "incorrect";
  savedOnly?: boolean;
  timeSpent?: "all" | "under_30" | "30_60" | "over_60";
  questionSet?: "all" | "official" | "platform";
};

/** Canonical section param for platform bank RPCs (indexed IN, not ilike). */
function platformRpcSkillIds(filters: PracticeFilters): string[] | null {
  const ids = [...(filters.skillIds ?? [])];
  if (
    filters.subtype &&
    isKnownSkillId(filters.subtype) &&
    !ids.includes(filters.subtype)
  ) {
    ids.push(filters.subtype);
  }
  return ids.length ? ids : null;
}

/** Legacy default for explicit-count modes (rush hub drill, etc.). */
export const PRACTICE_QUESTION_COUNT = 10;
/** First batch loaded before navigating to a bank practice session. */
export const PRACTICE_INITIAL_LOAD_COUNT = 10;
/** Background batch size when hydrating remaining session questions. */
export const PRACTICE_HYDRATE_BATCH_SIZE = 100;
const PRACTICE_FETCH_OVERFETCH = 3;
const PRACTICE_PAGE_SIZE = 500;
const PRACTICE_ID_PAGE_SIZE = 1000;
const PRACTICE_MAX_PAGES = 20;
/**
 * Practice sessions only need a working pool, not every matching bank id.
 * Capping avoids multi-second ordered scans of 4k–6k English/Math rows.
 */
const PRACTICE_SESSION_POOL_CAP = 400;
/**
 * Max id batches to probe while hydrating the first playable questions.
 * Without this, a pool of unmappable rows walks the entire capped set
 * (40+ heavy round-trips) and leaves Start on the spinner until client timeout.
 */
const PRACTICE_INITIAL_PROBE_BATCHES = 5;
const FETCH_BY_IDS_CHUNK = 100;
/**
 * Client-side ceiling for Start / rush session creation. Authenticated role
 * statement_timeout is 8s per query; keep this above one slow round-trip but
 * well under the old 25s hang.
 */
export const PRACTICE_START_TIMEOUT_MS = 12_000;

/** Reject if `promise` does not settle within `ms`. */
export function withPracticeTimeout<T>(
  promise: Promise<T>,
  ms: number = PRACTICE_START_TIMEOUT_MS,
  message = "Loading questions timed out",
): Promise<T> {
  return new Promise<T>((resolve, reject) => {
    const timer = setTimeout(() => reject(new Error(message)), ms);
    promise.then(
      (value) => {
        clearTimeout(timer);
        resolve(value);
      },
      (err: unknown) => {
        clearTimeout(timer);
        reject(err);
      },
    );
  });
}

/** Quote filter values for PostgREST `.or()` — commas in values must be wrapped in double quotes. */
function quotePostgrestValue(value: string): string {
  if (/[,.()]/.test(value)) {
    return `"${value.replace(/"/g, '\\"')}"`;
  }
  return value;
}

export type PracticeLoadProgress = {
  phase: "scanning" | "loading";
  loaded: number;
  total?: number;
};

type PaginatedQuery = {
  range: (
    from: number,
    to: number,
  ) => PromiseLike<{ data: unknown; error: { message: string } | null }>;
};

export type FetchPracticeOptions = {
  /** When false, preserve DB / quality sort order. Default true for mixed difficulty. */
  shuffle?: boolean;
};

export type PracticeBootstrapEmptyReason =
  | "db_zero"
  | "query_error"
  | "quality_filter"
  | "hydrate_failed"
  | "user_filter";

export type PracticeBootstrapResult = {
  questionIds: string[];
  initialQuestions: Question[];
  emptyReason?: PracticeBootstrapEmptyReason;
  dbMatchCount?: number;
  scannedCount?: number;
  playableCount?: number;
};

function needsUserPostFilter(filters: PracticeFilters): boolean {
  return (
    filters.completed !== "all" ||
    filters.result !== "all" ||
    Boolean(filters.savedOnly) ||
    (filters.timeSpent !== undefined && filters.timeSpent !== "all")
  );
}

type UserFilterContext = {
  attempted: Set<string>;
  correct: Set<string>;
  incorrect: Set<string>;
  timeMatch: Set<string>;
  savedIds: Set<string>;
};

async function loadUserFilterContext(
  supabase: Client,
  userId: string,
  examType: Database["public"]["Enums"]["exam_type"],
  filters: PracticeFilters,
): Promise<UserFilterContext> {
  const attempted = new Set<string>();
  const correct = new Set<string>();
  const incorrect = new Set<string>();
  const timeMatch = new Set<string>();
  const savedIds = new Set<string>();

  const needsAttempts =
    filters.completed !== "all" ||
    filters.result !== "all" ||
    (filters.timeSpent && filters.timeSpent !== "all");

  if (needsAttempts) {
    const { data: attempts } = await supabase
      .from("question_attempts")
      .select("question_id, is_correct, time_spent_seconds")
      .eq("user_id", userId)
      .eq("exam_type", examType);

    for (const row of attempts ?? []) {
      if (!row.question_id) continue;
      attempted.add(row.question_id);
      if (row.is_correct) correct.add(row.question_id);
      else incorrect.add(row.question_id);
      const secs = row.time_spent_seconds ?? 0;
      if (filters.timeSpent === "under_30" && secs > 0 && secs < 30) {
        timeMatch.add(row.question_id);
      } else if (filters.timeSpent === "30_60" && secs >= 30 && secs <= 60) {
        timeMatch.add(row.question_id);
      } else if (filters.timeSpent === "over_60" && secs > 60) {
        timeMatch.add(row.question_id);
      }
    }
  }

  if (filters.savedOnly) {
    const { data: saved } = await supabase
      .from("saved_questions")
      .select("question_id")
      .eq("user_id", userId)
      .eq("course_id", examType);
    for (const row of saved ?? []) {
      if (row.question_id) savedIds.add(row.question_id);
    }
  }

  return { attempted, correct, incorrect, timeMatch, savedIds };
}

function applyUserFiltersToIds(
  ids: string[],
  filters: PracticeFilters,
  ctx: UserFilterContext,
): string[] {
  let result = ids;

  if (filters.timeSpent && filters.timeSpent !== "all") {
    result = result.filter((id) => ctx.timeMatch.has(id));
  }
  if (filters.completed === "done") {
    result = result.filter((id) => ctx.attempted.has(id));
  } else if (filters.completed === "not_done") {
    result = result.filter((id) => !ctx.attempted.has(id));
  }
  if (filters.result === "correct") {
    result = result.filter((id) => ctx.correct.has(id));
  } else if (filters.result === "incorrect") {
    result = result.filter((id) => ctx.incorrect.has(id));
  }
  if (filters.savedOnly) {
    result = result.filter((id) => ctx.savedIds.has(id));
  }

  return result;
}

function applyUserFiltersToQuestions(
  questions: Question[],
  filters: PracticeFilters,
  ctx: UserFilterContext,
): Question[] {
  return applyUserFiltersToIds(
    questions.map((q) => q.id),
    filters,
    ctx,
  ).map((id) => questions.find((q) => q.id === id)).filter((q): q is Question => Boolean(q));
}

function buildFilteredQuestionsQuery(
  supabase: Client,
  filters: PracticeFilters,
  selectColumns: string,
  countOptions?: { count: "exact"; head: true },
) {
  let query = countOptions
    ? supabase.from("questions").select(selectColumns, countOptions)
    : supabase.from("questions").select(selectColumns);

  if (filters.questionSet === "official") {
    query = query.or("source.eq.college_board_opensat,source.ilike.%college_board%");
  } else if (filters.questionSet === "platform") {
    // IMPORTANT: 'scholaris_ai' MUST stay in this allow-list. The math and
    // Reading & Writing regeneration pipelines (scripts/regenerate-math-bank.mjs
    // and scripts/apply-english-fresh.mjs) stamp source='scholaris_ai' on every
    // generated platform question. If it is omitted here, the entire generated
    // question bank silently disappears from the "Platform bank" filter and the
    // session loader returns zero questions. Keep this list in sync with the
    // `source` value those scripts write.
    query = query.or(
      "source.eq.scholaris_ai,source.eq.ai_generated,source.eq.creator,source.is.null",
    );
    query = query.eq("is_platform_question", true);
  } else {
    query = query.eq("is_platform_question", true);
  }

  if (filters.examType) {
    query = query.eq("exam_type", filters.examType);
  }

  // Challenge-tier items are exclusive to the Challenge page: the page opts in
  // with `challengeOnly`, and every other pool excludes them.
  query = query.eq("challenge_only", filters.challengeOnly === true);

  if (filters.section === "math") {
    query = query.in("section", ["math", "math_calc", "math_no_calc"]);
  } else if (filters.section === "reading_writing") {
    query = query.in("section", ["reading_writing", "english"]);
  }
  if (filters.topic !== "all") {
    query = query.eq("topic", filters.topic);
  }
  if (filters.subtype) {
    const subtype = filters.subtype;
    if (isKnownSkillId(subtype)) {
      query = query.eq("skill_id", subtype);
    } else {
      query = query.or(
        [
          `skill_id.eq.${subtype}`,
          `subtopic.eq.${quotePostgrestValue(subtype)}`,
          `math_skill_code.eq.${quotePostgrestValue(subtype)}`,
        ].join(","),
      );
    }
  }
  if (filters.unit_code) {
    // Prefer the indexed unit_code column. Avoid source_metadata->> JSONB ORs —
    // they defeat indexes and time out under RLS on large AP/IB banks.
    query = query.eq("unit_code", filters.unit_code);
  }
  // Multi-select difficulty + challenge pools (Question Rush). Challenged
  // problems all carry difficulty='hard', so the regular "hard" pool must
  // exclude them and the Challenge checkbox adds them back as a disjoint OR.
  if (filters.difficulties?.length || filters.includeChallenge) {
    const conds: string[] = [];
    for (const d of filters.difficulties ?? []) {
      if (d === "hard") {
        conds.push(
          "and(difficulty.eq.hard,source_metadata->>challenged_problem.is.null)",
        );
      } else {
        conds.push(`difficulty.eq.${d}`);
      }
    }
    if (filters.includeChallenge) {
      conds.push("source_metadata->>challenged_problem.eq.true");
    }
    if (conds.length) query = query.or(conds.join(","));
  } else if (filters.difficulty !== "all") {
    query = query.eq("difficulty", filters.difficulty);
    if (filters.excludeChallenge) {
      query = query.or(
        "source_metadata->>challenged_problem.is.null,source_metadata->>challenged_problem.neq.true",
      );
    }
  }
  const domainTopics = filters.skillIds?.length
    ? domainTopicsForSkillIds(filters.skillIds)
    : [];
  if (domainTopics.length === 1) {
    query = query.eq("topic", domainTopics[0]);
  } else if (domainTopics.length > 1) {
    query = query.in("topic", domainTopics);
  }

  if (filters.skillIds?.length && !filters.subtype) {
    if (filters.skillIds.length === 1) {
      // Canonical skill_id only — OR with subtopic labels breaks when labels contain
      // commas (e.g. "Form, Structure, and Sense") because PostgREST splits on ",".
      query = query.eq("skill_id", filters.skillIds[0]!);
    } else {
      query = query.in("skill_id", filters.skillIds);
    }
  }

  return query;
}

async function fetchQuestionRowsPaginated(
  query: PaginatedQuery,
  pageSize = PRACTICE_PAGE_SIZE,
  onProgress?: (progress: PracticeLoadProgress) => void,
): Promise<ReturnType<typeof asQuestionRows>> {
  const rows: ReturnType<typeof asQuestionRows> = [];
  for (let page = 0; page < PRACTICE_MAX_PAGES; page += 1) {
    const from = page * pageSize;
    const to = from + pageSize - 1;
    const { data, error } = await query.range(from, to);
    if (error) {
      console.error("fetchPracticeQuestions paginate failed:", error.message);
      break;
    }
    if (!data || !Array.isArray(data) || data.length === 0) break;
    rows.push(...asQuestionRows(data));
    onProgress?.({ phase: "scanning", loaded: rows.length });
    if (data.length < pageSize) break;
  }
  return rows;
}

function idsFromRows(data: unknown): string[] {
  if (!Array.isArray(data)) return [];
  return data
    .map((row) => (row as { id?: string }).id)
    .filter((id): id is string => typeof id === "string" && id.length > 0);
}

/**
 * True when filters map onto `list_platform_question_ids`.
 * Legacy live signature: exam + challenge + **unit_code** + difficulty + offset.
 * That is exactly the AP/IB Start shape (`section=all`, optional `unit_code`).
 * Extended (after migration): also section + skill_ids + cursor.
 * Never claim section/skill RPC support until capability probe says extended —
 * legacy RPC would silently ignore those filters and return the wrong pool.
 */
function canUsePlatformIdRpc(filters: PracticeFilters): boolean {
  if (!filters.examType) return false;
  if (filters.topic !== "all") return false;
  const skillIds = platformRpcSkillIds(filters);
  const needsExtended =
    filters.section !== "all" || Boolean(skillIds?.length);
  if (
    needsExtended &&
    getCachedPlatformBankRpcCapability() !== "extended"
  ) {
    return false;
  }
  if (filters.subtype && !isKnownSkillId(filters.subtype)) return false;
  if (filters.difficulties?.length) return false;
  if (filters.includeChallenge || filters.excludeChallenge) return false;
  if (filters.questionSet === "official" || filters.questionSet === "platform") {
    return false;
  }
  if (
    filters.difficulty !== "all" &&
    filters.difficulty !== "easy" &&
    filters.difficulty !== "medium" &&
    filters.difficulty !== "hard"
  ) {
    return false;
  }
  return true;
}

async function fetchAllFilteredQuestionIdsViaRpc(
  supabase: Client,
  filters: PracticeFilters,
  onProgress?: (progress: PracticeLoadProgress) => void,
  options?: { cap?: number },
): Promise<string[]> {
  const examType = filters.examType!;
  const challengeOnly = filters.challengeOnly === true;
  const unitCode = filters.unit_code ?? null;
  const difficulty =
    filters.difficulty === "easy" ||
    filters.difficulty === "medium" ||
    filters.difficulty === "hard"
      ? filters.difficulty
      : null;
  const extended = getCachedPlatformBankRpcCapability() === "extended";
  const section =
    extended && filters.section !== "all" ? filters.section : null;
  const skillIds = extended ? platformRpcSkillIds(filters) : null;
  const cap = options?.cap;
  const pageSize = Math.min(
    PRACTICE_ID_PAGE_SIZE,
    cap ?? PRACTICE_ID_PAGE_SIZE,
  );

  // When difficulty is "all", pull stratified easy/medium/hard pages in parallel.
  // Live list RPC always ORDER BY id — one mixed LIMIT sorts the whole unit;
  // per-difficulty pages are smaller and warm faster for AP/IB unit Start.
  const stratify =
    Boolean(cap) &&
    difficulty === null &&
    !filters.difficulties?.length &&
    !filters.includeChallenge &&
    !filters.excludeChallenge;

  if (stratify) {
    const perBucket = Math.max(1, Math.ceil((cap ?? PRACTICE_SESSION_POOL_CAP) / 3));
    onProgress?.({
      phase: "scanning",
      loaded: 0,
      total: cap ?? PRACTICE_SESSION_POOL_CAP,
    });
    const results = await Promise.all(
      (["easy", "medium", "hard"] as const).map((d) =>
        listPlatformQuestionIdsRpcDetailed(supabase, {
          examType,
          challengeOnly,
          unitCode,
          difficulty: d,
          section,
          skillIds,
          limit: perBucket,
          offset: 0,
        }),
      ),
    );
    if (results.some((r) => !r.ok)) {
      console.warn(
        "fetchAllFilteredQuestionIdsViaRpc: stratified RPC failed; falling back to PostgREST pool",
      );
      return fetchCappedPracticePoolIds(supabase, filters, onProgress);
    }
    const seen = new Set<string>();
    const allIds: string[] = [];
    for (const { ids } of results) {
      for (const id of ids) {
        if (seen.has(id)) continue;
        seen.add(id);
        allIds.push(id);
        if (cap && allIds.length >= cap) break;
      }
      if (cap && allIds.length >= cap) break;
    }
    // Sparse difficulty mix — top up with an unscoped (difficulty-null) page.
    if (allIds.length < Math.min(cap ?? PRACTICE_SESSION_POOL_CAP, 40)) {
      const topUp = await listPlatformQuestionIdsRpcDetailed(supabase, {
        examType,
        challengeOnly,
        unitCode,
        difficulty: null,
        section,
        skillIds,
        limit: cap ?? PRACTICE_SESSION_POOL_CAP,
        offset: 0,
      });
      if (topUp.ok) {
        for (const id of topUp.ids) {
          if (seen.has(id)) continue;
          seen.add(id);
          allIds.push(id);
          if (cap && allIds.length >= cap) break;
        }
      }
    }
    if (cap && allIds.length > cap) allIds.length = cap;
    // Stratified fetch concatenates easy→medium→hard; scramble so Start
    // does not cluster by difficulty (exam Bluebook order is a separate path).
    const mixed = shuffle(allIds);
    onProgress?.({
      phase: "scanning",
      loaded: mixed.length,
      total: mixed.length,
    });
    return mixed;
  }

  // Skip exact COUNT when capped — count RPCs can hit role statement_timeout.
  const totalEstimate = cap
    ? cap
    : await countPlatformQuestionsRpc(supabase, {
        examType,
        challengeOnly,
        unitCode,
        difficulty,
        section,
        skillIds,
      });
  if (!cap && totalEstimate <= 0) {
    onProgress?.({ phase: "scanning", loaded: 0, total: 0 });
    return [];
  }

  const maxPages = cap
    ? Math.max(1, Math.ceil(cap / pageSize))
    : Math.min(PRACTICE_MAX_PAGES, Math.ceil(totalEstimate / pageSize));
  const allIds: string[] = [];
  let afterId: string | null = null;
  for (let page = 0; page < maxPages; page += 1) {
    const batch = await listPlatformQuestionIdsRpcDetailed(supabase, {
      examType,
      challengeOnly,
      unitCode,
      difficulty,
      section,
      skillIds,
      limit: pageSize,
      offset: extended ? 0 : page * pageSize,
      afterId: extended ? afterId : null,
    });
    if (!batch.ok) {
      console.warn(
        "fetchAllFilteredQuestionIdsViaRpc: list RPC failed; falling back to PostgREST pool",
      );
      return fetchCappedPracticePoolIds(supabase, filters, onProgress);
    }
    if (!batch.ids.length) break;
    allIds.push(...batch.ids);
    if (extended) {
      afterId = batch.ids[batch.ids.length - 1] ?? afterId;
    }
    onProgress?.({
      phase: "scanning",
      loaded: allIds.length,
      total: cap ?? totalEstimate,
    });
    if (cap && allIds.length >= cap) {
      allIds.length = cap;
      break;
    }
    if (batch.ids.length < pageSize) break;
  }
  onProgress?.({ phase: "scanning", loaded: allIds.length, total: allIds.length });
  return allIds;
}

/**
 * Fast practice pool: one (or three stratified) unordered LIMIT queries.
 * Avoids ORDER BY id, which forces Postgres to sort the entire section match
 * set before returning the first page (multi-second on English/Math).
 */
async function fetchCappedPracticePoolIds(
  supabase: Client,
  filters: PracticeFilters,
  onProgress?: (progress: PracticeLoadProgress) => void,
): Promise<string[]> {
  const cap = PRACTICE_SESSION_POOL_CAP;
  onProgress?.({ phase: "scanning", loaded: 0, total: cap });

  // Official/platform source filters are expensive (ilike / OR) — one LIMIT is
  // enough. Triple stratified scans of those filters can approach statement_timeout.
  const useStratified =
    !filters.difficulties?.length &&
    !filters.includeChallenge &&
    !filters.excludeChallenge &&
    filters.questionSet !== "official" &&
    filters.questionSet !== "platform" &&
    (filters.difficulty === "all" || !filters.difficulty);

  const buckets: PracticeFilters[] = useStratified
    ? (["easy", "medium", "hard"] as const).map((difficulty) => ({
        ...filters,
        difficulty,
      }))
    : [filters];

  const perBucket = Math.max(1, Math.ceil(cap / buckets.length));

  const pages = await Promise.all(
    buckets.map(async (scoped) => {
      const { data, error } = await buildFilteredQuestionsQuery(
        supabase,
        scoped,
        QUESTION_ID_SELECT,
      ).limit(perBucket);
      if (error) {
        console.error("fetchCappedPracticePoolIds failed:", error.message);
        return [] as string[];
      }
      return idsFromRows(data);
    }),
  );

  const seen = new Set<string>();
  const allIds: string[] = [];
  for (const page of pages) {
    for (const id of page) {
      if (seen.has(id)) continue;
      seen.add(id);
      allIds.push(id);
      if (allIds.length >= cap) break;
    }
    if (allIds.length >= cap) break;
  }

  // If a difficulty bucket was empty, top up from an unordered unscoped page.
  if (allIds.length < Math.min(cap, 40)) {
    const { data, error } = await buildFilteredQuestionsQuery(
      supabase,
      filters,
      QUESTION_ID_SELECT,
    ).limit(cap);
    if (!error) {
      for (const id of idsFromRows(data)) {
        if (seen.has(id)) continue;
        seen.add(id);
        allIds.push(id);
        if (allIds.length >= cap) break;
      }
    }
  }

  // Stratified buckets are concatenated easy→medium→hard; always scramble
  // so practice Start mixes difficulties throughout the session.
  const mixed = useStratified ? shuffle(allIds) : allIds;
  onProgress?.({ phase: "scanning", loaded: mixed.length, total: mixed.length });
  return mixed;
}

/**
 * Id-only bank scan for practice Start.
 * Always returns a capped pool:
 * - DEFINER RPC when `canUsePlatformIdRpc` (AP/IB: `section=all` + optional
 *   `unit_code` on the live legacy signature; SAT/ACT section/skill once
 *   extended capability is probed)
 * - else PostgREST unordered LIMIT
 * Full ORDER BY id pagination was removed from the Start path — it regularly
 * exceeds authenticated statement_timeout (8s) and left SessionLoadingOverlay
 * spinning. User completed/saved/result filters still apply client-side on the
 * capped set (see bootstrapPracticeSessionQuestions).
 */
async function fetchAllFilteredQuestionIds(
  supabase: Client,
  filters: PracticeFilters,
  onProgress?: (progress: PracticeLoadProgress) => void,
): Promise<string[]> {
  const needsExtendedRpc =
    filters.section !== "all" || Boolean(platformRpcSkillIds(filters)?.length);
  if (
    needsExtendedRpc &&
    getCachedPlatformBankRpcCapability() === "unknown"
  ) {
    await probePlatformBankRpcCapability(supabase);
  }

  // AP/IB unit (+ SAT/ACT section once extended RPCs are live): DEFINER id RPC.
  if (canUsePlatformIdRpc(filters)) {
    return fetchAllFilteredQuestionIdsViaRpc(supabase, filters, onProgress, {
      cap: PRACTICE_SESSION_POOL_CAP,
    });
  }

  // Legacy section banks: capped unordered PostgREST until migration applies.
  return fetchCappedPracticePoolIds(supabase, filters, onProgress);
}

export async function fetchPracticeQuestionIds(
  supabase: Client,
  filters: PracticeFilters,
  userId?: string,
  onProgress?: (progress: PracticeLoadProgress) => void,
): Promise<string[]> {
  let ids = await fetchAllFilteredQuestionIds(supabase, filters, onProgress);
  if (!ids.length) return [];

  if (userId && filters.examType && needsUserPostFilter(filters)) {
    const ctx = await loadUserFilterContext(
      supabase,
      userId,
      filters.examType,
      filters,
    );
    ids = applyUserFiltersToIds(ids, filters, ctx);
  }

  onProgress?.({ phase: "scanning", loaded: ids.length, total: ids.length });
  return ids;
}

async function loadInitialPracticeQuestions(
  supabase: Client,
  questionIds: string[],
  examType?: Database["public"]["Enums"]["exam_type"],
  onProgress?: (progress: PracticeLoadProgress) => void,
): Promise<Question[]> {
  const target = PRACTICE_INITIAL_LOAD_COUNT;
  const loaded: Question[] = [];
  const seen = new Set<string>();
  const maxProbe = Math.min(
    questionIds.length,
    target * PRACTICE_INITIAL_PROBE_BATCHES,
  );

  for (
    let offset = 0;
    offset < maxProbe && loaded.length < target;
    offset += target
  ) {
    const batchIds = questionIds.slice(offset, offset + target);
    onProgress?.({ phase: "loading", loaded: loaded.length, total: target });

    let batch = await fetchQuestionsByIds(supabase, batchIds, examType);
    if (!batch.length) {
      batch = await fetchQuestionsByIds(supabase, batchIds);
    }
    for (const q of batch) {
      if (seen.has(q.id)) continue;
      seen.add(q.id);
      loaded.push(q);
      if (loaded.length >= target) break;
    }
  }

  onProgress?.({ phase: "loading", loaded: loaded.length, total: target });
  return loaded;
}

export async function bootstrapPracticeSessionQuestions(
  supabase: Client,
  filters: PracticeFilters,
  userId?: string,
  options: {
    /** Default true — mix order for Question Bank Start. Pass false only when the user opts out. */
    shuffle?: boolean;
    onProgress?: (progress: PracticeLoadProgress) => void;
  } = {},
): Promise<PracticeBootstrapResult> {
  const shouldShuffle = options.shuffle !== false;
  let questionIds = await fetchAllFilteredQuestionIds(
    supabase,
    filters,
    options.onProgress,
  );

  if (!questionIds.length) {
    // Do NOT run head COUNT here — exact counts on section filters take
    // ~0.5s+ and can hit role statement_timeout, extending the spinner after
    // the pool scan already proved empty.
    return {
      questionIds: [],
      initialQuestions: [],
      emptyReason: "db_zero",
      dbMatchCount: 0,
    };
  }

  const dbMatchCount = questionIds.length;

  if (userId && filters.examType && needsUserPostFilter(filters)) {
    const ctx = await loadUserFilterContext(
      supabase,
      userId,
      filters.examType,
      filters,
    );
    const before = questionIds.length;
    questionIds = applyUserFiltersToIds(questionIds, filters, ctx);
    if (!questionIds.length && before > 0) {
      console.warn(
        "bootstrapPracticeSessionQuestions: user post-filters removed all ids",
        filters,
      );
      return {
        questionIds: [],
        initialQuestions: [],
        emptyReason: "user_filter",
        dbMatchCount,
        scannedCount: before,
        playableCount: before,
      };
    }
  }

  if (shouldShuffle) {
    questionIds = shuffle(questionIds);
  }

  const initialQuestions = await loadInitialPracticeQuestions(
    supabase,
    questionIds,
    filters.examType,
    options.onProgress,
  );

  if (!initialQuestions.length) {
    // IDs existed but bodies could not be hydrated (select/map failure). Do not
    // blame "quality checks" — that toast blocked real practice when PostgREST
    // 400'd on a missing column (question_subtype) or similar hard failures.
    console.warn(
      "bootstrapPracticeSessionQuestions: hydrate returned 0 bodies for",
      dbMatchCount,
      "ids",
    );
    return {
      questionIds: [],
      initialQuestions: [],
      emptyReason: "hydrate_failed",
      dbMatchCount,
      scannedCount: dbMatchCount,
      playableCount: 0,
    };
  }

  return {
    questionIds,
    initialQuestions,
    dbMatchCount,
    scannedCount: dbMatchCount,
    playableCount: questionIds.length,
  };
}

export async function fetchDistinctTopics(
  supabase: Client,
): Promise<string[]> {
  const { data } = await supabase
    .from("questions")
    .select("topic")
    .not("topic", "is", null)
    .eq("is_platform_question", true)
    .eq("challenge_only", false);

  const topics = new Set<string>();
  for (const row of data ?? []) {
    if (row.topic?.trim()) topics.add(row.topic.trim());
  }
  return [...topics].sort((a, b) => a.localeCompare(b));
}

export async function fetchPracticeQuestions(
  supabase: Client,
  filters: PracticeFilters,
  count?: number,
  skipIds?: string[],
  userId?: string,
  options: FetchPracticeOptions = {},
): Promise<Question[]> {
  return fetchPracticeQuestionsInner(
    supabase,
    filters,
    count,
    skipIds,
    userId,
    options,
  );
}

export async function fetchCompletedQuestionIds(
  supabase: Client,
  userId: string,
  examType: Database["public"]["Enums"]["exam_type"],
): Promise<string[]> {
  const { data } = await supabase
    .from("question_attempts")
    .select("question_id")
    .eq("user_id", userId)
    .eq("exam_type", examType)
    .eq("is_correct", true);

  return [...new Set((data ?? []).map((r) => r.question_id).filter(Boolean) as string[])];
}

export async function fetchRushSessions(
  supabase: Client,
  userId: string,
  completed: boolean,
  limit = 5,
  offset = 0,
) {
  let query = supabase
    .from("exam_sessions")
    .select(
      "id, section, total_questions, correct_count, time_spent_seconds, started_at, completed_at, metadata",
    )
    .eq("user_id", userId)
    .eq("exam_type", "SAT")
    .contains("metadata", { mode: "rush" })
    .order("started_at", { ascending: false })
    .range(offset, offset + limit - 1);

  if (completed) {
    query = query.not("completed_at", "is", null);
  } else {
    query = query.is("completed_at", null);
  }

  const { data } = await query;
  return data ?? [];
}

async function fetchPracticeQuestionsInner(
  supabase: Client,
  filters: PracticeFilters,
  count: number | undefined,
  skipIds?: string[],
  userId?: string,
  options: FetchPracticeOptions = {},
): Promise<Question[]> {
  const loadAll = count === undefined;
  const domainTopics = filters.skillIds?.length
    ? domainTopicsForSkillIds(filters.skillIds)
    : [];
  const postFilter =
    Boolean(userId && filters.examType) && needsUserPostFilter(filters);

  if (loadAll) {
    const ids = await fetchPracticeQuestionIds(supabase, filters, userId);
    if (!ids.length) return [];
    let orderedIds = options.shuffle ? shuffle(ids) : ids;
    if (skipIds?.length) {
      const skip = new Set(skipIds);
      orderedIds = orderedIds.filter((id) => !skip.has(id));
    }
    return fetchQuestionsByIds(supabase, orderedIds, filters.examType);
  }

  const query = buildFilteredQuestionsQuery(
    supabase,
    filters,
    QUESTION_LOAD_SELECT,
  );

  let playable: ReturnType<typeof asQuestionRows>;
  if (postFilter) {
    const rows = await fetchQuestionRowsPaginated(query as PaginatedQuery);
    if (!rows.length) return [];
    playable = filterPlayableQuestionsWithFallback(rows);
  } else {
    const fetchLimit = Math.max(
      domainTopics.length > 0 ? 200 : 180,
      (count ?? PRACTICE_QUESTION_COUNT) * PRACTICE_FETCH_OVERFETCH * 4,
    );
    const { data, error } = await query.limit(fetchLimit);
    if (error) {
      console.error("fetchPracticeQuestions failed:", error.message);
      return [];
    }
    if (!data?.length) return [];
    playable = filterPlayableQuestionsWithFallback(asQuestionRows(data));
    if (count !== undefined && playable.length < count && fetchLimit < 600) {
      const { data: more } = await query.limit(Math.min(fetchLimit * 3, 600));
      if (more?.length) {
        playable = filterPlayableQuestionsWithFallback(asQuestionRows(more));
      }
    }
  }

  const ranked = sortQuestionsByFetchQuality(playable);
  const ordered = ranked.map(mapDbQuestion);
  let mapped = options.shuffle ? shuffle(ordered) : ordered;
  if (skipIds?.length) {
    const skip = new Set(skipIds);
    mapped = mapped.filter((q) => !skip.has(q.id));
  }

  if (postFilter && userId && filters.examType) {
    const ctx = await loadUserFilterContext(
      supabase,
      userId,
      filters.examType,
      filters,
    );
    mapped = applyUserFiltersToQuestions(mapped, filters, ctx);
  }

  return mapped.slice(0, count);
}

export async function fetchPracticeQuestionsWithSkip(
  supabase: Client,
  filters: PracticeFilters,
  count?: number,
  skipIds?: string[],
  options: FetchPracticeOptions = {},
): Promise<Question[]> {
  return fetchPracticeQuestionsInner(supabase, filters, count, skipIds, undefined, options);
}

export async function fetchQuestionsByIds(
  supabase: Client,
  ids: string[],
  examType?: Database["public"]["Enums"]["exam_type"],
): Promise<Question[]> {
  if (ids.length === 0) return [];

  const chunks: string[][] = [];
  for (let offset = 0; offset < ids.length; offset += FETCH_BY_IDS_CHUNK) {
    chunks.push(ids.slice(offset, offset + FETCH_BY_IDS_CHUNK));
  }

  const loadChunk = async (
    chunk: string[],
    scopedExamType?: Database["public"]["Enums"]["exam_type"],
  ) => {
    let query = supabase
      .from("questions")
      .select(QUESTION_LOAD_SELECT)
      .in("id", chunk);
    if (scopedExamType) {
      query = query.eq("exam_type", scopedExamType);
    }
    const { data, error } = await query;
    if (error) {
      console.error("fetchQuestionsByIds failed:", error.message);
      return [] as Question[];
    }
    const mapped: Question[] = [];
    for (const row of asQuestionRows(data)) {
      // Bank Start must not discard an entire batch over soft quality issues —
      // only skip rows that throw during mapping.
      const question = safeMapDbQuestion(row);
      if (question) mapped.push(question);
    }
    return mapped;
  };

  const byId = new Map<string, Question>();
  await Promise.all(
    chunks.map(async (chunk) => {
      let mapped = await loadChunk(chunk, examType);
      if (examType && mapped.length < chunk.length) {
        const found = new Set(mapped.map((q) => q.id));
        const missing = chunk.filter((id) => !found.has(id));
        if (missing.length) {
          for (const q of await loadChunk(missing)) {
            byId.set(q.id, q);
          }
        }
      }
      for (const q of mapped) byId.set(q.id, q);
    }),
  );

  return ids.map((id) => byId.get(id)).filter((q): q is Question => Boolean(q));
}

/** Lightweight difficulty (+ challenged flag) for navigator cells before body hydrate. */
export type QuestionDifficultyMeta = {
  difficulty: string;
  challengedProblem: boolean;
};

export async function fetchQuestionDifficultyMetaByIds(
  supabase: Client,
  ids: string[],
): Promise<Record<string, QuestionDifficultyMeta>> {
  if (ids.length === 0) return {};

  const chunks: string[][] = [];
  for (let offset = 0; offset < ids.length; offset += FETCH_BY_IDS_CHUNK) {
    chunks.push(ids.slice(offset, offset + FETCH_BY_IDS_CHUNK));
  }

  const out: Record<string, QuestionDifficultyMeta> = {};
  await Promise.all(
    chunks.map(async (chunk) => {
      const { data, error } = await supabase
        .from("questions")
        .select(QUESTION_DIFFICULTY_SELECT)
        .in("id", chunk);
      if (error) {
        console.error("fetchQuestionDifficultyMetaByIds failed:", error.message);
        return;
      }
      for (const row of asQuestionRows(data)) {
        out[row.id] = {
          difficulty: normalizeQuestionDifficulty(row.difficulty),
          challengedProblem: isChallengedProblem(row.source_metadata),
        };
      }
    }),
  );
  return out;
}

export type PracticeMode = "drill" | "rush" | "predicted" | "review" | "unit_test";

export type SessionMetadata = {
  filters?: PracticeFilters;
  flagged_question_ids?: string[];
  mode?: PracticeMode;
  predictedPaperId?: string;
  question_pool?: "official" | "platform";
  /** AP/IB unit-test session markers. */
  unit_code?: string;
  unit_title?: string;
  rush?: {
    streak?: number;
    starScores?: number[];
    pace?: string;
    skills?: string[];
    currentIndex?: number;
    challenge?: boolean;
  };
};

export type CreateSessionOptions = {
  mode?: PracticeMode;
  timeLimitSeconds?: number;
  rushConfig?: SessionMetadata["rush"];
  skipCompletedQuestionIds?: string[];
  predictedPaperId?: string;
};

export async function createPracticeSessionFromQuestionIds(
  supabase: Client,
  userId: string,
  examType: Database["public"]["Enums"]["exam_type"],
  questionIds: string[],
  filters: PracticeFilters,
  options: CreateSessionOptions = {},
): Promise<string | null> {
  if (!questionIds.length) return null;

  // Scramble the order so consecutive questions aren't the same skill/template
  // (the bank is fetched id-ordered, which groups a skill's items together).
  // Predicted papers keep their authored order.
  const orderedIds =
    options.mode === "predicted" ? questionIds : shuffle(questionIds);

  const sectionLabel =
    filters.section === "all"
      ? "Mixed"
      : filters.section === "math"
        ? "Math"
        : "Reading and Writing";
  const isTimed = Boolean(options.timeLimitSeconds);

  const { data, error } = await supabase
    .from("exam_sessions")
    .insert({
      user_id: userId,
      session_type: "practice",
      exam_type: examType,
      section: sectionLabel,
      topic: filters.topic === "all" ? null : filters.topic,
      total_questions: orderedIds.length,
      question_order: orderedIds,
      is_timed: isTimed,
      time_limit_seconds: options.timeLimitSeconds ?? null,
      started_at: new Date().toISOString(),
      metadata: {
        filters,
        flagged_question_ids: [],
        mode: options.mode ?? "drill",
        rush: options.rushConfig,
        predictedPaperId: options.predictedPaperId,
        question_pool:
          options.mode === "predicted" ? "official" : undefined,
      } satisfies SessionMetadata,
    })
    .select("id")
    .single();

  if (error) {
    console.error("createPracticeSessionFromQuestionIds failed:", error.message);
    return null;
  }
  return data.id;
}

export async function createPracticeSession(
  supabase: Client,
  userId: string,
  examType: Database["public"]["Enums"]["exam_type"],
  questions: Question[],
  filters: PracticeFilters,
  options: CreateSessionOptions = {},
): Promise<string | null> {
  const questionIds = questions.map((q) => q.id);
  return createPracticeSessionFromQuestionIds(
    supabase,
    userId,
    examType,
    questionIds,
    filters,
    options,
  );
}

export async function createSessionFromQuestionIds(
  supabase: Client,
  userId: string,
  examType: Database["public"]["Enums"]["exam_type"],
  questionIds: string[],
  options: {
    mode?: PracticeMode;
    timeLimitSeconds?: number;
    predictedPaperId?: string;
    section?: PracticeFilters["section"];
  } = {},
): Promise<string | null> {
  const questions = await fetchQuestionsByIds(supabase, questionIds, examType);
  if (!questions.length) return null;
  const filters: PracticeFilters = {
    section: options.section ?? "all",
    topic: "all",
    difficulty: "all",
    examType,
  };
  const { data, error } = await supabase
    .from("exam_sessions")
    .insert({
      user_id: userId,
      session_type: "practice",
      exam_type: examType,
      section:
        options.section === "math"
          ? "Math"
          : options.section === "reading_writing"
            ? "Reading and Writing"
            : "Mixed",
      topic: null,
      total_questions: questions.length,
      question_order: questions.map((q) => q.id),
      is_timed: Boolean(options.timeLimitSeconds),
      time_limit_seconds: options.timeLimitSeconds ?? null,
      started_at: new Date().toISOString(),
      metadata: {
        filters,
        flagged_question_ids: [],
        mode: options.mode ?? "review",
        predictedPaperId: options.predictedPaperId,
      } satisfies SessionMetadata,
    })
    .select("id")
    .single();
  if (error) return null;
  return data.id;
}

export async function fetchPredictedPaperQuestions(
  supabase: Client,
  paperIndex: number,
): Promise<Question[]> {
  const baseSliceOffset = paperIndex * DIGITAL_SAT_TOTAL_QUESTIONS;
  const { questionsByModule } = await fetchFullExamQuestionSet(
    supabase,
    DIGITAL_SAT_MODULES,
    { pool: "official", baseSliceOffset },
  );

  const flat = questionsByModule.flat();
  if (flat.length < DIGITAL_SAT_TOTAL_QUESTIONS) {
    console.warn(
      `fetchPredictedPaperQuestions: paper ${paperIndex} only got ${flat.length}/${DIGITAL_SAT_TOTAL_QUESTIONS} official questions`,
    );
  }
  return flat;
}

export type DomainCount = {
  section: "reading_writing" | "math";
  topic: string;
  count: number;
};

/** Official Digital SAT domains, mirrored by the imported question bank. */
export const SAT_DOMAINS: { section: DomainCount["section"]; topic: string }[] = [
  { section: "reading_writing", topic: "Information and Ideas" },
  { section: "reading_writing", topic: "Craft and Structure" },
  { section: "reading_writing", topic: "Expression of Ideas" },
  { section: "reading_writing", topic: "Standard English Conventions" },
  { section: "math", topic: "Algebra" },
  { section: "math", topic: "Advanced Math" },
  { section: "math", topic: "Problem-Solving and Data Analysis" },
  { section: "math", topic: "Geometry and Trigonometry" },
];

export async function fetchDomainCounts(
  supabase: Client,
  examType: Database["public"]["Enums"]["exam_type"] = "SAT",
  challengeOnly = false,
): Promise<DomainCount[]> {
  const results = await Promise.all(
    SAT_DOMAINS.map(async (domain) => {
      let query = supabase
        .from("questions")
        .select("id", { count: "exact", head: true })
        .eq("is_platform_question", true)
        .eq("challenge_only", challengeOnly)
        .eq("topic", domain.topic)
        .eq("exam_type", examType)
        .ilike("section", `%${domain.section === "math" ? "math" : "reading"}%`);
      const { count } = await query;
      return { ...domain, count: count ?? 0 };
    }),
  );
  return results;
}

export async function fetchQuestionCountByExamType(
  supabase: Client,
  examType: Database["public"]["Enums"]["exam_type"],
  section?: "reading_writing" | "math",
  actSection?: "english" | "math" | "reading" | "science",
  challengeOnly = false,
  options?: {
    unit_code?: string;
    difficulty?: "easy" | "medium" | "hard";
  },
): Promise<number> {
  // Live count RPC has no section arg yet — SAT/ACT module counts use PostgREST.
  // AP/IB (and unscoped SAT/ACT totals) use the DEFINER RPC.
  if (section || actSection) {
    let query = supabase
      .from("questions")
      .select("id", { count: "exact", head: true })
      .eq("is_platform_question", true)
      .eq("challenge_only", challengeOnly)
      .eq("exam_type", examType);
    if (options?.unit_code) query = query.eq("unit_code", options.unit_code);
    if (options?.difficulty) query = query.eq("difficulty", options.difficulty);
    if (actSection) {
      query = query.eq("section", actSection);
    } else if (section === "math") {
      query = query.in("section", ["math", "math_calc", "math_no_calc"]);
    } else if (section === "reading_writing") {
      query = query.in("section", ["reading_writing", "english"]);
    }
    const { count, error } = await query;
    if (error) {
      console.error("fetchQuestionCountByExamType failed:", error.message);
      return 0;
    }
    return count ?? 0;
  }

  return countPlatformQuestionsRpc(supabase, {
    examType,
    challengeOnly,
    unitCode: options?.unit_code ?? null,
    difficulty: options?.difficulty ?? null,
  });
}
