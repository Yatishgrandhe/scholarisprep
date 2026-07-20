import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";
import {
  ACT_SECTIONS,
  domainIdForTopicLabel,
  flattenSkills,
  isKnownSkillId,
  resolveQuestionSkillId,
  SAT_MATH_DOMAINS,
  SAT_RW_DOMAINS,
  type BankDomain,
} from "@/lib/dashboard/bankTaxonomy";
import {
  bankDomainsFromUnits,
  loadCourseUnits,
  type CourseUnit,
} from "@/lib/dashboard/courseUnits";
import { isApOrIbExam } from "@/lib/examFamily";
import { questionCountsBySkillRpc } from "@/lib/practice/platformBankRpc";

type Client = SupabaseClient<Database>;
type ExamType = Database["public"]["Enums"]["exam_type"];

const IN_QUERY_CHUNK = 100;

export type SkillDifficultyCounts = {
  easy: number;
  medium: number;
  hard: number;
};

export type SkillStat = {
  attempted: number;
  /** Distinct questions where the user's first attempt was correct. */
  firstTryCorrect: number;
  total: number;
  /** firstTryCorrect / attempted; null when attempted is 0. */
  accuracy: number | null;
  difficulty: SkillDifficultyCounts;
};

export type QuestionUserProgress = {
  userCompleted: boolean;
  /** null when the user has never attempted this question. */
  firstTryCorrect: boolean | null;
  saved: boolean;
};

export type SkillQuestionWithProgress = {
  id: string;
  difficulty: string | null;
} & QuestionUserProgress;

export type BankHierarchyStats = {
  domains: Map<string, SkillStat>;
  skills: Map<string, SkillStat>;
};

type AttemptQuestionJoin = {
  topic: string | null;
  skill_id: string | null;
  domain_id: string | null;
  subtopic: string | null;
  math_skill_code: string | null;
  section: string | null;
  unit_code?: string | null;
};

type AttemptRow = {
  is_correct: boolean | null;
  question_id: string | null;
  created_at: string | null;
  questions: AttemptQuestionJoin | null;
};

type FirstAttemptMeta = {
  isCorrect: boolean;
  skillId: string | null;
  domainId: string | null;
};

type SkillAttemptAgg = {
  attempted: number;
  firstTryCorrect: number;
  accuracy: number | null;
};

type SkillCountRow = {
  skill_id: string | null;
  difficulty: string | null;
  section: string | null;
  unit_code?: string | null;
  /** Pre-aggregated total from `question_counts_by_skill` (defaults to 1). */
  count?: number;
};

function emptyDifficulty(): SkillDifficultyCounts {
  return { easy: 0, medium: 0, hard: 0 };
}

function emptyStat(): SkillStat {
  return {
    attempted: 0,
    firstTryCorrect: 0,
    total: 0,
    accuracy: null,
    difficulty: emptyDifficulty(),
  };
}

function emptyQuestionProgress(): QuestionUserProgress {
  return { userCompleted: false, firstTryCorrect: null, saved: false };
}

function accuracyFromAgg(attempted: number, firstTryCorrect: number): number | null {
  return attempted > 0 ? Math.round((firstTryCorrect / attempted) * 100) : null;
}

function domainsForModule(
  module?: string,
  examType: ExamType = "SAT",
  units: CourseUnit[] = [],
): BankDomain[] {
  if (isApOrIbExam(examType)) {
    return bankDomainsFromUnits(units, module);
  }
  if (examType === "ACT" && module) {
    return ACT_SECTIONS.filter((d) => d.id === module);
  }
  if (examType === "ACT") return ACT_SECTIONS;
  if (module === "math") return SAT_MATH_DOMAINS;
  if (module === "en") return SAT_RW_DOMAINS;
  return [...SAT_RW_DOMAINS, ...SAT_MATH_DOMAINS];
}

function sectionMatchesModule(
  section: string | null | undefined,
  module?: string,
): boolean {
  if (!module || module === "en" || module === "english") {
    return /reading|english|writing/i.test(section ?? "");
  }
  if (module === "math") {
    return /math/i.test(section ?? "");
  }
  if (module === "reading") {
    return /reading/i.test(section ?? "");
  }
  if (module === "science") {
    return /science/i.test(section ?? "");
  }
  return true;
}

