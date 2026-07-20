import { Skeleton } from "@/components/ui/skeleton";
import styles from "@/app/admin/admin.module.css";

type AdminListSkeletonProps = {
  /** Include page header block (route `loading.tsx`). */
  withHeader?: boolean;
  /** Number of summary stat placeholders. */
  statCount?: number;
  /** Number of table row placeholders. */
  rowCount?: number;
};

export function AdminListSkeleton({
  withHeader = false,
  statCount = 4,
  rowCount = 6,
}: AdminListSkeletonProps) {
  return (
    <div
      className={styles.listSkeleton}
      aria-busy="true"
      aria-label="Loading admin list"
    >
      {withHeader ? (
        <div className={styles.skelHeader}>
          <Skeleton className="h-5 w-28 rounded-full" />
          <Skeleton className="h-9 w-56 max-w-full" />
          <Skeleton className="h-4 w-72 max-w-full" />
        </div>
      ) : null}

      <div className={styles.skelStats}>
        {Array.from({ length: statCount }).map((_, i) => (
          <Skeleton key={i} className={styles.skelStat} />
        ))}
      </div>

      <Skeleton className={styles.skelFilter} />

      <div className={styles.skelTable}>
        {Array.from({ length: rowCount }).map((_, i) => (
          <Skeleton key={i} className={styles.skelRow} />
        ))}
      </div>
    </div>
  );
}
