"use client";

import { useEffect, useState } from "react";
import { createClient } from "@/lib/supabase/client";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import { useAuth } from "@/hooks/useAuth";
import {
  fetchVocabularyWords,
  type VocabularyWord,
} from "@/lib/vocab/queries";

function shuffleArr<T>(items: T[]): T[] {
  const copy = [...items];
  for (let i = copy.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [copy[i], copy[j]] = [copy[j], copy[i]];
  }
  return copy;
}

type DeckOptions = {
  /** Prefer un-mastered words, weakest first (for Learn Mode). */
  weakestFirst?: boolean;
  shuffle?: boolean;
  limit?: number;
};

export function useVocabDeck({
  weakestFirst = false,
  shuffle = false,
  limit = 20,
}: DeckOptions = {}) {
  const { user } = useAuth();
  const userId = user?.id;
  const [words, setWords] = useState<VocabularyWord[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let cancelled = false;
    const supabase = createClient();
    void (async () => {
      setLoading(true);
      try {
        await ensureFreshSession(supabase);
        let rows = await fetchVocabularyWords(supabase, userId, {
          examType: "SAT",
        });
        if (weakestFirst) {
          const unmastered = rows.filter((w) => w.mastery < 80);
          rows = unmastered.length > 0 ? unmastered : rows;
          rows = [...rows].sort((a, b) => a.mastery - b.mastery);
        }
        if (shuffle) rows = shuffleArr(rows);
        if (limit) rows = rows.slice(0, limit);
        if (!cancelled) setWords(rows);
      } catch {
        if (!cancelled) setWords([]);
      } finally {
        if (!cancelled) setLoading(false);
      }
    })();
    return () => {
      cancelled = true;
    };
  }, [userId, weakestFirst, shuffle, limit]);

  return { words, loading, userId };
}
