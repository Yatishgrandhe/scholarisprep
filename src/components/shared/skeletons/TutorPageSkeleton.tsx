import { Skeleton } from "@/components/ui/skeleton";
import styles from "./skeletons.module.css";

export function TutorPageSkeleton() {
  return (
    <div
      className={styles.tutorLayout}
      aria-busy="true"
      aria-label="Loading tutor"
    >
      <Skeleton className={styles.tutorSidebar} />
      <Skeleton className={styles.tutorChat} />
    </div>
  );
}
