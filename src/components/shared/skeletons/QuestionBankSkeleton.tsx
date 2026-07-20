import { Skeleton } from "@/components/ui/skeleton";
import styles from "./skeletons.module.css";

export function QuestionBankSkeleton() {
  return (
    <div className={styles.bankRoot} aria-busy="true" aria-label="Loading question bank">
      <Skeleton className="h-8 w-48 max-w-full" />
      <div className={styles.bankSectionCards}>
        <Skeleton className={styles.bankSectionCard} />
        <Skeleton className={styles.bankSectionCard} />
      </div>
    </div>
  );
}

export function QuestionBankTableSkeleton() {
  return (
    <div className={styles.bankRoot} aria-busy="true" aria-label="Loading skills">
      <div className={styles.bankToolbar}>
        <Skeleton className="h-4 w-16" />
        <Skeleton className="h-8 w-40 max-w-full" />
        <Skeleton className="h-9 w-28 rounded-lg" />
      </div>
      {Array.from({ length: 4 }).map((_, i) => (
        <Skeleton key={i} className={styles.bankDomainRow} />
      ))}
    </div>
  );
}
