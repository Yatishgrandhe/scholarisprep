import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";
import type { Question } from "@/components/question/QuestionInterface";
import { mapDbQuestion, safeMapDbQuestion } from "@/lib/practice/mapQuestion";
import { QUESTION_LOAD_SELECT, asQuestionRows } from "@/lib/question/schema";
import {
  filterPlayableQuestions,
  sortQuestionsByFetchQuality,
} from "@/lib/question/questionQuality";
import type { DigitalSatModule } from "./digitalSat";
import { DIGITAL_SAT_MODULES } from "./digitalSat";
import type { ExamBlueprint, ExamBlueprintModule } from "./blueprints";
import type { FullExamFormLetter } from "@/lib/examFamily";
import { isApOrIbExam } from "@/lib/examFamily";

type Client = SupabaseClient<Database>;

export type ExamQuestionPool = "official" | "platform" | "simulator";

export const SIMULATOR_SOURCE = "exam_simulator";
/** Dedicated pool tag for AP/IB Forms A–J (content agents stamp this). */
export const FULL_FORM_SOURCE = "full_exam_form";
/** Dedicated pool tag for AP/IB unit tests. */
export const UNIT_TEST_SOURCE = "unit_test";

export type AssembleModuleOptions = {
  pool?: ExamQuestionPool;
  /** Stable slice offset for predicted papers / reproducible forms. */
  sliceOffset?: number;
  skipIds?: string[];
  /** Exam type — SAT default for Digital SAT modules; required for AP/IB. */
  examType?: Database["public"]["Enums"]["exam_type"] | string;
};

const OFFICIAL_SOURCE_FILTER =
  "source.eq.college_board_opensat,source.ilike.%college_board%";

function sectionOrFilter(section: "reading_writing" | "math" | string): string {
  if (section === "math") {
    return [
      "section.eq.math",
      "section.eq.math_calc",
      "section.eq.math_no_calc",
      "section.eq.SAT Math",
      "section.ilike.%math%",
    ].join(",");
  }
  if (section === "reading_writing") {
    return [
      "section.eq.reading_writing",
      "section.eq.SAT Reading",
      "section.eq.General Reading",
      "section.ilike.%reading%",
      "section.ilike.%english%",
      "section.ilike.%writing%",
    ].join(",");
  }
  // AP/IB / generic: match section label or filterSection key loosely.
  const escaped = section.replace(/[%_]/g, "");
  return [
    `section.eq.${section}`,
    `section.ilike.%${escaped}%`,
    `question_type.eq.${section}`,
  ].join(",");
}

/**
 * Fetch a fixed-size slice of questions for one exam module.
 * Defaults to SAT Digital SAT modules; pass `examType` for AP/IB/other.
 */
export async function fetchModuleQuestions(
  supabase: Client,
  module: DigitalSatModule | ExamBlueprintModule,
  options: AssembleModuleOptions = {},
): Promise<Question[]> {
  const pool = options.pool ?? "official";
  const skip = new Set(options.skipIds ?? []);
  const examType = options.examType ?? "SAT";

  const filterSection =
    "filterSection" in module
      ? module.filterSection
      : (module as ExamBlueprintModule).filterSection;

  let query = supabase
    .from("questions")
    .select(QUESTION_LOAD_SELECT)
    .eq("exam_type", examType as Database["public"]["Enums"]["exam_type"])
    .eq("challenge_only", false)
    .or(sectionOrFilter(filterSection));

  if (pool === "official") {
    query = query.or(OFFICIAL_SOURCE_FILTER);
  } else if (pool === "platform") {
    query = query.eq("is_platform_question", true);
  }

  const sliceOffset = options.sliceOffset ?? 0;
  const fetchFrom = sliceOffset;
  const fetchTo = fetchFrom + module.questionCount + skip.size + 24;

  const { data, error } = await query
    .order("id", { ascending: true })
    .range(fetchFrom, fetchTo);

  if (error) {
    console.error("fetchModuleQuestions failed:", error.message);
    return [];
  }

  const mapped = sortQuestionsByFetchQuality(filterPlayableQuestions(asQuestionRows(data)))
    .map(mapDbQuestion)
    .filter((q) => !skip.has(q.id));

  return mapped.slice(0, module.questionCount);
}

