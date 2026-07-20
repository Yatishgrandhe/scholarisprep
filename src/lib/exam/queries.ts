import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/types/supabase";
import type { Question } from "@/components/question/QuestionInterface";
import {
  fetchApIbFormQuestions,
  fetchFullExamQuestionSet,
  fetchModuleQuestions,
  fetchSimulatorModuleByKey,
  fetchUnitTestQuestions,
  type ExamQuestionPool,
} from "./assembleQuestions";
import {
  modulesForExamMode,
  type ExamSectionKey,
} from "./config";
import type { FullExamMetadata } from "./metadata";
import {
  moduleDurationSeconds,
  type DigitalSatModule,
} from "./digitalSat";
import { loadExamBlueprint } from "./blueprints";
import {
  type FullExamFormLetter,
  isApOrIbExam,
} from "@/lib/examFamily";

type Client = SupabaseClient<Database>;

export async function createFullExamSession(
  supabase: Client,
  userId: string,
  examType: Database["public"]["Enums"]["exam_type"],
  mode: "full" | "section",
  sectionKey?: ExamSectionKey,
): Promise<string | null> {
  // AP/IB full-lengths use Forms A–J via createApIbFormExamSession.
  if (isApOrIbExam(examType)) {
    console.error(
      "createFullExamSession: use createApIbFormExamSession for AP/IB exams",
    );
    return null;
  }

  const modulesToRun = modulesForExamMode(mode, sectionKey);
  if (modulesToRun.length === 0) return null;

  const { questionsByModule } = await fetchFullExamQuestionSet(
    supabase,
    modulesToRun,
    { pool: "official", examType },
  );

  const sectionMetas: FullExamMetadata["sections"] = [];
  const allQuestionIds: string[] = [];

  for (let i = 0; i < modulesToRun.length; i++) {
    const mod = modulesToRun[i]!;
    const questions = questionsByModule[i] ?? [];
    if (questions.length < mod.questionCount) {
      console.error(
        `createFullExamSession: insufficient ${mod.key} questions (${questions.length}/${mod.questionCount})`,
      );
      return null;
    }
    const ids = questions.map((q) => q.id);
    allQuestionIds.push(...ids);
    sectionMetas.push({
      key: mod.key,
      label: mod.label,
      filter_section: mod.filterSection,
      module_index: mod.moduleIndex,
      question_ids: ids,
      time_limit_seconds: moduleDurationSeconds(mod),
      completed_at: null,
    });
  }

  const totalTime = sectionMetas.reduce(
    (sum, s) => sum + s.time_limit_seconds,
    0,
  );

  const metadata: FullExamMetadata = {
    exam_mode: mode,
    sections: sectionMetas,
    current_section_index: 0,
    flagged_question_ids: [],
    question_pool: "official",
  };

  const sectionLabel =
    mode === "full"
      ? "Full SAT"
      : (modulesToRun[0]?.filterSection === "math"
          ? "Math"
          : "Reading and Writing");

  const { data, error } = await supabase
    .from("exam_sessions")
    .insert({
      user_id: userId,
      session_type: "full_exam",
      exam_type: examType,
      section: sectionLabel,
      total_questions: allQuestionIds.length,
      question_order: allQuestionIds,
      is_timed: true,
      time_limit_seconds: totalTime,
      metadata,
    })
    .select("id")
    .single();

  if (error) {
    console.error("createFullExamSession failed:", error.message);
    return null;
  }
  return data.id;
}

/**
 * Start an AP/IB Form A–J full exam. Returns null when the form pool is empty
 * (UI should show an empty-state toast — forms are still listed in the hub).
 */
