"use client";

import type { Question } from "./QuestionInterface";
import { StepByStepExplanation } from "./StepByStepExplanation";

type ExplanationPanelProps = {
  question: Pick<
    Question,
    | "id"
    | "explanation"
    | "options"
    | "stimulus_text"
    | "stimulus_type"
    | "section"
  >;
  selectedOptionId?: string | null;
  /** @deprecated Use selectedOptionId */
  isCorrect?: boolean;
};

export function ExplanationPanel({
  question,
  selectedOptionId,
}: ExplanationPanelProps) {
  return (
    <StepByStepExplanation
      question={question}
      selectedOptionId={selectedOptionId}
      variant="inline"
      paper
    />
  );
}
