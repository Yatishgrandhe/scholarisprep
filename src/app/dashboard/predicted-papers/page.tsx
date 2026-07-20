import dynamic from "next/dynamic";
import { Exam } from "@phosphor-icons/react/dist/ssr";
import { DashboardSkeleton } from "@/components/shared/skeletons/DashboardSkeleton";
import styles from "./page.module.css";

const PredictedPapersClient = dynamic(
  () =>
    import("@/components/dashboard/PredictedPapersClient").then((m) => ({
      default: m.PredictedPapersClient,
    })),
  { loading: () => <DashboardSkeleton contentOnly /> },
);

export default function PredictedPapersPage() {
  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <span className={styles.headerIcon} aria-hidden>
          <Exam size={22} weight="fill" />
        </span>
        <div>
          <h1 className={styles.title}>Practice Exams</h1>
          <p className={styles.sub}>
            Ten full-length Digital SAT practice exams that ramp from gentle to
            brutal, with Bluebook-faithful module timing, a skippable break, and
            no feedback until the final report.
          </p>
        </div>
      </header>

      <div className={styles.statStrip} aria-label="Practice exams overview">
        <div className={styles.statCell}>
          <span className={styles.statLabel}>Practice exams</span>
          <span className={styles.statValue}>10</span>
        </div>
        <div className={styles.statCell}>
          <span className={styles.statLabel}>Questions each</span>
          <span className={styles.statValue}>98</span>
        </div>
        <div className={styles.statCell}>
          <span className={styles.statLabel}>Minutes per test</span>
          <span className={styles.statValue}>134 + 10 break</span>
        </div>
      </div>

      <PredictedPapersClient />
    </div>
  );
}
