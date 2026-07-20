import type { ExamType } from "@/types/supabase";
import {
  apIbDisplayName,
  isApExam,
  isIbExam,
} from "@/lib/apIbCatalog";

/** Top-level onboarding program cards: SAT | ACT | AP | IB. */
export type OnboardingProgramKind = "SAT" | "ACT" | "AP" | "IB";

export const ONBOARDING_EXAM_PROGRAMS: {
  value: OnboardingProgramKind;
  label: string;
  description: string;
  diagnosticNote: string;
  /** Direct exam_type when the card maps 1:1 (SAT/ACT). */
  examType?: ExamType;
}[] = [
  {
    value: "SAT",
    label: "SAT",
    description: "Digital SAT: Reading, Writing & Math",
    diagnosticNote: "35-question adaptive-style baseline",
    examType: "SAT",
  },
  {
    value: "ACT",
    label: "ACT",
    description: "English, Math, Reading & Science",
    diagnosticNote: "Section-based timing and science reasoning",
    examType: "ACT",
  },
  {
    value: "AP",
    label: "AP",
    description: "Advanced Placement — pick one or more courses",
    diagnosticNote: "Course-scoped practice scored 1–5",
  },
  {
    value: "IB",
    label: "IB",
    description: "IB Diploma Programme — pick SL/HL subjects",
    diagnosticNote: "Subject-scoped practice scored 1–7",
  },
];

export const DIAGNOSTIC_QUEUE_KEY = "scholaris_onboarding_diagnostic_queue";

export function parseExamGoals(
  examGoals: ExamType[] | null | undefined,
  fallbackGoal: ExamType | null | undefined,
): ExamType[] {
  if (examGoals && examGoals.length > 0) {
    return [...new Set(examGoals)];
  }
  if (fallbackGoal) return [fallbackGoal];
  return ["SAT"];
}

export function examProgramLabel(exam: ExamType | string): string {
  if (exam === "SAT" || exam === "ACT") {
    return ONBOARDING_EXAM_PROGRAMS.find((p) => p.value === exam)?.label ?? exam;
  }
  if (isApExam(exam) || isIbExam(exam)) {
    return apIbDisplayName(exam);
  }
  return ONBOARDING_EXAM_PROGRAMS.find((p) => p.value === exam)?.label ?? String(exam);
}

export function scoreBoundsForExam(exam: ExamType | string): {
  min: number;
  max: number;
} {
  if (exam === "SAT") return { min: 400, max: 1600 };
  if (exam === "ACT") return { min: 1, max: 36 };
  if (exam === "JAMB") return { min: 120, max: 400 };
  if (exam === "GRE" || exam === "GMAT") return { min: 260, max: 340 };
  if (isApExam(exam)) return { min: 1, max: 5 };
  if (isIbExam(exam)) return { min: 1, max: 7 };
  return { min: 50, max: 100 };
}

export function defaultTargetForExam(exam: ExamType | string): number {
  if (exam === "SAT") return 1400;
  if (exam === "ACT") return 28;
  if (exam === "JAMB") return 280;
  if (exam === "GRE" || exam === "GMAT") return 320;
  if (isApExam(exam)) return 4;
  if (isIbExam(exam)) return 6;
  const bounds = scoreBoundsForExam(exam);
  return Math.round((bounds.min + bounds.max) / 2);
}

export function programKindForExam(exam: ExamType | string): OnboardingProgramKind | null {
  if (exam === "SAT") return "SAT";
  if (exam === "ACT") return "ACT";
  if (isApExam(exam)) return "AP";
  if (isIbExam(exam)) return "IB";
  return null;
}
