"use client";

import { useEffect, useMemo, useState } from "react";
import Link from "next/link";
import {
  ListChecks,
  Target,
  BookmarkSimple,
  Flame,
  CheckCircle,
  XCircle,
  ArrowRight,
  type Icon,
} from "@phosphor-icons/react";
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
  PieChart,
  Pie,
  Cell,
} from "recharts";
import { ChartScroll } from "@/components/shared/ChartScroll";
import { chartTheme } from "@/lib/dashboard/chartTheme";
import { createClient } from "@/lib/supabase/client";
import {
  fetchAnalyticsAttempts,
  fetchAnalyticsAttemptStats,
  type AnalyticsAttemptRow,
} from "@/lib/dashboard/analyticsQueries";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import { apIbDisplayName, isApOrIbExam } from "@/lib/apIbCatalog";
import { examFamilyLabel } from "@/lib/examFamily";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useSubjectStore } from "@/stores/subjectStore";
import type { ExamType } from "@/types/supabase";
import stat from "./analytics-stats.module.css";
import styles from "./AnalyticsExperience.module.css";

/* ------------------------------------------------------------------ */
/* Types                                                              */
/* ------------------------------------------------------------------ */

type Difficulty = "easy" | "medium" | "hard";

type AttemptRow = AnalyticsAttemptRow;

type SectionKey = "reading_writing" | "math";

type TopicAcc = { name: string; attempts: number; accuracy: number };

type WeakTopic = {
  name: string;
  section: SectionKey;
  attempts: number;
  correct: number;
  accuracy: number;
};

type TimeStat = {
  totalSeconds: number;
  avgSeconds: number;
  count: number;
};

type SectionTime = Record<Difficulty, TimeStat> & { overallAvg: number };

type WeekBar = {
  label: string;
  correctEasy: number;
  correctMedium: number;
  correctHard: number;
  wrongEasy: number;
  wrongMedium: number;
  wrongHard: number;
};

type MonthGrid = {
  key: string;
  name: string;
  leading: number;
  days: { date: string; count: number }[];
};

type AnalyticsData = {
  attempted: number;
  accuracy: number | null;
  saved: number;
  streak: number;
  totalCorrect: number;
  totalWrong: number;
  weeks: WeekBar[];
  weak: WeakTopic[];
  topicAcc: Record<SectionKey, TopicAcc[]>;
  sectionTime: Record<SectionKey, SectionTime>;
  months: MonthGrid[];
  heatTotal: number;
  heatMax: number;
  mostActiveDay: string | null;
};

/* ------------------------------------------------------------------ */
/* Constants & helpers                                                */
/* ------------------------------------------------------------------ */

const SECTION_LABEL: Record<SectionKey, string> = {
  reading_writing: "Reading & Writing",
  math: "Math",
};

// Stacked-bar fills: harder = darker, sits below easier within each color.
const TREND_FILLS = {
  correctEasy: "hsl(142 64% 58%)",
  correctMedium: "hsl(142 68% 42%)",
  correctHard: "hsl(142 72% 28%)",
  wrongEasy: "hsl(0 84% 72%)",
  wrongMedium: "hsl(0 84% 60%)",
  wrongHard: "hsl(0 72% 44%)",
};

const DIFF_FILLS: Record<Difficulty, string> = {
  easy: "hsl(var(--score-positive))",
  medium: "hsl(var(--exam-jamb))",
  hard: "hsl(var(--destructive))",
};

const HEAT_LEVELS = [
  "hsl(var(--muted) / 0.5)",
  "hsl(214 95% 85%)",
  "hsl(214 90% 68%)",
  "hsl(217 91% 55%)",
  "hsl(221 83% 40%)",
];

// Platform-wide pacing benchmarks (seconds per question), shown in gray.
const PLATFORM_AVG: Record<SectionKey, Record<Difficulty, number>> = {
  reading_writing: { easy: 73, medium: 85, hard: 89 },
  math: { easy: 62, medium: 81, hard: 122 },
};

const WEEKDAY_NAMES = [
  "Sunday",
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
];

const MONTH_NAMES = [
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December",
];

function normalizeDifficulty(value: string | null | undefined): Difficulty {
  const v = (value ?? "").toLowerCase();
  if (v === "easy") return "easy";
  if (v === "hard") return "hard";
  return "medium";
}

