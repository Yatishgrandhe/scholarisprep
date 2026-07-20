/**
 * AP/IB course catalog helpers for onboarding and subject switchers.
 * Source of truth: src/data/ap-ib-course-catalog.json
 * (Kept under src/ so Vercel uploads include it; scripts/data/** is .vercelignore'd.)
 */
import catalogJson from "@/data/ap-ib-course-catalog.json";
import type { ExamType } from "@/types/supabase";
import type { CalculatorPolicy } from "@/lib/subjectContext";

export type ApIbFamily = "AP" | "IB";

export type ApIbQuestionMix = {
  mcq: number;
  frq: number;
};

export type ApIbCatalogCourse = {
  exam_type: ExamType;
  display_name: string;
  family: ApIbFamily;
  category: string;
  short_code: string;
  units: unknown[];
  form_count: number;
  sections: string[];
  calculator_policy: CalculatorPolicy;
  calculator_notes: string;
  question_mix: ApIbQuestionMix;
  question_formats: string[];
  score_range: { min: number; max: number };
  time_limits: Record<string, number>;
  exam_duration_minutes: number | null;
  total_questions_full_exam: number | null;
  passing_score: number | null;
  has_stimulus: boolean;
  stimulus_types: string[];
  legacy?: boolean;
  bank_mode?: string;
  notes?: string;
  aliases_to?: string;
  ib_group?: number | string;
  level?: string;
  language_pack?: boolean;
  tutor_blurb?: string;
};

export type ApIbCatalog = {
  version: number;
  updated: string;
  description: string;
  form_ids: string[];
  stats: {
    ap_primary: number;
    ap_legacy: number;
    ib: number;
    total: number;
  };
  courses: ApIbCatalogCourse[];
};

export const AP_IB_CATALOG = catalogJson as unknown as ApIbCatalog;

export const AP_IB_FORM_IDS = AP_IB_CATALOG.form_ids;

/** All catalog exam_types (includes legacy coarse AP aliases). */
export function listApIbCourses(options?: {
  includeLegacy?: boolean;
  family?: ApIbFamily;
}): ApIbCatalogCourse[] {
  const includeLegacy = options?.includeLegacy ?? false;
  return AP_IB_CATALOG.courses.filter((c) => {
    if (!includeLegacy && c.legacy) return false;
    if (options?.family && c.family !== options.family) return false;
    return true;
  });
}

/** Group courses by category (AP subject area / IB group). */
export function groupApIbCoursesByCategory(
  courses: ApIbCatalogCourse[] = listApIbCourses(),
): Record<string, ApIbCatalogCourse[]> {
  const groups: Record<string, ApIbCatalogCourse[]> = {};
  for (const course of courses) {
    const key = course.category;
    if (!groups[key]) groups[key] = [];
    groups[key].push(course);
  }
  return groups;
}

export function getApIbCourse(examType: string): ApIbCatalogCourse | undefined {
  return AP_IB_CATALOG.courses.find((c) => c.exam_type === examType);
}

/** Resolve legacy coarse AP_* codes to preferred precise codes. */
export function resolveCanonicalExamType(examType: string): string {
  const course = getApIbCourse(examType);
  if (course?.aliases_to) return course.aliases_to;
  return examType;
}

export function isApExamType(examType: string): boolean {
  return examType.startsWith("AP_");
}

export function isIbExamType(examType: string): boolean {
  return examType.startsWith("IB_");
}

export function isApOrIbExamType(examType: string): boolean {
  return isApExamType(examType) || isIbExamType(examType);
}

/** Aliases used by onboarding / nav / product surfaces. */
export const isApExam = isApExamType;
export const isIbExam = isIbExamType;
export const isApOrIbExam = isApOrIbExamType;

export function toExamType(code: string): ExamType {
  return code as ExamType;
}

export function apIbDisplayName(exam: string): string {
  return getApIbCourse(exam)?.display_name ?? exam.replace(/_/g, " ");
}

/**
 * Compact badge label for SubjectSwitcher / tabs.
 * Catalog `short_code` is often the full snake enum — derive a human short
 * name from display_name instead (e.g. "Calc AB", "Bio HL").
 */
export function apIbShortCode(exam: string): string {
  const course = getApIbCourse(exam);
  if (course) {
    const raw = course.short_code?.trim();
    // Only trust curated short codes that aren't the enum itself.
    if (
      raw &&
      raw !== course.exam_type &&
      !raw.includes("_") &&
      raw.length <= 14
    ) {
      return raw;
    }
    return abbreviateApIbName(course.display_name);
  }
  return abbreviateApIbName(exam.replace(/_/g, " "));
}