export async function fetchFullExamQuestionSet(
  supabase: Client,
  modules: DigitalSatModule[],
  options: {
    pool?: ExamQuestionPool;
    /** Per-module slice offsets (e.g. predicted paper index × module size). */
    baseSliceOffset?: number;
    examType?: string;
  } = {},
): Promise<{ modules: DigitalSatModule[]; questionsByModule: Question[][] }> {
  const pool = options.pool ?? "official";
  const base = options.baseSliceOffset ?? 0;
  const examType = options.examType ?? "SAT";
  const usedIds: string[] = [];
  const questionsByModule: Question[][] = [];

  let runningOffset = base;

  for (const mod of modules) {
    const questions = await fetchModuleQuestions(supabase, mod, {
      pool,
      sliceOffset: runningOffset,
      skipIds: usedIds,
      examType,
    });
    questionsByModule.push(questions);
    usedIds.push(...questions.map((q) => q.id));
    runningOffset += mod.questionCount;
  }

  return { modules, questionsByModule };
}

function sectionLabelSlug(label: string): string {
  return label
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "_")
    .replace(/^_|_$/g, "");
}

/**
 * Candidate module_key values for one blueprint module.
 * Seeding stamps vary widely (mcq/frq, paper_N, mcq_a/frq_b, saq/dbq/leq, …).
 */
function moduleKeyCandidates(
  mod: ExamBlueprintModule,
  index: number,
  modules: ExamBlueprintModule[],
): string[] {
  const i = index + 1;
  const base = `section_${i}`;
  const fmt = mod.questionFormat ?? "multiple_choice";
  let formatOrdinal = 0;
  for (let j = 0; j <= index; j++) {
    if ((modules[j]!.questionFormat ?? "multiple_choice") === fmt) {
      formatOrdinal += 1;
    }
  }
  const letter = String.fromCharCode(96 + Math.max(1, formatOrdinal)); // a, b, …

  const out: string[] = [
    mod.key,
    base,
    `${base}_mcq`,
    `${base}_frq`,
    `paper_${i}`,
    `paper${i}`,
    `part_${i}`,
    `comp_${i}`,
  ];

  if (fmt === "multiple_choice") {
    out.push("mcq", `mcq_${letter}`, `${base}_mcq`, "mcq_aural", "mcq_nonaural", "mcq_practice");
  } else if (fmt === "free_response") {
    out.push(
      "frq",
      `frq_${letter}`,
      `${base}_frq`,
      "saq",
      "dbq",
      "leq",
      "frq_argument",
      "frq_concept",
      "frq_quant",
      "frq_scotus",
      "aaq",
      "ebq",
      "hle",
      "io",
      "sight_singing",
      "written_evidence",
    );
  } else {
    out.push("mcq", "frq", `mcq_${letter}`, `frq_${letter}`);
  }

  const label = mod.label || "";
  const slug = sectionLabelSlug(label);
  if (slug) out.push(slug);

  const paperMatch = /paper\s*([0-9]+)/i.exec(label);
  if (paperMatch) {
    out.push(`paper_${paperMatch[1]}`, `paper${paperMatch[1]}`);
  }
  const partMatch = /part\s*([a-d])/i.exec(label);
  if (partMatch) {
    const p = partMatch[1]!.toLowerCase();
    if (/mcq|multiple/i.test(label) || fmt === "multiple_choice") {
      out.push(`mcq_${p}`);
    }
    if (/frq|free/i.test(label) || fmt === "free_response") {
      out.push(`frq_${p}`);
    }
  }
  if (/short\s*answer|\bsaq\b/i.test(label)) out.push("saq");
  if (/\bdbq\b/i.test(label)) out.push("dbq");
  if (/long\s*essay|\bleq\b/i.test(label)) out.push("leq");
  if (/interpretive|listening|reading/i.test(label)) out.push("interpretive");
  if (/productive|speaking|writing/i.test(label) && !/reading|writing and/i.test(label)) {
    out.push("productive");
  }
  if (/selected/i.test(label)) out.push("selected_works");
  if (/sustained/i.test(label)) out.push("sustained_investigation");
  if (/written\s*evidence/i.test(label)) out.push("written_evidence");
  if (/eoce\s*a/i.test(label)) out.push("eoce_a");
  if (/eoce\s*b/i.test(label)) out.push("eoce_b");

  if (/mcq/i.test(mod.key)) out.push("mcq", `${base}_mcq`);
  if (/frq|free/i.test(mod.key)) out.push("frq", `${base}_frq`);
  if (/paper/i.test(mod.key)) out.push(`paper_${i}`, `paper${i}`);

  return [...new Set(out.filter(Boolean))];
}