export async function createApIbFormExamSession(
  supabase: Client,
  userId: string,
  examType: Database["public"]["Enums"]["exam_type"] | string,
  formLetter: FullExamFormLetter,
): Promise<string | null> {
  if (!isApOrIbExam(examType)) return null;

  const blueprint = await loadExamBlueprint(examType, supabase);
  if (!blueprint) return null;

  const { modules, questionsByModule } = await fetchApIbFormQuestions(
    supabase,
    examType,
    formLetter,
    blueprint,
  );

  const sectionMetas: FullExamMetadata["sections"] = [];
  const allQuestionIds: string[] = [];

  // Prefer modules returned by the assembler (may remap keys / append DB sections).
  for (let i = 0; i < modules.length; i++) {
    const mod = modules[i]!;
    const questions = questionsByModule[i] ?? [];
    // Scaffold: allow starting only when every module has at least 1 question.
    // Content agents fill to mod.questionCount later.
    if (questions.length === 0) {
      console.warn(
        `createApIbFormExamSession: empty pool for ${examType} Form ${formLetter} ${mod.key}`,
      );
      return null;
    }
    const ids = questions.map((q) => q.id);
    allQuestionIds.push(...ids);
    sectionMetas.push({
      key: mod.key,
      label: mod.label,
      filter_section: mod.filterSection as FullExamMetadata["sections"][0]["filter_section"],
      question_ids: ids,
      time_limit_seconds: mod.durationMinutes * 60,
      completed_at: null,
    });
  }

  const totalTime = sectionMetas.reduce(
    (sum, s) => sum + s.time_limit_seconds,
    0,
  );

  const metadata: FullExamMetadata = {
    exam_mode: "full",
    sections: sectionMetas,
    current_section_index: 0,
    flagged_question_ids: [],
    question_pool: "platform",
    form_letter: formLetter,
  };

  const { data, error } = await supabase
    .from("exam_sessions")
    .insert({
      user_id: userId,
      session_type: "full_exam",
      exam_type: examType as Database["public"]["Enums"]["exam_type"],
      section: `Form ${formLetter}`,
      total_questions: allQuestionIds.length,
      question_order: allQuestionIds,
      is_timed: true,
      time_limit_seconds: totalTime,
      metadata,
    })
    .select("id")
    .single();

  if (error) {
    console.error("createApIbFormExamSession failed:", error.message);
    return null;
  }
  return data.id;
}

/**
 * Create a practice session for an AP/IB unit test.
 * Returns null when the unit pool is empty (empty-state).
 */
export async function createUnitTestSession(
  supabase: Client,
  userId: string,
  examType: Database["public"]["Enums"]["exam_type"] | string,
  unitCode: string,
  unitTitle: string,
  options: { timeLimitSeconds?: number } = {},
): Promise<string | null> {
  if (!isApOrIbExam(examType)) return null;

  const questions = await fetchUnitTestQuestions(supabase, examType, unitCode);
  if (questions.length === 0) return null;

  const questionIds = questions.map((q) => q.id);
  const timeLimit =
    options.timeLimitSeconds ?? Math.max(15 * 60, questions.length * 90);

  const { data, error } = await supabase
    .from("exam_sessions")
    .insert({
      user_id: userId,
      session_type: "practice",
      exam_type: examType as Database["public"]["Enums"]["exam_type"],
      section: unitTitle,
      topic: unitTitle,
      total_questions: questionIds.length,
      question_order: questionIds,
      is_timed: true,
      time_limit_seconds: timeLimit,
      started_at: new Date().toISOString(),
      metadata: {
        filters: {
          section: "all",
          topic: "all",
          difficulty: "all",
          examType: examType as Database["public"]["Enums"]["exam_type"],
          unit_code: unitCode,
        },
        flagged_question_ids: [],
        mode: "unit_test",
        unit_code: unitCode,
        unit_title: unitTitle,
      },
    })
    .select("id")
    .single();

  if (error) {
    console.error("createUnitTestSession failed:", error.message);
    return null;
  }
  return data.id;
}

/** Backfill a simulator module from platform then official pools when dedicated pool is short. */
async function backfillSimulatorModule(
  supabase: Client,
  mod: DigitalSatModule,
  formOffset: number,
  skipIds: string[],
): Promise<Question[]> {
  let best: Question[] = [];
  const pools: ExamQuestionPool[] = ["platform", "official"];
  for (const pool of pools) {
    const batch = await fetchModuleQuestions(supabase, mod, {
      pool,
      sliceOffset: formOffset,
      skipIds,
      examType: "SAT",
    });
    if (batch.length > best.length) best = batch;
    if (batch.length >= mod.questionCount) return batch;
  }
  return best;
}