/** Map bank module → platform RPC section filter (indexed IN values). */
function moduleToRpcSection(
  module: string | undefined,
  examType: ExamType,
): string | null {
  if (!module) return null;
  if (module === "math") return "math";
  if (module === "en" || module === "english") return "reading_writing";
  if (examType === "ACT") {
    if (module === "reading" || module === "science") return module;
  }
  return null;
}

function rowMatchesApIbModule(
  row: { unit_code?: string | null; skill_id?: string | null },
  module?: string,
): boolean {
  if (!module) return true;
  return row.unit_code === module || row.skill_id === module;
}

function resolveAttemptMeta(
  q: AttemptQuestionJoin,
  examType: ExamType,
): { skillId: string | null; domainId: string | null } {
  if (isApOrIbExam(examType)) {
    const unit = q.unit_code?.trim() || q.skill_id?.trim() || null;
    return { skillId: unit, domainId: unit };
  }
  const topic = q.topic?.trim();
  const domainId = topic ? (domainIdForTopicLabel(topic) ?? null) : null;
  const rawSkillId = q.skill_id?.trim();
  const skillId =
    rawSkillId && isKnownSkillId(rawSkillId)
      ? rawSkillId
      : resolveQuestionSkillId(q);
  return { skillId, domainId };
}

async function fetchUserAttemptRows(
  supabase: Client,
  userId: string,
  examType: ExamType,
  questionIds?: string[],
): Promise<AttemptRow[]> {
  const select =
    "is_correct, question_id, created_at, questions(topic, skill_id, domain_id, subtopic, math_skill_code, section, unit_code)";

  if (!questionIds?.length) {
    const { data, error } = await supabase
      .from("question_attempts")
      .select(select)
      .eq("user_id", userId)
      .eq("exam_type", examType)
      .order("created_at", { ascending: true });

    if (error) {
      console.error("fetchUserAttemptRows failed:", error.message);
      return [];
    }
    return (data ?? []) as AttemptRow[];
  }

  const rows: AttemptRow[] = [];
  for (let i = 0; i < questionIds.length; i += IN_QUERY_CHUNK) {
    const chunk = questionIds.slice(i, i + IN_QUERY_CHUNK);
    const { data, error } = await supabase
      .from("question_attempts")
      .select(select)
      .eq("user_id", userId)
      .eq("exam_type", examType)
      .in("question_id", chunk)
      .order("created_at", { ascending: true });

    if (error) {
      console.error("fetchUserAttemptRows chunk failed:", error.message);
      continue;
    }
    rows.push(...((data ?? []) as AttemptRow[]));
  }

  rows.sort((a, b) => {
    const ta = a.created_at ? Date.parse(a.created_at) : 0;
    const tb = b.created_at ? Date.parse(b.created_at) : 0;
    return ta - tb;
  });

  return rows;
}

/** Earliest attempt per question (first try), optionally scoped to a bank module. */
export function firstAttemptsFromRows(
  rows: AttemptRow[],
  module?: string,
  examType: ExamType = "SAT",
): Map<string, FirstAttemptMeta> {
  const first = new Map<string, FirstAttemptMeta>();

  for (const row of rows) {
    if (!row.question_id || first.has(row.question_id)) continue;
    const q = row.questions;
    if (!q) continue;
    if (isApOrIbExam(examType)) {
      if (!rowMatchesApIbModule(q, module)) continue;
    } else if (!sectionMatchesModule(q.section, module)) {
      continue;
    }

    const { skillId, domainId } = resolveAttemptMeta(q, examType);
    first.set(row.question_id, {
      isCorrect: Boolean(row.is_correct),
      skillId,
      domainId,
    });
  }

  return first;
}

