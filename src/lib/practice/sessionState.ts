import type { Question } from "@/components/question/QuestionInterface";
import type { PracticeSessionState } from "@/stores/examStore";

export function practiceQuestionCount(session: PracticeSessionState): number {
  return session.questionOrder.length > 0
    ? session.questionOrder.length
    : session.questions.length;
}

export function practiceQuestionAt(
  session: PracticeSessionState,
  index: number,
): Question | undefined {
  return session.questions[index];
}

export function practiceSessionHasPendingQuestions(
  session: PracticeSessionState,
): boolean {
  return practiceQuestionCount(session) > session.questions.length;
}
