"use client";

import { useCallback, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import {
  BookBookmark,
  CaretRight,
  Cards,
  Compass,
  GraduationCap,
  Lightning,
  MagnifyingGlass,
  PuzzlePiece,
  SlidersHorizontal,
  Star,
  X,
} from "@phosphor-icons/react";
import { toast } from "sonner";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { createClient } from "@/lib/supabase/client";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import { useAuth } from "@/hooks/useAuth";
import { useMountLoad } from "@/hooks/useMountLoad";
import {
  fetchVocabularyStats,
  fetchVocabularyWords,
  resetVocabularyProgress,
  toggleVocabularySaved,
  type VocabDifficulty,
  type VocabProgressFilter,
  type VocabularyWord,
} from "@/lib/vocab/queries";
import { cn } from "@/lib/utils";
import styles from "@/components/dashboard/vocab.module.css";

const MODES = [
  {
    href: "/dashboard/vocab/learn",
    icon: <GraduationCap size={24} weight="duotone" />,
    title: "Learn Mode",
    desc: "Flashcards, then definition quizzes, then write a sentence the AI checks.",
  },
  {
    href: "/dashboard/vocab/match",
    icon: <PuzzlePiece size={24} weight="duotone" />,
    title: "Match",
    desc: "Pair words with definitions in a timed challenge.",
  },
  {
    href: "/dashboard/vocab/flashcards",
    icon: <Cards size={24} weight="duotone" />,
    title: "Flashcards",
    desc: "Flip through every word to build quick recall.",
  },
];

function masteryLabel(mastery: number): string {
  if (mastery >= 80) return "Mastered";
  if (mastery > 0) return "Learning";
  return "New";
}

function masteryClass(mastery: number): string {
  if (mastery >= 80) return styles.masteryMastered;
  if (mastery > 0) return styles.masteryLearning;
  return styles.masteryNew;
}

function difficultyClass(d: string): string {
  if (d === "easy") return styles.diffEasy;
  if (d === "hard" || d === "expert") return styles.diffHard;
  return styles.diffMedium;
}

/** OnePrep-style border color by mastery tier. */
function masteryBorderClass(mastery: number, reviewed: number): string {
  if (mastery >= 80) return styles.wordCardMastered;
  if (mastery >= 40) return styles.wordCardLearning;
  if (reviewed > 0) return styles.wordCardWeak;
  return styles.wordCardNeutral;
}

export default function VocabPage() {
  const { user } = useAuth();
  const router = useRouter();
  const supabase = createClient();

  const [words, setWords] = useState<VocabularyWord[]>([]);
  const [stats, setStats] = useState({ total: 0, saved: 0, mastered: 0 });
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState("");
  const [difficulty, setDifficulty] = useState<VocabDifficulty>("all");
  const [progress, setProgress] = useState<VocabProgressFilter>("all");
  const [savingId, setSavingId] = useState<string | null>(null);
  const [tab, setTab] = useState("explore");
  const [optionsOpen, setOptionsOpen] = useState(false);
  const [resetting, setResetting] = useState(false);
  const [defLanguage, setDefLanguage] = useState("en");

  const loadWords = useCallback(async () => {
    setLoading(true);
    try {
      await ensureFreshSession(supabase);
      const [rows, statRows] = await Promise.all([
        fetchVocabularyWords(supabase, user?.id, {
          examType: "SAT",
          search,
          difficulty,
          progress,
        }),
        fetchVocabularyStats(supabase, user?.id, "SAT").catch(() => null),
      ]);
      setWords(rows);
      if (statRows) setStats(statRows);
    } catch {
      toast.error("Could not load vocabulary. Please try again.");
    } finally {
      setLoading(false);
    }
  }, [supabase, user?.id, search, difficulty, progress]);

  useMountLoad(loadWords, [loadWords]);

  const handleSave = async (word: VocabularyWord) => {
    if (!user) {
      toast.error("Sign in to save words.");
      return;
    }
    setSavingId(word.id);
    try {
      const next = !word.is_saved;
      await toggleVocabularySaved(supabase, user.id, word.id, next);
      setWords((prev) =>
        prev.map((w) => (w.id === word.id ? { ...w, is_saved: next } : w)),
      );
      setStats((s) => ({
        ...s,
        saved: next ? s.saved + 1 : Math.max(0, s.saved - 1),
      }));
    } catch {
      toast.error("Could not update saved words.");
    } finally {
      setSavingId(null);
    }
  };

  const handleResetProgress = async () => {
    if (!user) {
      toast.error("Sign in to reset progress.");
      return;
    }
    setResetting(true);
    try {
      await resetVocabularyProgress(supabase, user.id);
      toast.success("Vocabulary progress reset.");
      setOptionsOpen(false);
      await loadWords();
    } catch {
      toast.error("Could not reset progress. Please try again.");
    } finally {
      setResetting(false);
    }
  };

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <span className={styles.headerIcon} aria-hidden>
          <BookBookmark size={22} weight="fill" />
        </span>
        <div className={styles.headerText}>
          <h1 className={styles.title}>Vocabulary Practice</h1>
          <p className={styles.sub}>
            Master high-frequency SAT vocabulary with learn mode, flashcards,
            and your personal word library.
          </p>
        </div>
        <button
          type="button"
          className={styles.headerAction}
          onClick={() => setOptionsOpen(true)}
        >
          <SlidersHorizontal size={16} weight="bold" aria-hidden />
          Options
        </button>
      </header>

      <div className={styles.statStrip} aria-label="Vocabulary overview">
        <div className={styles.statCell}>
          <span className={styles.statLabel}>SAT words</span>
          <span className={styles.statValue}>{loading ? "…" : stats.total}</span>
        </div>
        <div className={styles.statCell}>
          <span className={styles.statLabel}>Saved</span>
          <span className={styles.statValue}>{loading ? "…" : stats.saved}</span>
        </div>
        <div className={styles.statCell}>
          <span className={styles.statLabel}>Mastered</span>
          <span className={styles.statValue}>
            {loading ? "…" : stats.mastered}
          </span>
        </div>
      </div>

      <Tabs value={tab} onValueChange={(v) => setTab(v ?? "explore")} className="w-full">
        <TabsList className={styles.tabList}>
          <TabsTrigger value="explore" className={styles.tabTrigger}>
            <Compass size={16} weight="duotone" aria-hidden />
            Explore
          </TabsTrigger>
          <TabsTrigger value="library" className={styles.tabTrigger}>
            <BookBookmark size={16} weight="duotone" aria-hidden />
            Library
          </TabsTrigger>
        </TabsList>

        <TabsContent value="explore" className={styles.tabContent}>
          <div className={styles.modeGrid}>
            {MODES.map((mode) => (
              <Link
                key={mode.href}
                href={mode.href}
                className={styles.modeCard}
              >
                <span className={styles.modeIcon} aria-hidden>
                  {mode.icon}
                </span>
                <span className={styles.modeTitle}>{mode.title}</span>
                <span className={styles.modeDesc}>{mode.desc}</span>
                <span className={styles.modeStart} aria-hidden>
                  Start <CaretRight size={13} weight="bold" />
                </span>
              </Link>
            ))}
          </div>

          <div className={styles.createCard}>
            <span className={styles.createIcon} aria-hidden>
              <Star size={22} weight="duotone" />
            </span>
            <div className={styles.createText}>
              <span className={styles.createTitle}>Build your vocab bank</span>
              <span className={styles.createDesc}>
                Save words from the library to build a personal study list, then
                practice just those.
              </span>
            </div>
            <button
              type="button"
              className={styles.createBtn}
              onClick={() => {
                setProgress("saved");
                setTab("library");
              }}
            >
              Browse saved <CaretRight size={14} weight="bold" aria-hidden />
            </button>
          </div>
        </TabsContent>

        <TabsContent value="library" className={styles.tabContent}>
          <div className={styles.filtersRow}>
            <div className={styles.searchWrap}>
              <MagnifyingGlass
                className={styles.searchIcon}
                size={18}
                weight="bold"
                aria-hidden
              />
              <Input
                className={styles.search}
                value={search}
                onChange={(e) => setSearch(e.target.value)}
                placeholder="Search words or definitions…"
              />
            </div>
            <Select
              value={difficulty}
              onValueChange={(v) =>
                setDifficulty((v as VocabDifficulty) ?? "all")
              }
            >
              <SelectTrigger
                className={styles.filterSelect}
                aria-label="Difficulty"
              >
                <SelectValue placeholder="Difficulty" />
              </SelectTrigger>
              <SelectContent
                className={styles.selectDropdown}
                alignItemWithTrigger={false}
                sideOffset={6}
              >
                <SelectItem value="all">All difficulties</SelectItem>
                <SelectItem value="easy">Easy</SelectItem>
                <SelectItem value="medium">Medium</SelectItem>
                <SelectItem value="hard">Hard</SelectItem>
              </SelectContent>
            </Select>
            <Select
              value={progress}
              onValueChange={(v) =>
                setProgress((v as VocabProgressFilter) ?? "all")
              }
            >
              <SelectTrigger
                className={styles.filterSelect}
                aria-label="Progress"
              >
                <SelectValue placeholder="Progress" />
              </SelectTrigger>
              <SelectContent
                className={styles.selectDropdown}
                alignItemWithTrigger={false}
                sideOffset={6}
              >
                <SelectItem value="all">All progress</SelectItem>
                <SelectItem value="new">New</SelectItem>
                <SelectItem value="learning">Learning</SelectItem>
                <SelectItem value="mastered">Mastered</SelectItem>
                <SelectItem value="saved">Saved only</SelectItem>
              </SelectContent>
            </Select>
            <Button
              type="button"
              className={styles.practiceBtn}
              onClick={() => router.push("/dashboard/vocab/learn")}
              disabled={loading || words.length === 0}
            >
              <Lightning size={16} weight="fill" aria-hidden />
              Start Practice
            </Button>
          </div>

          {loading ? (
            <div className={styles.skeletonGrid} aria-hidden>
              {Array.from({ length: 8 }).map((_, i) => (
                <div key={i} className={styles.skeletonCard} />
              ))}
            </div>
          ) : words.length === 0 ? (
            <div className={styles.empty}>
              <span className={styles.emptyIcon} aria-hidden>
                <MagnifyingGlass size={28} />
              </span>
              <h2 className={styles.emptyTitle}>No matching words</h2>
              <p className={styles.emptySub}>
                Try a different search or clear your filters.
              </p>
              <button
                type="button"
                className={styles.emptyBtn}
                onClick={() => {
                  setSearch("");
                  setDifficulty("all");
                  setProgress("all");
                }}
              >
                Clear filters
              </button>
            </div>
          ) : (
            <ul className={styles.wordGrid}>
              {words.map((item) => (
                <li
                  key={item.id}
                  className={cn(
                    styles.wordCard,
                    masteryBorderClass(item.mastery, item.times_reviewed),
                  )}
                >
                  <div className={styles.wordCardTop}>
                    <h2 className={styles.word}>{item.word}</h2>
                    <span
                      className={cn(
                        styles.diffBadge,
                        difficultyClass(item.difficulty),
                      )}
                    >
                      {item.difficulty}
                    </span>
                  </div>
                  {item.part_of_speech ? (
                    <span className={styles.pos}>{item.part_of_speech}</span>
                  ) : null}
                  <p className={styles.def}>{item.definition}</p>
                  {item.example_sentence ? (
                    <p className={styles.example}>
                      &ldquo;{item.example_sentence}&rdquo;
                    </p>
                  ) : null}
                  <div className={styles.masteryBar} aria-hidden>
                    <div
                      className={styles.masteryBarFill}
                      style={{ width: `${item.mastery}%` }}
                    />
                  </div>
                  <div className={styles.wordCardFooter}>
                    <span
                      className={cn(
                        styles.masteryPill,
                        masteryClass(item.mastery),
                      )}
                    >
                      {masteryLabel(item.mastery)}
                      {item.mastery > 0 ? ` · ${item.mastery}%` : ""}
                    </span>
                    <button
                      type="button"
                      className={
                        item.is_saved ? styles.savedBtn : styles.saveBtn
                      }
                      disabled={savingId === item.id}
                      onClick={() => void handleSave(item)}
                    >
                      {item.is_saved ? "Saved" : "Save"}
                    </button>
                  </div>
                </li>
              ))}
            </ul>
          )}
        </TabsContent>
      </Tabs>

      {optionsOpen ? (
        <div
          className={styles.optionsOverlay}
          role="dialog"
          aria-modal="true"
          aria-labelledby="vocab-options-title"
          onClick={() => {
            if (!resetting) setOptionsOpen(false);
          }}
        >
          <div
            className={styles.optionsCard}
            onClick={(e) => e.stopPropagation()}
          >
            <div className={styles.optionsHead}>
              <h2 id="vocab-options-title" className={styles.optionsTitle}>
                Options
              </h2>
              <button
                type="button"
                className={styles.optionsClose}
                aria-label="Close"
                disabled={resetting}
                onClick={() => setOptionsOpen(false)}
              >
                <X size={16} weight="bold" />
              </button>
            </div>
            <p className={styles.optionsSub}>
              Choose how definitions appear when you study vocabulary.
            </p>

            <label className={styles.optionsLabel} htmlFor="def-language">
              Definition language
            </label>
            <Select
              value={defLanguage}
              onValueChange={(v) => setDefLanguage(v ?? "en")}
            >
              <SelectTrigger
                id="def-language"
                className={styles.filterSelect}
                aria-label="Definition language"
              >
                <SelectValue />
              </SelectTrigger>
              <SelectContent
                className={styles.selectDropdown}
                alignItemWithTrigger={false}
                sideOffset={6}
              >
                <SelectItem value="en">English</SelectItem>
                <SelectItem value="es">Spanish (soon)</SelectItem>
                <SelectItem value="zh">Chinese (soon)</SelectItem>
              </SelectContent>
            </Select>

            <div className={styles.optionsDanger}>
              <div>
                <p className={styles.optionsDangerTitle}>Reset progress</p>
                <p className={styles.optionsDangerDesc}>
                  Clears all mastery and review history for your word bank. This
                  can&rsquo;t be undone.
                </p>
              </div>
              <button
                type="button"
                className={styles.optionsResetBtn}
                disabled={resetting}
                onClick={() => void handleResetProgress()}
              >
                {resetting ? "Resetting…" : "Reset progress"}
              </button>
            </div>
          </div>
        </div>
      ) : null}
    </div>
  );
}