function aggregateFirstAttempts(
  firstAttempts: Map<string, FirstAttemptMeta>,
): {
  domains: Map<string, SkillAttemptAgg>;
  skills: Map<string, SkillAttemptAgg>;
} {
  const domainBuckets = new Map<string, { attempted: number; firstTryCorrect: number }>();
  const skillBuckets = new Map<string, { attempted: number; firstTryCorrect: number }>();

  for (const meta of firstAttempts.values()) {
    if (meta.domainId) {
      const bucket = domainBuckets.get(meta.domainId) ?? {
        attempted: 0,
        firstTryCorrect: 0,
      };
      bucket.attempted += 1;
      if (meta.isCorrect) bucket.firstTryCorrect += 1;
      domainBuckets.set(meta.domainId, bucket);
    }

    if (meta.skillId) {
      const bucket = skillBuckets.get(meta.skillId) ?? {
        attempted: 0,
        firstTryCorrect: 0,
      };
      bucket.attempted += 1;
      if (meta.isCorrect) bucket.firstTryCorrect += 1;
      skillBuckets.set(meta.skillId, bucket);
    }
  }

  const toAgg = (buckets: Map<string, { attempted: number; firstTryCorrect: number }>) => {
    const stats = new Map<string, SkillAttemptAgg>();
    for (const [key, bucket] of buckets) {
      stats.set(key, {
        attempted: bucket.attempted,
        firstTryCorrect: bucket.firstTryCorrect,
        accuracy: accuracyFromAgg(bucket.attempted, bucket.firstTryCorrect),
      });
    }
    return stats;
  };

  return {
    domains: toAgg(domainBuckets),
    skills: toAgg(skillBuckets),
  };
}

async function fetchSavedQuestionIds(
  supabase: Client,
  userId: string,
  examType: ExamType,
  questionIds?: string[],
): Promise<Set<string>> {
  const saved = new Set<string>();
  const courseId = examType;

  if (!questionIds?.length) {
    const { data, error } = await supabase
      .from("saved_questions")
      .select("question_id")
      .eq("user_id", userId)
      .eq("course_id", courseId);

    if (error) {
      console.error("fetchSavedQuestionIds failed:", error.message);
      return saved;
    }

    for (const row of data ?? []) {
      if (row.question_id) saved.add(row.question_id);
    }
    return saved;
  }

  for (let i = 0; i < questionIds.length; i += IN_QUERY_CHUNK) {
    const chunk = questionIds.slice(i, i + IN_QUERY_CHUNK);
    const { data, error } = await supabase
      .from("saved_questions")
      .select("question_id")
      .eq("user_id", userId)
      .eq("course_id", courseId)
      .in("question_id", chunk);

    if (error) {
      console.error("fetchSavedQuestionIds chunk failed:", error.message);
      continue;
    }

    for (const row of data ?? []) {
      if (row.question_id) saved.add(row.question_id);
    }
  }

  return saved;
}

/** Aggregate skill×difficulty counts via SECURITY DEFINER RPC (no full-row scan). */
async function fetchQuestionSkillRows(
  supabase: Client,
  examType: ExamType,
  module?: string,
  challengeOnly = false,
  difficulty?: "easy" | "medium" | "hard",
): Promise<SkillCountRow[]> {
  const apIb = isApOrIbExam(examType);

  // SAT/ACT module views: PostgREST skill_id+difficulty projection is faster and
  // more reliable than question_counts_by_skill (anon timeout is 3s; that RPC
  // often cancels under load).
  if (!apIb && module) {
    return fetchSectionSkillRowsViaSelect(
      supabase,
      examType,
      module,
      challengeOnly,
      difficulty,
    );
  }

  const rows = await questionCountsBySkillRpc(supabase, {
    examType,
    challengeOnly,
    difficulty: difficulty ?? null,
    section: apIb ? null : moduleToRpcSection(module, examType),
    unitCode: apIb ? (module ?? null) : null,
  });

  if (!rows.length && !apIb) {
    // RPC timed out / empty — fall back to a bounded section projection.
    return fetchSectionSkillRowsViaSelect(
      supabase,
      examType,
      module ?? "en",
      challengeOnly,
      difficulty,
    );
  }

  const out: SkillCountRow[] = [];
  for (const row of rows) {
    if (!row.skill_id) continue;
    if (apIb) {
      out.push({
        skill_id: row.skill_id,
        difficulty: row.difficulty,
        section: row.section,
        unit_code: row.skill_id,
        count: row.total,
      });
      continue;
    }
    if (!sectionMatchesModule(row.section, module)) continue;
    // Live RPC does not filter challenge_only — approximate by skipping when
    // challengeOnly is requested and challenged count is the only signal.
    const n =
      challengeOnly && row.challenged > 0
        ? row.challenged
        : challengeOnly
          ? 0
          : row.total;
    if (n <= 0) continue;
    out.push({
      skill_id: row.skill_id,
      difficulty: row.difficulty,
      section: row.section,
      count: n,
    });
  }
  return out;
}

