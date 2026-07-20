"use client";

import { useEffect, useMemo, useState } from "react";
import Link from "next/link";
import { ArrowRight } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useSubjectStore } from "@/stores/subjectStore";
import styles from "./AnalyticsWeakTopics.module.css";

type TopicStat = {
  topic: string;
  attempted: number;
  correct: number;
  accuracy: number;
};

const RING_RADIUS = 19;
const RING_CIRCUMFERENCE = 2 * Math.PI * RING_RADIUS;

function AccuracyRing({ accuracy }: { accuracy: number }) {
  const filled = (Math.min(Math.max(accuracy, 0), 100) / 100) * RING_CIRCUMFERENCE;
  return (
    <span className={styles.ring} role="img" aria-label={`${accuracy}% accuracy`}>
      <svg viewBox="0 0 48 48" width="48" height="48" aria-hidden>
        <circle
          cx="24"
          cy="24"
          r={RING_RADIUS}
          fill="none"
          className={styles.ringTrack}
          strokeWidth="4"
        />
        <circle
          cx="24"
          cy="24"
          r={RING_RADIUS}
          fill="none"
          className={styles.ringArc}
          strokeWidth="4"
          strokeLinecap="round"
          strokeDasharray={`${filled} ${RING_CIRCUMFERENCE}`}
          transform="rotate(-90 24 24)"
        />
      </svg>
      <span className={styles.ringValue}>{accuracy}%</span>
    </span>
  );
}

export function AnalyticsWeakTopics() {
  const { user } = useAuth();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const supabase = createClient();
  const [topics, setTopics] = useState<TopicStat[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!user || !subjectHydrated) {
      if (!user) setLoading(false);
      return;
    }
    let cancelled = false;
    void (async () => {
      setLoading(true);
      setTopics([]);
      const { data } = await supabase
        .from("question_attempts")
        .select("is_correct, questions(topic)")
        .eq("user_id", user.id)
        .eq("exam_type", examType)
        .order("created_at", { ascending: false })
        .limit(400);

      if (cancelled) return;

      const map = new Map<string, { attempted: number; correct: number }>();
      for (const row of data ?? []) {
        const topic =
          (row.questions as { topic?: string } | null)?.topic?.trim() ?? "General";
        const entry = map.get(topic) ?? { attempted: 0, correct: 0 };
        entry.attempted += 1;
        if (row.is_correct) entry.correct += 1;
        map.set(topic, entry);
      }

      const stats: TopicStat[] = [...map.entries()]
        .filter(([, v]) => v.attempted >= 3)
        .map(([topic, v]) => ({
          topic,
          attempted: v.attempted,
          correct: v.correct,
          accuracy: Math.round((v.correct / v.attempted) * 100),
        }))
        .sort((a, b) => a.accuracy - b.accuracy)
        .slice(0, 6);

      setTopics(stats);
      setLoading(false);
    })();
    return () => {
      cancelled = true;
    };
  }, [user, examType, supabase, subjectHydrated]);

  const practiceHref = useMemo(
    () =>
      examType === "ACT" || examType.startsWith("AP_") || examType.startsWith("IB_")
        ? "/dashboard/practice/bank"
        : "/dashboard/practice/bank?module=en",
    [examType],
  );

  if (loading) {
    return <p className={styles.hint}>Loading weak topics…</p>;
  }

  if (topics.length === 0) {
    return (
      <p className={styles.hint}>
        Answer a few more questions to see weak topics here.
      </p>
    );
  }

  return (
    <section className={styles.section}>
      <div className={styles.header}>
        <h2 className={styles.title}>
          {topics.length} topic {topics.length === 1 ? "area is" : "areas are"}{" "}
          costing you the most points.
        </h2>
        <Link href={practiceHref} className={styles.practiceLink}>
          Practice in bank
        </Link>
      </div>
      <ul className={styles.list}>
        {topics.map((t, i) => (
          <li key={t.topic} className={styles.row}>
            <span className={styles.index} aria-hidden>
              {String(i + 1).padStart(2, "0")}
            </span>
            <div className={styles.info}>
              <p className={styles.meta}>
                <span className={styles.needsWork}>Needs work</span>
                <span className={styles.metaSep} aria-hidden>
                  ·
                </span>
                <span>{examType}</span>
                <span className={styles.metaSep} aria-hidden>
                  ·
                </span>
                <span>
                  {t.correct}/{t.attempted} correct
                </span>
              </p>
              <p className={styles.topic}>{t.topic}</p>
            </div>
            <div className={styles.side}>
              <AccuracyRing accuracy={t.accuracy} />
              <Link
                href={`${practiceHref}&topic=${encodeURIComponent(t.topic)}`}
                className={styles.rowLink}
              >
                Practice
                <ArrowRight size={13} weight="bold" aria-hidden />
              </Link>
            </div>
          </li>
        ))}
      </ul>
    </section>
  );
}
