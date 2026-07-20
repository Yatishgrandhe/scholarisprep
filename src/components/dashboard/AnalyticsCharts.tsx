"use client";

import { useEffect, useState } from "react";
import { CheckCircle, XCircle } from "@phosphor-icons/react";
import {
  LineChart,
  Line,
  BarChart,
  Bar,
  AreaChart,
  Area,
  PieChart,
  Pie,
  Cell,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
} from "recharts";
import { ChartScroll } from "@/components/shared/ChartScroll";
import { chartTheme } from "@/lib/dashboard/chartTheme";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import type { ExamType } from "@/types/supabase";
import styles from "@/app/dashboard/dashboard.module.css";
import flat from "./analytics.module.css";

const PIE_COLORS = [
  "hsl(var(--score-positive))",
  "hsl(var(--primary))",
  "hsl(var(--destructive))",
];

type AnalyticsChartsProps = {
  examType?: ExamType;
};

/** Local-date week-start key (Sunday), immune to timezone drift. */
function weekKey(d: Date): string {
  const day = new Date(d);
  day.setHours(0, 0, 0, 0);
  day.setDate(day.getDate() - day.getDay());
  return `${day.getFullYear()}-${day.getMonth()}-${day.getDate()}`;
}

export function AnalyticsCharts({ examType = "SAT" }: AnalyticsChartsProps) {
  const { user } = useAuth();
  const [loading, setLoading] = useState(true);
  const [scoreOverTime, setScoreOverTime] = useState<
    { week: string; score: number }[]
  >([]);
  const [topicAccuracy, setTopicAccuracy] = useState<
    { topic: string; accuracy: number }[]
  >([]);
  const [timeSpent, setTimeSpent] = useState<
    { day: string; minutes: number }[]
  >([]);
  const [difficultyDist, setDifficultyDist] = useState<
    { name: string; value: number }[]
  >([]);
  const [weeklyActivity, setWeeklyActivity] = useState<
    { week: string; correct: number; wrong: number }[]
  >([]);
  const [totals, setTotals] = useState({ correct: 0, wrong: 0 });

  useEffect(() => {
    if (!user) return;
    let cancelled = false;

    const load = async () => {
      setLoading(true);
      setScoreOverTime([]);
      setTopicAccuracy([]);
      setTimeSpent([]);
      setDifficultyDist([]);
      setWeeklyActivity([]);
      setTotals({ correct: 0, wrong: 0 });
      const supabase = createClient();

      const { data: examSessions } = await supabase
        .from("exam_sessions")
        .select("id, correct_count, total_questions, completed_at")
        .eq("user_id", user.id)
        .eq("exam_type", examType)
        .not("completed_at", "is", null)
        .order("completed_at", { ascending: true })
        .limit(12);

      if (cancelled) return;

      const rows = (examSessions ?? []) as {
        id: string;
        correct_count: number | null;
        total_questions: number | null;
        completed_at: string | null;
      }[];

      const scoreSeries = rows.map((s, i) => {
        const total = s.total_questions ?? 0;
        const correct = s.correct_count ?? 0;
        const pct = total > 0 ? Math.round((correct / total) * 100) : 0;
        return { week: `S${i + 1}`, score: pct };
      });
      setScoreOverTime(scoreSeries);

      const { data: attempts } = await supabase
        .from("question_attempts")
        .select(
          "is_correct, time_spent_seconds, created_at, questions(topic, difficulty)",
        )
        .eq("user_id", user.id)
        .eq("exam_type", examType)
        .order("created_at", { ascending: false })
        .limit(400);

      if (cancelled) return;

      const attemptRows = (attempts ?? []) as {
        is_correct: boolean;
        time_spent_seconds: number | null;
        created_at: string | null;
        questions: { topic: string | null; difficulty: string | null } | null;
      }[];

      if (attemptRows.length === 0) {
        setLoading(false);
        return;
      }

      const correctTotal = attemptRows.filter((a) => a.is_correct).length;
      setTotals({
        correct: correctTotal,
        wrong: attemptRows.length - correctTotal,
      });

      // Weekly correct/wrong buckets for the last 8 weeks.
      const now = new Date();
      const weekBuckets = new Map<string, { correct: number; wrong: number }>();
      const weekOrder: { key: string; label: string }[] = [];
      for (let i = 7; i >= 0; i -= 1) {
        const d = new Date(now);
        d.setDate(now.getDate() - i * 7);
        const key = weekKey(d);
        const start = new Date(d);
        start.setDate(start.getDate() - start.getDay());
        weekBuckets.set(key, { correct: 0, wrong: 0 });
        weekOrder.push({
          key,
          label: start.toLocaleDateString("en-US", {
            month: "short",
            day: "numeric",
          }),
        });
      }
      for (const a of attemptRows) {
        if (!a.created_at) continue;
        const bucket = weekBuckets.get(weekKey(new Date(a.created_at)));
        if (!bucket) continue;
        if (a.is_correct) bucket.correct += 1;
        else bucket.wrong += 1;
      }
      setWeeklyActivity(
        weekOrder.map(({ key, label }) => ({
          week: label,
          correct: weekBuckets.get(key)?.correct ?? 0,
          wrong: weekBuckets.get(key)?.wrong ?? 0,
        })),
      );

      const topicMap = new Map<string, { correct: number; total: number }>();
      for (const a of attemptRows) {
        const topic = a.questions?.topic ?? "General";
        const row = topicMap.get(topic) ?? { correct: 0, total: 0 };
        row.total += 1;
        if (a.is_correct) row.correct += 1;
        topicMap.set(topic, row);
      }
      setTopicAccuracy(
        [...topicMap.entries()]
          .slice(0, 8)
          .map(([topic, v]) => ({
            topic: topic.length > 12 ? `${topic.slice(0, 10)}…` : topic,
            accuracy: Math.round((v.correct / v.total) * 100),
          })),
      );

      const dayMap = new Map<string, number>();
      for (const a of attemptRows) {
        if (!a.created_at) continue;
        const day = new Date(a.created_at).toLocaleDateString("en-US", {
          weekday: "short",
        });
        const seconds = a.time_spent_seconds ?? 0;
        dayMap.set(day, (dayMap.get(day) ?? 0) + Math.ceil(seconds / 60));
      }
      setTimeSpent([...dayMap.entries()].map(([day, minutes]) => ({ day, minutes })));

      const diffMap = { easy: 0, medium: 0, hard: 0 };
      for (const a of attemptRows) {
        const key = (a.questions?.difficulty ?? "medium") as keyof typeof diffMap;
        if (key in diffMap) diffMap[key] += 1;
      }
      setDifficultyDist([
        { name: "Easy", value: diffMap.easy },
        { name: "Medium", value: diffMap.medium },
        { name: "Hard", value: diffMap.hard },
      ]);

      setLoading(false);
    };

    void load();
    return () => {
      cancelled = true;
    };
  }, [user, examType]);

  if (loading) {
    return (
      <p className={styles.pageSubtitle}>Crunching your numbers…</p>
    );
  }

  const colors = chartTheme();
  const tooltipProps = {
    contentStyle: {
      background: colors.tooltipBg,
      border: `1px solid ${colors.tooltipBorder}`,
      borderRadius: 10,
      boxShadow: "none",
      color: colors.tooltipText,
      fontSize: 13,
    },
    labelStyle: { color: colors.tooltipText },
    itemStyle: { color: colors.tooltipText },
  };
  const axisTick = { fontSize: 12, fill: colors.axis };

  return (
    <div className={flat.trendWrap}>
      <div className={flat.legend}>
        <span className={flat.legendItem}>
          <CheckCircle
            size={24}
            weight="fill"
            className={flat.legendIconGood}
            aria-hidden
          />
          <span className={flat.legendNum}>
            {totals.correct.toLocaleString()}
          </span>
          <span className={flat.legendWord}>Correct</span>
        </span>
        <span className={flat.legendItem}>
          <XCircle
            size={24}
            weight="fill"
            className={flat.legendIconBad}
            aria-hidden
          />
          <span className={flat.legendNum}>
            {totals.wrong.toLocaleString()}
          </span>
          <span className={flat.legendWord}>Wrong</span>
        </span>
      </div>

      <ChartScroll>
        <ResponsiveContainer width="100%" height={260}>
          <BarChart data={weeklyActivity} barCategoryGap="30%">
            <CartesianGrid vertical={false} stroke={colors.grid} />
            <XAxis
              dataKey="week"
              tick={axisTick}
              tickLine={false}
              axisLine={false}
            />
            <YAxis
              allowDecimals={false}
              tick={axisTick}
              tickLine={false}
              axisLine={false}
              width={36}
            />
            <Tooltip
              {...tooltipProps}
              cursor={{ fill: "hsl(var(--muted) / 0.4)" }}
            />
            <Bar
              dataKey="correct"
              name="Correct"
              stackId="week"
              fill="hsl(var(--score-positive))"
            />
            <Bar
              dataKey="wrong"
              name="Wrong"
              stackId="week"
              fill="hsl(var(--destructive))"
              radius={[3, 3, 0, 0]}
            />
          </BarChart>
        </ResponsiveContainer>
      </ChartScroll>

      <hr className={flat.divider} />

      <div className={flat.miniGrid}>
        <div className={flat.miniPanel}>
          <p className={flat.miniTitle}>Accuracy over time</p>
          <ChartScroll>
            <ResponsiveContainer width="100%" height={200}>
              <LineChart data={scoreOverTime}>
                <CartesianGrid vertical={false} stroke={colors.grid} />
                <XAxis
                  dataKey="week"
                  tick={axisTick}
                  tickLine={false}
                  axisLine={false}
                />
                <YAxis
                  domain={[0, 100]}
                  tick={axisTick}
                  tickLine={false}
                  axisLine={false}
                  width={42}
                />
                <Tooltip {...tooltipProps} />
                <Line
                  type="monotone"
                  dataKey="score"
                  stroke="hsl(var(--primary))"
                  strokeWidth={2}
                  dot={false}
                />
              </LineChart>
            </ResponsiveContainer>
          </ChartScroll>
        </div>

        <div className={flat.miniPanel}>
          <p className={flat.miniTitle}>Accuracy by topic</p>
          <ChartScroll>
            <ResponsiveContainer width="100%" height={200}>
              <BarChart data={topicAccuracy}>
                <CartesianGrid vertical={false} stroke={colors.grid} />
                <XAxis
                  dataKey="topic"
                  tick={{ fontSize: 11, fill: colors.axis }}
                  tickLine={false}
                  axisLine={false}
                />
                <YAxis
                  domain={[0, 100]}
                  tick={axisTick}
                  tickLine={false}
                  axisLine={false}
                  width={36}
                />
                <Tooltip
                  {...tooltipProps}
                  cursor={{ fill: "hsl(var(--muted) / 0.4)" }}
                />
                <Bar
                  dataKey="accuracy"
                  fill="hsl(var(--primary))"
                  radius={[3, 3, 0, 0]}
                />
              </BarChart>
            </ResponsiveContainer>
          </ChartScroll>
        </div>

        <div className={flat.miniPanel}>
          <p className={flat.miniTitle}>Time per session</p>
          <ChartScroll>
            <ResponsiveContainer width="100%" height={200}>
              <AreaChart data={timeSpent}>
                <CartesianGrid vertical={false} stroke={colors.grid} />
                <XAxis
                  dataKey="day"
                  tick={axisTick}
                  tickLine={false}
                  axisLine={false}
                />
                <YAxis
                  tick={axisTick}
                  tickLine={false}
                  axisLine={false}
                  width={36}
                />
                <Tooltip {...tooltipProps} />
                <Area
                  type="monotone"
                  dataKey="minutes"
                  stroke="hsl(var(--primary))"
                  strokeWidth={2}
                  fill="hsl(var(--primary) / 0.12)"
                />
              </AreaChart>
            </ResponsiveContainer>
          </ChartScroll>
        </div>

        <div className={flat.miniPanel}>
          <p className={flat.miniTitle}>Difficulty distribution</p>
          <ChartScroll>
            <ResponsiveContainer width="100%" height={200}>
              <PieChart>
                <Pie
                  data={difficultyDist}
                  dataKey="value"
                  nameKey="name"
                  cx="50%"
                  cy="50%"
                  outerRadius={72}
                  label={{ fill: colors.label, fontSize: 12 }}
                >
                  {difficultyDist.map((_, i) => (
                    <Cell key={i} fill={PIE_COLORS[i % PIE_COLORS.length]} />
                  ))}
                </Pie>
                <Tooltip {...tooltipProps} />
              </PieChart>
            </ResponsiveContainer>
          </ChartScroll>
        </div>
      </div>
    </div>
  );
}