const SKILL_ROW_PAGE = 1000;
const SKILL_ROW_MAX_PAGES = 8;

/** Section-scoped skill×difficulty aggregation via ordered id pages (stable + fast). */
async function fetchSectionSkillRowsViaSelect(
  supabase: Client,
  examType: ExamType,
  module: string,
  challengeOnly: boolean,
  difficulty?: "easy" | "medium" | "hard",
): Promise<SkillCountRow[]> {
  const sectionFilter =
    module === "math"
      ? ["math", "math_calc", "math_no_calc"]
      : module === "en" || module === "english" || module === "reading_writing"
        ? ["reading_writing", "english"]
        : examType === "ACT" &&
            (module === "reading" ||
              module === "science" ||
              module === "english" ||
              module === "math")
          ? module === "math"
            ? ["math", "math_calc", "math_no_calc"]
            : module === "english"
              ? ["english", "reading_writing"]
              : [module]
          : null;

  if (!sectionFilter) return [];

  // Probe page 0 first so we don't fire empty offset pages for small modules.
  let probe = supabase
    .from("questions")
    .select("skill_id, difficulty, section")
    .eq("is_platform_question", true)
    .eq("challenge_only", challengeOnly)
    .eq("exam_type", examType)
    .in("section", sectionFilter)
    .not("skill_id", "is", null)
    .order("id")
    .range(0, SKILL_ROW_PAGE - 1);
  if (difficulty) probe = probe.eq("difficulty", difficulty);

  const first = await probe;
  if (first.error) {
    console.error("fetchSectionSkillRowsViaSelect failed:", first.error.message);
    return [];
  }

  const pages: Array<{ skill_id: string | null; difficulty: string | null; section: string | null }> =
    [...(first.data ?? [])];

  if ((first.data?.length ?? 0) >= SKILL_ROW_PAGE) {
    const rest = await Promise.all(
      Array.from({ length: SKILL_ROW_MAX_PAGES - 1 }, (_, index) => {
        const page = index + 1;
        let query = supabase
          .from("questions")
          .select("skill_id, difficulty, section")
          .eq("is_platform_question", true)
          .eq("challenge_only", challengeOnly)
          .eq("exam_type", examType)
          .in("section", sectionFilter)
          .not("skill_id", "is", null)
          .order("id")
          .range(page * SKILL_ROW_PAGE, page * SKILL_ROW_PAGE + SKILL_ROW_PAGE - 1);
        if (difficulty) query = query.eq("difficulty", difficulty);
        return query;
      }),
    );
    for (const { data, error } of rest) {
      if (error) {
        console.error("fetchSectionSkillRowsViaSelect page failed:", error.message);
        continue;
      }
      if (!data?.length) continue;
      pages.push(...data);
    }
  }

  const totals = new Map<string, SkillCountRow>();
  for (const row of pages) {
    if (!row.skill_id) continue;
    const key = `${row.skill_id}|${row.difficulty ?? ""}|${row.section ?? ""}`;
    const prev = totals.get(key);
    if (prev) {
      prev.count = (prev.count ?? 0) + 1;
    } else {
      totals.set(key, {
        skill_id: row.skill_id,
        difficulty: row.difficulty,
        section: row.section,
        count: 1,
      });
    }
  }
  return [...totals.values()];
}

