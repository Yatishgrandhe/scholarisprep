import { cn } from "@/lib/utils";
import styles from "./StatCard.module.css";

export type StatCardProps = {
  value: string;
  label: string;
  change?: { text: string; positive?: boolean };
  className?: string;
};

export function StatCard({ value, label, change, className }: StatCardProps) {
  return (
    <article className={cn(styles.statCard, className)}>
      <p className={styles.statValue}>{value}</p>
      <p className={styles.statLabel}>{label}</p>
      {change && (
        <span
          className={cn(
            styles.statChange,
            change.positive ? styles.statChangePositive : styles.statChangeNegative,
          )}
        >
          {change.text}
        </span>
      )}
    </article>
  );
}
