import type { Question } from "@/components/question/QuestionInterface";

export type TutorStreamContext = {
  exam_type?: string;
  topic?: string;
  question_text?: string;
  stimulus_text?: string;
  section?: string;
  selected_option?: string;
  is_correct?: boolean;
  correct_answer?: string;
  explanation?: string;
  options?: Array<{ id: string; text: string; is_correct?: boolean }>;
};

export function buildTutorStreamContext(
  question: Question,
  options?: {
    examType?: string;
    selectedOptionId?: string | null;
    isCorrect?: boolean;
  },
): TutorStreamContext {
  const correctOption = question.options.find((o) => o.is_correct);
  return {
    exam_type: options?.examType,
    topic: question.topic,
    section: question.section,
    question_text: question.question_text,
    stimulus_text: question.stimulus_text,
    selected_option: options?.selectedOptionId ?? undefined,
    is_correct: options?.isCorrect,
    correct_answer: correctOption?.id,
    explanation: question.explanation || undefined,
    options: question.options.map((o) => ({
      id: o.id,
      text: o.text,
      is_correct: o.is_correct,
    })),
  };
}
