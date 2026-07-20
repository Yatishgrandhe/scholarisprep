"use client";

import { aiRequest } from "@/lib/ai/clientKey";

import { useEffect, useMemo, useState } from "react";
import Link from "next/link";
import {
  ArrowLeft,
  ArrowRight,
  CheckCircle,
  SquaresFour,
  Sparkle,
  XCircle,
} from "@phosphor-icons/react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { createClient } from "@/lib/supabase/client";
import {
  recordVocabularyReview,
  setVocabularyMastery,
  type VocabularyWord,
} from "@/lib/vocab/queries";
import { cn } from "@/lib/utils";
import { useVocabDeck } from "./useVocabDeck";
import styles from "./vocab-activity.module.css";

type Status = "Neutral" | "Weak" | "Learning" | "Mastered";
const STATUS_CYCLE: Status[] = ["Neutral", "Weak", "Learning", "Mastered"];
const STATUS_MASTERY: Record<Status, number> = {
  Neutral: 0,
  Weak: 20,
  Learning: 60,
  Mastered: 100,
};

function statusOf(mastery: number, reviewed: number): Status {
  if (mastery >= 80) return "Mastered";
  if (mastery >= 40) return "Learning";
  if (reviewed > 0 || mastery > 0) return "Weak";
  return "Neutral";
}

