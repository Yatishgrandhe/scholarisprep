/**
 * Digital SAT (Bluebook) timing and structure.
 * @see docs/digital-sat-full-exam.md
 */

export type ExamSectionFilter = "reading_writing" | "math";

export type DigitalSatModuleKey =
  | "rw_module_1"
  | "rw_module_2"
  | "math_module_1"
  | "math_module_2";

/** Legacy section keys used for single-section practice exams. */
export type ExamSectionKey = ExamSectionFilter;

export type DigitalSatModule = {
  key: DigitalSatModuleKey;
  label: string;
  durationMinutes: number;
  questionCount: number;
  filterSection: ExamSectionFilter;
  moduleIndex: 1 | 2;
};

/** Four adaptive-style modules as delivered on test day (fixed counts/timing). */
export const DIGITAL_SAT_MODULES: DigitalSatModule[] = [
  {
    key: "rw_module_1",
    label: "Reading and Writing — Module 1",
    durationMinutes: 32,
    questionCount: 27,
    filterSection: "reading_writing",
    moduleIndex: 1,
  },
  {
    key: "rw_module_2",
    label: "Reading and Writing — Module 2",
    durationMinutes: 32,
    questionCount: 27,
    filterSection: "reading_writing",
    moduleIndex: 2,
  },
  {
    key: "math_module_1",
    label: "Math — Module 1",
    durationMinutes: 35,
    questionCount: 22,
    filterSection: "math",
    moduleIndex: 1,
  },
  {
    key: "math_module_2",
    label: "Math — Module 2",
    durationMinutes: 35,
    questionCount: 22,
    filterSection: "math",
    moduleIndex: 2,
  },
];

export type ExamSectionConfig = {
  key: ExamSectionKey;
  label: string;
  durationMinutes: number;
  questionCount: number;
  filterSection: ExamSectionFilter;
  /** Module breakdown when running section-only in Bluebook fidelity mode. */
  modules: DigitalSatModule[];
};

function aggregateSection(
  filterSection: ExamSectionFilter,
  label: string,
): ExamSectionConfig {
  const modules = DIGITAL_SAT_MODULES.filter(
    (m) => m.filterSection === filterSection,
  );
  return {
    key: filterSection,
    label,
    durationMinutes: modules.reduce((s, m) => s + m.durationMinutes, 0),
    questionCount: modules.reduce((s, m) => s + m.questionCount, 0),
    filterSection,
    modules,
  };
}

/** Section-level summary (RW 64 min / 54 Q, Math 70 min / 44 Q). */
export const SAT_FULL_EXAM_SECTIONS: ExamSectionConfig[] = [
  aggregateSection("reading_writing", "Reading and Writing"),
  aggregateSection("math", "Math"),
];

export const DIGITAL_SAT_TOTAL_QUESTIONS = DIGITAL_SAT_MODULES.reduce(
  (s, m) => s + m.questionCount,
  0,
);

export const DIGITAL_SAT_TOTAL_MINUTES = DIGITAL_SAT_MODULES.reduce(
  (s, m) => s + m.durationMinutes,
  0,
);

/** Official break between Reading & Writing and Math (Bluebook). */
export const DIGITAL_SAT_BREAK_MINUTES = 10;
export const DIGITAL_SAT_BREAK_SECONDS = DIGITAL_SAT_BREAK_MINUTES * 60;

export function modulesForExamMode(
  mode: "full" | "section",
  sectionKey?: ExamSectionKey,
): DigitalSatModule[] {
  if (mode === "full") return DIGITAL_SAT_MODULES;
  return DIGITAL_SAT_MODULES.filter((m) => m.filterSection === sectionKey);
}

export function moduleDurationSeconds(module: DigitalSatModule): number {
  return module.durationMinutes * 60;
}

export function sectionDurationSeconds(section: ExamSectionConfig): number {
  return section.durationMinutes * 60;
}
