"use client";

import { Card } from "@/components/ui/card";
import {
  buildTopicHeatmap,
  heatmapPillVariant,
  type TopicHeatmapCell,
} from "@/lib/dashboard/topicHeatmap";
import type { AttemptWithQuestion } from "@/lib/dashboard/predictedScore";
import styles from "@/app/dashboard/dashboard.module.css";

const PILL_CLASS: Record<
  ReturnType<typeof heatmapPillVariant>,
  string
> = {
  none: styles.heatmapPillNone,
  good: styles.heatmapPillGood,
  mid: styles.heatmapPillMid,
  low: styles.heatmapPillLow,
};

type TopicHeatmapGridProps = {
  attempts: AttemptWithQuestion[];
  precomputed?: TopicHeatmapCell[];
};

export function TopicHeatmapGrid({
  attempts,
  precomputed,
}: TopicHeatmapGridProps) {
  const cells = precomputed ?? buildTopicHeatmap(attempts);

  return (
    <Card>
      <p className={styles.cardTitle}>Topic heatmap</p>
      {cells.length === 0 ? (
        <p className={styles.mutedText}>
          Answer practice questions to see topic accuracy.
        </p>
      ) : (
        <div className={styles.heatmapTableWrap}>
          <table className={styles.heatmapTable}>
            <thead>
              <tr>
                <th scope="col">Topic</th>
                <th scope="col">Accuracy</th>
              </tr>
            </thead>
            <tbody>
              {cells.map((cell) => {
                const variant = heatmapPillVariant(cell.accuracy);
                return (
                  <tr key={cell.topic}>
                    <td className={styles.heatmapTopic}>{cell.topic}</td>
                    <td>
                      <span
                        className={`${styles.heatmapPill} ${PILL_CLASS[variant]}`}
                        title={
                          cell.accuracy === null
                            ? "Not attempted"
                            : `${cell.accuracy}% (${cell.attempted} attempts)`
                        }
                      >
                        {cell.accuracy === null ? "—" : `${cell.accuracy}%`}
                      </span>
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      )}
    </Card>
  );
}