export function FlashcardsSession() {
  const [count, setCount] = useState(20);
  const { words, loading, userId } = useVocabDeck({ shuffle: true, limit: count });
  const supabase = useMemo(() => createClient(), []);

  const [deck, setDeck] = useState<VocabularyWord[]>([]);
  const [index, setIndex] = useState(0);
  const [showDef, setShowDef] = useState(false);
  const [sentence, setSentence] = useState("");
  const [checking, setChecking] = useState(false);
  const [result, setResult] = useState<{
    correct: boolean;
    feedback: string;
    ai: boolean;
  } | null>(null);
  const [viewAllOpen, setViewAllOpen] = useState(false);

  useEffect(() => {
    setDeck(words);
    setIndex(0);
    setShowDef(false);
    setSentence("");
    setResult(null);
  }, [words]);

  const current = deck[index];

  const resetCard = () => {
    setShowDef(false);
    setSentence("");
    setResult(null);
  };

  const go = (delta: number) => {
    resetCard();
    setIndex((i) => Math.min(deck.length - 1, Math.max(0, i + delta)));
  };

  const patchLocal = (wordId: string, mastery: number, bumpReview: boolean) => {
    setDeck((prev) =>
      prev.map((w) =>
        w.id === wordId
          ? {
              ...w,
              mastery,
              times_reviewed: w.times_reviewed + (bumpReview ? 1 : 0),
            }
          : w,
      ),
    );
  };

  const rate = async (knewIt: boolean) => {
    if (!current || !userId) return;
    const next = Math.max(0, Math.min(100, current.mastery + (knewIt ? 15 : -10)));
    patchLocal(current.id, next, true);
    try {
      await recordVocabularyReview(supabase, userId, current.id, knewIt);
    } catch {
      /* non-blocking */
    }
  };

  const cycleStatus = async () => {
    if (!current || !userId) return;
    const cur = statusOf(current.mastery, current.times_reviewed);
    const nextStatus =
      STATUS_CYCLE[(STATUS_CYCLE.indexOf(cur) + 1) % STATUS_CYCLE.length];
    const mastery = STATUS_MASTERY[nextStatus];
    patchLocal(current.id, mastery, false);
    try {
      await setVocabularyMastery(supabase, userId, current.id, mastery);
    } catch {
      /* non-blocking */
    }
  };

  const checkSentence = async () => {
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
      setResult({
        correct: Boolean(data.correct),
        feedback: data.feedback || "Checked.",
        ai: Boolean(data.ai),
      });
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
        <div className={styles.state}>Loading flashcards…</div>
      </div>
    );
  }

  if (!current) {
    return (
      <div className={styles.page}>
        <div className={styles.topBar}>{backLink}</div>
        <div className={styles.state}>No words to study yet.</div>
      </div>
    );
  }

  const total = deck.length;
  const status = statusOf(current.mastery, current.times_reviewed);

  return (
    <div className={styles.page}>
      <div className={styles.topBar}>
        {backLink}
        <button
          type="button"
          className={cn(
            styles.statusPill,
            styles[`status${status}` as keyof typeof styles],
          )}
          onClick={() => void cycleStatus()}
          aria-label={`Mastery: ${status}. Click to change.`}
        >
          {status}
        </button>
      </div>

      <div className={styles.progressWrap}>
        <div className={styles.progressMeta}>
          <span>
            Card {index + 1} of {total}
          </span>
          <Select
            value={String(count)}
            onValueChange={(v) => setCount(Number(v) || 20)}
          >
            <SelectTrigger className={styles.countSelect} aria-label="Deck size">
              <SelectValue />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="10">10 words</SelectItem>
              <SelectItem value="20">20 words</SelectItem>
              <SelectItem value="50">50 words</SelectItem>
              <SelectItem value="100">100 words</SelectItem>
            </SelectContent>
          </Select>
        </div>
        <div className={styles.progressTrack} aria-hidden>
          <div
            className={styles.progressFill}
            style={{ width: `${((index + 1) / total) * 100}%` }}
          />
        </div>
      </div>

      <button
        type="button"
        className={styles.flashcard}
        onClick={() => setShowDef((v) => !v)}
      >
        {showDef ? (
          <div className={styles.flashBack}>
            <h2 className={styles.flashBackWord}>{current.word}</h2>
            <div>
              <span className={styles.flashLabel}>Definition</span>
              <p className={styles.flashDef}>{current.definition}</p>
            </div>
            {current.example_sentence ? (
              <div>
                <span className={styles.flashLabel}>Example sentence</span>
                <p className={styles.flashExample}>
                  &ldquo;{current.example_sentence}&rdquo;
                </p>
              </div>
            ) : null}
            {current.part_of_speech ? (
              <div>
                <span className={styles.flashLabel}>Part of speech</span>
                <p className={styles.flashDef}>{current.part_of_speech}</p>
              </div>
            ) : null}
          </div>
        ) : (
          <>
            <h2 className={styles.flashWord}>{current.word}</h2>
            <p className={styles.flashHint}>Tap to reveal definition</p>
          </>
        )}
      </button>

      <div className={styles.sentenceRow}>
        <Input
          className={styles.sentenceInput}
          value={sentence}
          onChange={(e) => setSentence(e.target.value)}
          onKeyDown={(e) => {
            if (e.key === "Enter") void checkSentence();
          }}
          placeholder="Use this word in a sentence…"
          aria-label="Use this word in a sentence"
        />
        <Button
          type="button"
          onClick={() => void checkSentence()}
          disabled={checking || !sentence.trim()}
        >
          {checking ? "Checking…" : "Check"}
        </Button>
      </div>

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

      <div className={styles.rateRow}>
        <button
          type="button"
          className={cn(styles.rateBtn, styles.rateStrong)}
          onClick={() => void rate(true)}
        >
          <CheckCircle size={18} weight="fill" aria-hidden />
          Strong
        </button>
        <button
          type="button"
          className={cn(styles.rateBtn, styles.rateWeak)}
          onClick={() => void rate(false)}
        >
          <XCircle size={18} weight="fill" aria-hidden />
          Weak
        </button>
      </div>

      <div className={styles.navRow}>
        <Button variant="outline" disabled={index <= 0} onClick={() => go(-1)}>
          <ArrowLeft size={16} /> Previous
        </Button>
        <button
          type="button"
          className={styles.viewAllBtn}
          onClick={() => setViewAllOpen(true)}
        >
          <SquaresFour size={16} weight="bold" aria-hidden />
          View all words
        </button>
        <Button disabled={index >= total - 1} onClick={() => go(1)}>
          Next <ArrowRight size={16} />
        </Button>
      </div>

      {viewAllOpen ? (
        <div
          className={styles.optionsOverlay}
          role="dialog"
          aria-modal="true"
          aria-label="All words"
          onClick={() => setViewAllOpen(false)}
        >
          <div
            className={cn(styles.optionsCard, styles.viewAllCard)}
            onClick={(e) => e.stopPropagation()}
          >
            <div className={styles.viewAllHead}>
              <span className={styles.viewAllTitle}>Jump to a word</span>
              <span className={styles.viewAllCount}>{total} words</span>
            </div>
            <div className={styles.viewAllGrid}>
              {deck.map((w, i) => (
                <button
                  key={w.id}
                  type="button"
                  className={cn(
                    styles.viewAllItem,
                    i === index && styles.viewAllItemCurrent,
                  )}
                  onClick={() => {
                    resetCard();
                    setIndex(i);
                    setViewAllOpen(false);
                  }}
                >
                  {w.word}
                </button>
              ))}
            </div>
          </div>
        </div>
      ) : null}
    </div>
  );
}
