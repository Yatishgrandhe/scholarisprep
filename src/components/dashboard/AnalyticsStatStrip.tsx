"use client";

import { useEffect, useState } from "react";
import Link from "next/link";
import {
  ListChecks,
  Target,
  BookmarkSimple,
  WarningCircle,
  type Icon,
} from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { fetchAnalyticsAttemptStats } from "@/lib/dashboard/analyticsQueries";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useSubjectStore } from "@/stores/subjectStore";
import styles from "./analytics-stats.module.css";

export function AnalyticsStatStrip() {
  const { user } = useAuth();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const [stats, setStats] = useState({
    attempted: 0,
    accuracy: null as number | null,
    saved: 0,
    errors: 0,
  });
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!user || !subjectHydrated) return;
    let cancelled = false;
    const supabase = createClient();
    setLoading(true);
    void (async () => {
      const { total, correct, saved } = await fetchAnalyticsAttemptStats(
        supabase,
        user.id,
        examType,
      );
      if (cancelled) return;
      setStats({
        attempted: total,
        accuracy: total > 0 ? Math.round((correct / total) * 100) : null,
        saved,
        errors: Math.max(0, total - correct),
      });
      setLoading(false);
    })();
    return () => {
      cancelled = true;
    };
  }, [user, examType, subjectHydrated]);

  return (
    <section
      className={styles.strip}
      aria-label="Practice stats"
      aria-busy={loading}
      key={examType}
    >
      <StatCard
        label="Questions Attempted"
        value={stats.attempted.toLocaleString()}
        icon={ListChecks}
      />
      <StatCard
        label="Current Accuracy"
        value={stats.accuracy !== null ? `${stats.accuracy}%` : "—"}
        icon={Target}
        tone="positive"
      />
      <StatCard
        label="Saved Questions"
        value={String(stats.saved)}
        href="/dashboard/saved"
        action="View Saved"
        icon={BookmarkSimple}
      />
      <StatCard
        label="Recent Errors"
        value={String(stats.errors)}
        href="/dashboard/mistakes"
        action="Start Review"
        icon={WarningCircle}
        tone="negative"
      />
    </section>
  );
}

function StatCard({
  label,
  value,
  href,
  action,
  icon: IconCmp,
  tone,
}: {
  label: string;
  value: string;
  href?: string;
  action?: string;
  icon: Icon;
  tone?: "positive" | "negative";
}) {
  const valueClass =
    tone === "positive"
      ? `${styles.value} ${styles.valuePositive}`
      : tone === "negative"
        ? `${styles.value} ${styles.valueNegative}`
        : styles.value;
  return (
    <div className={styles.cell}>
      <p className={styles.label}>{label}</p>
      <p className={valueClass}>{value}</p>
      {href ? (
        <Link href={href} className={styles.action}>
          {action ?? "View"}
        </Link>
      ) : null}
      <IconCmp size={72} weight="fill" className={styles.watermark} aria-hidden />
    </div>
  );
}
