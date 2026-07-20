"use client";

import { useEffect, useState } from "react";
import { Button } from "@/components/ui/app-button";
import styles from "./QuestionPreview.module.css";

type DemoOption = { id: string; text: string; is_correct: boolean };

type DemoQuestion = {
  stimulus: string | null;
  question_text: string;
  options: DemoOption[];
  explanation: string;
  topic: string;
};

const FALLBACK_QUESTION: DemoQuestion = {
  stimulus:
    "The architect's sketches revealed a tension between preservation and innovation; each line suggesting both reverence for what stood and ambition for what might rise. Critics debated whether the design honored history or merely referenced it.",
  question_text:
    "The author's use of the word “tension” in the first sentence primarily serves to:",
  options: [
    { id: "A", text: "emphasize the narrator's uncertainty", is_correct: false },
    { id: "B", text: "contrast two opposing viewpoints", is_correct: true },
    { id: "C", text: "establish the historical context", is_correct: false },
    { id: "D", text: "introduce a secondary character", is_correct: false },
  ],
  explanation:
    "“Tension” signals a contrast between preservation and innovation, setting up the debate described in the passage.",
  topic: "Words in Context",
};

export default function QuestionPreview() {
  const [question, setQuestion] = useState<DemoQuestion>(FALLBACK_QUESTION);
  const [isLive, setIsLive] = useState(false);
  const [selected, setSelected] = useState<string | null>(null);
  const [revealed, setRevealed] = useState(false);

  useEffect(() => {
    let cancelled = false;
    fetch("/api/questions/demo")
      .then((res) => (res.ok ? res.json() : null))
      .then((data: { question?: DemoQuestion } | null) => {
        if (cancelled || !data?.question?.options?.length) return;
        setQuestion(data.question);
        setIsLive(true);
      })
      .catch(() => {
        /* keep fallback */
      });
    return () => {
      cancelled = true;
    };
  }, []);

  const correctId =
    question.options.find((o) => o.is_correct)?.id ?? "B";

  return (
    <section id="live-demo" className={`section ${styles.section}`}>
      <div className="container">
      <div className={`sectionHeader ${styles.header}`}>
        <h2 className={styles.title}>Real exam-style practice</h2>
        <p className={styles.subtitle}>
          {isLive
            ? `A real question from our bank of 13,000+ — topic: ${question.topic}.`
            : "Stimulus on the left, question on the right: the same layout you'll see on test day."}
        </p>
      </div>

      <div className={styles.examLayout}>
        <aside className={styles.stimulus}>
          <p className={styles.stimulusLabel}>Passage</p>
          <p>{question.stimulus}</p>
        </aside>

        <div className={styles.question}>
          <p className={styles.questionText}>{question.question_text}</p>
          <ul className={styles.options} role="listbox" aria-label="Answer choices">
            {question.options.map((opt) => (
              <li key={opt.id}>
                <button
                  type="button"
                  role="option"
                  aria-selected={selected === opt.id}
                  className={`${styles.option} ${selected === opt.id ? styles.selected : ""} ${revealed && opt.id === correctId ? styles.correct : ""} ${revealed && selected === opt.id && opt.id !== correctId ? styles.incorrect : ""}`}
                  onClick={() => !revealed && setSelected(opt.id)}
                  disabled={revealed}
                >
                  <span className={styles.optionId}>{opt.id}</span>
                  {opt.text}
                </button>
              </li>
            ))}
          </ul>

          {!revealed ? (
            <Button
              onClick={() => selected && setRevealed(true)}
              disabled={!selected}
              size="lg"
              fullWidth
              className={styles.revealBtn}
            >
              Check answer
            </Button>
          ) : (
            <div className={`${styles.explanation} ${styles.visible}`}>
              <strong>Correct: {correctId}</strong>
              <p>{question.explanation}</p>
            </div>
          )}
        </div>
      </div>
      </div>
    </section>
  );
}
