import {
  heatmapPillVariant,
  type TopicHeatmapCell,
} from "@/lib/dashboard/topicHeatmap";
import styles from "@/app/org/org.module.css";

type TopicHeatmapGridProps = {
  cells: TopicHeatmapCell[];
  emptyMessage?: string;
};

export function TopicHeatmapGrid({
  cells,
  emptyMessage = "No topic data yet for your organization.",
}: TopicHeatmapGridProps) {
  if (cells.length === 0) {
    return <p className={styles.emptyState}>{emptyMessage}</p>;
  }

  return (
    <div className={styles.heatmapGrid} role="list" aria-label="Topic accuracy heatmap">
      {cells.map((cell) => {
        const variant = heatmapPillVariant(cell.accuracy);
        const variantClass =
          variant === "good"
            ? styles.heatmapGood
            : variant === "mid"
              ? styles.heatmapMid
              : variant === "low"
                ? styles.heatmapLow
                : styles.heatmapNone;

        return (
          <div
            key={cell.topic}
            role="listitem"
            className={`${styles.heatmapCell} ${variantClass}`}
            aria-label={`${cell.topic}: ${cell.accuracy ?? "no"} percent accuracy, ${cell.attempted} attempts`}
            title={`${cell.topic}: ${cell.accuracy ?? "—"}% (${cell.attempted} attempts)`}
          >
            <span className={styles.heatmapTopic}>{cell.topic}</span>
            <span className={styles.heatmapAccuracy}>
              {cell.accuracy !== null ? `${cell.accuracy}%` : "—"}
            </span>
            <span className={styles.heatmapAttempted}>
              {cell.attempted} attempts
            </span>
          </div>
        );
      })}
    </div>
  );
}