function abbreviateApIbName(displayName: string): string {
  let s = displayName
    .replace(/^AP\s+/i, "")
    .replace(/^IB\s+/i, "")
    .replace(/and Design/gi, "Des")
    .replace(/Computer Science Principles/gi, "CSP")
    .replace(/Computer Science A/gi, "CSA")
    .replace(/Computer Science/gi, "CS")
    .replace(/African American Studies/gi, "Afam")
    .replace(/Environmental Science/gi, "Env Sci")
    .replace(/Human Geography/gi, "Hum Geo")
    .replace(/Comparative Government/gi, "Comp Gov")
    .replace(/US Government/gi, "US Gov")
    .replace(/World History/gi, "World Hist")
    .replace(/European History/gi, "Euro Hist")
    .replace(/US History/gi, "USH")
    .replace(/Art History/gi, "Art Hist")
    .replace(/Music Theory/gi, "Music")
    .replace(/English Language/gi, "Eng Lang")
    .replace(/English Literature/gi, "Eng Lit")
    .replace(/Spanish Language/gi, "Span Lang")
    .replace(/Spanish Literature/gi, "Span Lit")
    .replace(/Language and Literature/gi, "LAL")
    .replace(/Literature/gi, "Lit")
    .replace(/Analysis and Approaches/gi, "AA")
    .replace(/Applications and Interpretation/gi, "AI")
    .replace(/Calculus/gi, "Calc")
    .replace(/Precalculus/gi, "Precalc")
    .replace(/Statistics/gi, "Stats")
    .replace(/Biology/gi, "Bio")
    .replace(/Chemistry/gi, "Chem")
    .replace(/Physics/gi, "Phys")
    .replace(/Psychology/gi, "Psych")
    .replace(/Macroeconomics/gi, "Macro")
    .replace(/Microeconomics/gi, "Micro")
    .replace(/Economics/gi, "Econ")
    .replace(/Mathematics/gi, "Math")
    .replace(/Business Management/gi, "Bus Mgmt")
    .replace(/Global Politics/gi, "Glob Pol")
    .replace(/Visual Arts/gi, "Vis Arts")
    .replace(/Design Technology/gi, "Des Tech")
    .replace(/Digital Society/gi, "Dig Soc")
    .replace(/English A/gi, "Eng A")
    .replace(/English B/gi, "Eng B")
    .replace(/:\s*/g, " ")
    .replace(/\s+/g, " ")
    .trim();

  if (s.length > 12) {
    s = `${s.slice(0, 11).trimEnd()}…`;
  }
  return s || "AP/IB";
}

/** Word Bank eligible: language packs + world-language / language-acquisition courses. */
export function isLanguageCourse(exam: string): boolean {
  const course = getApIbCourse(exam);
  if (!course) return false;
  if (course.language_pack) return true;
  const cat = course.category.toLowerCase();
  if (cat.includes("language") || cat.includes("world languages")) return true;
  const code = course.exam_type;
  return (
    /_(CHINESE|FRENCH|GERMAN|ITALIAN|JAPANESE|LATIN|SPANISH)/.test(code) ||
    /_B_(SL|HL)$/.test(code) ||
    /ENGLISH_A_/.test(code) ||
    /ENGLISH_B_/.test(code)
  );
}

export type ApIbCourse = ApIbCatalogCourse;

export function coursesForFamily(family: ApIbFamily): ApIbCatalogCourse[] {
  return listApIbCourses({ family, includeLegacy: false });
}

export function filterCourses(
  family: ApIbFamily,
  query: string,
): ApIbCatalogCourse[] {
  const q = query.trim().toLowerCase();
  const list = coursesForFamily(family);
  if (!q) return list;
  return list.filter(
    (c) =>
      c.display_name.toLowerCase().includes(q) ||
      c.short_code.toLowerCase().includes(q) ||
      c.category.toLowerCase().includes(q) ||
      c.exam_type.toLowerCase().includes(q),
  );
}

export function groupCourses(
  courses: ApIbCatalogCourse[],
): { group: string; courses: ApIbCatalogCourse[] }[] {
  const order: string[] = [];
  const map = new Map<string, ApIbCatalogCourse[]>();
  for (const course of courses) {
    const key = course.category;
    if (!map.has(key)) {
      map.set(key, []);
      order.push(key);
    }
    map.get(key)!.push(course);
  }
  return order.map((group) => ({ group, courses: map.get(group)! }));
}

/** Lookup used by Scho preload / registry fallbacks. */
export function catalogEntryForExam(examType: string): ApIbCatalogCourse | undefined {
  return getApIbCourse(examType);
}

