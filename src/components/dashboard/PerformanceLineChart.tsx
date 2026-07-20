"use client";

import {
  CartesianGrid,
  Line,
  LineChart,
  ReferenceLine,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";
import { Card } from "@/components/ui/card";
import { ChartScroll } from "@/components/shared/ChartScroll";
import { chartTheme } from "@/lib/dashboard/chartTheme";
import type { SessionChartPoint } from "@/lib/dashboard/sessionChart";
import styles from "@/app/dashboard/dashboard.module.css";

type PerformanceLineChartProps = {
  data: SessionChartPoint[];
};

export function PerformanceLineChart({ data }: PerformanceLineChartProps) {
  const colors = chartTheme();

  return (
    <Card>
      <p className={styles.cardTitle}>Recent performance</p>
      {data.length === 0 ? (
        <p className={styles.mutedText}>
          Complete a practice session to see your accuracy trend.
        </p>
      ) : (
        <ChartScroll>
        <ResponsiveContainer width="100%" height={220}>
          <LineChart data={data} margin={{ top: 8, right: 8, left: 0, bottom: 0 }}>
            <CartesianGrid strokeDasharray="3 3" stroke={colors.grid} />
            <XAxis
              dataKey="label"
              tick={{ fontSize: 12, fill: colors.axis }}
              stroke={colors.grid}
            />
            <YAxis
              domain={[0, 100]}
              tick={{ fontSize: 12, fill: colors.axis }}
              stroke={colors.grid}
              unit="%"
            />
            <Tooltip
              contentStyle={{
                background: "hsl(var(--card))",
                border: "1px solid hsl(var(--border))",
                borderRadius: "8px",
                color: "hsl(var(--foreground))",
              }}
              formatter={(value) => [`${Number(value ?? 0)}%`, "Accuracy"]}
              labelFormatter={(label) => `Session · ${label}`}
            />
            <ReferenceLine
              y={70}
              stroke={colors.reference}
              strokeDasharray="6 4"
              label={{
                value: "Target 70%",
                position: "insideTopRight",
                fill: colors.axis,
                fontSize: 11,
              }}
            />
            <Line
              type="monotone"
              dataKey="accuracy"
              stroke={colors.line}
              strokeWidth={2}
              dot={{ fill: colors.line, r: 4 }}
              activeDot={{ r: 6 }}
            />
          </LineChart>
        </ResponsiveContainer>
        </ChartScroll>
      )}
    </Card>
  );
}
