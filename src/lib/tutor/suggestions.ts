import {
  apIbDisplayName,
  isApOrIbExam,
} from "@/lib/apIbCatalog";
import {
  getCourseTutorContextFallback,
  type TutorSuggestion,
} from "@/lib/courseTutorContext";
import type { ExamType } from "@/types/supabase";

export type { TutorSuggestion };

const SAT_ACT_SUGGESTIONS: TutorSuggestion[] = [
  { lead: "Quiz me", text: "with 5 practice questions on my weakest topic" },
  { lead: "Explain", text: "a grammar rule I keep getting wrong" },
  { lead: "Help me study", text: "for the section I struggle with most" },
  { lead: "Strategies for", text: "managing my time on test day" },
  { lead: "Show me", text: "how to break down a hard math problem" },
];

/** Catalog-aware label for tutor empty states and greetings. */
export function tutorExamLabel(
  examType: ExamType | string,
  configName?: string | null,
): string {
  if (configName) return configName;
  if (isApOrIbExam(examType)) return apIbDisplayName(examType);
  if (examType === "SAT" || examType === "ACT" || examType === "PSAT") {
    return examType;
  }
  return String(examType).replace(/_/g, " ");
}

export function tutorGreeting(examType: ExamType | string, label: string): string {
  if (isApOrIbExam(examType)) {
    return `Hi! I'm Scho, your AI tutor. Ask me anything about ${label}.`;
  }
  return "Hi! I'm Scho, your AI tutor. Ask me anything about SAT, ACT, or your study plan.";
}

export function tutorEmptyLead(label: string): string {
  return `Ask me anything about ${label}`;
}

export function tutorSuggestions(
  examType: ExamType | string,
  label: string,
): TutorSuggestion[] {
  if (isApOrIbExam(examType)) {
    const fallback = getCourseTutorContextFallback(examType);
    if (label !== fallback.displayName) {
      return fallback.suggestions.map((s) => ({
        ...s,
        text: s.text.replace(fallback.displayName, label),
      }));
    }
    return fallback.suggestions;
  }
  return SAT_ACT_SUGGESTIONS;
}
