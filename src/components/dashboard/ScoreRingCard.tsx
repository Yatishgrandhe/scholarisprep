"use client";

import {
  RadialBar,
  RadialBarChart,
  PolarAngleAxis,
  ResponsiveContainer,
} from "recharts";
import { Card } from "@/components/ui/card";
import { chartTheme } from "@/lib/dashboard/chartTheme";
import styles from "@/app/dashboard/dashboard.module.css";

type ScoreRingCardProps = {
  predicted: number;
  targetScore: number;
  ringPercent: number;
  sessionCount: number;
};

export function ScoreRingCard({
  predicted,
  targetScore,
  ringPercent,
  sessionCount,
}: ScoreRingCardProps) {
  const colors = chartTheme();
  const chartData = [
    {
      name: "progress",
      value: ringPercent,
      fill: colors.ringFill,
    },
  ];

  return (
    <Card accent="sat" className={styles.scoreCard}>
      <p className={styles.cardTitle}>Predicted score</p>
      <div className={styles.scoreCardBody}>
        <div className={styles.scoreRingWrap}>
          <ResponsiveContainer width={160} height={160}>
            <RadialBarChart
              data={chartData}
              innerRadius={58}
              outerRadius={76}
              startAngle={90}
              endAngle={-270}
              cx="50%"
              cy="50%"
            >
              <PolarAngleAxis type="number" domain={[0, 100]} tick={false} />
              <RadialBar
                dataKey="value"
                cornerRadius={6}
                background={{ fill: colors.ringTrack }}
              />
            </RadialBarChart>
          </ResponsiveContainer>
          <div className={styles.scoreRingCenter}>
            <span className={styles.scoreValueLarge}>{predicted}</span>
          </div>
        </div>
        <div className={styles.scoreMeta}>
          <p className={styles.scoreTarget}>Target: {targetScore}</p>
          <p className={styles.scoreCaption}>
            {sessionCount === 0
              ? "Complete practice to unlock your predicted score"
              : `Based on your last ${Math.min(sessionCount, 10)} sessions`}
          </p>
        </div>
      </div>
    </Card>
  );
}
