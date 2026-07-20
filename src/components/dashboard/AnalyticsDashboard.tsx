"use client";

import { useEffect, useMemo, useState } from "react";
import { useTheme } from "next-themes";
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
  ReferenceLine,
} from "recharts";
import { format, subDays, startOfDay } from "date-fns";
import { Card } from "@/components/ui/card";
import { ChartScroll } from "@/components/shared/ChartScroll";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { chartTheme } from "@/lib/dashboard/chartTheme";
import styles from "./analytics.module.css";

const DIFFICULTY_COLORS = {
  easy: "hsl(var(--score-positive))",
  medium: "hsl(var(--exam-jamb))",
  hard: "hsl(var(--score-negative))",
};

function topicBarColor(accuracy: number): string {
  if (accuracy >= 75) return "hsl(var(--score-positive))";
  if (accuracy >= 50) return "hsl(var(--exam-jamb))";
  return "hsl(var(--score-negative))";
}

type ExamSessionRow = {
  completed_at: string | null;
  score_predicted: number | null;
};

type AttemptWithQuestion = {
  created_at: string | null;
  is_correct: boolean | null;
  time_spent_seconds: number | null;
  questions: {
    topic: string | null;
    difficulty: string | null;
  } | null;
};

export function AnalyticsDashboard() {
  const { user } = useAuth();
  const examType = useActiveExamType();
  const { resolvedTheme } = useTheme();
  const theme = useMemo(() => chartTheme(), [resolvedTheme]);

  const [loading, setLoading] = useState(true);
  const [targetScore, setTargetScore] = useState<number | null>(null);
  const [baselineScore, setBaselineScore] = useState<number | null>(null);
  const [scoreOverTime, setScoreOverTime] = useState<
    { date: string; score: number; label: string }[]
  >([]);
  const [topicAccuracy, setTopicAccuracy] = useState<
    { topic: string; accuracy: number; fill: string }[]
  >([]);
  const [timePerSession, setTimePerSession] = useState<
    { date: string; minutes: number }[]
  >([]);
  const [volumeByDay, setVolumeByDay] = useState<
    { date: string; count: number }[]
  >([]);
  const [difficultyDist, setDifficultyDist] = useState<
    { name: string; value: number; fill: string }[]
  >([]);
  const [stats, setStats] = useState({
    totalQuestions: 0,
    totalHours: 0,
    predictedScore: 0,
    scoreImprovement: 0,
  });

  useEffect(() => {
    if (!user) return;

    const load = async () => {
      setLoading(true);
      const supabase = createClient();

      const [{ data: plan }, { data: diagnostic }] = await Promise.all([
        supabase
          .from("multi_subject_study_plans")
          .select("target_score, baseline_score")
          .eq("user_id", user.id)
          .eq("course_id", examType)
          .maybeSingle(),
        supabase
          .from("subject_diagnostic_results")
          .select("overall_score, predicted_score")
          .eq("user_id", user.id)
          .eq("exam_type", examType)
          .order("taken_at", { ascending: false })
          .limit(1)
          .maybeSingle(),
      ]);

      const target = plan?.target_score ?? 1400;
      const baseline =
        plan?.baseline_score ??
        diagnostic?.overall_score ??
        diagnostic?.predicted_score ??
        1000;
      setTargetScore(target);
      setBaselineScore(baseline);

      const { data: examSessions } = await supabase
        .from("exam_sessions")
        .select("completed_at, score_predicted")
        .eq("user_id", user.id)
        .eq("exam_type", examType)
        .not("completed_at", "is", null)
        .not("score_predicted", "is", null)
        .order("completed_at", { ascending: true });

      const sessions = (examSessions ?? []) as ExamSessionRow[];
      setScoreOverTime(
        sessions.map((s) => {
          const d = new Date(s.completed_at!);
          return {
            date: format(d, "yyyy-MM-dd"),
            label: format(d, "MMM d"),
            score: s.score_predicted ?? 0,
          };
        }),
      );

      const { data: attempts } = await supabase
        .from("question_attempts")
        .select(
          "created_at, is_correct, time_spent_seconds, questions(topic, difficulty)",
        )
        .eq("user_id", user.id)
        .eq("exam_type", examType)
        .order("created_at", { ascending: false })
        .limit(400);

      const rows = (attempts ?? []) as AttemptWithQuestion[];

      const topicMap = new Map<string, { correct: number; total: number }>();
      const diffMap = { easy: 0, medium: 0, hard: 0 };
      const dayVolume = new Map<string, number>();
      const sessionTimeByDate = new Map<string, number>();

      let totalSeconds = 0;

      for (const row of rows) {
        const topic = row.questions?.topic ?? "General";
        const diff = row.questions?.difficulty ?? "medium";
        const t = topicMap.get(topic) ?? { correct: 0, total: 0 };
        t.total += 1;
        if (row.is_correct) t.correct += 1;
        topicMap.set(topic, t);

        if (diff in diffMap) {
          diffMap[diff as keyof typeof diffMap] += 1;
        }

        if (row.created_at) {
          const dayKey = format(new Date(row.created_at), "yyyy-MM-dd");
          dayVolume.set(dayKey, (dayVolume.get(dayKey) ?? 0) + 1);
        }

        totalSeconds += row.time_spent_seconds ?? 0;
      }

      const { data: timedSessions } = await supabase
        .from("exam_sessions")
        .select("completed_at, time_spent_seconds")
        .eq("user_id", user.id)
        .eq("exam_type", examType)
        .not("completed_at", "is", null);

      for (const s of timedSessions ?? []) {
        if (!s.completed_at) continue;
        const dayKey = format(new Date(s.completed_at), "yyyy-MM-dd");
        const mins = Math.round((s.time_spent_seconds ?? 0) / 60);
        sessionTimeByDate.set(
          dayKey,
          (sessionTimeByDate.get(dayKey) ?? 0) + mins,
        );
      }

      setTopicAccuracy(
        [...topicMap.entries()]
          .map(([topic, v]) => {
            const accuracy =
              v.total > 0 ? Math.round((v.correct / v.total) * 100) : 0;
            return {
              topic: topic.length > 18 ? `${topic.slice(0, 16)}…` : topic,
              accuracy,
              fill: topicBarColor(accuracy),
            };
          })
          .sort((a, b) => a.accuracy - b.accuracy),
      );

      setTimePerSession(
        [...sessionTimeByDate.entries()]
          .sort(([a], [b]) => a.localeCompare(b))
          .map(([date, minutes]) => ({
            date: format(new Date(date), "MMM d"),
            minutes,
          })),
      );

      const last14 = Array.from({ length: 14 }, (_, i) => {
        const d = startOfDay(subDays(new Date(), 13 - i));
        return format(d, "yyyy-MM-dd");
      });
      setVolumeByDay(
        last14.map((date) => ({
          date: format(new Date(date), "MMM d"),
          count: dayVolume.get(date) ?? 0,
        })),
      );

      setDifficultyDist([
        { name: "Easy", value: diffMap.easy, fill: DIFFICULTY_COLORS.easy },
        {
          name: "Medium",
          value: diffMap.medium,
          fill: DIFFICULTY_COLORS.medium,
        },
        { name: "Hard", value: diffMap.hard, fill: DIFFICULTY_COLORS.hard },
      ]);

      const latestPredicted =
        sessions.length > 0
          ? (sessions[sessions.length - 1]?.score_predicted ?? 0)
          : baseline;
      const improvement = latestPredicted - baseline;

      setStats({
        totalQuestions: rows.length,
        totalHours: Math.round((totalSeconds / 3600) * 10) / 10,
        predictedScore: latestPredicted,
        scoreImprovement: improvement,
      });

      setLoading(false);
    };

    void load();
  }, [user, examType]);

  const cobaltGradientId = useMemo(() => "cobaltAreaGradient", []);

  const tooltipStyle = useMemo(
    () => ({
      backgroundColor: theme.tooltipBg,
      border: `1px solid ${theme.tooltipBorder}`,
      borderRadius: "var(--radius-md)",
      color: theme.tooltipText,
      fontSize: "0.8125rem",
    }),
    [theme],
  );

  if (loading) {
    return (
      <p className={styles.loadingWrap}>Crunching your numbers…</p>
    );
  }

  return (
    <>
      <div className={styles.grid}>
        <Card className={styles.chartCard}>
          <p className={styles.chartTitle}>Predicted score over time</p>
          {scoreOverTime.length === 0 ? (
            <p className={styles.emptyChart}>
              Complete a timed exam session to see your score trend. Keep
              practicing!
            </p>
          ) : (
            <ChartScroll>
            <ResponsiveContainer width="100%" height={220}>
              <LineChart data={scoreOverTime}>
                <defs>
                  <linearGradient
                    id="scoreLine"
                    x1="0"
                    y1="0"
                    x2="1"
                    y2="0"
                  >
                    <stop offset="0%" stopColor="var(--cobalt)" />
                    <stop offset="100%" stopColor="hsl(var(--accent))" />
                  </linearGradient>
                </defs>
                <CartesianGrid
                  strokeDasharray="3 3"
                  stroke={theme.grid}
                />
                <XAxis dataKey="label" stroke={theme.axis} fontSize={11} />
                <YAxis
                  domain={[400, 1600]}
                  stroke={theme.axis}
                  fontSize={11}
                />
                <Tooltip
                  contentStyle={tooltipStyle}
                  wrapperClassName={styles.tooltip}
                />
                {targetScore ? (
                  <ReferenceLine
                    y={targetScore}
                    stroke={theme.reference}
                    strokeDasharray="6 4"
                    label={{
                      value: `Target ${targetScore}`,
                      fill: theme.axis,
                      fontSize: 11,
                    }}
                  />
                ) : null}
                <Line
                  type="monotone"
                  dataKey="score"
                  stroke="url(#scoreLine)"
                  strokeWidth={2}
                  dot={{ fill: "var(--cobalt)", r: 4 }}
                />
              </LineChart>
            </ResponsiveContainer>
          </ChartScroll>
          )}
        </Card>

        <Card className={styles.chartCard}>
          <p className={styles.chartTitle}>Accuracy by topic</p>
          {topicAccuracy.length === 0 ? (
            <p className={styles.emptyChart}>
              Answer questions across topics to see your strengths and gaps.
            </p>
          ) : (
            <ChartScroll>
            <ResponsiveContainer width="100%" height={220}>
              <BarChart
                data={topicAccuracy}
                layout="vertical"
                margin={{ left: 8, right: 16 }}
              >
                <CartesianGrid
                  strokeDasharray="3 3"
                  stroke={theme.grid}
                  horizontal={false}
                />
                <XAxis
                  type="number"
                  domain={[0, 100]}
                  stroke={theme.axis}
                  fontSize={11}
                />
                <YAxis
                  type="category"
                  dataKey="topic"
                  width={100}
                  stroke={theme.axis}
                  fontSize={10}
                />
                <Tooltip
                  contentStyle={tooltipStyle}
                  wrapperClassName={styles.tooltip}
                />
                <Bar dataKey="accuracy" radius={[0, 4, 4, 0]}>
                  {topicAccuracy.map((entry) => (
                    <Cell key={entry.topic} fill={entry.fill} />
                  ))}
                </Bar>
              </BarChart>
            </ResponsiveContainer>
          </ChartScroll>
          )}
        </Card>

        <Card className={styles.chartCard}>
          <p className={styles.chartTitle}>Time spent per session</p>
          {timePerSession.length === 0 ? (
            <p className={styles.emptyChart}>
              Complete timed sessions to track study time.
            </p>
          ) : (
            <ChartScroll>
            <ResponsiveContainer width="100%" height={220}>
              <AreaChart data={timePerSession}>
                <defs>
                  <linearGradient
                    id={cobaltGradientId}
                    x1="0"
                    y1="0"
                    x2="0"
                    y2="1"
                  >
                    <stop
                      offset="0%"
                      stopColor="var(--cobalt)"
                      stopOpacity={0.35}
                    />
                    <stop
                      offset="100%"
                      stopColor="var(--cobalt)"
                      stopOpacity={0.02}
                    />
                  </linearGradient>
                </defs>
                <CartesianGrid
                  strokeDasharray="3 3"
                  stroke={theme.grid}
                />
                <XAxis dataKey="date" stroke={theme.axis} fontSize={11} />
                <YAxis stroke={theme.axis} fontSize={11} />
                <Tooltip
                  contentStyle={tooltipStyle}
                  wrapperClassName={styles.tooltip}
                />
                <Area
                  type="monotone"
                  dataKey="minutes"
                  stroke="var(--cobalt)"
                  fill={`url(#${cobaltGradientId})`}
                  strokeWidth={2}
                />
              </AreaChart>
            </ResponsiveContainer>
          </ChartScroll>
          )}
        </Card>

        <Card className={styles.chartCard}>
          <p className={styles.chartTitle}>Question volume (14 days)</p>
          <ChartScroll>
          <ResponsiveContainer width="100%" height={220}>
            <BarChart data={volumeByDay}>
              <CartesianGrid
                strokeDasharray="3 3"
                stroke={theme.grid}
              />
              <XAxis dataKey="date" stroke={theme.axis} fontSize={10} />
              <YAxis stroke={theme.axis} fontSize={11} allowDecimals={false} />
              <Tooltip
                contentStyle={tooltipStyle}
                wrapperClassName={styles.tooltip}
              />
              <Bar
                dataKey="count"
                fill="var(--cobalt)"
                radius={[4, 4, 0, 0]}
              />
            </BarChart>
          </ResponsiveContainer>
          </ChartScroll>
        </Card>

        <Card className={styles.chartCard}>
          <p className={styles.chartTitle}>Difficulty distribution</p>
          {difficultyDist.every((d) => d.value === 0) ? (
            <p className={styles.emptyChart}>
              No question attempts yet. Start practicing to see your mix.
            </p>
          ) : (
            <ChartScroll>
            <ResponsiveContainer width="100%" height={220}>
              <PieChart>
                <Pie
                  data={difficultyDist.filter((d) => d.value > 0)}
                  dataKey="value"
                  nameKey="name"
                  cx="50%"
                  cy="50%"
                  innerRadius={48}
                  outerRadius={80}
                  paddingAngle={2}
                  label={
                    difficultyDist.filter((d) => d.value > 0).length > 0
                      ? ({ name, percent, x, y }) => (
                          <text
                            x={x}
                            y={y}
                            fill={theme.label}
                            textAnchor="middle"
                            dominantBaseline="central"
                            fontSize={11}
                            fontWeight={600}
                          >
                            {`${name} ${Math.round((percent ?? 0) * 100)}%`}
                          </text>
                        )
                      : false
                  }
                >
                  {difficultyDist.map((entry) => (
                    <Cell key={entry.name} fill={entry.fill} />
                  ))}
                </Pie>
                <Tooltip
                  contentStyle={tooltipStyle}
                  wrapperClassName={styles.tooltip}
                />
              </PieChart>
            </ResponsiveContainer>
          </ChartScroll>
          )}
        </Card>
      </div>

      <div className={styles.statsRow}>
        <StatCard
          label="Total questions attempted"
          value={stats.totalQuestions.toLocaleString()}
        />
        <StatCard
          label="Total practice hours"
          value={`${stats.totalHours}h`}
        />
        <StatCard
          label="Current predicted score"
          value={String(stats.predictedScore)}
        />
        <StatCard
          label="Score improvement since diagnostic"
          value={
            stats.scoreImprovement >= 0
              ? `+${stats.scoreImprovement}`
              : String(stats.scoreImprovement)
          }
        />
      </div>
    </>
  );
}

function StatCard({ label, value }: { label: string; value: string }) {
  return (
    <article className={styles.statCard}>
      <p className={styles.statValue}>{value}</p>
      <p className={styles.statLabel}>{label}</p>
    </article>
  );
}
