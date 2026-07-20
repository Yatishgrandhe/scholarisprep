/**
 * Load AP/IB full-exam blueprints from JSON packs, catalog, or subject_registry,
 * falling back to a generic MCQ+FRQ scaffold.
 */

import type { SupabaseClient } from "@supabase/supabase-js";
import { isApOrIbExam } from "@/lib/examFamily";
import { getApIbCourse } from "@/lib/apIbCatalog";
import { getBundledBlueprint } from "./blueprintPacks";
import {
  blueprintTotals,
  defaultApIbBlueprint,
  type ExamBlueprint,
  type ExamBlueprintModule,
} from "./types";

type AnyClient = SupabaseClient<any, any, any>; // eslint-disable-line @typescript-eslint/no-explicit-any

async function loadBlueprintJson(
  examType: string,
): Promise<ExamBlueprint | null> {
  if (typeof window !== "undefined") return null;
  try {
    const { readFile } = await import("node:fs/promises");
    const { join } = await import("node:path");
    const path = join(
      process.cwd(),
      "src/lib/exam/blueprints",
      `${examType}.json`,
    );
    const raw = await readFile(path, "utf8");
    const parsed = JSON.parse(raw) as ExamBlueprint;
    if (!parsed?.modules?.length) return null;
    const totals = blueprintTotals(parsed.modules);
    return {
      ...parsed,
      examType: parsed.examType || examType,
      totalQuestions: parsed.totalQuestions || totals.totalQuestions,
      totalMinutes: parsed.totalMinutes || totals.totalMinutes,
    };
  } catch {
    return null;
  }
}

function modulesFromRegistrySections(
  examType: string,
  displayName: string,
  sections: string[],
  timeLimits: Record<string, number>,
  totalQuestions: number | null,
  durationMinutes: number | null,
): ExamBlueprint {
  const modules: ExamBlueprintModule[] =
    sections.length > 0
      ? sections.map((label, i) => {
          const shared =
            typeof timeLimits.total_minutes === "number"
              ? timeLimits.total_minutes
              : (durationMinutes ?? 180);
          const mins =
            timeLimits[`section${i + 1}_minutes`] ??
            timeLimits[`section_${i + 1}_minutes`] ??
            Math.round(shared / sections.length);
          const qCount = Math.max(
            1,
            Math.round((totalQuestions ?? 60) / sections.length),
          );
          const paperMatch = /paper\s*([0-9]+)/i.exec(label);
          const partMatch = /part\s*([a-d])/i.exec(label);
          const isSaq = /short\s*answer|\bsaq\b/i.test(label);
          const isDbq = /\bdbq\b/i.test(label);
          const isLeq = /long\s*essay|\bleq\b/i.test(label);
          const isFrq =
            /free.?response|\bfrq\b|paper.?[23]|performance|productive|written\s*evidence/i.test(
              label,
            ) || isSaq || isDbq || isLeq;
          const isMcq =
            /multiple.?choice|\bmcq\b|section.?i\b|interpretive/i.test(label) &&
            !isFrq;
          let sectionKey = `section_${i + 1}`;
          if (paperMatch) {
            sectionKey = `paper_${paperMatch[1]}`;
          } else if (isSaq) {
            sectionKey = "saq";
          } else if (isDbq) {
            sectionKey = "dbq";
          } else if (isLeq) {
            sectionKey = "leq";
          } else if (partMatch && /mcq|multiple/i.test(label)) {
            sectionKey = `mcq_${partMatch[1]!.toLowerCase()}`;
          } else if (partMatch && /frq|free/i.test(label)) {
            sectionKey = `frq_${partMatch[1]!.toLowerCase()}`;
          } else if (isFrq) {
            sectionKey = sections.length === 2 ? "frq" : `section_${i + 1}_frq`;
          } else if (isMcq) {
            sectionKey = sections.length === 2 ? "mcq" : `section_${i + 1}_mcq`;
          }
          return {
            key: sectionKey,
            label,
            durationMinutes: mins,
            questionCount: qCount,
            filterSection: isFrq ? "free_response" : "multiple_choice",
            questionFormat: isFrq ? "free_response" : "multiple_choice",
          } satisfies ExamBlueprintModule;
        })
      : defaultApIbBlueprint(examType).modules;

  const totals = blueprintTotals(modules);
  return {
    examType,
    displayName,
    modules,
    totalQuestions: totalQuestions ?? totals.totalQuestions,
    totalMinutes: durationMinutes ?? totals.totalMinutes,
  };
}

