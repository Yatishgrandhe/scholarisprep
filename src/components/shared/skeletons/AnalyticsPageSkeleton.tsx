import { Skeleton } from "@/components/ui/skeleton";
import { ChartSkeleton } from "./ChartSkeleton";
import styles from "./skeletons.module.css";

export function AnalyticsPageSkeleton() {
  return (
    <div aria-busy="true" aria-label="Loading analytics">
      <div className={styles.headerBlock}>
        <Skeleton className="h-8 w-48 max-w-full" />
        <Skeleton className="h-4 w-72 max-w-full" />
      </div>
      <div className={styles.cardGrid}>
        <Skeleton className={styles.statCard} />
        <Skeleton className={styles.statCard} />
      </div>
      <ChartSkeleton height={320} className="mb-5" />
      <ChartSkeleton height={240} />
    </div>
  );
}