/** Stable exam-section order when falling back to unused DB keys. */
function rankFormModuleKey(key: string): number {
  const k = key.toLowerCase();
  if (k === "mcq" || k.startsWith("mcq_")) return 10;
  if (k.includes("section_1")) return 11;
  if (k === "interpretive") return 12;
  if (k === "saq") return 20;
  if (k === "dbq") return 30;
  if (k === "leq") return 40;
  if (k === "frq" || k.startsWith("frq_")) return 50;
  if (k === "productive") return 55;
  if (k === "sight_singing") return 60;
  const paper = /^paper_?(\d+)$/i.exec(k);
  if (paper) return 70 + Number(paper[1]);
  const part = /^part_(\d+)$/i.exec(k);
  if (part) return 80 + Number(part[1]);
  const comp = /^comp_(\d+)$/i.exec(k);
  if (comp) return 90 + Number(comp[1]);
  if (k.includes("section_")) {
    const n = Number(/section_(\d+)/i.exec(k)?.[1] ?? 99);
    return 100 + n;
  }
  return 200;
}

function orderFormModuleKeys(keys: string[]): string[] {
  return [...keys].sort(
    (a, b) => rankFormModuleKey(a) - rankFormModuleKey(b) || a.localeCompare(b),
  );
}

function moduleKeyFromRow(
  row: ReturnType<typeof asQuestionRows>[number],
): string | null {
  const meta = row.source_metadata as { module_key?: unknown } | null;
  const key = meta?.module_key;
  return typeof key === "string" && key.length > 0 ? key : null;
}

/**
 * Assemble one AP/IB Form (A–J) from the dedicated full_exam_form pool.
 * Loads the whole form once, then maps blueprint modules → DB module_key
 * (candidates + unused-key fallback). Returns empty arrays when unseeded.
 */
