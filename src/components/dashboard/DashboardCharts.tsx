"use client";

import {
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
} from "recharts";
import { Card } from "@/components/ui/card";
import { ChartScroll } from "@/components/shared/ChartScroll";
import { chartTheme } from "@/lib/dashboard/chartTheme";
import styles from "@/app/dashboard/dashboard.module.css";

export type PerformancePoint = {
  day: string;
  accuracy: number;
};

export function DashboardCharts({
  performance,
}: {
  performance: PerformancePoint[];
}) {
  const colors = chartTheme();
  return (
    <Card>
      <p className={styles.cardTitle}>Recent performance</p>
      {performance.length === 0 ? (
        <p className={styles.mutedText}>
          Complete a practice session to see your accuracy trend.
        </p>
      ) : (
        <ChartScroll>
          <ResponsiveContainer width="100%" height={200}>
            <LineChart data={performance}>
              <CartesianGrid strokeDasharray="3 3" stroke={colors.grid} />
              <XAxis
                dataKey="day"
                tick={{ fontSize: 12, fill: colors.axis }}
                stroke={colors.axis}
              />
              <YAxis
                domain={[0, 100]}
                tick={{ fontSize: 12, fill: colors.axis }}
                stroke={colors.axis}
                unit="%"
              />
              <Tooltip
                formatter={(value) => `${value}%`}
                contentStyle={{
                  background: colors.tooltipBg,
                  border: `1px solid ${colors.tooltipBorder}`,
                  borderRadius: 8,
                  color: colors.tooltipText,
                }}
                labelStyle={{ color: colors.tooltipText }}
                itemStyle={{ color: colors.tooltipText }}
              />
              <Line
                type="monotone"
                dataKey="accuracy"
                stroke={colors.line}
                strokeWidth={2}
                dot={{ fill: colors.line }}
              />
            </LineChart>
          </ResponsiveContainer>
        </ChartScroll>
      )}
    </Card>
  );
}
