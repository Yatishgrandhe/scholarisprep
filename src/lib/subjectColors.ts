import type { ExamType } from "@/types/supabase";

/** Darker fills so white badge text meets WCAG AA (~4.5:1). */
export const SUBJECT_BADGE_COLORS: Partial<Record<ExamType, string>> = {
  SAT: "hsl(var(--exam-sat))",
  ACT: "hsl(var(--exam-act, 210 80% 50%))",
  JAMB: "hsl(var(--accent))",
  GRE: "hsl(270 55% 42%)",
  GMAT: "hsl(270 55% 42%)",
  AP_BIOLOGY: "hsl(145 55% 32%)",
  AP_CHEMISTRY: "hsl(200 70% 36%)",
  AP_PHYSICS: "hsl(220 65% 38%)",
  AP_CALCULUS_AB: "hsl(25 75% 38%)",
  AP_CALCULUS_BC: "hsl(15 80% 36%)",
  AP_STATISTICS: "hsl(180 50% 32%)",
  AP_ENGLISH: "hsl(330 55% 40%)",
  AP_US_HISTORY: "hsl(0 55% 38%)",
  AP_WORLD_HISTORY: "hsl(35 60% 34%)",
  AP_PSYCHOLOGY: "hsl(260 50% 42%)",
  AP_ECONOMICS: "hsl(90 45% 32%)",
  AP_COMPUTER_SCIENCE: "hsl(210 70% 36%)",
  CUSTOM: "hsl(var(--muted-foreground))",
};

export function subjectBadgeColor(examType: ExamType): string {
  if (SUBJECT_BADGE_COLORS[examType]) {
    return SUBJECT_BADGE_COLORS[examType]!;
  }
  if (examType.startsWith("AP_")) {
    return "hsl(var(--exam-ap))";
  }
  if (examType.startsWith("IB_")) {
    return "hsl(var(--exam-ib))";
  }
  return "hsl(var(--primary))";
}
