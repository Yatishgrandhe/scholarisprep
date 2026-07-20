"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { BookmarkSimple, Play } from "@phosphor-icons/react";
import { SessionLoadingOverlay } from "@/components/exam/SessionLoadingOverlay";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useAuth } from "@/hooks/useAuth";
import { isApOrIbExam } from "@/lib/examFamily";
import { createSessionFromQuestionIds } from "@/lib/practice/queries";
import { isChallengedProblem } from "@/lib/question/questionQuality";
import { DifficultyBadge } from "@/components/question/DifficultyBadge";
import { useSubjectStore } from "@/stores/subjectStore";
import styles from "./saved.module.css";

type SavedItem = {
  id: string;
  question_id: string;
  created_at: string;
  questions: {
    id: string;
    topic: string | null;
    section: string | null;
    unit_code?: string | null;
    question_text: string;
    difficulty?: string | null;
    source_metadata?: Record<string, unknown> | null;
  } | null;
};

type SubjectFilter = "all" | "math" | "english";
type SortOrder = "newest" | "oldest";

const SUBJECT_OPTIONS: { value: SubjectFilter; label: string }[] = [
  { value: "all", label: "All" },
  { value: "math", label: "Math" },
  { value: "english", label: "English" },
];

function isMathItem(item: SavedItem): boolean {
  return item.questions?.section?.toLowerCase().includes("math") ?? false;
}

function unitLabel(item: SavedItem): string {
  return (
    item.questions?.topic?.trim() ||
    item.questions?.unit_code?.trim() ||
    item.questions?.section?.trim() ||
    "Unit"
  );
}

function bankHrefForItem(item: SavedItem, apIb: boolean): string {
  if (apIb) {
    const unit = item.questions?.unit_code?.trim();
    return unit
      ? `/dashboard/practice/bank?module=${encodeURIComponent(unit)}`
      : "/dashboard/practice/bank";
  }
  return `/dashboard/practice/bank?module=${
    isMathItem(item) ? "math" : "en"
  }`;
}

