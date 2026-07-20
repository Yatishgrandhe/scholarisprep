"use client";

import { useCallback, useEffect, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { BookmarkSimple, Play } from "@phosphor-icons/react";
import { SessionLoadingOverlay } from "@/components/exam/SessionLoadingOverlay";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useAuth } from "@/hooks/useAuth";
import { createSessionFromQuestionIds } from "@/lib/practice/queries";
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
    question_text: string;
  } | null;
};

export function SavedQuestionsClient() {
  const router = useRouter();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const { user, supabase } = useAuth();
  const [items, setItems] = useState<SavedItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [starting, setStarting] = useState(false);

  useEffect(() => {
    if (!subjectHydrated) return;
    let cancelled = false;
    setLoading(true);
    setItems([]);
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

  if (starting) return <SessionLoadingOverlay message="Pulling up your saved questions…" />;

  if (loading) return <p className={styles.loading}>Loading saved questions…</p>;

  if (items.length === 0) {
    return (
      <div className={styles.empty}>
        <div className={styles.emptyIcon} aria-hidden>
          <BookmarkSimple size={28} weight="duotone" />
        </div>
        <h1 className={styles.emptyTitle}>Saved Questions</h1>
        <p className={styles.emptyText}>
          No saved questions yet, tap the bookmark on any question and it'll show up here.
        </p>
        <Link href="/dashboard/practice/bank" className={styles.emptyCta}>
          Open question bank
        </Link>
      </div>
    );
  }

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <div className={styles.headerCopy}>
          <div className={styles.titleRow}>
            <BookmarkSimple size={22} weight="duotone" className={styles.titleIcon} aria-hidden />
            <h1 className={styles.title}>Saved Questions</h1>
          </div>
          <p className={styles.subtitle}>{items.length} saved questions</p>
        </div>
        <button type="button" className={styles.reviewBtn} onClick={() => void startReview()}>
          <Play size={15} weight="fill" aria-hidden />
          Review all saved
        </button>
      </header>
      <section className={styles.listPanel} aria-label="Saved question list">
        <ul className={styles.list}>
          {items.map((item) => (
            <li key={item.id} className={styles.row}>
              <div className={styles.rowBody}>
                <p className={styles.meta}>
                  <span>{item.questions?.section ?? "General"}</span>
                  <span className={styles.metaDot} aria-hidden>
                    ·
                  </span>
                  <span>{item.questions?.topic ?? "General"}</span>
                </p>
                <p className={styles.excerpt}>
                  {item.questions?.question_text?.slice(0, 120) ?? "Question"}…
                </p>
              </div>
              <Link
                href={`/dashboard/practice/bank?module=${
                  item.questions?.section?.toLowerCase().includes("math") ? "math" : "en"
                }`}
                className={styles.actionPill}
              >
                Practice
              </Link>
            </li>
          ))}
        </ul>
      </section>
    </div>
  );
}
