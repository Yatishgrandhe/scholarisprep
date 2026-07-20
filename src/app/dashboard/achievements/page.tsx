import { Trophy } from "@phosphor-icons/react/dist/ssr";
import { AchievementsGrid } from "@/components/dashboard/AchievementsGrid";
import styles from "./page.module.css";

export default function AchievementsPage() {
  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <Trophy
          size={22}
          weight="duotone"
          className={styles.headerIcon}
          aria-hidden
        />
        <div>
          <h1 className={styles.title}>Achievements</h1>
          <p className={styles.subtitle}>
            Badges you&apos;ve earned from practice sessions, exams, and study
            streaks.
          </p>
        </div>
      </header>

      <AchievementsGrid />
    </div>
  );
}