export default function SavedQuestionsPage() {
  const router = useRouter();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const apIb = isApOrIbExam(examType);
  const { user, supabase } = useAuth();
  const [items, setItems] = useState<SavedItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [starting, setStarting] = useState(false);
  const [removingId, setRemovingId] = useState<string | null>(null);
  const [subject, setSubject] = useState<SubjectFilter>("all");
  const [sort, setSort] = useState<SortOrder>("newest");

  useEffect(() => {
    // Wait for persisted active exam so SAT bookmarks never flash on AP/IB.
    if (!subjectHydrated) return;
    let cancelled = false;
    setLoading(true);
    setItems([]);
    setSubject("all");
    void fetch(
      `/api/dashboard/saved-questions?courseId=${encodeURIComponent(examType)}`,
    )
      .then((r) => r.json())
      .then((data: { items?: SavedItem[] }) => {
        if (!cancelled) setItems(data.items ?? []);
      })
      .finally(() => {
        if (!cancelled) setLoading(false);
      });
    return () => {
      cancelled = true;
    };
  }, [examType, subjectHydrated]);

  const topicCount = useMemo(() => {
    const topics = new Set(
      items
        .map((item) =>
          apIb ? unitLabel(item) : item.questions?.topic,
        )
        .filter(Boolean) as string[],
    );
    return topics.size;
  }, [items, apIb]);

  const visibleItems = useMemo(() => {
    const filtered =
      apIb || subject === "all"
        ? items
        : items.filter((item) =>
            subject === "math" ? isMathItem(item) : !isMathItem(item),
          );
    return [...filtered].sort((a, b) => {
      const delta =
        new Date(b.created_at).getTime() - new Date(a.created_at).getTime();
      return sort === "newest" ? delta : -delta;
    });
  }, [items, subject, sort, apIb]);

  const startReview = useCallback(async () => {
    if (!user || items.length === 0) return;
    setStarting(true);
    const ids = items.slice(0, 20).map((i) => i.question_id).filter(Boolean);
    const sessionId = await createSessionFromQuestionIds(supabase, user.id, examType, ids, {
      mode: "review",
    });
    if (sessionId) router.push(`/dashboard/practice/${sessionId}`);
    else setStarting(false);
  }, [user, items, supabase, examType, router]);

  const removeItem = useCallback(
    async (questionId: string) => {
      setRemovingId(questionId);
      try {
        const res = await fetch(
          `/api/dashboard/saved-questions?questionId=${encodeURIComponent(questionId)}&courseId=${encodeURIComponent(examType)}`,
          { method: "DELETE" },
        );
        if (res.ok) {
          setItems((prev) =>
            prev.filter((item) => item.question_id !== questionId),
          );
        }
      } finally {
        setRemovingId(null);
      }
    },
    [examType],
  );

  if (starting) return <SessionLoadingOverlay message="Pulling up your saved questions…" />;

  if (loading) {
    return (
      <div className={styles.page}>
        <p className={styles.loading}>Loading saved questions…</p>
      </div>
    );
  }

  if (items.length === 0) {
    return (
      <div className={styles.page}>
        <div className={styles.empty}>
          <div className={styles.emptyIcon} aria-hidden>
            <BookmarkSimple size={28} weight="duotone" />
          </div>
          <h1 className={styles.emptyTitle}>Saved Questions</h1>
          <p className={styles.emptyText}>
            Bookmark questions during practice to build a personal review deck for {examType}.
          </p>
          <Link href="/dashboard/practice/bank" className={styles.emptyCta}>
            Open question bank
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className={styles.page}>
      <header className={styles.header} aria-labelledby="saved-title">
        <div className={styles.headerCopy}>
          <div className={styles.titleRow}>
            <BookmarkSimple size={22} weight="duotone" className={styles.titleIcon} aria-hidden />
            <h1 id="saved-title" className={styles.title}>
              Saved Questions
            </h1>
          </div>
          <p className={styles.subtitle}>
            {items.length} saved · {topicCount}{" "}
            {apIb ? "units" : "topics"}, your bookmarked {examType} questions.
          </p>
        </div>
        <button type="button" className={styles.reviewBtn} onClick={() => void startReview()}>
          <Play size={15} weight="fill" aria-hidden />
          Review all saved
        </button>
      </header>

      <div className={styles.filterRow}>
        {!apIb ? (
          <div className={styles.segmented} role="group" aria-label="Filter by subject">
            {SUBJECT_OPTIONS.map((option) => (
              <button
                key={option.value}
                type="button"
                className={
                  subject === option.value
                    ? `${styles.segment} ${styles.segmentActive}`
                    : styles.segment
                }
                aria-pressed={subject === option.value}
                onClick={() => setSubject(option.value)}
              >
                {option.label}
              </button>
            ))}
          </div>
        ) : (
          <div />
        )}
        <select
          className={styles.sortSelect}
          value={sort}
          aria-label="Sort saved questions"
          onChange={(event) => setSort(event.target.value as SortOrder)}
        >
          <option value="newest">Newest first</option>
          <option value="oldest">Oldest first</option>
        </select>
      </div>

      {visibleItems.length === 0 ? (
        <p className={styles.noMatches}>No saved questions match this filter.</p>
      ) : (
        <section className={styles.listPanel} aria-label="Saved question list">
          <ul className={styles.list}>
            {visibleItems.map((item) => (
              <li key={item.id} className={styles.row}>
                <div className={styles.rowBody}>
                  <p className={styles.meta}>
                    <span>
                      {apIb
                        ? unitLabel(item)
                        : (item.questions?.section ?? "General")}
                    </span>
                    {!apIb ? (
                      <>
                        <span className={styles.metaDot} aria-hidden>
                          ·
                        </span>
                        <span>{item.questions?.topic ?? "General"}</span>
                      </>
                    ) : null}
                    <span className={styles.metaDot} aria-hidden>
                      ·
                    </span>
                    <DifficultyBadge
                      difficulty={item.questions?.difficulty}
                      challenged={isChallengedProblem(
                        item.questions?.source_metadata,
                      )}
                      size="sm"
                    />
                    <span className={styles.metaDot} aria-hidden>
                      ·
                    </span>
                    <time dateTime={item.created_at}>
                      {new Date(item.created_at).toLocaleDateString(undefined, {
                        month: "short",
                        day: "numeric",
                      })}
                    </time>
                  </p>
                  <p className={styles.excerpt}>
                    {item.questions?.question_text?.slice(0, 140) ?? "Question"}…
                  </p>
                </div>
                <div className={styles.rowActions}>
                  <Link
                    href={bankHrefForItem(item, apIb)}
                    className={styles.actionPill}
                  >
                    Practice
                  </Link>
                  <button
                    type="button"
                    className={`${styles.actionPill} ${styles.removePill}`}
                    disabled={removingId === item.question_id}
                    onClick={() => void removeItem(item.question_id)}
                  >
                    {removingId === item.question_id ? "Removing…" : "Remove"}
                  </button>
                </div>
              </li>
            ))}
          </ul>
        </section>
      )}
    </div>
  );
}