function normalizeSection(value: string | null | undefined): SectionKey | null {
  const v = (value ?? "").toLowerCase();
  if (v.startsWith("math")) return "math";
  if (v.startsWith("reading") || v.startsWith("rw") || v.includes("writing"))
    return "reading_writing";
  return null;
}

/** Local YYYY-MM-DD, immune to timezone drift. */
function localDateKey(d: Date): string {
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}-${String(
    d.getDate(),
  ).padStart(2, "0")}`;
}

/** Monday-first week start key. */
function weekStart(d: Date): Date {
  const x = new Date(d.getFullYear(), d.getMonth(), d.getDate());
  const day = (x.getDay() + 6) % 7; // Mon = 0
  x.setDate(x.getDate() - day);
  return x;
}

function formatDuration(seconds: number): string {
  const s = Math.round(seconds);
  if (s < 60) return `${s}s`;
  const m = Math.floor(s / 60);
  const rem = s % 60;
  return rem === 0 ? `${m}m` : `${m}m ${rem}s`;
}

/* ------------------------------------------------------------------ */
/* Data load                                                          */
/* ------------------------------------------------------------------ */

function topicLabelForAttempt(
  row: AttemptRow,
  examType: ExamType,
): string | null {
  const q = row.questions;
  if (!q) return null;
  if (isApOrIbExam(examType)) {
    return (
      q.subtopic?.trim() ||
      q.topic?.trim() ||
      q.unit_code?.trim()?.replace(/^U\d+_?/i, "Unit ") ||
      "General"
    );
  }
  return q.subtopic?.trim() || q.topic?.trim() || "General";
}

function sectionForAttempt(
  row: AttemptRow,
  examType: ExamType,
): SectionKey | null {
  if (isApOrIbExam(examType)) return "reading_writing";
  if (examType === "ACT") {
    const v = (row.questions?.section ?? "").toLowerCase();
    if (v.includes("math")) return "math";
    return "reading_writing";
  }
  return normalizeSection(row.questions?.section);
}

function buildAnalytics(
  rows: AttemptRow[],
  saved: number,
  now: Date,
  examType: ExamType,
): AnalyticsData {
  const totalCorrect = rows.filter((r) => r.is_correct).length;
  const totalWrong = rows.length - totalCorrect;

  /* ---- Streak (consecutive days up to today/yesterday) ---- */
  const dateSet = new Set<string>();
  const weekdayCounts = new Array(7).fill(0);
  for (const r of rows) {
    if (!r.created_at) continue;
    const d = new Date(r.created_at);
    dateSet.add(localDateKey(d));
    weekdayCounts[d.getDay()] += 1;
  }
  let streak = 0;
  const cursor = new Date(now.getFullYear(), now.getMonth(), now.getDate());
  if (!dateSet.has(localDateKey(cursor))) cursor.setDate(cursor.getDate() - 1);
  while (dateSet.has(localDateKey(cursor))) {
    streak += 1;
    cursor.setDate(cursor.getDate() - 1);
  }

  let mostActiveDay: string | null = null;
  let maxWeekday = 0;
  weekdayCounts.forEach((c, i) => {
    if (c > maxWeekday) {
      maxWeekday = c;
      mostActiveDay = WEEKDAY_NAMES[i];
    }
  });

  /* ---- Weekly trend (last 16 weeks, Monday-first) ---- */
  const weekMap = new Map<string, WeekBar>();
  const weekOrder: { key: string; label: string }[] = [];
  const firstWeek = weekStart(now);
  for (let i = 15; i >= 0; i -= 1) {
    const ws = new Date(firstWeek);
    ws.setDate(ws.getDate() - i * 7);
    const key = localDateKey(ws);
    weekMap.set(key, {
      label: ws.toLocaleDateString("en-US", { month: "short", day: "numeric" }),
      correctEasy: 0,
      correctMedium: 0,
      correctHard: 0,
      wrongEasy: 0,
      wrongMedium: 0,
      wrongHard: 0,
    });
    weekOrder.push({
      key,
      label: ws.toLocaleDateString("en-US", { month: "short", day: "numeric" }),
    });
  }
  for (const r of rows) {
    if (!r.created_at) continue;
    const key = localDateKey(weekStart(new Date(r.created_at)));
    const bar = weekMap.get(key);
    if (!bar) continue;
    const diff = normalizeDifficulty(r.questions?.difficulty);
    const bucket = r.is_correct ? "correct" : "wrong";
    const field = `${bucket}${diff[0].toUpperCase()}${diff.slice(1)}` as keyof WeekBar;
    (bar[field] as number) += 1;
  }
  const weeks = weekOrder.map(({ key }) => weekMap.get(key)!);

  /* ---- Weak topics (subtopic, fallback topic) ---- */
  const weakMap = new Map<
    string,
    { section: SectionKey; attempts: number; correct: number }
  >();
  for (const r of rows) {
    const section = sectionForAttempt(r, examType);
    if (!section) continue;
    const name = topicLabelForAttempt(r, examType);
    if (!name) continue;
    const e = weakMap.get(name) ?? { section, attempts: 0, correct: 0 };
    e.attempts += 1;
    if (r.is_correct) e.correct += 1;
    weakMap.set(name, e);
  }
  const weak: WeakTopic[] = [...weakMap.entries()]
    .filter(([, v]) => v.attempts >= 3)
    .map(([name, v]) => ({
      name,
      section: v.section,
      attempts: v.attempts,
      correct: v.correct,
      accuracy: Math.round((v.correct / v.attempts) * 100),
    }))
    .sort((a, b) => a.accuracy - b.accuracy)
    .slice(0, 6);

  /* ---- Accuracy by topic (domain) per section ---- */
  const topicMap: Record<SectionKey, Map<string, { a: number; c: number }>> = {
    reading_writing: new Map(),
    math: new Map(),
  };
  /* ---- Time share per section/difficulty ---- */
  const timeAcc: Record<SectionKey, Record<Difficulty, TimeStat>> = {
    reading_writing: {
      easy: { totalSeconds: 0, avgSeconds: 0, count: 0 },
      medium: { totalSeconds: 0, avgSeconds: 0, count: 0 },
      hard: { totalSeconds: 0, avgSeconds: 0, count: 0 },
    },
    math: {
      easy: { totalSeconds: 0, avgSeconds: 0, count: 0 },
      medium: { totalSeconds: 0, avgSeconds: 0, count: 0 },
      hard: { totalSeconds: 0, avgSeconds: 0, count: 0 },
    },
  };

  for (const r of rows) {
    const section = sectionForAttempt(r, examType);
    if (!section) continue;
    const topic = topicLabelForAttempt(r, examType) ?? "General";
    const tm = topicMap[section].get(topic) ?? { a: 0, c: 0 };
    tm.a += 1;
    if (r.is_correct) tm.c += 1;
    topicMap[section].set(topic, tm);

    const diff = normalizeDifficulty(r.questions?.difficulty);
    const ts = timeAcc[section][diff];
    ts.totalSeconds += r.time_spent_seconds ?? 0;
    ts.count += 1;
  }

  const topicAcc: Record<SectionKey, TopicAcc[]> = {
    reading_writing: [],
    math: [],
  };
  (["reading_writing", "math"] as SectionKey[]).forEach((sec) => {
    topicAcc[sec] = [...topicMap[sec].entries()]
      .map(([name, v]) => ({
        name,
        attempts: v.a,
        accuracy: Math.round((v.c / v.a) * 100),
      }))
      .sort((a, b) => b.attempts - a.attempts);
  });

  const sectionTime: Record<SectionKey, SectionTime> = {
    reading_writing: buildSectionTime(timeAcc.reading_writing),
    math: buildSectionTime(timeAcc.math),
  };

  /* ---- Heatmap months (Jan of earliest year .. current month) ---- */
  const dayCount = new Map<string, number>();
  let earliest = new Date(now.getFullYear(), 0, 1);
  for (const r of rows) {
    if (!r.created_at) continue;
    const d = new Date(r.created_at);
    const key = localDateKey(d);
    dayCount.set(key, (dayCount.get(key) ?? 0) + 1);
    if (d < earliest) earliest = new Date(d.getFullYear(), 0, 1);
  }
  const months: MonthGrid[] = [];
  let heatTotal = 0;
  let heatMax = 1;
  const cur = new Date(earliest.getFullYear(), earliest.getMonth(), 1);
  const end = new Date(now.getFullYear(), now.getMonth(), 1);
  while (cur <= end) {
    const y = cur.getFullYear();
    const m = cur.getMonth();
    const daysInMonth = new Date(y, m + 1, 0).getDate();
    const leading = (new Date(y, m, 1).getDay() + 6) % 7; // Mon-first
    const days: { date: string; count: number }[] = [];
    for (let day = 1; day <= daysInMonth; day += 1) {
      const key = localDateKey(new Date(y, m, day));
      const count = dayCount.get(key) ?? 0;
      days.push({ date: key, count });
      heatTotal += count;
      if (count > heatMax) heatMax = count;
    }
    months.push({ key: `${y}-${m}`, name: MONTH_NAMES[m], leading, days });
    cur.setMonth(cur.getMonth() + 1);
  }

  return {
    attempted: rows.length,
    accuracy:
      rows.length > 0 ? Math.round((totalCorrect / rows.length) * 100) : null,
    saved,
    streak,
    totalCorrect,
    totalWrong,
    weeks,
    weak,
    topicAcc,
    sectionTime,
    months,
    heatTotal,
    heatMax,
    mostActiveDay,
  };
}

function buildSectionTime(
  diffs: Record<Difficulty, TimeStat>,
): SectionTime {
  let totalSeconds = 0;
  let totalCount = 0;
  (["easy", "medium", "hard"] as Difficulty[]).forEach((d) => {
    const ts = diffs[d];
    ts.avgSeconds = ts.count > 0 ? ts.totalSeconds / ts.count : 0;
    totalSeconds += ts.totalSeconds;
    totalCount += ts.count;
  });
  return {
    ...diffs,
    overallAvg: totalCount > 0 ? totalSeconds / totalCount : 0,
  };
}

/* ------------------------------------------------------------------ */
/* Component                                                          */
/* ------------------------------------------------------------------ */

export function AnalyticsExperience() {
  const { user, loading: authLoading } = useAuth();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const [data, setData] = useState<AnalyticsData | null>(null);
  const [loading, setLoading] = useState(true);
  const apIb = isApOrIbExam(examType);
  const courseLabel = apIb
    ? apIbDisplayName(examType)
    : examFamilyLabel(examType);

  useEffect(() => {
    // Wait for auth + subject switcher hydration so we never fetch SAT data
    // while the persisted AP/IB course is still loading from localStorage.
    if (authLoading || !subjectHydrated) return;

    let cancelled = false;
    void (async () => {
      if (!user) {
        if (!cancelled) {
          setData(buildAnalytics([], 0, new Date(), examType));
          setLoading(false);
        }
        return;
      }
      if (!cancelled) {
        setData(null);
        setLoading(true);
      }
      try {
        const supabase = createClient();
        await ensureFreshSession(supabase);
        const [rows, stats] = await Promise.all([
          fetchAnalyticsAttempts(supabase, user.id, examType),
          fetchAnalyticsAttemptStats(supabase, user.id, examType),
        ]);
        if (cancelled) return;
        setData(buildAnalytics(rows, stats.saved, new Date(), examType));
      } catch (err) {
        console.error("[Analytics] failed to load:", err);
        if (!cancelled) setData(buildAnalytics([], 0, new Date(), examType));
      } finally {
        if (!cancelled) setLoading(false);
      }
    })();
    return () => {
      cancelled = true;
    };
  }, [user, authLoading, subjectHydrated, examType]);

  const practiceHref = useMemo(
    () =>
      examType === "ACT" || isApOrIbExam(examType)
        ? "/dashboard/practice/bank"
        : "/dashboard/practice/bank?module=en",
    [examType],
  );

  if (loading || !data) {
    return (
      <div className={styles.root}>
        <p className={styles.loading}>Crunching your numbers…</p>
      </div>
    );
  }

  return (
    <div className={styles.root} key={examType}>
      {/* Stat strip */}
      <section className={stat.strip} aria-label="Practice stats">
        <StatCell
          label="Questions Attempted"
          value={data.attempted.toLocaleString()}
          icon={ListChecks}
        />
        <StatCell
          label="Current Accuracy"
          value={data.accuracy !== null ? `${data.accuracy}%` : "—"}
          icon={Target}
          tone="positive"
        />
        <StatCell
          label="Saved Questions"
          value={String(data.saved)}
          icon={BookmarkSimple}
          href="/dashboard/saved"
          action="View Saved"
        />
        <StatCell
          label="Study Streak"
          value={data.streak === 1 ? "1 day" : `${data.streak} days`}
          icon={Flame}
          tone="streak"
        />
      </section>

      {/* Activity trend */}
      <section className={styles.panel}>
        <div className={styles.cardHead}>
          <h2 className={styles.cardTitle}>Activity trend</h2>
          <p className={styles.cardSub}>
            Wrong in red, correct in green. Harder questions look darker and sit
            below easier ones in each color. Each bar is one week.
          </p>
        </div>
        <ActivityTrend data={data} />
      </section>

      {/* Weak topics */}
      <section className={styles.panel}>
        <WeakTopics
          weak={data.weak}
          practiceHref={practiceHref}
          sectionLabel={
            apIb
              ? courseLabel
              : undefined
          }
        />
      </section>

      {/* Accuracy by topic */}
      {apIb || examType === "ACT" ? (
        <>
          <TopicAccuracyCard
            title={apIb ? "Topics & units" : "All sections"}
            topics={[
              ...data.topicAcc.reading_writing,
              ...data.topicAcc.math,
            ].sort((a, b) => b.attempts - a.attempts)}
          />
          <TimeShareCard
            title={courseLabel}
            section="reading_writing"
            time={data.sectionTime.reading_writing}
          />
        </>
      ) : (
        <>
          <div className={styles.twoCol}>
            <TopicAccuracyCard
              title="Reading & Writing"
              topics={data.topicAcc.reading_writing}
            />
            <TopicAccuracyCard title="Math" topics={data.topicAcc.math} />
          </div>
          <div className={styles.twoCol}>
            <TimeShareCard
              title="Reading & Writing"
              section="reading_writing"
              time={data.sectionTime.reading_writing}
            />
            <TimeShareCard
              title="Math"
              section="math"
              time={data.sectionTime.math}
            />
          </div>
        </>
      )}

      {/* Practice activity heatmap */}
      <section className={styles.panel}>
        <PracticeActivity data={data} />
      </section>
    </div>
  );
}

/* ------------------------------------------------------------------ */
/* Stat cell                                                          */
/* ------------------------------------------------------------------ */

function StatCell({
  label,
  value,
  icon: IconCmp,
  href,
  action,
  tone,
}: {
  label: string;
  value: string;
  icon: Icon;
  href?: string;
  action?: string;
  tone?: "positive" | "streak";
}) {
  const valueClass =
    tone === "positive"
      ? `${stat.value} ${stat.valuePositive}`
      : tone === "streak"
        ? `${stat.value} ${styles.valueStreak}`
        : stat.value;
  return (
    <div className={stat.cell}>
      <p className={stat.label}>{label}</p>
      <p className={valueClass}>{value}</p>
      {href ? (
        <Link href={href} className={stat.action}>
          {action ?? "View"}
        </Link>
      ) : null}
      <IconCmp size={72} weight="fill" className={stat.watermark} aria-hidden />
    </div>
  );
}

/* ------------------------------------------------------------------ */
/* Activity trend                                                     */
/* ------------------------------------------------------------------ */

function ActivityTrend({ data }: { data: AnalyticsData }) {
  const theme = chartTheme();
  if (data.attempted === 0) {
    return (
      <p className={styles.empty}>
        Answer some questions to see your weekly activity trend.
      </p>
    );
  }
  const tooltipProps = {
    contentStyle: {
      background: theme.tooltipBg,
      border: `1px solid ${theme.tooltipBorder}`,
      borderRadius: 10,
      color: theme.tooltipText,
      fontSize: 13,
    },
    labelStyle: { color: theme.tooltipText },
    itemStyle: { color: theme.tooltipText },
  };
  const axisTick = { fontSize: 11, fill: theme.axis };
  const minWidth = Math.max(data.weeks.length * 52, 480);

  return (
    <>
      <div className={styles.legend}>
        <span className={styles.legendItem}>
          <CheckCircle
            size={24}
            weight="fill"
            className={`${styles.legendIcon} ${styles.legendIconGood}`}
            aria-hidden
          />
          <span className={styles.legendNum}>
            {data.totalCorrect.toLocaleString()}
          </span>
          <span className={styles.legendWord}>Correct</span>
        </span>
        <span className={styles.legendItem}>
          <XCircle
            size={24}
            weight="fill"
            className={`${styles.legendIcon} ${styles.legendIconBad}`}
            aria-hidden
          />
          <span className={styles.legendNum}>
            {data.totalWrong.toLocaleString()}
          </span>
          <span className={styles.legendWord}>Wrong</span>
        </span>
      </div>

      <ChartScroll>
        <div style={{ minWidth }}>
          <ResponsiveContainer width="100%" height={300}>
            <BarChart data={data.weeks} barCategoryGap="28%">
              <CartesianGrid vertical={false} stroke={theme.grid} />
              <XAxis
                dataKey="label"
                tick={axisTick}
                tickLine={false}
                axisLine={false}
                interval="preserveStartEnd"
              />
              <YAxis
                allowDecimals={false}
                tick={axisTick}
                tickLine={false}
                axisLine={false}
                width={40}
              />
              <Tooltip {...tooltipProps} cursor={{ fill: "hsl(var(--muted) / 0.4)" }} />
              <Bar dataKey="wrongHard" stackId="w" name="Wrong · Hard" fill={TREND_FILLS.wrongHard} />
              <Bar dataKey="wrongMedium" stackId="w" name="Wrong · Medium" fill={TREND_FILLS.wrongMedium} />
              <Bar dataKey="wrongEasy" stackId="w" name="Wrong · Easy" fill={TREND_FILLS.wrongEasy} />
              <Bar dataKey="correctHard" stackId="w" name="Correct · Hard" fill={TREND_FILLS.correctHard} />
              <Bar dataKey="correctMedium" stackId="w" name="Correct · Medium" fill={TREND_FILLS.correctMedium} />
              <Bar
                dataKey="correctEasy"
                stackId="w"
                name="Correct · Easy"
                fill={TREND_FILLS.correctEasy}
                radius={[3, 3, 0, 0]}
              />
            </BarChart>
          </ResponsiveContainer>
        </div>
      </ChartScroll>
    </>
  );
}

/* ------------------------------------------------------------------ */
/* Weak topics                                                        */
/* ------------------------------------------------------------------ */

const RING_RADIUS = 21;
const RING_CIRC = 2 * Math.PI * RING_RADIUS;

function tierColor(accuracy: number): string {
  if (accuracy >= 85) return "hsl(var(--score-positive))";
  if (accuracy >= 60) return "hsl(var(--exam-jamb))";
  return "hsl(var(--destructive))";
}

function AccuracyRing({ accuracy }: { accuracy: number }) {
  const filled = (Math.min(Math.max(accuracy, 0), 100) / 100) * RING_CIRC;
  const color = tierColor(accuracy);
  return (
    <span className={styles.ringWrap} role="img" aria-label={`${accuracy}% accuracy`}>
      <svg viewBox="0 0 52 52" width="52" height="52" aria-hidden>
        <circle cx="26" cy="26" r={RING_RADIUS} fill="none" className={styles.ringTrack} strokeWidth="4" />
        <circle
          cx="26"
          cy="26"
          r={RING_RADIUS}
          fill="none"
          stroke={color}
          strokeWidth="4"
          strokeLinecap="round"
          strokeDasharray={`${filled} ${RING_CIRC}`}
          transform="rotate(-90 26 26)"
        />
      </svg>
      <span className={styles.ringValue}>
        {accuracy}
        <span className={styles.ringUnit}>%</span>
      </span>
    </span>
  );
}

function WeakTopics({
  weak,
  practiceHref,
  sectionLabel,
}: {
  weak: WeakTopic[];
  practiceHref: string;
  /** Override section chip (e.g. AP course name instead of R&W). */
  sectionLabel?: string;
}) {
  if (weak.length === 0) {
    return (
      <>
        <div className={styles.weakHead}>
          <h2 className={styles.weakTitle}>Where you can gain the most points</h2>
        </div>
        <p className={styles.empty}>
          Answer a few more questions across topics to surface your weak areas.
        </p>
      </>
    );
  }
  return (
    <>
      <div className={styles.weakHead}>
        <h2 className={styles.weakTitle}>
          {weak.length} topic {weak.length === 1 ? "area is" : "areas are"} costing
          you the most points.
        </h2>
        <Link href={practiceHref} className={styles.pill}>
          Practice in bank
        </Link>
      </div>
      <ul className={styles.weakList}>
        {weak.map((t, i) => {
          const needsWork = t.accuracy < 60;
          return (
            <li key={t.name} className={styles.weakRow}>
              <span className={styles.weakIndex} aria-hidden>
                {String(i + 1).padStart(2, "0")}
              </span>
              <div className={styles.weakInfo}>
                <p className={styles.weakMeta}>
                  <span className={needsWork ? styles.tagNeedsWork : styles.tagGettingThere}>
                    {needsWork ? "Needs work" : "Getting there"}
                  </span>
                  <span className={styles.metaSep} aria-hidden>·</span>
                  <span>
                    {sectionLabel ?? SECTION_LABEL[t.section]}
                  </span>
                  <span className={styles.metaSep} aria-hidden>·</span>
                  <span>{t.attempts} attempts</span>
                </p>
                <p className={styles.weakTopic}>{t.name}</p>
              </div>
              <div className={styles.weakSide}>
                <AccuracyRing accuracy={t.accuracy} />
                <Link
                  href={`${practiceHref}&topic=${encodeURIComponent(t.name)}`}
                  className={styles.rowLink}
                >
                  Practice
                  <ArrowRight size={13} weight="bold" aria-hidden />
                </Link>
              </div>
            </li>
          );
        })}
      </ul>
    </>
  );
}

/* ------------------------------------------------------------------ */
/* Accuracy by topic                                                  */
/* ------------------------------------------------------------------ */

function TopicAccuracyCard({
  title,
  topics,
}: {
  title: string;
  topics: TopicAcc[];
}) {
  return (
    <section className={styles.panel}>
      <div className={styles.cardHead}>
        <h2 className={styles.cardTitle}>{title}</h2>
        <p className={styles.cardSub}>Accuracy by topic</p>
      </div>
      {topics.length === 0 ? (
        <p className={styles.empty}>No attempts in this section yet.</p>
      ) : (
        <>
          <div className={styles.thresholds}>
            <span className={styles.threshItem}>
              <span className={styles.threshDot} style={{ background: "hsl(var(--score-positive))" }} />
              ≥ 85 %
            </span>
            <span className={styles.threshItem}>
              <span className={styles.threshDot} style={{ background: "hsl(var(--exam-jamb))" }} />
              60 – 84 %
            </span>
            <span className={styles.threshItem}>
              <span className={styles.threshDot} style={{ background: "hsl(var(--destructive))" }} />
              &lt; 60 %
            </span>
          </div>
          <div className={styles.accList}>
            {topics.map((t) => (
              <div key={t.name} className={styles.accRow}>
                <div className={styles.accLabel}>
                  <p className={styles.accName} title={t.name}>{t.name}</p>
                  <p className={styles.accAttempts}>{t.attempts} attempts</p>
                </div>
                <div className={styles.accTrack}>
                  <span
                    className={styles.accKnob}
                    style={{
                      left: `${Math.min(Math.max(t.accuracy, 0), 100)}%`,
                      background: tierColor(t.accuracy),
                    }}
                  />
                </div>
                <span className={styles.accPct}>
                  <span className={styles.accPctNum}>{t.accuracy}</span>
                  <span className={styles.accPctUnit}>%</span>
                </span>
              </div>
            ))}
          </div>
        </>
      )}
    </section>
  );
}

/* ------------------------------------------------------------------ */
/* Time share by difficulty                                           */
/* ------------------------------------------------------------------ */

function TimeShareCard({
  title,
  section,
  time,
}: {
  title: string;
  section: SectionKey;
  time: SectionTime;
}) {
  const theme = chartTheme();
  const order: Difficulty[] = ["easy", "medium", "hard"];
  const pie = order
    .map((d) => ({
      name: d[0].toUpperCase() + d.slice(1),
      value: time[d].totalSeconds,
      fill: DIFF_FILLS[d],
    }))
    .filter((p) => p.value > 0);
  const hasData = pie.length > 0;

  return (
    <section className={styles.panel}>
      <div className={styles.cardHead}>
        <h2 className={styles.cardTitle}>{title}</h2>
        <p className={styles.cardSub}>
          Time share by difficulty · gray averages are platform-wide.
        </p>
      </div>
      {!hasData ? (
        <p className={styles.empty}>No timed attempts in this section yet.</p>
      ) : (
        <div className={styles.timeWrap}>
          <div className={styles.donut}>
            <ResponsiveContainer width="100%" height="100%">
              <PieChart>
                <Pie
                  data={pie}
                  dataKey="value"
                  nameKey="name"
                  cx="50%"
                  cy="50%"
                  innerRadius={56}
                  outerRadius={80}
                  paddingAngle={2}
                  startAngle={90}
                  endAngle={-270}
                  stroke="none"
                >
                  {pie.map((p) => (
                    <Cell key={p.name} fill={p.fill} />
                  ))}
                </Pie>
                <Tooltip
                  formatter={(v: unknown) => formatDuration(Number(v ?? 0))}
                  contentStyle={{
                    background: theme.tooltipBg,
                    border: `1px solid ${theme.tooltipBorder}`,
                    borderRadius: 10,
                    color: theme.tooltipText,
                    fontSize: 13,
                  }}
                />
              </PieChart>
            </ResponsiveContainer>
            <div className={styles.donutCenter}>
              <span className={styles.donutValue}>
                {formatDuration(time.overallAvg)}
              </span>
              <span className={styles.donutLabel}>avg</span>
            </div>
          </div>

          <div className={styles.timeList}>
            {order.map((d) => (
              <div key={d} className={styles.timeRow}>
                <span className={styles.timeDot} style={{ background: DIFF_FILLS[d] }} />
                <span className={styles.timeName}>
                  {d[0].toUpperCase() + d.slice(1)}
                </span>
                <span className={styles.timeRight}>
                  <span className={styles.timeBig}>
                    {time[d].count > 0 ? formatDuration(time[d].avgSeconds) : "—"}
                  </span>
                  <span className={styles.timeAvg}>
                    {" "}
                    avg {formatDuration(PLATFORM_AVG[section][d])}
                  </span>
                </span>
              </div>
            ))}
          </div>
        </div>
      )}
    </section>
  );
}

/* ------------------------------------------------------------------ */
/* Practice activity heatmap                                          */
/* ------------------------------------------------------------------ */

const DOW_LABELS = ["Mo", "Tu", "We", "Th", "Fr", "Sa", "Su"];

function heatLevel(count: number, max: number): number {
  if (count === 0) return 0;
  const ratio = count / max;
  if (ratio <= 0.25) return 1;
  if (ratio <= 0.5) return 2;
  if (ratio <= 0.75) return 3;
  return 4;
}

function PracticeActivity({ data }: { data: AnalyticsData }) {
  return (
    <>
      <div className={styles.heatHead}>
        <div>
          <h2 className={styles.cardTitle}>Your practice activity</h2>
          {data.mostActiveDay ? (
            <p className={styles.heatActive}>
              Most active:{" "}
              <span className={styles.heatActiveDay}>{data.mostActiveDay}</span>.
            </p>
          ) : (
            <p className={styles.heatActive}>Start practicing to build your streak.</p>
          )}
        </div>
        <div className={styles.heatTotal}>
          <span className={styles.heatTotalNum}>
            {data.heatTotal.toLocaleString()}
          </span>
          <span className={styles.heatTotalWord}>questions answered.</span>
        </div>
      </div>

      <div className={styles.months}>
        {data.months.map((month) => (
          <div key={month.key} className={styles.month}>
            <p className={styles.monthName}>{month.name}</p>
            <div className={styles.dowRow}>
              {DOW_LABELS.map((d, i) => (
                <span
                  key={d}
                  className={`${styles.dow} ${i === 0 ? styles.dowMon : ""}`}
                >
                  {d}
                </span>
              ))}
            </div>
            <div className={styles.monthGrid}>
              {Array.from({ length: month.leading }).map((_, i) => (
                <span key={`pad-${i}`} className={`${styles.day} ${styles.dayEmpty}`} />
              ))}
              {month.days.map((day) => (
                <span
                  key={day.date}
                  className={styles.day}
                  data-level={heatLevel(day.count, data.heatMax)}
                  title={`${day.date}: ${day.count} ${day.count === 1 ? "question" : "questions"}`}
                />
              ))}
            </div>
          </div>
        ))}
      </div>

      <div className={styles.heatLegend}>
        <span>Less</span>
        {HEAT_LEVELS.map((bg, i) => (
          <span key={i} className={styles.heatLegendCell} style={{ background: bg }} />
        ))}
        <span>More</span>
      </div>
    </>
  );
}
