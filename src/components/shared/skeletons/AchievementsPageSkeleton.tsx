import { Skeleton } from "@/components/ui/skeleton";
import styles from "./skeletons.module.css";

export function AchievementsPageSkeleton() {
  return (
    <div aria-busy="true" aria-label="Loading achievements">
      <div className={styles.headerBlock}>
        <Skeleton className="h-8 w-56 max-w-full" />
        <Skeleton className="h-4 w-80 max-w-full" />
      </div>
      <div className={styles.achievementGrid}>
        {Array.from({ length: 8 }).map((_, i) => (
          <Skeleton key={i} className={styles.achievementTile} />
        ))}
      </div>
    </div>
  );
}
