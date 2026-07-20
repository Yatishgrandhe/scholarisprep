/**
 * Course unit helpers for AP/IB planners and unit-test hubs.
 * Prefers `course_units` / planner-skills JSON when present; falls back to
 * subject_registry.topics; then to a small static map from the seed registry.
 */

import type { SupabaseClient } from "@supabase/supabase-js";
import { isApOrIbExam } from "@/lib/examFamily";
import { getApIbCourse } from "@/lib/apIbCatalog";
import type { BankDomain } from "@/lib/dashboard/bankTaxonomy";

export type CourseUnit = {
  unit_code: string;
  title: string;
  sort_order: number;
};

/** Map course units into bank domain/skill rows (one skill per unit). */
export function bankDomainsFromUnits(
  units: CourseUnit[],
  module?: string | null,
): BankDomain[] {
  const filtered = module
    ? units.filter((u) => u.unit_code === module)
    : units;
  return filtered.map((u) => ({
    id: u.unit_code,
    label: u.title,
    skills: [
      {
        id: u.unit_code,
        label: u.title,
        domain: u.unit_code,
      },
    ],
  }));
}

/** Slug used as unit_code when only a topic label is available. */
export function unitCodeFromTitle(title: string, index: number): string {
  const slug = title
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "_")
    .replace(/^_|_$/g, "");
  return slug ? `U${index + 1}_${slug}` : `U${index + 1}`;
}

function unitsFromTitles(titles: string[]): CourseUnit[] {
  return titles.map((title, i) => ({
    unit_code: unitCodeFromTitle(title, i),
    title,
    sort_order: i + 1,
  }));
}

/** Seed-aligned topic fallbacks when subject_registry / JSON packs are empty. */
export const STATIC_COURSE_TOPICS: Record<string, string[]> = {
  AP_BIOLOGY: [
    "Chemistry of Life",
    "Cells",
    "Cellular Energetics",
    "Cell Communication",
    "Heredity",
    "Gene Expression",
    "Natural Selection",
    "Ecology",
  ],
  AP_CHEMISTRY: [
    "Atomic Structure",
    "Molecular Structure",
    "Intermolecular Forces",
    "Chemical Reactions",
    "Kinetics",
    "Thermodynamics",
    "Equilibrium",
    "Acids and Bases",
  ],
  AP_PHYSICS: [
    "Kinematics",
    "Forces",
    "Energy",
    "Momentum",
    "Rotation",
    "Oscillations",
    "Electricity",
    "Waves",
  ],
  AP_CALCULUS_AB: [
    "Limits",
    "Derivatives",
    "Applications of Derivatives",
    "Integrals",
    "Applications of Integrals",
    "Differential Equations",
  ],
  AP_CALCULUS_BC: [
    "Limits",
    "Derivatives",
    "Integrals",
    "Series",
    "Parametric Equations",
    "Polar Functions",
    "Vector Functions",
  ],
  AP_STATISTICS: [
    "Exploring Data",
    "Sampling and Experimentation",
    "Probability",
    "Inference",
  ],
  AP_ENGLISH: [
    "Rhetorical Analysis",
    "Argument",
    "Synthesis",
    "Close Reading",
  ],
  AP_US_HISTORY: [
    "Period 1–2 Foundations",
    "Period 3 Revolution",
    "Period 4–5 Expansion",
    "Period 6–7 Industrialization",
    "Period 8–9 Modern America",
  ],
  AP_WORLD_HISTORY: [
    "Global Tapestry",
    "Networks of Exchange",
    "Land-Based Empires",
    "Transoceanic Connections",
    "Revolutions",
    "Consequences of Industrialization",
    "Global Conflict",
    "Cold War and Globalization",
  ],
  AP_PSYCHOLOGY: [
    "Scientific Foundations",
    "Biological Bases",
    "Cognition",
    "Development",
    "Social Psychology",
    "Clinical Psychology",
  ],
  AP_ECONOMICS: [
    "Basic Economic Concepts",
    "Supply and Demand",
    "Production Costs",
    "Market Structures",
    "Factor Markets",
    "Market Failure",
    "Macro Indicators",
  ],
  AP_COMPUTER_SCIENCE: [
    "Primitive Types",
    "Objects",
    "Boolean Expressions",
    "Iteration",
    "Classes",
    "Arrays",
    "ArrayLists",
    "2D Arrays",
    "Inheritance",
    "Recursion",
  ],
};

/**
 * Try loading `scripts/data/planner-skills/{examType}.json` shape:
 * `{ "units": [{ "unit_code", "title", "sort_order"? }] }` or `{ "topics": string[] }`.
 * Browser code cannot read the filesystem — this is for server/Node callers only.
 */
