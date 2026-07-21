"use client";

import { useCallback, useState } from "react";
import Link from "next/link";
import { ArrowLeft, Lightning } from "@phosphor-icons/react";
import { toast } from "sonner";
import { NoteQuiz } from "@/components/free-study/NoteQuiz";
import {
  generateQuiz,
  type GenerateQuizQuestion,
} from "@/lib/free-study/generateQuiz";
import styles from "@/components/free-study/free-study-quiz.module.css";

export default function FreeStudyQuizPage() {
  const [text, setText] = useState("");
  const [questions, setQuestions] = useState<GenerateQuizQuestion[]>([]);
  const [generating, setGenerating] = useState(false);
  const [showQuiz, setShowQuiz] = useState(false);

  const canGenerate = text.replace(/\s/g, "").length >= 40;

  const handleGenerate = useCallback(async () => {
    if (!canGenerate) return;
    setGenerating(true);
    try {
      const result = await generateQuiz({ text, count: 5 });
      setQuestions(result.questions);
      setShowQuiz(true);
    } catch (err) {
      toast.error(
        err instanceof Error ? err.message : "Failed to generate quiz",
      );
    } finally {
      setGenerating(false);
    }
  }, [text, canGenerate]);

  if (showQuiz && questions.length > 0) {
    return (
      <NoteQuiz
        questions={questions}
        onComplete={(score) => {
          toast.success(
            `Quiz done — ${score.correct} of ${score.total} correct`,
          );
        }}
        onClose={() => {
          setShowQuiz(false);
          setQuestions([]);
        }}
      />
    );
  }

  return (
    <div className={styles.page}>
      <Link href="/dashboard/free-study" className={styles.backLink}>
        <ArrowLeft size={14} weight="bold" aria-hidden />
        Back to Free Studying
      </Link>

      <h1 className={styles.title}>Quiz Generator</h1>
      <p className={styles.subtitle}>
        Paste your study material below and we&apos;ll generate a quiz to test
        your knowledge.
      </p>

      <div className={styles.inputSection}>
        <textarea
          className={styles.textarea}
          value={text}
          onChange={(e) => setText(e.target.value)}
          placeholder="Paste your notes, textbook content, or study material here..."
          rows={8}
        />
        <button
          type="button"
          className={styles.generateBtn}
          onClick={handleGenerate}
          disabled={!canGenerate || generating}
        >
          {generating ? (
            <span className={styles.loadingDots}>
              <span /><span /><span />
            </span>
          ) : (
            <>
              <Lightning size={16} weight="fill" aria-hidden />
              Generate Quiz
            </>
          )}
        </button>
      </div>
    </div>
  );
}
