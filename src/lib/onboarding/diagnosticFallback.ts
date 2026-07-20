import type { Question } from "@/components/question/QuestionInterface";
import {
  buildDiagnosticBlueprint,
  DIAGNOSTIC_QUESTION_COUNT,
} from "./diagnosticBlueprint";
import { DIAGNOSTIC_SEED_KEY } from "./diagnostic";
import { stubDiagnosticQuestion } from "./generateDiagnosticQuestion";

/** Client-side fallback when AI diagnostic generation is unavailable. */
export function buildDiagnosticFallbackQuestions(
  examType = "SAT",
  sessionSeed?: string,
): Question[] {
  const seed =
    sessionSeed ??
    `${DIAGNOSTIC_SEED_KEY}_fallback_${Date.now()}_${Math.random().toString(36).slice(2)}`;
  const slots = buildDiagnosticBlueprint(seed, examType);

  return slots.map((slot) => {
    const generated = stubDiagnosticQuestion(slot, seed, examType);
    const sectionLabel =
      slot.section === "math" ? "SAT Math" : "SAT Reading & Writing";
    return {
      id: crypto.randomUUID(),
      question_text: generated.question_text,
      stimulus_text: generated.stimulus_text ?? undefined,
      stimulus_type:
        generated.stimulus_type === "passage" ? "passage" : undefined,
      options: generated.options.map((o) => ({
        ...o,
        explanation: generated.explanation,
      })),
      explanation: generated.explanation,
      hint: generated.hint,
      topic: generated.topic,
      difficulty: "hard" as const,
      section: sectionLabel,
      calculator_allowed: generated.calculator_allowed,
    };
  });
}

/** @deprecated Use buildDiagnosticFallbackQuestions — kept for test page compatibility. */
export const DIAGNOSTIC_FALLBACK_QUESTIONS: Question[] =
  buildDiagnosticFallbackQuestions("SAT", `${DIAGNOSTIC_SEED_KEY}_static`);

export { DIAGNOSTIC_SEED_KEY, DIAGNOSTIC_QUESTION_COUNT };