function blueprintFromCatalog(examType: string): ExamBlueprint | null {
  const course = getApIbCourse(examType);
  if (!course) return null;
  return modulesFromRegistrySections(
    examType,
    course.display_name,
    course.sections ?? [],
    course.time_limits ?? {},
    course.total_questions_full_exam,
    course.exam_duration_minutes,
  );
}

/**
 * Also try loading blueprint from `full_exam_forms` when present (Forms A–J share one blueprint).
 */
async function loadBlueprintFromFormsTable(
  examType: string,
  supabase: AnyClient,
): Promise<ExamBlueprint | null> {
  try {
    const { data } = await supabase
      .from("full_exam_forms")
      .select("blueprint, form_id")
      .eq("exam_type", examType)
      .eq("is_active", true)
      .order("form_id", { ascending: true })
      .limit(1)
      .maybeSingle();
    if (!data?.blueprint || typeof data.blueprint !== "object") return null;
    const bp = data.blueprint as Record<string, unknown>;
    const modules = Array.isArray(bp.modules)
      ? (bp.modules as ExamBlueprintModule[])
      : null;
    if (!modules?.length) return null;
    const totals = blueprintTotals(modules);
    return {
      examType,
      displayName:
        typeof bp.displayName === "string"
          ? bp.displayName
          : examType.replace(/_/g, " "),
      modules,
      totalQuestions:
        typeof bp.totalQuestions === "number"
          ? bp.totalQuestions
          : totals.totalQuestions,
      totalMinutes:
        typeof bp.totalMinutes === "number"
          ? bp.totalMinutes
          : totals.totalMinutes,
      notes:
        typeof bp.notes === "string"
          ? bp.notes
          : "Loaded from full_exam_forms",
    };
  } catch {
    return null;
  }
}

/** Resolve blueprint for an AP/IB exam_type. */
export async function loadExamBlueprint(
  examType: string,
  supabase?: AnyClient,
): Promise<ExamBlueprint | null> {
  if (!isApOrIbExam(examType)) return null;

  const bundled = getBundledBlueprint(examType);
  if (bundled) return bundled;

  const fromFile = await loadBlueprintJson(examType);
  if (fromFile) return fromFile;

  if (supabase) {
    const fromForms = await loadBlueprintFromFormsTable(examType, supabase);
    if (fromForms) return fromForms;
  }

  const fromCatalog = blueprintFromCatalog(examType);
  if (fromCatalog) return fromCatalog;

  if (supabase) {
    try {
      const { data } = await supabase
        .from("subject_registry")
        .select(
          "display_name, sections, time_limits, total_questions_full_exam, exam_duration_minutes",
        )
        .eq("exam_type", examType)
        .maybeSingle();

      if (data) {
        const sections = Array.isArray(data.sections)
          ? (data.sections as unknown[]).filter(
              (s): s is string => typeof s === "string",
            )
          : [];
        const timeLimits =
          data.time_limits &&
          typeof data.time_limits === "object" &&
          !Array.isArray(data.time_limits)
            ? (data.time_limits as Record<string, number>)
            : {};
        return modulesFromRegistrySections(
          examType,
          typeof data.display_name === "string" && data.display_name
            ? data.display_name
            : examType,
          sections,
          timeLimits,
          data.total_questions_full_exam,
          data.exam_duration_minutes,
        );
      }
    } catch {
      // Registry unavailable.
    }
  }

  return defaultApIbBlueprint(examType);
}

export {
  type ExamBlueprint,
  type ExamBlueprintModule,
  FULL_EXAM_FORM_LETTERS,
  formLetters,
  defaultApIbBlueprint,
  blueprintTotals,
} from "./types";
export type { FullExamFormLetter } from "./types";
