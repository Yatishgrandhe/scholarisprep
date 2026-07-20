import dynamic from "next/dynamic";
import { ChartBar } from "@phosphor-icons/react/dist/ssr";
import { AnalyticsCourseScope } from "@/components/dashboard/AnalyticsCourseScope";
import styles from "./page.module.css";

const AnalyticsExperience = dynamic(
  () =>
    import("@/components/dashboard/AnalyticsExperience").then((m) => ({
      default: m.AnalyticsExperience,
    })),
  {
    loading: () => (
      <div className={styles.page}>
        <div className={`${styles.skel} ${styles.skelStrip}`} />
        <div className={`${styles.skel} ${styles.skelChart}`} />
        <div className={`${styles.skel} ${styles.skelPanelLg}`} />
      </div>
    ),
  },
);

export default function AnalyticsPage() {
  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <div className={styles.headerRow}>
          <span className={styles.headerIcon}>
            <ChartBar size={22} weight="bold" aria-hidden />
          </span>
          <h1 className={styles.title}>Analytics</h1>
        </div>
        <AnalyticsCourseScope />
        <p className={styles.subtitle}>
          Track your progress, spot weak areas, and focus your next study
          session — for the course you have selected.
        </p>
      </header>

      <AnalyticsExperience />
    </div>
  );
}