function aggregateBankTotals(
  rows: SkillCountRow[],
  domains: BankDomain[],
  apIb = false,
): { domains: Map<string, SkillStat>; skills: Map<string, SkillStat> } {
  const knownSkillIds = new Set(flattenSkills(domains).map((s) => s.id));
  const domainsOut = new Map<string, SkillStat>();
  const skillsOut = new Map<string, SkillStat>();

  for (const domain of domains) {
    domainsOut.set(domain.id, { ...emptyStat() });
    for (const skill of domain.skills) {
      skillsOut.set(skill.id, { ...emptyStat() });
    }
  }

  for (const row of rows) {
    const skillId = row.skill_id?.trim();
    if (!skillId || !knownSkillIds.has(skillId)) continue;
    const n = row.count ?? 1;

    const skillStat = skillsOut.get(skillId) ?? { ...emptyStat() };
    skillStat.total += n;
    if (
      row.difficulty === "easy" ||
      row.difficulty === "medium" ||
      row.difficulty === "hard"
    ) {
      skillStat.difficulty[row.difficulty] += n;
    }
    skillsOut.set(skillId, skillStat);

    if (apIb) {
      const domainStat = domainsOut.get(skillId) ?? { ...emptyStat() };
      domainStat.total += n;
      if (
        row.difficulty === "easy" ||
        row.difficulty === "medium" ||
        row.difficulty === "hard"
      ) {
        domainStat.difficulty[row.difficulty] += n;
      }
      domainsOut.set(skillId, domainStat);
    }
  }

  // SAT/ACT: domain totals = sum of child skills (no separate topic head counts).
  if (!apIb) {
    for (const domain of domains) {
      const domainStat = domainsOut.get(domain.id) ?? { ...emptyStat() };
      domainStat.total = 0;
      domainStat.difficulty = emptyDifficulty();
      for (const skill of domain.skills) {
        const skillStat = skillsOut.get(skill.id);
        if (!skillStat) continue;
        domainStat.total += skillStat.total;
        domainStat.difficulty.easy += skillStat.difficulty.easy;
        domainStat.difficulty.medium += skillStat.difficulty.medium;
        domainStat.difficulty.hard += skillStat.difficulty.hard;
      }
      domainsOut.set(domain.id, domainStat);
    }
  }

  return { domains: domainsOut, skills: skillsOut };
}

async function fetchUserAttemptStatsBySkill(
  supabase: Client,
  userId: string,
  examType: ExamType,
  module?: string,
): Promise<{
  domains: Map<string, SkillAttemptAgg>;
  skills: Map<string, SkillAttemptAgg>;
}> {
  const rows = await fetchUserAttemptRows(supabase, userId, examType);
  const firstAttempts = firstAttemptsFromRows(rows, module, examType);
  return aggregateFirstAttempts(firstAttempts);
}

function mergeAttemptStats(
  bank: Map<string, SkillStat>,
  attempts: Map<string, SkillAttemptAgg>,
): Map<string, SkillStat> {
  const merged = new Map<string, SkillStat>();
  for (const [key, stat] of bank) {
    const user = attempts.get(key);
    merged.set(key, {
      total: stat.total,
      attempted: user?.attempted ?? 0,
      firstTryCorrect: user?.firstTryCorrect ?? 0,
      accuracy: user?.accuracy ?? null,
      difficulty: stat.difficulty,
    });
  }
  return merged;
}

/** Domain + skill counts for the question bank hierarchy UI. */
export async function fetchBankHierarchyStats(
  supabase: Client,
  examType: ExamType,
  options?: {
    userId?: string;
    module?: string;
    challengeOnly?: boolean;
    /** When challenge_only pool is empty for AP/IB, aggregate hard rows instead. */
    hardFallback?: boolean;
  },
): Promise<BankHierarchyStats> {
  const module = options?.module;
  const hardFallback = options?.hardFallback ?? false;
  const challengeOnly = hardFallback ? false : (options?.challengeOnly ?? false);
  const difficulty = hardFallback ? ("hard" as const) : undefined;
  const apIb = isApOrIbExam(examType);
  const units = apIb ? await loadCourseUnits(supabase, examType) : [];
  const domains = domainsForModule(module, examType, units);

  const [rows, userStats] = await Promise.all([
    fetchQuestionSkillRows(
      supabase,
      examType,
      module,
      challengeOnly,
      difficulty,
    ),
    options?.userId
      ? fetchUserAttemptStatsBySkill(
          supabase,
          options.userId,
          examType,
          module,
        )
      : Promise.resolve({
          domains: new Map<string, SkillAttemptAgg>(),
          skills: new Map<string, SkillAttemptAgg>(),
        }),
  ]);

  const bankTotals = aggregateBankTotals(rows, domains, apIb);

  return {
    domains: mergeAttemptStats(bankTotals.domains, userStats.domains),
    skills: mergeAttemptStats(bankTotals.skills, userStats.skills),
  };
}

/**
 * Per-question progress for a set of question IDs.
 * Uses two batched queries (attempts + saved) — no N+1.
 */
