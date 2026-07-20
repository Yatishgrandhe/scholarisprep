"use client";

import { useEffect, useMemo, useState } from "react";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useSubjectStore } from "@/stores/subjectStore";
import styles from "./ActivityHeatmap.module.css";

type DayCount = { date: string; count: number };

function lastNDays(n: number): string[] {
  const days: string[] = [];
  const cursor = new Date();
  cursor.setHours(0, 0, 0, 0);
  for (let i = n - 1; i >= 0; i -= 1) {
    const d = new Date(cursor);
    d.setDate(cursor.getDate() - i);
    days.push(d.toISOString().slice(0, 10));
  }
  return days;
}

export function ActivityHeatmap() {
  const { user } = useAuth();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const supabase = createClient();
  const [counts, setCounts] = useState<Map<string, number>>(new Map());

  const days = useMemo(() => lastNDays(84), []);

  useEffect(() => {
    if (!user || !subjectHydrated) return;
    let cancelled = false;
    setCounts(new Map());

    void (async () => {
      const since = days[0];
      const { data } = await supabase
        .from("question_attempts")
        .select("created_at")
        .eq("user_id", user.id)
        .eq("exam_type", examType)
        .gte("created_at", `${since}T00:00:00`);

      if (cancelled) return;
      const map = new Map<string, number>();
      for (const row of data ?? []) {
        if (!row.created_at) continue;
        const key = row.created_at.slice(0, 10);
        map.set(key, (map.get(key) ?? 0) + 1);
      }
      setCounts(map);
    })();

    return () => {
      cancelled = true;
    };
  }, [user, examType, supabase, days, subjectHydrated]);

  const max = Math.max(1, ...[...counts.values()]);

  return (
    <section className={styles.section}>
      <h2 className={styles.title}>Activity</h2>
      <p className={styles.sub}>Questions answered per day (last 12 weeks)</p>
      <div className={styles.grid} aria-label="Activity heatmap">
        {days.map((date) => {
          const count = counts.get(date) ?? 0;
          const level =
            count === 0 ? 0 : count <= max * 0.25 ? 1 : count <= max * 0.5 ? 2 : count <= max * 0.75 ? 3 : 4;
          return (
            <span
              key={date}
              className={styles.cell}
              data-level={level}
              title={`${date}: ${count} questions`}
            />
          );
        })}
      </div>
    </section>
  );
}
