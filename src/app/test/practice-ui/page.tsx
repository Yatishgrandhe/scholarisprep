"use client";

import { notFound } from "next/navigation";
import { QuestionInterface } from "@/components/question/QuestionInterface";
import { DIAGNOSTIC_FALLBACK_QUESTIONS } from "@/lib/onboarding/diagnosticFallback";

export default function PracticeUiTestPage() {
  if (process.env.NODE_ENV === "production") {
    notFound();
  }

  const question = DIAGNOSTIC_FALLBACK_QUESTIONS[0]!;

  return (
    <QuestionInterface
      question={question}
      questionNumber={1}
      totalQuestions={10}
      sessionType="practice"
      elapsedSeconds={42}
      onFlag={() => {}}
      onAttemptRecorded={() => {}}
      onNext={() => {}}
    />
  );
}
