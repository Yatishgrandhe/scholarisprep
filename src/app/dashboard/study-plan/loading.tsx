import styles from "@/components/dashboard/study-planner.module.css";

export default function Loading() {
  return (
    <div className={styles.skelPage} aria-busy="true" aria-label="Loading study planner">
      <div className={styles.pageShell}>
      <div className={`${styles.skel} ${styles.skelIllo}`} />
      <div className={`${styles.skel} ${styles.skelTitle}`} />
      <div className={`${styles.skel} ${styles.skelSub}`} />
      <div className={styles.skelEntryGrid}>
        <div className={`${styles.skel} ${styles.skelEntryCard}`} />
        <div className={`${styles.skel} ${styles.skelEntryCard}`} />
      </div>
      <div className={styles.skelHowGrid}>
        <div className={`${styles.skel} ${styles.skelHowCol}`} />
        <div className={`${styles.skel} ${styles.skelHowCol}`} />
        <div className={`${styles.skel} ${styles.skelHowCol}`} />
      </div>
      </div>
    </div>
  );
}
