"use client";

import { useRouter } from "next/navigation";
import Link from "next/link";
import { ArrowLeft } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { recordVocabularyReview } from "@/lib/vocab/queries";
import { VocabMatchGame } from "@/components/dashboard/VocabMatchGame";
import { useVocabDeck } from "./useVocabDeck";
import styles from "./vocab-activity.module.css";

export function MatchSession() {
  const router = useRouter();
  // A pool of 40 so each round (6 pairs) varies on replay, without loading the
  // whole bank.
  const { words, loading, userId } = useVocabDeck({ shuffle: true, limit: 40 });
  const supabase = createClient();

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
        <div className={styles.state}>Loading the match game…</div>
      </div>
    );
  }

  if (words.length < 4) {
    return (
      <div className={styles.page}>
        <div className={styles.topBar}>{backLink}</div>
        <div className={styles.state}>
          Match needs at least 4 words. Add more from the library first.
        </div>
      </div>
    );
  }

  return (
    <div className={styles.page}>
      <div className={styles.topBar}>{backLink}</div>
      <VocabMatchGame
        words={words}
        onClose={() => router.push("/dashboard/vocab")}
        onMatchComplete={(wordIds, correct) => {
          if (!userId || !correct) return;
          for (const id of wordIds) {
            void recordVocabularyReview(supabase, userId, id, true).catch(
              () => {},
            );
          }
        }}
      />
    </div>
  );
}
