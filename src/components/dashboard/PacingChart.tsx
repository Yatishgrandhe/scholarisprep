"use client";

import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  ResponsiveContainer,
} from "recharts";
import { Card } from "@/components/ui/card";
import { ChartScroll } from "@/components/shared/ChartScroll";
import { chartTheme } from "@/lib/dashboard/chartTheme";
import styles from "@/app/dashboard/dashboard.module.css";

/** Reference pacing for the Digital SAT (~71s/question overall). */
const PLATFORM_AVG_SECONDS: Record<string, number> = {
  easy: 55,
  medium: 75,
  hard: 95,
};

export type PacingDatum = {
  difficulty: "easy" | "medium" | "hard";
  avgSeconds: number;
};

export function PacingChart({ data }: { data: PacingDatum[] }) {
  if (data.length === 0) {
    return (
      <Card>
        <p className={styles.cardTitle}>Pacing</p>
        <p className={styles.mutedText}>
          Answer practice questions to compare your pace with the test-day
          budget.
        </p>
      </Card>
    );
  }

  const chartData = data.map((d) => ({
    difficulty: d.difficulty[0]!.toUpperCase() + d.difficulty.slice(1),
    you: Math.round(d.avgSeconds),
    target: PLATFORM_AVG_SECONDS[d.difficulty] ?? 75,
  }));

  const colors = chartTheme();
  return (
    <Card>
      <p className={styles.cardTitle}>Pacing: seconds per question</p>
      <ChartScroll>
        <ResponsiveContainer width="100%" height={200}>
          <BarChart data={chartData}>
            <CartesianGrid strokeDasharray="3 3" stroke={colors.grid} />
            <XAxis
              dataKey="difficulty"
              tick={{ fontSize: 12, fill: colors.axis }}
              stroke={colors.axis}
            />
            <YAxis
              tick={{ fontSize: 12, fill: colors.axis }}
              stroke={colors.axis}
              unit="s"
            />
            <Tooltip
              formatter={(value) => `${value}s`}
              contentStyle={{
                background: colors.tooltipBg,
                border: `1px solid ${colors.tooltipBorder}`,
                borderRadius: 8,
                color: colors.tooltipText,
              }}
              labelStyle={{ color: colors.tooltipText }}
              itemStyle={{ color: colors.tooltipText }}
              cursor={{ fill: "hsl(var(--muted-foreground) / 0.1)" }}
            />
            <Legend wrapperStyle={{ fontSize: 12, color: colors.axis }} />
            <Bar
              dataKey="you"
              name="Your average"
              fill={colors.line}
              radius={[4, 4, 0, 0]}
            />
            <Bar
              dataKey="target"
              name="Test-day budget"
              fill="hsl(var(--muted-foreground) / 0.55)"
              radius={[4, 4, 0, 0]}
            />
          </BarChart>
        </ResponsiveContainer>
      </ChartScroll>
    </Card>
  );
}
