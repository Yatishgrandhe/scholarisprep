import type { Question } from "@/components/question/QuestionInterface";
import type { AttemptRecord } from "@/stores/examStore";

export type {
  BankDifficulty,
  DifficultyTone,
  QuestionDifficulty,
} from "@/lib/question/difficulty";

export {
  resolveBankDifficulty,
  resolveQuestionBankDifficulty,
  normalizeQuestionDifficulty,
  formatDifficultyLabel,
  difficultyTone,
} from "@/lib/question/difficulty";

export type QuestionBankStatus =
  | "unanswered"
  | "correct"
  | "incorrect"
  | "review"
  | "correct_after_wrong";

export function resolveQuestionBankStatus(
  questionId: string,
  attempts: Record<string, AttemptRecord>,
  flaggedIds: string[],
  priorIncorrectIds: ReadonlySet<string>,
  pastIncorrectIds?: ReadonlySet<string>,
): QuestionBankStatus {
  if (flaggedIds.includes(questionId)) return "review";
  const attempt = attempts[questionId];
  if (!attempt) return "unanswered";
  if (attempt.isCorrect) {
    if (
      attempt.hadPriorIncorrect ||
      priorIncorrectIds.has(questionId) ||
      pastIncorrectIds?.has(questionId)
    ) {
      return "correct_after_wrong";
    }
    return "correct";
  }
  return "incorrect";
}

export function groupAnsweredIndices(
  total: number,
  attempts: Record<string, AttemptRecord>,
  questions: Question[],
  enabled: boolean,
): number[] {
  const indices = Array.from({ length: total }, (_, i) => i);
  if (!enabled) return indices;
  const unanswered: number[] = [];
  const answered: number[] = [];
  for (const i of indices) {
    const q = questions[i];
    if (q && attempts[q.id]) answered.push(i);
    else unanswered.push(i);
  }
  return [...unanswered, ...answered];
}
