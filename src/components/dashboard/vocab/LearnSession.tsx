"use client";

import { aiRequest } from "@/lib/ai/clientKey";

import { useMemo, useState } from "react";
import Link from "next/link";
import {
  ArrowLeft,
  CheckCircle,
  GraduationCap,
  ListChecks,
  PencilSimpleLine,
  Sparkle,
} from "@phosphor-icons/react";
import { Button } from "@/components/ui/button";
import { createClient } from "@/lib/supabase/client";
import {
  recordVocabularyReview,
  type VocabularyWord,
} from "@/lib/vocab/queries";
import { cn } from "@/lib/utils";
import { useVocabDeck } from "./useVocabDeck";
import styles from "./vocab-activity.module.css";

type Stage = "flash" | "mcq" | "sentence" | "done";

const STAGE_META: Record<
  Exclude<Stage, "done">,
  { label: string; icon: React.ReactNode }
> = {
  flash: { label: "Flashcards", icon: <GraduationCap size={15} weight="duotone" /> },
  mcq: { label: "Definitions", icon: <ListChecks size={15} weight="duotone" /> },
  sentence: { label: "Use it in a sentence", icon: <PencilSimpleLine size={15} weight="duotone" /> },
};

const OPTION_KEYS = ["A", "B", "C", "D"];

function shuffle<T>(items: T[]): T[] {
  const copy = [...items];
  for (let i = copy.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [copy[i], copy[j]] = [copy[j], copy[i]];
  }
  return copy;
}

