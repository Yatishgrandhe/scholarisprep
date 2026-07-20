"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import {
  ArrowRight,
  CheckCircle,
  Play,
  Sparkle,
  XCircle,
} from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { SessionLoadingOverlay } from "@/components/exam/SessionLoadingOverlay";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import {
  difficultyLabel,
  fetchMistakesForExam,
  sectionLabelForMistake,
  type Difficulty,
  type MistakeEntry,
} from "@/lib/dashboard/mistakesLog";
import { DifficultyBadge } from "@/components/question/DifficultyBadge";
import { examFamilyLabel } from "@/lib/examFamily";
import { createSessionFromQuestionIds } from "@/lib/practice/queries";
import { useSubjectStore } from "@/stores/subjectStore";
import styles from "./mistakes-page.module.css";

type StatusFilter = "never" | "corrected" | "all";
type DiffFilter = "all" | Difficulty;
type TimeFilter = "all" | "7" | "30";

export default function MistakesLogPage() {
  const router = useRouter();
  const { user } = useAuth();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const supabase = createClient();

  const [mistakes, setMistakes] = useState<MistakeEntry[]>([]);
  const [loading, setLoading] = useState(true);
  const [starting, setStarting] = useState(false);

  const [status, setStatus] = useState<StatusFilter>("never");
  const [diff, setDiff] = useState<DiffFilter>("all");
  const [time, setTime] = useState<TimeFilter>("all");

  const courseLabel = examFamilyLabel(examType);

  useEffect(() => {
    // Wait for persisted active exam so we never flash SAT mistakes on an AP/IB course.
    if (!user || !subjectHydrated) return;
    let cancelled = false;

    setLoading(true);
    setMistakes([]);
    setStatus("never");
    setDiff("all");
    setTime("all");

    void (async () => {
      const list = await fetchMistakesForExam(supabase, user.id, examType);
      if (cancelled) return;
      setMistakes(list);
      setLoading(false);
    })();

    return () => {
      cancelled = true;
    };
  }, [user, examType, supabase, subjectHydrated]);

  const filtered = useMemo(() => {
    const now = Date.now();
    const windowMs =
      time === "7" ? 7 * 864e5 : time === "30" ? 30 * 864e5 : Infinity;
    return mistakes.filter((m) => {
      if (status === "never" && m.corrected) return false;
      if (status === "corrected" && !m.corrected) return false;
      if (diff !== "all" && m.difficulty !== diff) return false;
      if (now - m.lastWrong > windowMs) return false;
      return true;
    });
  }, [mistakes, status, diff, time]);

  // Heuristic "pattern" summary, computed over the unresolved mistakes.
  const pattern = useMemo(() => {
    const pool = mistakes.filter((m) => !m.corrected);
    if (pool.length < 3) return null;
    const tally = (key: (m: MistakeEntry) => string) => {
      const map = new Map<string, number>();
      for (const m of pool) {
        const k = key(m);
        map.set(k, (map.get(k) ?? 0) + 1);
      }
      return [...map.entries()].sort((a, b) => b[1] - a[1])[0];
    };
    const [topSection, secN] = tally((m) =>
      sectionLabelForMistake(m.section, examType, m.topic),
    );
    const [topDiff] = tally((m) => difficultyLabel(m.difficulty));
    const topicEntry = tally((m) => m.topic ?? "");
    const topTopic = topicEntry && topicEntry[0] ? topicEntry[0] : null;
    return { total: pool.length, topSection, secN, topDiff, topTopic };
  }, [mistakes, examType]);

  const startSession = useCallback(
    async (ids: string[]) => {
      if (!user || ids.length === 0) return;
      setStarting(true);
      const sessionId = await createSessionFromQuestionIds(
        supabase,
        user.id,
        examType,
        ids.slice(0, 30),
        { mode: "review" },
      );
      if (sessionId) router.push(`/dashboard/practice/${sessionId}`);
      else setStarting(false);
    },
    [user, supabase, examType, router],
  );

  if (starting) {
    return <SessionLoadingOverlay message="Building your review session…" />;
  }

  if (loading) {
    return (
      <div className={styles.shell}>
        <p className={styles.loading}>Crunching your mistakes…</p>
      </div>
    );
  }

  const totalUnique = mistakes.length;

  return (
    <div className={styles.shell}>
      <header className={styles.header}>
        <div className={styles.titleRow}>
          <span className={styles.titleIcon} aria-hidden>
            <XCircle size={26} weight="fill" />
          </span>
          <div className={styles.titleBlock}>
            <h1 className={styles.title}>
              Mistakes Log{" "}
              <span className={styles.count}>({filtered.length})</span>
            </h1>
            <p className={styles.courseScope}>
              Showing misses for <strong>{courseLabel}</strong> only
            </p>
          </div>
        </div>
        <button
          type="button"
          className={styles.practiceAll}
          disabled={filtered.length === 0}
          onClick={() => void startSession(filtered.map((m) => m.questionId))}
        >
          <Play size={15} weight="fill" aria-hidden />
          Practice All ({filtered.length})
        </button>
      </header>

      {totalUnique > 0 ? (
        <div className={styles.filters} role="group" aria-label="Filters">
          <Select
            value={status}
            onChange={(v) => setStatus(v as StatusFilter)}
            options={[
              ["never", "Never corrected"],
              ["corrected", "Corrected"],
              ["all", "All mistakes"],
            ]}
          />
          <Select
            value={diff}
            onChange={(v) => setDiff(v as DiffFilter)}
            options={[
              ["all", "All difficulties"],
              ["easy", "Easy"],
              ["medium", "Medium"],
              ["hard", "Hard"],
            ]}
          />
          <Select
            value={time}
            onChange={(v) => setTime(v as TimeFilter)}
            options={[
              ["all", "All time"],
              ["7", "Last 7 days"],
              ["30", "Last 30 days"],
            ]}
          />
        </div>
      ) : null}

      {pattern ? (
        <section className={styles.aiCard} aria-label="Pattern in your mistakes">
          <span className={styles.aiIcon} aria-hidden>
            <Sparkle size={20} weight="fill" />
          </span>
          <div className={styles.aiBody}>
            <p className={styles.aiTitle}>Scho found a pattern in your mistakes</p>
            <p className={styles.aiText}>
              About <strong>{pattern.secN}</strong> of your{" "}
              <strong>{pattern.total}</strong> unresolved misses are{" "}
              <strong>{pattern.topDiff}-level</strong>{" "}
              <strong>{pattern.topSection}</strong> questions
              {pattern.topTopic ? (
                <>
                  , concentrated in <strong>{pattern.topTopic}</strong>
                </>
              ) : null}
              . Read each explanation before retrying, then drill{" "}
              {pattern.topTopic ?? pattern.topSection} until you can answer it
              without hints.
            </p>
          </div>
        </section>
      ) : null}

      {totalUnique === 0 ? (
        <div className={styles.emptyState}>
          <span className={styles.emptyIcon} aria-hidden>
            <CheckCircle size={28} weight="duotone" />
          </span>
          <h2 className={styles.emptyTitle}>No mistakes logged yet</h2>
          <p className={styles.emptyDesc}>
            Keep practicing {courseLabel} — wrong answers for this course will
            land here so you can turn them into strengths.
          </p>
          <Link href="/dashboard/practice/bank" className={styles.emptyLink}>
            Start practicing
          </Link>
        </div>
      ) : filtered.length === 0 ? (
        <div className={styles.noMatches}>
          No mistakes match these filters.
        </div>
      ) : (
        <ul className={styles.list}>
          {filtered.map((m) => (
            <li key={m.questionId}>
              <button
                type="button"
                className={styles.row}
                onClick={() => void startSession([m.questionId])}
              >
                <span className={styles.rowIcon} aria-hidden>
                  <XCircle size={20} weight="fill" />
                </span>
                <span className={styles.rowBody}>
                  <span className={styles.tags}>
                    <span className={styles.tag}>
                      {sectionLabelForMistake(m.section, examType, m.topic)}
                    </span>
                    <DifficultyBadge
                      difficulty={m.difficulty}
                      size="sm"
                    />
                    <span className={styles.attemptTag}>
                      <XCircle size={12} weight="fill" aria-hidden />
                      {m.wrongCount} wrong attempt
                      {m.wrongCount === 1 ? "" : "s"}
                    </span>
                    {m.corrected ? (
                      <span className={styles.correctedTag}>
                        <CheckCircle size={12} weight="fill" aria-hidden />
                        Corrected
                      </span>
                    ) : null}
                    {m.lastWrong ? (
                      <time className={styles.date}>
                        {new Date(m.lastWrong).toLocaleDateString()}
                      </time>
                    ) : null}
                  </span>
                  <span className={styles.excerpt}>{m.text}</span>
                </span>
                <span className={styles.rowArrow} aria-hidden>
                  <ArrowRight size={16} weight="bold" />
                </span>
              </button>
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}

function Select({
  value,
  onChange,
  options,
}: {
  value: string;
  onChange: (v: string) => void;
  options: [string, string][];
}) {
  return (
    <div className={styles.selectWrap}>
      <select
        className={styles.select}
        value={value}
        onChange={(e) => onChange(e.target.value)}
      >
        {options.map(([v, label]) => (
          <option key={v} value={v}>
            {label}
          </option>
        ))}
      </select>
    </div>
  );
}
