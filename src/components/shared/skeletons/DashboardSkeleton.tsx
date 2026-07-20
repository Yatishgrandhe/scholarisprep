import { Skeleton } from "@/components/ui/skeleton";
import styles from "./skeletons.module.css";

type DashboardSkeletonProps = {
  /** When true, only main content (parent layout already renders sidebar). */
  contentOnly?: boolean;
};

export function DashboardSkeleton({ contentOnly = false }: DashboardSkeletonProps) {
  const main = (
    <div className={styles.dashboardMain}>
      {/* Greeting + countdown card */}
      <div className={styles.homeHeroRow}>
        <div className={styles.headerBlock}>
          <Skeleton className="h-9 w-72 max-w-full" />
          <Skeleton className="h-4 w-60 max-w-full" />
          <Skeleton className="h-10 w-44 rounded-lg" />
        </div>
        <Skeleton className={styles.countdownCard} />
      </div>
      {/* Banner strip */}
      <Skeleton className={styles.bannerStrip} />
      {/* Analytics strip — one joined container */}
      <Skeleton className={styles.analyticsJoined} />
      {/* Study plan + score cards */}
      <div className={styles.cardGridWide}>
        <Skeleton className={styles.wideCard} />
        <div className={styles.scoreColumn}>
          <Skeleton className={styles.scoreCardSk} />
          <div className={styles.scoreRowSk}>
            <Skeleton className={styles.scoreCardSk} />
            <Skeleton className={styles.scoreCardSk} />
          </div>
        </div>
      </div>
    </div>
  );

  if (contentOnly) {
    return main;
  }

  return (
    <div
      className={styles.dashboardLayout}
      aria-busy="true"
      aria-label="Loading dashboard"
    >
      <aside className={styles.dashboardSidebar}>
        <Skeleton className="h-8 w-32" />
        <Skeleton className="h-10 w-full rounded-lg" />
        <div className="flex flex-col gap-2 pt-2">
          {Array.from({ length: 8 }).map((_, i) => (
            <Skeleton key={i} className="h-9 w-full rounded-md" />
          ))}
        </div>
      </aside>
      {main}
    </div>
  );
}
