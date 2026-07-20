import styles from "./page.module.css";

export default function Loading() {
  return (
    <div className={styles.page} aria-busy="true" aria-label="Loading courses">
      <div className={styles.skelHeader}>
        <span className={`${styles.skel} ${styles.skelIcon}`} />
        <div className={styles.skelHeaderText}>
          <span className={`${styles.skel} ${styles.skelTitle}`} />
          <span className={`${styles.skel} ${styles.skelSubtitle}`} />
        </div>
      </div>
      <div className={styles.statsRow}>
        {Array.from({ length: 3 }).map((_, i) => (
          <span key={i} className={`${styles.skel} ${styles.skelStat}`} />
        ))}
      </div>
      <span className={`${styles.skel} ${styles.skelTabs}`} />
      <div className={styles.skeletonGrid}>
        {Array.from({ length: 4 }).map((_, i) => (
          <div key={i} className={styles.skeletonCard} />
        ))}
      </div>
    </div>
  );
}
