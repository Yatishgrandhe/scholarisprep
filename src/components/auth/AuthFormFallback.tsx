import styles from "./auth.module.css";

/** Lightweight Suspense fallback while auth form client islands hydrate. */
export function AuthFormFallback() {
  return (
    <div className={styles.formFallback} aria-hidden>
      <div className={styles.skeletonLine} />
      <div className={styles.skeletonLineShort} />
      <div className={styles.skeletonLine} />
      <div className={styles.skeletonLine} />
      <div className={styles.skeletonButton} />
    </div>
  );
}
