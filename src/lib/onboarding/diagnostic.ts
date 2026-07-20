import type { Question, Option } from "@/components/question/QuestionInterface";
import type { QuestionRow } from "@/lib/question/schema";
import { normalizeQuestionDifficulty } from "@/lib/question/difficulty";
import { scoreBoundsForExam } from "@/lib/onboarding/examPrograms";

/** Prefix for per-session diagnostic generation seeds (suffix is session UUID). */
export const DIAGNOSTIC_SEED_KEY = "onboarding_diagnostic_v2";

export { DIAGNOSTIC_QUESTION_COUNT } from "./diagnosticBlueprint";

function parseOptions(raw: QuestionRow["options"]): Option[] {
  if (!Array.isArray(raw)) return [];
  return raw
    .map((item) => {
      if (!item || typeof item !== "object") return null;
      const o = item as Record<string, unknown>;
      const id = String(o.id ?? "");
      const text = String(o.text ?? "");
      if (!id || !text) return null;
      return {
        id,
        text,
        is_correct: Boolean(o.is_correct),
        explanation: String(o.explanation ?? ""),
      };
    })
    .filter((o): o is Option => o !== null);
}

export function questionFromRow(row: QuestionRow): Question {
  return {
    id: row.id,
    question_text: row.question_text,
    stimulus_text: row.stimulus_text ?? undefined,
    stimulus_type: row.stimulus_text ? "passage" : undefined,
    options: parseOptions(row.options),
    explanation: row.explanation ?? "",
    hint: row.hint ?? "Take your time and eliminate clearly wrong choices.",
    topic: row.topic ?? row.section ?? "General",
    difficulty: normalizeQuestionDifficulty(row.difficulty),
    section: row.section ?? "Diagnostic",
    calculator_allowed: row.calculator_allowed ?? false,
  };
}

export type DiagnosticAnswer = {
  questionId: string;
  topic: string;
  section: string;
  selectedOption: string;
  /** Set after the learner taps Check Answer. */
  isCorrect: boolean;
  checked: boolean;
  hintUsed?: boolean;
  timeSpentSeconds?: number;
};

export function getDiagnosticAnswer(
  answers: DiagnosticAnswer[],
  questionId: string,
): DiagnosticAnswer | undefined {
  return answers.find((a) => a.questionId === questionId);
}

export function upsertDiagnosticAnswer(
  answers: DiagnosticAnswer[],
  entry: DiagnosticAnswer,
): DiagnosticAnswer[] {
  const index = answers.findIndex((a) => a.questionId === entry.questionId);
  if (index < 0) return [...answers, entry];
  const next = [...answers];
  next[index] = { ...next[index], ...entry };
  return next;
}

/** Answers submitted with Check Answer (used for scoring and upload). */
export function checkedDiagnosticAnswers(
  answers: DiagnosticAnswer[],
): DiagnosticAnswer[] {
  return answers.filter((a) => a.checked);
}

export function buildTopicScores(answers: DiagnosticAnswer[]) {
  const scores: Record<string, { correct: number; total: number }> = {};
  for (const answer of checkedDiagnosticAnswers(answers)) {
    const key = answer.topic || answer.section;
    if (!scores[key]) scores[key] = { correct: 0, total: 0 };
    scores[key].total += 1;
    if (answer.isCorrect) scores[key].correct += 1;
  }
  return scores;
}

export function baselineScoreFromAnswers(
  answers: DiagnosticAnswer[],
  examType: string,
): number {
  const scored = checkedDiagnosticAnswers(answers);
  const correct = scored.filter((a) => a.isCorrect).length;
  const total = Math.max(scored.length, 1);
  const ratio = correct / total;

  if (examType === "SAT") {
    return Math.round(400 + ratio * 1200);
  }
  if (examType === "ACT") {
    return Math.round(1 + ratio * 35);
  }
  if (examType === "JAMB") {
    return Math.round(120 + ratio * 280);
  }
  if (examType === "GRE" || examType === "GMAT") {
    return Math.round(260 + ratio * 80);
  }
  if (examType.startsWith("AP_")) {
    // AP 1–5 scale
    return Math.max(1, Math.min(5, Math.round(1 + ratio * 4)));
  }
  if (examType.startsWith("IB_")) {
    // IB 1–7 scale
    return Math.max(1, Math.min(7, Math.round(1 + ratio * 6)));
  }
  const { min, max } = scoreBoundsForExam(examType as never);
  return Math.round(min + ratio * (max - min));
}
