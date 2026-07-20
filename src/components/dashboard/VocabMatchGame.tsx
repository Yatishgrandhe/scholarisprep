"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import { PuzzlePiece } from "@phosphor-icons/react";
import { Button } from "@/components/ui/button";
import type { VocabularyWord } from "@/lib/vocab/queries";
import { cn } from "@/lib/utils";
import styles from "@/components/dashboard/vocab.module.css";

const PAIR_COUNT = 6;

type MatchTile =
  | { id: string; kind: "word"; wordId: string; label: string }
  | { id: string; kind: "def"; wordId: string; label: string };

function shuffle<T>(arr: T[]): T[] {
  const copy = [...arr];
  for (let i = copy.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [copy[i], copy[j]] = [copy[j], copy[i]];
  }
  return copy;
}

function pickRound(words: VocabularyWord[]): VocabularyWord[] {
  const pool = shuffle(words);
  return pool.slice(0, Math.min(PAIR_COUNT, pool.length));
}

type Props = {
  words: VocabularyWord[];
  onClose: () => void;
  onMatchComplete?: (wordIds: string[], correct: boolean) => void;
};

export function VocabMatchGame({ words, onClose, onMatchComplete }: Props) {
  const [roundWords, setRoundWords] = useState(() => pickRound(words));
  const [selected, setSelected] = useState<MatchTile | null>(null);
  const [matchedIds, setMatchedIds] = useState<Set<string>>(new Set());
  const [wrongId, setWrongId] = useState<string | null>(null);
  const [score, setScore] = useState(0);
  const [tenths, setTenths] = useState(0);
  const [finished, setFinished] = useState(false);
  const [started, setStarted] = useState(false);
  const [showTimer, setShowTimer] = useState(true);

  // All word + definition tiles mixed into one shuffled board.
  const tiles = useMemo(() => {
    const wordTiles: MatchTile[] = roundWords.map((w) => ({
      id: `w-${w.id}`,
      kind: "word",
      wordId: w.id,
      label: w.word,
    }));
    const defTiles: MatchTile[] = roundWords.map((w) => ({
      id: `d-${w.id}`,
      kind: "def",
      wordId: w.id,
      label: w.definition,
    }));
    return shuffle([...wordTiles, ...defTiles]);
  }, [roundWords]);

  // Stopwatch: count up while playing.
  useEffect(() => {
    if (!started || finished) return;
    const t = window.setInterval(() => setTenths((x) => x + 1), 100);
    return () => window.clearInterval(t);
  }, [started, finished]);

  useEffect(() => {
    if (matchedIds.size === roundWords.length && roundWords.length > 0) {
      setFinished(true);
    }
  }, [matchedIds.size, roundWords.length]);

  const handleTile = useCallback(
    (tile: MatchTile) => {
      if (finished || matchedIds.has(tile.wordId)) return;

      if (!selected) {
        setSelected(tile);
        return;
      }
      if (selected.id === tile.id) {
        setSelected(null);
        return;
      }
      if (selected.kind === tile.kind) {
        setSelected(tile);
        return;
      }

      const wordId = selected.wordId;
      if (wordId === tile.wordId) {
        setMatchedIds((prev) => new Set(prev).add(wordId));
        setScore((s) => s + 1);
        onMatchComplete?.([wordId], true);
        setSelected(null);
        setWrongId(null);
      } else {
        setWrongId(tile.id);
        onMatchComplete?.([selected.wordId, tile.wordId], false);
        window.setTimeout(() => {
          setWrongId(null);
          setSelected(null);
        }, 450);
      }
    },
    [selected, finished, matchedIds, onMatchComplete],
  );

  const begin = () => {
    setRoundWords(pickRound(words));
    setSelected(null);
    setMatchedIds(new Set());
    setWrongId(null);
    setScore(0);
    setTenths(0);
    setFinished(false);
    setStarted(true);
  };

  const timeLabel = (tenths / 10).toFixed(1);
  const pairCount = Math.min(PAIR_COUNT, words.length);

  if (!started && !finished) {
    return (
      <div className={styles.matchPanel}>
        <div className={styles.matchStart}>
          <span className={styles.matchMascot} aria-hidden>
            <PuzzlePiece size={34} weight="duotone" />
          </span>
          <p className={styles.matchStartTitle}>Ready to match?</p>
          <p className={styles.matchStartText}>
            Load {pairCount} word-and-definition pairs and match them all as fast
            as you can.
          </p>
          <div className={styles.matchStartActions}>
            <Button type="button" variant="outline" onClick={onClose}>
              Back to word bank
            </Button>
            <Button type="button" onClick={begin}>
              Start game
            </Button>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className={styles.matchPanel}>
      <div className={styles.matchHeader}>
        <div className={styles.matchStats}>
          <span className={styles.matchStat}>
            Matched <strong>{score}</strong>/{roundWords.length}
          </span>
          {showTimer ? (
            <span className={styles.matchStat}>
              Time <strong>{timeLabel}s</strong>
            </span>
          ) : null}
          {!finished ? (
            <button
              type="button"
              className={styles.matchTimerToggle}
              onClick={() => setShowTimer((v) => !v)}
            >
              {showTimer ? "Hide" : "Show"}
            </button>
          ) : null}
        </div>
        <button type="button" className={styles.practiceClose} onClick={onClose}>
          Close
        </button>
      </div>

      {finished ? (
        <div className={styles.matchComplete}>
          <p className={styles.matchCompleteTitle}>Perfect round!</p>
          <p className={styles.matchCompleteSub}>
            You matched all {roundWords.length} pairs in {timeLabel}s.
          </p>
          <div className={styles.matchCompleteActions}>
            <Button type="button" variant="outline" onClick={onClose}>
              Done
            </Button>
            <Button type="button" onClick={begin}>
              Play again
            </Button>
          </div>
        </div>
      ) : (
        <div className={styles.matchGrid}>
          {tiles.map((tile) => {
            const isMatched = matchedIds.has(tile.wordId);
            const isSelected = selected?.id === tile.id;
            const isWrong = wrongId === tile.id;
            return (
              <button
                key={tile.id}
                type="button"
                className={cn(
                  styles.matchTile,
                  styles.matchGridTile,
                  tile.kind === "word" && styles.matchTileWord,
                  isMatched && styles.matchTileDone,
                  isSelected && styles.matchTileSelected,
                  isWrong && styles.matchTileWrong,
                )}
                disabled={isMatched}
                onClick={() => handleTile(tile)}
              >
                {tile.label}
              </button>
            );
          })}
        </div>
      )}
    </div>
  );
}
