"use client";

import { useCallback, useEffect, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { ArrowRight, CheckCircle, Play, Warning } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { SessionLoadingOverlay } from "@/components/exam/SessionLoadingOverlay";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useSubjectStore } from "@/stores/subjectStore";
import {
  fetchMistakeRowsForExam,
  type MistakeAttemptRow,
} from "@/lib/dashboard/mistakesLog";
import { examFamilyLabel } from "@/lib/examFamily";
import { createSessionFromQuestionIds } from "@/lib/practice/queries";
import styles from "./mistakes.module.css";

export function MistakesLogClient() {
  const router = useRouter();
  const { user } = useAuth();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const supabase = createClient();
  const [rows, setRows] = useState<MistakeAttemptRow[]>([]);
  const [loading, setLoading] = useState(true);
  const [starting, setStarting] = useState(false);
  const courseLabel = examFamilyLabel(examType);

  useEffect(() => {
    if (!user || !subjectHydrated) return;
    let cancelled = false;

    setLoading(true);
    setRows([]);

    void fetchMistakeRowsForExam(supabase, user.id, examType).then((data) => {
      if (cancelled) return;
      setRows(data);
      setLoading(false);
    });

    return () => {
      cancelled = true;
    };
  }, [user, examType, supabase, subjectHydrated]);

  const startReview = useCallback(async () => {
    if (!user || rows.length === 0) return;
    setStarting(true);
    const seen = new Set<string>();
    const ids: string[] = [];
    for (const row of rows) {
      if (!row.question_id || seen.has(row.question_id)) continue;
      seen.add(row.question_id);
      ids.push(row.question_id);
      if (ids.length >= 20) break;
    }
    const sessionId = await createSessionFromQuestionIds(supabase, user.id, examType, ids, {
      mode: "review",
    });
    if (sessionId) router.push(`/dashboard/practice/${sessionId}`);
    else setStarting(false);
  }, [user, rows, supabase, examType, router]);

  if (starting) return <SessionLoadingOverlay message="Building your review session…" />;

  if (loading) return <p className={styles.loading}>Loading review queue…</p>;

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <div className={styles.headerCopy}>
          <div className={styles.titleRow}>
            <Warning size={22} weight="duotone" className={styles.titleIcon} aria-hidden />
            <h1 className={styles.title}>Mistakes Log</h1>
          </div>
          <p className={styles.subtitle}>
            Questions you got wrong in {courseLabel} — review and drill weak
            areas.
          </p>
        </div>
        <button
          type="button"
          className={styles.reviewBtn}
          disabled={rows.length === 0}
          onClick={() => void startReview()}
        >
          <Play size={15} weight="fill" aria-hidden />
          Start Review
        </button>
      </header>
      {rows.length === 0 ? (
        <div className={styles.empty}>
          <span className={styles.emptyIcon} aria-hidden>
            <CheckCircle size={28} weight="duotone" />
          </span>
          <h2 className={styles.emptyTitle}>No mistakes logged yet</h2>
          <p className={styles.emptyText}>
            Keep practicing {courseLabel} — wrong answers will appear here.
          </p>
          <Link href="/dashboard/practice/bank" className={styles.emptyCta}>
            Start practicing
          </Link>
        </div>
      ) : (
        <section className={styles.listPanel} aria-label="Mistake log">
          <ul className={styles.list}>
            {rows.map((row) => (
              <li
                key={`${row.question_id}-${row.created_at ?? "na"}`}
                className={styles.row}
              >
                <div className={styles.rowBody}>
                  <p className={styles.meta}>
                    <span>{row.questions?.topic ?? "General"}</span>
                    {row.created_at ? (
                      <>
                        <span className={styles.metaDot} aria-hidden>
                          ·
                        </span>
                        <time dateTime={row.created_at}>
                          {new Date(row.created_at).toLocaleDateString()}
                        </time>
                      </>
                    ) : null}
                  </p>
                  <p className={styles.excerpt}>
                    {row.questions?.question_text?.slice(0, 100) ?? "Question"}…
                  </p>
                </div>
                <span className={styles.needsReview}>Needs review</span>
              </li>
            ))}
          </ul>
        </section>
      )}
      {rows.length > 0 ? (
        <Link href="/dashboard/practice/bank" className={styles.bankLink}>
          Or practice in the question bank
          <ArrowRight size={14} weight="bold" aria-hidden />
        </Link>
      ) : null}
    </div>
  );
}