export async function fetchQuestionUserProgressMap(
  supabase: Client,
  userId: string,
  examType: ExamType,
  questionIds: string[],
): Promise<Map<string, QuestionUserProgress>> {
  const progress = new Map<string, QuestionUserProgress>();
  if (!questionIds.length) return progress;

  for (const id of questionIds) {
    progress.set(id, emptyQuestionProgress());
  }

  const [attemptRows, savedIds] = await Promise.all([
    fetchUserAttemptRows(supabase, userId, examType, questionIds),
    fetchSavedQuestionIds(supabase, userId, examType, questionIds),
  ]);

  const firstAttempts = firstAttemptsFromRows(attemptRows, undefined, examType);

  for (const id of questionIds) {
    const first = firstAttempts.get(id);
    progress.set(id, {
      userCompleted: Boolean(first),
      firstTryCorrect: first ? first.isCorrect : null,
      saved: savedIds.has(id),
    });
  }

  return progress;
}

/** Questions in a skill with per-user completion / first-try / saved flags. */
export async function fetchSkillQuestionsWithProgress(
  supabase: Client,
  examType: ExamType,
  skillId: string,
  options?: {
    userId?: string;
    module?: string;
    limit?: number;
    offset?: number;
  },
): Promise<SkillQuestionWithProgress[]> {
  const limit = options?.limit ?? 200;
  const offset = options?.offset ?? 0;
  const apIb = isApOrIbExam(examType);

  let query = supabase
    .from("questions")
    .select("id, difficulty, section, unit_code, skill_id")
    .eq("is_platform_question", true)
    .eq("exam_type", examType)
    .order("created_at", { ascending: true })
    .range(offset, offset + limit - 1);

  if (apIb) {
    query = query.eq("unit_code", skillId);
  } else {
    query = query.eq("skill_id", skillId);
  }

  const { data, error } = await query;
  if (error) {
    console.error("fetchSkillQuestionsWithProgress failed:", error.message);
    return [];
  }

  const questions = (data ?? []).filter((row) =>
    apIb
      ? rowMatchesApIbModule(row, options?.module ?? skillId)
      : sectionMatchesModule(row.section, options?.module),
  );

  if (!options?.userId || !questions.length) {
    return questions.map((q) => ({
      id: q.id,
      difficulty: q.difficulty,
      ...emptyQuestionProgress(),
    }));
  }

  const progressMap = await fetchQuestionUserProgressMap(
    supabase,
    options.userId,
    examType,
    questions.map((q) => q.id),
  );

  return questions.map((q) => ({
    id: q.id,
    difficulty: q.difficulty,
    ...(progressMap.get(q.id) ?? emptyQuestionProgress()),
  }));
}

/** @deprecated Use `fetchBankHierarchyStats` — returns skill-level map only. */
export async function fetchBankSkillStats(
  supabase: Client,
  examType: ExamType,
  userId?: string,
): Promise<Map<string, SkillStat>> {
  const hierarchy = await fetchBankHierarchyStats(supabase, examType, {
    userId,
  });
  return hierarchy.skills;
}

/** @deprecated Use `fetchBankHierarchyStats` — kept for existing imports. */
export async function fetchSkillStatsForUser(
  supabase: Client,
  userId: string,
  examType: ExamType,
): Promise<Map<string, SkillStat>> {
  return fetchBankSkillStats(supabase, examType, userId);
}

export function skillStatsMapToRecord(
  stats: Map<string, SkillStat>,
): Record<string, SkillStat> {
  return Object.fromEntries(stats);
}

export function skillStatsRecordToMap(
  record: Record<string, SkillStat>,
): Map<string, SkillStat> {
  return new Map(Object.entries(record));
}

export function hierarchyStatsToRecord(stats: BankHierarchyStats): {
  domains: Record<string, SkillStat>;
  skills: Record<string, SkillStat>;
} {
  return {
    domains: skillStatsMapToRecord(stats.domains),
    skills: skillStatsMapToRecord(stats.skills),
  };
}

function normalizeSkillStat(stat: SkillStat): SkillStat {
  return {
    ...stat,
    firstTryCorrect: stat.firstTryCorrect ?? 0,
    difficulty: stat.difficulty ?? emptyDifficulty(),
  };
}

export function hierarchyStatsFromRecord(record: {
  domains: Record<string, SkillStat>;
  skills: Record<string, SkillStat>;
}): BankHierarchyStats {
  return {
    domains: new Map(
      Object.entries(record.domains).map(([k, v]) => [k, normalizeSkillStat(v)]),
    ),
    skills: new Map(
      Object.entries(record.skills).map(([k, v]) => [k, normalizeSkillStat(v)]),
    ),
  };
}