export async function fetchApIbFormQuestions(
  supabase: Client,
  examType: string,
  formLetter: FullExamFormLetter,
  blueprint: ExamBlueprint,
): Promise<{ modules: ExamBlueprintModule[]; questionsByModule: Question[][] }> {
  if (!isApOrIbExam(examType)) {
    return {
      modules: blueprint.modules,
      questionsByModule: blueprint.modules.map(() => []),
    };
  }

  const { data, error } = await supabase
    .from("questions")
    .select(QUESTION_LOAD_SELECT)
    .eq("exam_type", examType as Database["public"]["Enums"]["exam_type"])
    .eq("source", FULL_FORM_SOURCE)
    .eq("source_metadata->>form_letter", formLetter)
    .order("source_metadata->slot", { ascending: true });

  if (error) {
    console.error(
      `fetchApIbFormQuestions ${examType} Form ${formLetter}:`,
      error.message,
    );
    return {
      modules: blueprint.modules,
      questionsByModule: blueprint.modules.map(() => []),
    };
  }

  // Rows are ordered by slot; preserve that order within each module_key bucket.
  const byKey = new Map<string, Question[]>();
  for (const row of asQuestionRows(data)) {
    const key = moduleKeyFromRow(row);
    if (!key) continue;
    const mapped = safeMapDbQuestion(row);
    if (!mapped) continue;
    const bucket = byKey.get(key);
    if (bucket) bucket.push(mapped);
    else byKey.set(key, [mapped]);
  }

  if (byKey.size === 0) {
    return {
      modules: blueprint.modules,
      questionsByModule: blueprint.modules.map(() => []),
    };
  }

  const usedKeys = new Set<string>();
  const modules = [...blueprint.modules];
  const questionsByModule: Question[][] = modules.map(() => []);

  for (let i = 0; i < modules.length; i++) {
    const mod = modules[i]!;
    const candidates = moduleKeyCandidates(mod, i, modules);
    for (const ck of candidates) {
      if (usedKeys.has(ck)) continue;
      const qs = byKey.get(ck);
      if (qs?.length) {
        usedKeys.add(ck);
        questionsByModule[i] = qs.slice(0, mod.questionCount);
        // Prefer the DB key on the session section so reports match seeding.
        modules[i] = { ...mod, key: ck };
        break;
      }
    }
  }

  // Fill any still-empty blueprint slots from leftover DB keys (label/key drift).
  const unused = orderFormModuleKeys(
    [...byKey.keys()].filter((k) => !usedKeys.has(k)),
  );
  let unusedIdx = 0;
  for (let i = 0; i < modules.length; i++) {
    if (questionsByModule[i]!.length > 0) continue;
    const ck = unused[unusedIdx++];
    if (!ck) break;
    const qs = byKey.get(ck) ?? [];
    if (!qs.length) continue;
    usedKeys.add(ck);
    const mod = modules[i]!;
    questionsByModule[i] = qs.slice(0, mod.questionCount);
    modules[i] = { ...mod, key: ck };
  }

  // Extra DB modules beyond the blueprint (e.g. Calc 4 parts vs 2-scaffold).
  const stillUnused = orderFormModuleKeys(
    [...byKey.keys()].filter((k) => !usedKeys.has(k)),
  );
  for (const ck of stillUnused) {
    const qs = byKey.get(ck) ?? [];
    if (!qs.length) continue;
    usedKeys.add(ck);
    modules.push({
      key: ck,
      label: ck.replace(/_/g, " ").replace(/\b\w/g, (c) => c.toUpperCase()),
      durationMinutes: Math.max(
        15,
        Math.round((blueprint.totalMinutes || 90) / (modules.length + 1)),
      ),
      questionCount: qs.length,
      filterSection: /frq|saq|dbq|leq|paper_[23]|productive|written/i.test(ck)
        ? "free_response"
        : "multiple_choice",
      questionFormat: /frq|saq|dbq|leq|paper_[23]|productive|written/i.test(ck)
        ? "free_response"
        : "multiple_choice",
    });
    questionsByModule.push(qs);
  }

  return { modules, questionsByModule };
}

/**
 * Assemble a unit-test pool for one AP/IB unit.
 * Filters `source=unit_test` + unit_code metadata, or falls back to topic/skill match.
 * Returns [] when no questions exist yet (empty-state in UI).
 */
export async function fetchUnitTestQuestions(
  supabase: Client,
  examType: string,
  unitCode: string,
  options: { limit?: number } = {},
): Promise<Question[]> {
  if (!isApOrIbExam(examType)) return [];
  const limit = options.limit ?? 25;

  const { data, error } = await supabase
    .from("questions")
    .select(QUESTION_LOAD_SELECT)
    .eq("exam_type", examType as Database["public"]["Enums"]["exam_type"])
    .eq("challenge_only", false)
    .or(
      [
        `unit_code.eq.${unitCode}`,
        `and(source.eq.${UNIT_TEST_SOURCE},source_metadata->>unit_code.eq.${unitCode})`,
        `skill_id.eq.${unitCode}`,
      ].join(","),
    )
    .order("id", { ascending: true })
    .limit(limit + 8);

  if (error) {
    console.error(`fetchUnitTestQuestions ${examType} ${unitCode}:`, error.message);
    return [];
  }

  return sortQuestionsByFetchQuality(filterPlayableQuestions(asQuestionRows(data)))
    .map(mapDbQuestion)
    .slice(0, limit);
}

