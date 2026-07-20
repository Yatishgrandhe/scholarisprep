"use client";

import type { Question } from "@/components/question/QuestionInterface";
import { StepByStepExplanation } from "@/components/question/StepByStepExplanation";

type ExplanationSidePanelProps = {
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
  isCorrect?: boolean;
  onAskScho?: (prompt?: string) => void;
};

export function ExplanationSidePanel({
  question,
  selectedOptionId,
  onAskScho,
}: ExplanationSidePanelProps) {
  return (
    <StepByStepExplanation
      question={question}
      selectedOptionId={selectedOptionId}
      variant="drawer"
      showAskScho
      onAskScho={onAskScho}
    />
  );
}
