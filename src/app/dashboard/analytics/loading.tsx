import styles from "./page.module.css";

export default function Loading() {
  return (
    <div className={styles.page} aria-busy="true" aria-label="Loading analytics">
      <header className={styles.header}>
        <div className={styles.headerRow}>
          <div className={`${styles.skel} ${styles.skelHeaderIcon}`} />
          <div className={`${styles.skel} ${styles.skelTitle}`} />
        </div>
        <div className={`${styles.skel} ${styles.skelSub}`} />
      </header>

      <div className={`${styles.skel} ${styles.skelStrip}`} />

      <div className={`${styles.panel} ${styles.panelPad}`}>
        <div className={`${styles.skel} ${styles.skelChart}`} />
      </div>

      <div className={styles.sideGrid}>
        <div className={`${styles.skel} ${styles.skelPanelLg}`} />
        <div className={`${styles.skel} ${styles.skelPanelSm}`} />
      </div>
    </div>
  );
}