/**
 * Load one module bucket for an exam form by its exact module_key (e.g.
 * "rw_module_2_hard"). Used to assemble adaptive Module 2 routes.
 */
export async function fetchSimulatorModuleByKey(
  supabase: Client,
  formNumber: number,
  moduleKey: string,
): Promise<Question[]> {
  const { data, error } = await supabase
    .from("questions")
    .select(QUESTION_LOAD_SELECT)
    .eq("exam_type", "SAT")
    .eq("source", SIMULATOR_SOURCE)
    .eq("source_metadata->>simulator_form", String(formNumber))
    .eq("source_metadata->>module_key", moduleKey)
    .order("source_metadata->slot", { ascending: true });
  if (error) {
    console.error(`fetchSimulatorModuleByKey ${moduleKey}:`, error.message);
    return [];
  }
  const rows = asQuestionRows(data).sort((a, b) => {
    const sa = Number((a.source_metadata as { slot?: number } | null)?.slot ?? 0);
    const sb = Number((b.source_metadata as { slot?: number } | null)?.slot ?? 0);
    return sa - sb;
  });
  // The dedicated exam pool is pre-validated and fixed-length; keep every question
  // in slot order. Re-filtering here (playability/quality) can drop a borderline
  // item and leave a module short, which makes the whole exam fail to assemble.
  // safeMapDbQuestion never throws, so one odd row can't hang exam assembly.
  return rows
    .map((row) => safeMapDbQuestion(row))
    .filter((q): q is NonNullable<typeof q> => Boolean(q));
}

/**
 * Load one Exam Simulator form (4 modules × fixed counts) from dedicated pool.
 * Questions are tagged source=exam_simulator with simulator_form + module_key + slot.
 */
export async function fetchSimulatorFormQuestions(
  supabase: Client,
  formIndex: number,
): Promise<{ modules: DigitalSatModule[]; questionsByModule: Question[][] }> {
  const formNumber = formIndex + 1;
  const questionsByModule: Question[][] = [];

  for (const mod of DIGITAL_SAT_MODULES) {
    // Module 2 now ships Easy/Hard variants for adaptive routing. Until the
    // mid-exam router lands, deliver the Hard path (matches the analytics view).
    const moduleKey =
      mod.moduleIndex === 2 ? `${mod.filterSection}_module_2_hard` : mod.key;
    const { data, error } = await supabase
      .from("questions")
      .select(QUESTION_LOAD_SELECT)
      .eq("exam_type", "SAT")
      .eq("source", SIMULATOR_SOURCE)
      .eq("source_metadata->>simulator_form", String(formNumber))
      .eq("source_metadata->>module_key", moduleKey)
      .order("source_metadata->slot", { ascending: true });

    if (error) {
      console.error(`fetchSimulatorFormQuestions ${mod.key}:`, error.message);
      questionsByModule.push([]);
      continue;
    }

    const rows = asQuestionRows(data).sort((a, b) => {
      const slotA = Number(
        (a.source_metadata as { slot?: number } | null)?.slot ?? 0,
      );
      const slotB = Number(
        (b.source_metadata as { slot?: number } | null)?.slot ?? 0,
      );
      return slotA - slotB;
    });

    const mapped = sortQuestionsByFetchQuality(filterPlayableQuestions(rows))
      .map(mapDbQuestion);

    questionsByModule.push(mapped.slice(0, mod.questionCount));
  }

  return { modules: DIGITAL_SAT_MODULES, questionsByModule };
}
