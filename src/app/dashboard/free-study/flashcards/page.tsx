"use client";

import { useCallback, useState } from "react";
import Link from "next/link";
import { ArrowLeft, Stack } from "@phosphor-icons/react";
import { toast } from "sonner";
import { NoteFlashcards } from "@/components/free-study/NoteFlashcards";
import {
  generateFlashcardsFromText,
  type FreeStudyFlashcard,
} from "@/lib/free-study/generateFlashcards";
import styles from "@/components/free-study/free-study-flashcards.module.css";

export default function FreeStudyFlashcardsPage() {
  const [text, setText] = useState("");
  const [cards, setCards] = useState<FreeStudyFlashcard[]>([]);
  const [generating, setGenerating] = useState(false);
  const [showFlashcards, setShowFlashcards] = useState(false);

  const canGenerate = text.replace(/\s/g, "").length >= 40;

  const handleGenerate = useCallback(async () => {
    if (!canGenerate) return;
    setGenerating(true);
    try {
      const result = await generateFlashcardsFromText({ text, count: 8 });
      if (!result.ok) {
        toast.error(result.error);
        return;
      }
      setCards(result.data.cards);
      setShowFlashcards(true);
    } catch (err) {
      toast.error(
        err instanceof Error ? err.message : "Failed to generate flashcards",
      );
    } finally {
      setGenerating(false);
    }
  }, [text, canGenerate]);

  if (showFlashcards && cards.length > 0) {
    return (
      <NoteFlashcards
        cards={cards}
        onComplete={() => {
          toast.success("Flashcard review complete");
        }}
        onClose={() => {
          setShowFlashcards(false);
          setCards([]);
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

      <h1 className={styles.title}>Flashcard Generator</h1>
      <p className={styles.subtitle}>
        Paste your study material below and we&apos;ll create flashcards to help
        you memorize key concepts.
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
              <Stack size={16} weight="fill" aria-hidden />
              Generate Flashcards
            </>
          )}
        </button>
      </div>
    </div>
  );
}