export async function loadPlannerSkillsFile(
  examType: string,
): Promise<CourseUnit[] | null> {
  if (typeof window !== "undefined") return null;
  try {
    const { readFile } = await import("node:fs/promises");
    const { join } = await import("node:path");
    const path = join(
      process.cwd(),
      "scripts/data/planner-skills",
      `${examType}.json`,
    );
    const raw = await readFile(path, "utf8");
    const parsed = JSON.parse(raw) as {
      units?: Array<{ unit_code?: string; title?: string; sort_order?: number }>;
      topics?: string[];
    };
    if (Array.isArray(parsed.units) && parsed.units.length > 0) {
      return parsed.units.map((u, i) => ({
        unit_code: u.unit_code || unitCodeFromTitle(u.title ?? `Unit ${i + 1}`, i),
        title: u.title || u.unit_code || `Unit ${i + 1}`,
        sort_order: u.sort_order ?? i + 1,
      }));
    }
    if (Array.isArray(parsed.topics) && parsed.topics.length > 0) {
      return unitsFromTitles(parsed.topics);
    }
  } catch {
    // File missing — fall through.
  }
  return null;
}

type AnyClient = SupabaseClient<any, any, any>; // eslint-disable-line @typescript-eslint/no-explicit-any

/** Load course units for an exam (AP/IB). Never returns SAT skill taxonomy. */
export async function loadCourseUnits(
  supabase: AnyClient,
  examType: string,
): Promise<CourseUnit[]> {
  if (!isApOrIbExam(examType)) return [];

  // 1) course_units table (seeded by catalog migration; research fills rows).
  try {
    const { data, error } = await supabase
      .from("course_units")
      .select("unit_code, unit_name, unit_order")
      .eq("exam_type", examType)
      .order("unit_order", { ascending: true });
    if (!error && data && data.length > 0) {
      return data.map(
        (
          row: {
            unit_code: string;
            unit_name: string;
            unit_order: number | null;
          },
          i: number,
        ) => ({
          unit_code: row.unit_code,
          title: row.unit_name,
          sort_order: row.unit_order ?? i + 1,
        }),
      );
    }
  } catch {
    // Table may not exist yet.
  }

  // 2) Planner-skills JSON pack (server only).
  const fromFile = await loadPlannerSkillsFile(examType);
  if (fromFile?.length) return fromFile;

  // 3) Exhaustive catalog JSON (src/data/ap-ib-course-catalog.json)
  const catalogCourse = getApIbCourse(examType);
  if (catalogCourse) {
    const rawUnits = Array.isArray(catalogCourse.units) ? catalogCourse.units : [];
    if (rawUnits.length > 0) {
      const mapped: CourseUnit[] = [];
      for (let i = 0; i < rawUnits.length; i++) {
        const u = rawUnits[i];
        if (typeof u === "string") {
          mapped.push({
            unit_code: unitCodeFromTitle(u, i),
            title: u,
            sort_order: i + 1,
          });
        } else if (u && typeof u === "object") {
          const row = u as {
            unit_code?: string;
            code?: string;
            title?: string;
            name?: string;
            sort_order?: number;
          };
          const title = row.title || row.name || `Unit ${i + 1}`;
          mapped.push({
            unit_code: row.unit_code || row.code || unitCodeFromTitle(title, i),
            title,
            sort_order: row.sort_order ?? i + 1,
          });
        }
      }
      if (mapped.length > 0) return mapped;
    }
  }

  // 4) subject_registry.topics
  const { data: reg } = await supabase
    .from("subject_registry")
    .select("topics")
    .eq("exam_type", examType)
    .maybeSingle();

  const topics = Array.isArray(reg?.topics)
    ? (reg.topics as unknown[]).filter((t): t is string => typeof t === "string")
    : [];
  if (topics.length > 0) return unitsFromTitles(topics);

  // 5) Static seed fallback
  const staticTopics = STATIC_COURSE_TOPICS[examType];
  if (staticTopics?.length) return unitsFromTitles(staticTopics);

  // Last resort: a single placeholder so planner/unit-test UI still renders.
  return [
    {
      unit_code: "U1_core",
      title: "Core topics",
      sort_order: 1,
    },
  ];
}

/**
 * Sync unit titles for client-side planner wizards (no DB).
 * Prefers static packs → catalog units → catalog sections.
 */
export function syncCourseUnitTitles(examType: string): string[] {
  const staticTopics = STATIC_COURSE_TOPICS[examType];
  if (staticTopics?.length) return [...staticTopics];

  const course = getApIbCourse(examType);
  if (course) {
    const rawUnits = Array.isArray(course.units) ? course.units : [];
    const fromUnits: string[] = [];
    for (const u of rawUnits) {
      if (typeof u === "string") fromUnits.push(u);
      else if (u && typeof u === "object") {
        const row = u as { title?: string; name?: string };
        const title = row.title || row.name;
        if (title) fromUnits.push(title);
      }
    }
    if (fromUnits.length) return fromUnits;
    if (course.sections?.length) return [...course.sections];
  }

  return ["Core topics"];
}
