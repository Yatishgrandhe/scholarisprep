"use client";

import { aiRequest } from "@/lib/ai/clientKey";

import { useEffect, useRef, useState } from "react";
import { Sparkle } from "@phosphor-icons/react";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import styles from "./AIExplainPanel.module.css";

type AIExplainPanelProps = {
  question: {
    id: string;
    question_text: string;
    explanation: string;
    topic: string;
    exam_type?: string;
    section?: string;
    stimulus_text?: string;
  };
  selectedOptionId: string;
  isCorrect: boolean;
};

export function AIExplainPanel({
  question,
  selectedOptionId,
  isCorrect,
}: AIExplainPanelProps) {
  const [content, setContent] = useState("");
  const [loading, setLoading] = useState(true);
  const abortRef = useRef<AbortController | null>(null);

  useEffect(() => {
    abortRef.current = new AbortController();
    let cancelled = false;

    queueMicrotask(() => {
      setContent("");
      setLoading(true);
    });

    const appendGradually = async (text: string) => {
      for (const char of text) {
        if (cancelled) return;
        setContent((prev) => prev + char);
        await new Promise((resolve) => setTimeout(resolve, 10));
      }
    };

    void (async () => {
      try {
        const res = await aiRequest("/api/ai/explain-question", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            question_id: question.id,
            question_text: question.question_text,
            topic: question.topic,
            exam_type: question.exam_type,
            section: question.section,
            stimulus_text: question.stimulus_text ?? null,
            selected_option: selectedOptionId,
            is_correct: isCorrect,
          }),
          signal: abortRef.current!.signal,
        });

        if (!res.ok) {
          setContent("Could not load explanation. Please sign in and try again.");
          return;
        }

        const reader = res.body?.getReader();
        const decoder = new TextDecoder();
        if (!reader) return;

        while (true) {
          const { done, value } = await reader.read();
          if (done) break;
          const chunk = decoder.decode(value);
          for (const line of chunk.split("\n")) {
            if (line.startsWith("data: ") && line !== "data: [DONE]") {
              try {
                const { text } = JSON.parse(line.slice(6)) as { text: string };
                await appendGradually(text);
              } catch {
                /* ignore partial JSON */
              }
            }
          }
        }
      } catch (err: unknown) {
        if (err instanceof Error && err.name !== "AbortError") {
          setContent("Could not load explanation. Try again.");
        }
      } finally {
        if (!cancelled) setLoading(false);
      }
    })();

    return () => {
      cancelled = true;
      abortRef.current?.abort();
    };
  }, [
    question.id,
    question.question_text,
    question.topic,
    question.exam_type,
    question.section,
    question.stimulus_text,
    selectedOptionId,
    isCorrect,
  ]);

  return (
    <div className={styles.panel}>
      <div className={styles.header}>
        <Sparkle size={16} weight="fill" aria-hidden />
        <span>{loading ? "Scho is explaining…" : "Scho’s take"}</span>
      </div>
      <div className={styles.body}>
        <ReactMarkdown remarkPlugins={[remarkGfm]}>{content}</ReactMarkdown>
      </div>
    </div>
  );
}
