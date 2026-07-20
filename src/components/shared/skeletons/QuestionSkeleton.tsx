import { Skeleton } from "@/components/ui/skeleton";
import styles from "./skeletons.module.css";

export function QuestionSkeleton() {
  return (
    <div
      className={styles.questionShell}
      aria-busy="true"
      aria-label="Loading question"
    >
      <div className={styles.questionHeader}>
        <Skeleton className="h-5 w-36" />
        <Skeleton className="h-2 w-48 max-w-[40%]" />
        <Skeleton className="h-8 w-24 rounded-md" />
      </div>
      <div className={styles.questionBody}>
        <div className={`${styles.questionPanel} ${styles.questionPanelLeft}`}>
          <Skeleton className="h-3 w-20" />
          <Skeleton className="h-4 w-full" />
          <Skeleton className="h-4 w-full" />
          <Skeleton className="h-4 w-[92%]" />
          <Skeleton className="h-4 w-[85%]" />
          <Skeleton className="h-4 w-[78%]" />
        </div>
        <div className={styles.questionPanel}>
          <Skeleton className="h-4 w-full" />
          <Skeleton className="h-4 w-[94%]" />
          <Skeleton className="h-12 w-full rounded-lg" />
          <Skeleton className="h-12 w-full rounded-lg" />
          <Skeleton className="h-12 w-full rounded-lg" />
          <Skeleton className="h-12 w-full rounded-lg" />
        </div>
      </div>
    </div>
  );
}
