/**
 * AP/IB full-exam blueprint types + form letters.
 * Content agents later fill `src/lib/exam/blueprints/{exam_type}.json`.
 */

import type { FullExamFormLetter } from "@/lib/examFamily";
import { FULL_EXAM_FORM_LETTERS } from "@/lib/examFamily";

export type ExamBlueprintModule = {
  /** Stable key, e.g. `mcq_section_1` or `frq`. */
  key: string;
  label: string;
  durationMinutes: number;
  questionCount: number;
  /** Coarse filter for bank assembly (section / paper name). */
  filterSection: string;
  /** Optional: MCQ vs FRQ for grading UI. */
  questionFormat?: "multiple_choice" | "free_response" | "mixed";
};

export type ExamBlueprint = {
  examType: string;
  displayName: string;
  /** Forms A–J share the same module structure; pools are tagged by form letter. */
  modules: ExamBlueprintModule[];
  totalQuestions: number;
  totalMinutes: number;
  notes?: string;
};

export { FULL_EXAM_FORM_LETTERS };
export type { FullExamFormLetter };

export function formLetters(): FullExamFormLetter[] {
  return [...FULL_EXAM_FORM_LETTERS];
}

export function blueprintTotals(modules: ExamBlueprintModule[]): {
  totalQuestions: number;
  totalMinutes: number;
} {
  return {
    totalQuestions: modules.reduce((s, m) => s + m.questionCount, 0),
    totalMinutes: modules.reduce((s, m) => s + m.durationMinutes, 0),
  };
}

/** Default AP-style blueprint (MCQ + FRQ) when no course JSON exists yet. */
export function defaultApIbBlueprint(examType: string): ExamBlueprint {
  const displayName = examType.replace(/^AP_|^IB_/, "").replace(/_/g, " ");
  const modules: ExamBlueprintModule[] = [
    {
      key: "section_1_mcq",
      label: "Section I — Multiple Choice",
      durationMinutes: 90,
      questionCount: 40,
      filterSection: "multiple_choice",
      questionFormat: "multiple_choice",
    },
    {
      key: "section_2_frq",
      label: "Section II — Free Response",
      durationMinutes: 90,
      questionCount: 4,
      filterSection: "free_response",
      questionFormat: "free_response",
    },
  ];
  const totals = blueprintTotals(modules);
  return {
    examType,
    displayName,
    modules,
    ...totals,
    notes: "Scaffold default — replace with course CED/IB paper blueprint.",
  };
}