/** Lightweight tutor preload text when per-course JSON is missing. */
export function generateTutorPreloadBlock(examType: string): string {
  const course = getApIbCourse(examType);
  if (!course) {
    if (isApExamType(examType) || isIbExamType(examType)) {
      const family = isApExamType(examType) ? "AP" : "IB";
      return [
        `COURSE PRELOAD (${apIbDisplayName(examType)}):`,
        `Family: ${family}`,
        family === "IB"
          ? "Use IB command terms and paper/markscheme structure."
          : "Emphasize CED skills, FRQ rubrics, and clear evidence.",
      ].join("\n");
    }
    return `COURSE PRELOAD (${examType}): Use official course outline; score scale per registry.`;
  }
  const lines = [
    `COURSE PRELOAD (${course.display_name}):`,
    `Family: ${course.family} · Category: ${course.category}`,
    `Sections: ${course.sections.join(", ") || "standard"}`,
    `Score range: ${course.score_range.min}–${course.score_range.max}`,
    `Calculator: ${course.calculator_policy}${
      course.calculator_notes ? ` (${course.calculator_notes})` : ""
    }`,
    `Formats: ${course.question_formats.join(", ")}`,
    `Mix: MCQ ${Math.round(course.question_mix.mcq * 100)}% / FRQ ${Math.round(course.question_mix.frq * 100)}%`,
  ];
  if (course.tutor_blurb) lines.push(course.tutor_blurb);
  if (course.notes) lines.push(`Notes: ${course.notes}`);
  if (course.family === "IB") {
    lines.push(
      "IB command terms: define, describe, explain, distinguish, analyse, evaluate, discuss — match depth to the verb.",
    );
  } else {
    lines.push(
      "AP FRQs: show work, label parts (a)(b)(c), and coach partial-credit reasoning.",
    );
  }
  return lines.join("\n");
}

export function challengeCopyForExam(examType: string): string {
  if (isApExamType(examType)) {
    return "Hard-tier AP practice by unit — aimed at students pushing for a 5. Browse course units with live counts, then launch a focused hard session (challenge-only rows when available).";
  }
  if (isIbExamType(examType)) {
    return "Hard-tier IB practice by topic — aimed at students pushing for a 7. Browse course units with live counts, then launch a focused hard session (challenge-only rows when available).";
  }
  if (examType === "ACT") {
    return "The hardest items in the bank — built for students pushing for a top composite. Browse modules with live counts and skill progress, then launch a focused challenge session.";
  }
  return "The hardest items in the bank, built for students pushing past 1450. Browse domains with live counts and skill progress, then launch a focused challenge session.";
}

/** Course AI hub — AP + IB from catalog plus SAT/ACT standardized exams. */
export type TutorHubFamily = ApIbFamily | "SAT" | "ACT";

export type TutorHubCourse = {
  exam_type: string;
  display_name: string;
  family: TutorHubFamily;
  category: string;
  short_code: string;
};

const STANDARDIZED_TUTOR_COURSES: TutorHubCourse[] = [
  {
    exam_type: "SAT",
    display_name: "Digital SAT",
    family: "SAT",
    category: "College Admissions",
    short_code: "SAT",
  },
  {
    exam_type: "ACT",
    display_name: "ACT",
    family: "ACT",
    category: "College Admissions",
    short_code: "ACT",
  },
];

const TUTOR_HUB_FAMILY_LABELS: Record<TutorHubFamily, string> = {
  SAT: "SAT",
  ACT: "ACT",
  AP: "Advanced Placement",
  IB: "International Baccalaureate",
};

/** All tutor-hub courses: SAT, ACT, and every AP/IB row in the catalog. */
export function listTutorHubCourses(options?: {
  includeLegacy?: boolean;
}): TutorHubCourse[] {
  const apIb = listApIbCourses({
    includeLegacy: options?.includeLegacy ?? false,
  }).map(
    (c): TutorHubCourse => ({
      exam_type: c.exam_type,
      display_name: c.display_name,
      family: c.family,
      category: c.category,
      short_code: apIbShortCode(c.exam_type),
    }),
  );
  return [...STANDARDIZED_TUTOR_COURSES, ...apIb];
}

export function getTutorHubCourse(examType: string): TutorHubCourse | undefined {
  const standardized = STANDARDIZED_TUTOR_COURSES.find(
    (c) => c.exam_type === examType,
  );
  if (standardized) return standardized;
  const apIb = getApIbCourse(examType);
  if (!apIb) return undefined;
  return {
    exam_type: apIb.exam_type,
    display_name: apIb.display_name,
    family: apIb.family,
    category: apIb.category,
    short_code: apIbShortCode(apIb.exam_type),
  };
}

export function filterTutorHubCourses(
  query: string,
  courses: TutorHubCourse[] = listTutorHubCourses(),
): TutorHubCourse[] {
  const q = query.trim().toLowerCase();
  if (!q) return courses;
  return courses.filter(
    (c) =>
      c.display_name.toLowerCase().includes(q) ||
      c.short_code.toLowerCase().includes(q) ||
      c.category.toLowerCase().includes(q) ||
      c.exam_type.toLowerCase().includes(q),
  );
}

export function groupTutorHubCourses(
  courses: TutorHubCourse[] = listTutorHubCourses(),
): { family: TutorHubFamily; label: string; courses: TutorHubCourse[] }[] {
  const order: TutorHubFamily[] = ["SAT", "ACT", "AP", "IB"];
  return order
    .map((family) => ({
      family,
      label: TUTOR_HUB_FAMILY_LABELS[family],
      courses: courses.filter((c) => c.family === family),
    }))
    .filter((g) => g.courses.length > 0);
}