export function LearnSession() {
  const { words, loading, userId } = useVocabDeck({
    weakestFirst: true,
    shuffle: true,
    limit: 10,
  });
  const supabase = useMemo(() => createClient(), []);

  const [stage, setStage] = useState<Stage>("flash");
  const [index, setIndex] = useState(0);
  const [showDef, setShowDef] = useState(false);

  // MCQ state
  const [picked, setPicked] = useState<number | null>(null);

  // Sentence state
  const [sentence, setSentence] = useState("");
  const [checking, setChecking] = useState(false);
  const [result, setResult] = useState<{
    correct: boolean;
    feedback: string;
    ai: boolean;
  } | null>(null);

  const [score, setScore] = useState(0);

  const current = words[index] as VocabularyWord | undefined;

  // 4 definition options for the current MCQ word — stable per word.
  const options = useMemo(() => {
    if (!current) return [];
    const distractors = shuffle(words.filter((w) => w.id !== current.id))
      .slice(0, 3)
      .map((w) => ({ text: w.definition, correct: false }));
    return shuffle([{ text: current.definition, correct: true }, ...distractors]);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [current?.id, stage]);

  const record = (knewIt: boolean) => {
    if (userId && current) {
      void recordVocabularyReview(supabase, userId, current.id, knewIt).catch(
        () => {},
      );
    }
  };

  const resetPerCard = () => {
    setShowDef(false);
    setPicked(null);
    setSentence("");
    setResult(null);
  };

  const advance = () => {
    resetPerCard();
    if (index < words.length - 1) {
      setIndex((i) => i + 1);
      return;
    }
    // End of this stage → move to the next stage (or finish).
    setIndex(0);
    if (stage === "flash") setStage("mcq");
    else if (stage === "mcq") setStage("sentence");
    else setStage("done");
  };

  const onFlashReview = (knewIt: boolean) => {
    record(knewIt);
    advance();
  };

  const onPick = (i: number) => {
    if (picked !== null) return;
    setPicked(i);
    const correct = options[i]?.correct ?? false;
    record(correct);
    if (correct) setScore((s) => s + 1);
  };

  const onCheckSentence = async () => {
    if (!current || !sentence.trim() || checking) return;
    setChecking(true);
    try {
      const res = await aiRequest("/api/vocab/evaluate", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          word: current.word,
          definition: current.definition,
          sentence: sentence.trim(),
        }),
      });
      const data = (await res.json()) as {
        correct?: boolean;
        feedback?: string;
        ai?: boolean;
      };
      const out = {
        correct: Boolean(data.correct),
        feedback: data.feedback || "Checked.",
        ai: Boolean(data.ai),
      };
      setResult(out);
      record(out.correct);
      if (out.correct) setScore((s) => s + 1);
    } catch {
      setResult({
        correct: false,
        feedback: "Could not check right now. Try again.",
        ai: false,
      });
    } finally {
      setChecking(false);
    }
  };

  const backLink = (
    <Link href="/dashboard/vocab" className={styles.backLink}>
      <ArrowLeft size={15} weight="bold" aria-hidden />
      Back to word bank
    </Link>
  );

  if (loading) {
    return (
      <div className={styles.page}>
        <div className={styles.topBar}>{backLink}</div>
        <div className={styles.state}>Loading your words…</div>
      </div>
    );
  }

  if (words.length === 0) {
    return (
      <div className={styles.page}>
        <div className={styles.topBar}>{backLink}</div>
        <div className={styles.state}>
          No vocabulary words available yet. Add some from the library, then try
          again.
        </div>
      </div>
    );
  }

  if (stage === "done") {
    return (
      <div className={styles.page}>
        <div className={styles.topBar}>{backLink}</div>
        <div className={styles.done}>
          <span className={styles.doneIcon} aria-hidden>
            <CheckCircle size={34} weight="fill" />
          </span>
          <h1 className={styles.doneTitle}>Lesson complete!</h1>
          <p className={styles.doneSub}>
            You worked through {words.length} words across flashcards,
            definitions, and sentences. Score: {score} / {words.length * 2}.
          </p>
          <div className={styles.doneActions}>
            <Link href="/dashboard/vocab">
              <Button variant="outline">Back to word bank</Button>
            </Link>
            <Button
              onClick={() => {
                setStage("flash");
                setIndex(0);
                setScore(0);
                resetPerCard();
              }}
            >
              Practice again
            </Button>
          </div>
        </div>
      </div>
    );
  }

  if (!current) return null;
  const meta = STAGE_META[stage];
  const total = words.length;
  const pct = ((index + 1) / total) * 100;

  return (
    <div className={styles.page}>
      <div className={styles.topBar}>
        {backLink}
        <span className={styles.stageBadge}>
          {meta.icon}
          {meta.label}
        </span>
      </div>

      <div className={styles.progressWrap}>
        <div className={styles.progressMeta}>
          <span>
            Word {index + 1} of {total}
          </span>
          <span>{STAGE_META[stage].label}</span>
        </div>
        <div className={styles.progressTrack} aria-hidden>
          <div className={styles.progressFill} style={{ width: `${pct}%` }} />
        </div>
        <div className={styles.dots} aria-hidden>
          {words.map((w, i) => (
            <span
              key={w.id}
              className={cn(
                styles.dot,
                i === index && styles.dotCurrent,
                i < index && styles.dotDone,
              )}
            />
          ))}
        </div>
      </div>

      {/* STAGE: Flashcards */}
      {stage === "flash" ? (
        <>
          <button
            type="button"
            className={styles.flashcard}
            onClick={() => setShowDef((v) => !v)}
          >
            {showDef ? (
              <div className={styles.flashBack}>
                <div>
                  <span className={styles.flashLabel}>Definition</span>
                  <p className={styles.flashDef}>{current.definition}</p>
                </div>
                {current.example_sentence ? (
                  <div>
                    <span className={styles.flashLabel}>Example</span>
                    <p className={styles.flashExample}>
                      &ldquo;{current.example_sentence}&rdquo;
                    </p>
                  </div>
                ) : null}
              </div>
            ) : (
              <>
                <h2 className={styles.flashWord}>{current.word}</h2>
                {current.part_of_speech ? (
                  <span className={styles.flashPos}>
                    {current.part_of_speech}
                  </span>
                ) : null}
                <p className={styles.flashHint}>Tap to reveal definition</p>
              </>
            )}
          </button>
          {showDef ? (
            <div className={styles.actions}>
              <Button variant="outline" onClick={() => onFlashReview(false)}>
                Still learning
              </Button>
              <Button onClick={() => onFlashReview(true)}>Got it</Button>
            </div>
          ) : (
            <div className={styles.actions}>
              <Button variant="ghost" onClick={advance}>
                Skip
              </Button>
              <Button onClick={() => setShowDef(true)}>Tap to flip</Button>
            </div>
          )}
        </>
      ) : null}

      {/* STAGE: Multiple choice */}
      {stage === "mcq" ? (
        <div className={styles.card}>
          <p className={styles.prompt}>
            What does{" "}
            <span className={styles.promptWord}>&ldquo;{current.word}&rdquo;</span>{" "}
            mean?
          </p>
          <div className={styles.choices}>
            {options.map((opt, i) => {
              const isPicked = picked === i;
              const reveal = picked !== null;
              return (
                <button
                  key={i}
                  type="button"
                  className={cn(
                    styles.choice,
                    reveal && opt.correct && styles.choiceCorrect,
                    reveal && isPicked && !opt.correct && styles.choiceWrong,
                  )}
                  disabled={reveal}
                  onClick={() => onPick(i)}
                >
                  <span className={styles.choiceKey}>{OPTION_KEYS[i]}</span>
                  {opt.text}
                </button>
              );
            })}
          </div>
          {picked !== null ? (
            <div className={styles.actions}>
              <Button onClick={advance}>
                {index < total - 1 ? "Next" : "Continue"}
              </Button>
            </div>
          ) : null}
        </div>
      ) : null}

      {/* STAGE: Use it in a sentence (AI-checked) */}
      {stage === "sentence" ? (
        <div className={styles.card}>
          <p className={styles.prompt}>
            Use{" "}
            <span className={styles.promptWord}>&ldquo;{current.word}&rdquo;</span>{" "}
            in a sentence.
          </p>
          <div className={styles.sentenceField}>
            <textarea
              className={styles.textarea}
              value={sentence}
              onChange={(e) => setSentence(e.target.value)}
              placeholder={`Write a sentence using "${current.word}"…`}
              disabled={checking || (result?.correct ?? false)}
            />
            {result ? (
              <div
                className={cn(
                  styles.feedback,
                  result.correct ? styles.feedbackOk : styles.feedbackNo,
                )}
              >
                <Sparkle size={18} weight="fill" aria-hidden />
                <span>
                  {result.feedback}
                  {result.ai ? <span className={styles.aiTag}>AI</span> : null}
                </span>
              </div>
            ) : null}
          </div>
          <div className={styles.actions}>
            {result?.correct ? (
              <Button onClick={advance}>
                {index < total - 1 ? "Next word" : "Finish"}
              </Button>
            ) : (
              <>
                <Button variant="ghost" onClick={advance}>
                  Skip
                </Button>
                <Button
                  onClick={() => void onCheckSentence()}
                  disabled={checking || !sentence.trim()}
                >
                  {checking ? "Checking…" : "Check with AI"}
                </Button>
              </>
            )}
          </div>
        </div>
      ) : null}
    </div>
  );
}
