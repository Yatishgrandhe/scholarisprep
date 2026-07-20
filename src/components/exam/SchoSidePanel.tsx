"use client";

import { useEffect, useMemo, useState } from "react";
import { X, PushPin, PushPinSlash } from "@phosphor-icons/react";
import { ExplanationSidePanel } from "@/components/exam/ExplanationSidePanel";
import { MathRenderer } from "@/components/question/MathRenderer";
import { TutorChat } from "@/components/tutor/TutorChat";
import { DifficultyBadge } from "@/components/question/DifficultyBadge";
import type { Question } from "@/components/question/QuestionInterface";
import {
  buildTutorStreamContext,
  type TutorStreamContext,
} from "@/lib/tutor/questionContext";
import styles from "./SchoSidePanel.module.css";

type SchoSidePanelProps = {
  question: Question;
  selectedOptionId?: string | null;
  isCorrect?: boolean;
  onClose?: () => void;
  initialTab?: "ask" | "explanation";
  answerRevealed?: boolean;
  examType?: string;
  open?: boolean;
  /** Controlled pin state — docked beside the exam vs. floating card. */
  pinned?: boolean;
  onPinnedChange?: (pinned: boolean) => void;
  streamContext?: TutorStreamContext;
};

const PROMPTS = [
  "Why is this answer correct?",
  "Walk me through step by step",
  "What's the key concept here?",
];

export function SchoSidePanel({
  question,
  selectedOptionId,
  isCorrect = false,
  onClose,
  initialTab = "ask",
  answerRevealed = false,
  examType,
  open = false,
  pinned: pinnedProp,
  onPinnedChange,
  streamContext: streamContextProp,
}: SchoSidePanelProps) {
  const [tab, setTab] = useState<"ask" | "explanation">(initialTab);
  const [seedPrompt, setSeedPrompt] = useState<string | undefined>();
  // Pinned = docked to the side (question stays interactive, no backdrop).
  // Unpinned = a floating card with a dimmed backdrop. Controlled by the parent
  // when provided (so the exam can shrink beside a docked panel), else local.
  const [pinnedLocal, setPinnedLocal] = useState(true);
  const pinned = pinnedProp ?? pinnedLocal;
  const setPinned = (next: boolean) => {
    onPinnedChange?.(next);
    setPinnedLocal(next);
  };

  useEffect(() => {
    setTab(initialTab);
  }, [initialTab, question.id]);

  useEffect(() => {
    if (answerRevealed) {
      setTab("explanation");
    }
  }, [answerRevealed, question.id]);

  useEffect(() => {
    // Only lock page scroll when floating (the dimmed modal state). When pinned
    // to the side, the question must stay scrollable/interactive.
    if (!open || pinned) return;
    const prevOverflow = document.body.style.overflow;
    document.body.style.overflow = "hidden";
    return () => {
      document.body.style.overflow = prevOverflow;
    };
  }, [open, pinned]);

  const streamContext = useMemo(
    () =>
      streamContextProp ??
      buildTutorStreamContext(question, {
        examType,
        selectedOptionId,
        isCorrect,
      }),
    [streamContextProp, question, examType, selectedOptionId, isCorrect],
  );

  if (!open) return null;

  return (
    <>
      {!pinned ? (
        <button
          type="button"
          className={styles.backdrop}
          onClick={onClose}
          aria-label="Close panel"
        />
      ) : null}
      <div
        className={`${styles.drawer} ${pinned ? "" : styles.drawerFloating}`}
        role="dialog"
        aria-label="Scho assistant"
      >
        <div className={styles.header}>
          <div className={styles.tabs}>
            <button
              type="button"
              className={tab === "ask" ? styles.tabActive : styles.tab}
              onClick={() => setTab("ask")}
            >
              Ask Scho
            </button>
            <button
              type="button"
              className={tab === "explanation" ? styles.tabActive : styles.tab}
              onClick={() => setTab("explanation")}
            >
              Explanation
            </button>
          </div>
          <div className={styles.headerActions}>
            <button
              type="button"
              className={pinned ? styles.iconBtnActive : styles.iconBtn}
              onClick={() => setPinned(!pinned)}
              aria-pressed={pinned}
              title={pinned ? "Unpin (float)" : "Pin to side"}
              aria-label={pinned ? "Unpin panel" : "Pin panel to side"}
            >
              {pinned ? <PushPin size={18} weight="fill" /> : <PushPinSlash size={18} />}
            </button>
            {onClose ? (
              <button type="button" className={styles.closeBtn} onClick={onClose} aria-label="Close">
                <X size={20} weight="bold" />
              </button>
            ) : null}
          </div>
        </div>

        {tab === "ask" ? (
          <div className={styles.askBody}>
            <div className={styles.contextSummary}>
              <div className={styles.contextMeta}>
                <p className={styles.contextTopic}>{question.topic}</p>
                <DifficultyBadge
                  difficulty={question.difficulty}
                  challenged={Boolean(question.challengedProblem)}
                  size="sm"
                />
              </div>
              <div className={styles.contextStem}>
                <MathRenderer text={question.question_text} />
              </div>
            </div>
            <TutorChat
              key={`${question.id}-${seedPrompt ?? "default"}`}
              contextType="question"
              contextId={question.id}
              title="Ask Scho"
              className={styles.tutorEmbed}
              initialPrompt={seedPrompt}
              streamContext={streamContext}
              plainAssistantText
              suggestedPrompts={PROMPTS}
            />
          </div>
        ) : (
          <ExplanationSidePanel
            question={question}
            selectedOptionId={selectedOptionId}
            isCorrect={isCorrect}
            onAskScho={(prompt) => {
              setSeedPrompt(prompt);
              setTab("ask");
            }}
          />
        )}
      </div>
    </>
  );
}
