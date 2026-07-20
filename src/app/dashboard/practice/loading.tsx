import styles from "./practice.module.css";

export default function Loading() {
  return (
    <div className={styles.shell} aria-busy="true" aria-label="Loading practice">
      <div className={styles.skelHeader}>
        <span className={`${styles.skel} ${styles.skelHeaderIcon}`} />
        <div className={styles.skelHeaderText}>
          <span className={`${styles.skel} ${styles.skelTitle}`} />
          <span className={`${styles.skel} ${styles.skelSub}`} />
        </div>
      </div>
      <div className={styles.modeGrid}>
        <span className={`${styles.skel} ${styles.skelCardLg}`} />
        <span className={`${styles.skel} ${styles.skelCardLg}`} />
        <div className={styles.secondaryGrid}>
          <span className={`${styles.skel} ${styles.skelCardSm}`} />
          <span className={`${styles.skel} ${styles.skelCardSm}`} />
        </div>
      </div>
    </div>
  );
}
