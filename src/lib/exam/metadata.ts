import type { DigitalSatModuleKey, ExamSectionFilter } from "./config";

export type AdaptiveVariant = "easy" | "hard";

export type ExamSectionMeta = {
  key: DigitalSatModuleKey | string;
  label: string;
  filter_section: ExamSectionFilter | string;
  module_index?: 1 | 2;
  question_ids: string[];
  time_limit_seconds: number;
  completed_at?: string | null;
  /** Adaptive Module 2: both routes are pre-assigned; one is chosen from Module 1. */
  adaptive?: boolean;
  variant_options?: { easy: string[]; hard: string[] };
  chosen_variant?: AdaptiveVariant | null;
};

export type FullExamMetadata = {
  exam_mode: "full" | "section" | "simulator";
  sections: ExamSectionMeta[];
  current_section_index: number;
  flagged_question_ids: string[];
  /** Which question pool was used when the session was created. */
  question_pool?: "official" | "platform" | "simulator";
  /** Exam Simulator form (1–4) when exam_mode is simulator. */
  simulator_form?: number;
  simulator_id?: string;
  /** AP/IB full-length Forms A–J. */
  form_letter?: string;
  /** Whether the user skipped the RW → Math break. */
  break_skipped?: boolean;
  /** Break phase between RW Module 2 and Math Module 1. */
  break_status?: "active" | "completed";
  /** ISO timestamp when the break countdown started (for resume). */
  break_started_at?: string;
  /** Pause & resume: in-progress answers + cursor + remaining time for the current section. */
  saved_answers?: Record<string, string>;
  current_question_index?: number;
  section_time_left_seconds?: number;
  paused?: boolean;
  paused_at?: string | null;
  /** Section sub-scores (200–800) stored when the exam is finished. */
  score_rw?: number;
  score_math?: number;
  /** Graded FRQ correctness by question id (null = unscored). */
  frq_correctness?: Record<string, boolean | null>;
};

export function parseExamMetadata(raw: unknown): FullExamMetadata | null {
  if (!raw || typeof raw !== "object") return null;
  const m = raw as Record<string, unknown>;
  if (!Array.isArray(m.sections)) return null;
  return {
    exam_mode:
      m.exam_mode === "section"
        ? "section"
        : m.exam_mode === "simulator"
          ? "simulator"
          : "full",
    current_section_index:
      typeof m.current_section_index === "number" ? m.current_section_index : 0,
    flagged_question_ids: Array.isArray(m.flagged_question_ids)
      ? (m.flagged_question_ids as string[])
      : [],
    sections: (m.sections as ExamSectionMeta[]).map((section) => ({
      ...section,
      filter_section:
        section.filter_section ??
        (String(section.key).includes("math") ? "math" : "reading_writing"),
    })),
    question_pool:
      m.question_pool === "platform"
        ? "platform"
        : m.question_pool === "simulator"
          ? "simulator"
          : m.question_pool === "official"
            ? "official"
            : undefined,
    simulator_form:
      typeof m.simulator_form === "number" ? m.simulator_form : undefined,
    simulator_id:
      typeof m.simulator_id === "string" ? m.simulator_id : undefined,
    form_letter:
      typeof m.form_letter === "string" ? m.form_letter : undefined,
    break_skipped: m.break_skipped === true,
    break_status:
      m.break_status === "active" || m.break_status === "completed"
        ? m.break_status
        : undefined,
    break_started_at:
      typeof m.break_started_at === "string" ? m.break_started_at : undefined,
    saved_answers:
      m.saved_answers && typeof m.saved_answers === "object" && !Array.isArray(m.saved_answers)
        ? (m.saved_answers as Record<string, string>)
        : undefined,
    current_question_index:
      typeof m.current_question_index === "number" ? m.current_question_index : undefined,
    section_time_left_seconds:
      typeof m.section_time_left_seconds === "number"
        ? m.section_time_left_seconds
        : undefined,
    paused: m.paused === true,
    paused_at: typeof m.paused_at === "string" ? m.paused_at : undefined,
    frq_correctness:
      m.frq_correctness &&
      typeof m.frq_correctness === "object" &&
      !Array.isArray(m.frq_correctness)
        ? (m.frq_correctness as Record<string, boolean | null>)
        : undefined,
  };
}
