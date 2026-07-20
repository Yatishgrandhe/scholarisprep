import { Skeleton } from "@/components/ui/skeleton";
import styles from "./skeletons.module.css";

type CourseCardSkeletonProps = {
  count?: number;
};

export function CourseCardSkeleton({ count = 1 }: CourseCardSkeletonProps) {
  return (
    <>
      {Array.from({ length: count }).map((_, i) => (
        <article key={i} className={styles.courseCard} aria-hidden>
          <Skeleton className={styles.courseThumb} />
          <div className={styles.courseBody}>
            <Skeleton className="h-5 w-[85%]" />
            <Skeleton className="h-4 w-[60%]" />
            <Skeleton className="h-3 w-[40%]" />
            <Skeleton className="h-9 w-full rounded-md mt-1" />
          </div>
        </article>
      ))}
    </>
  );
}

export function CourseCardGridSkeleton({ count = 6 }: CourseCardSkeletonProps) {
  return (
    <div
      className={styles.courseGrid}
      aria-busy="true"
      aria-label="Loading courses"
    >
      <CourseCardSkeleton count={count} />
    </div>
  );
}