export async function createSimulatorExamSession(
  supabase: Client,
  userId: string,
  examType: Database["public"]["Enums"]["exam_type"],
  formIndex: number,
  simulatorId: string,
): Promise<string | null> {
  const modulesToRun = modulesForExamMode("full");
  const form = formIndex + 1;
  // Pull Module 1 plus BOTH Module 2 routes per section so the exam can adapt.
  const [rwM1, rwM2Easy, rwM2Hard, mathM1, mathM2Easy, mathM2Hard] =
    await Promise.all([
      fetchSimulatorModuleByKey(supabase, form, "rw_module_1"),
      fetchSimulatorModuleByKey(supabase, form, "rw_module_2_easy"),
      fetchSimulatorModuleByKey(supabase, form, "rw_module_2_hard"),
      fetchSimulatorModuleByKey(supabase, form, "math_module_1"),
      fetchSimulatorModuleByKey(supabase, form, "math_module_2_easy"),
      fetchSimulatorModuleByKey(supabase, form, "math_module_2_hard"),
    ]);

  // Index aligns with modulesToRun [rw_m1, rw_m2, math_m1, math_m2]. The Easy
  // route is the default until Module 1 routing picks Easy/Hard at runtime.
  const delivered = [rwM1, rwM2Easy, mathM1, mathM2Easy];
  const m2Variants = [
    null,
    { easy: rwM2Easy, hard: rwM2Hard },
    null,
    { easy: mathM2Easy, hard: mathM2Hard },
  ];

  const sectionMetas: FullExamMetadata["sections"] = [];
  const allQuestionIds: string[] = [];
  // Track every id used in this form so backfilled modules never repeat a question.
  const usedIds: string[] = [];

  for (let i = 0; i < modulesToRun.length; i++) {
    const mod = modulesToRun[i]!;
    // Per-form slice of the general bank, kept distinct across forms (3 buckets
    // wide: module-1/easy + module-2 easy + module-2 hard).
    const formOffset = formIndex * mod.questionCount * 3;
    const v = m2Variants[i];

    let questions: Question[];
    let variants: { easy: Question[]; hard: Question[] } | null = null;

    if (v) {
      // Adaptive Module 2: resolve both Easy and Hard routes, backfilling any
      // route the dedicated simulator pool doesn't cover (e.g. Math, not yet generated).
      let easy = v.easy;
      let hard = v.hard;
      if (easy.length < mod.questionCount) {
        easy = await backfillSimulatorModule(
          supabase,
          mod,
          formOffset,
          usedIds,
        );
      }
      if (hard.length < mod.questionCount) {
        hard = await backfillSimulatorModule(
          supabase,
          mod,
          formOffset + mod.questionCount,
          [...usedIds, ...easy.map((q) => q.id)],
        );
      }
      variants = { easy, hard };
      questions = easy; // Easy is the default route until mid-exam routing picks.
    } else {
      questions = delivered[i] ?? [];
      if (questions.length < mod.questionCount) {
        questions = await backfillSimulatorModule(
          supabase,
          mod,
          formOffset,
          usedIds,
        );
      }
    }

    const shortfall =
      questions.length < mod.questionCount ||
      (variants ? variants.hard.length < mod.questionCount : false);
    if (shortfall) {
      console.error(
        `createSimulatorExamSession: form ${form} ${mod.key} short (${questions.length}/${mod.questionCount}${variants ? `, hard ${variants.hard.length}` : ""})`,
      );
      return null;
    }
    const ids = questions.map((q) => q.id);
    allQuestionIds.push(...ids);
    usedIds.push(...ids);
    if (variants) {
      usedIds.push(...variants.hard.map((q) => q.id));
    }
    sectionMetas.push({
      key: mod.key,
      label: mod.label,
      filter_section: mod.filterSection,
      module_index: mod.moduleIndex,
      question_ids: ids,
      time_limit_seconds: moduleDurationSeconds(mod),
      completed_at: null,
      ...(variants
        ? {
            adaptive: true,
            chosen_variant: null,
            variant_options: {
              easy: variants.easy.map((q) => q.id),
              hard: variants.hard.map((q) => q.id),
            },
          }
        : {}),
    });
  }

  const totalTime = sectionMetas.reduce(
    (sum, s) => sum + s.time_limit_seconds,
    0,
  );

  const metadata: FullExamMetadata = {
    exam_mode: "simulator",
    sections: sectionMetas,
    current_section_index: 0,
    flagged_question_ids: [],
    question_pool: "simulator",
    simulator_form: formIndex + 1,
    simulator_id: simulatorId,
  };

  const { data, error } = await supabase
    .from("exam_sessions")
    .insert({
      user_id: userId,
      session_type: "full_exam",
      exam_type: examType,
      section: `Exam Simulator ${formIndex + 1}`,
      total_questions: allQuestionIds.length,
      question_order: allQuestionIds,
      is_timed: true,
      time_limit_seconds: totalTime,
      metadata,
    })
    .select("id")
    .single();

  if (error) {
    console.error("createSimulatorExamSession failed:", error.message);
    return null;
  }
  return data.id;
}

export async function fetchExamHistory(
  supabase: Client,
  userId: string,
  examType?: Database["public"]["Enums"]["exam_type"] | string,
  limit = 20,
) {
  let query = supabase
    .from("exam_sessions")
    .select(
      "id, started_at, completed_at, correct_count, total_questions, time_spent_seconds, score_predicted, metadata, section, exam_type",
    )
    .eq("user_id", userId)
    .eq("session_type", "full_exam")
    .not("completed_at", "is", null)
    .order("completed_at", { ascending: false })
    .limit(limit);

  if (examType) {
    query = query.eq("exam_type", examType as Database["public"]["Enums"]["exam_type"]);
  }

  const { data } = await query;

  return data ?? [];
}
