import styles from "./PauseDialog.module.css";

type PauseDialogProps = {
  onResume: () => void;
  onExit: () => void;
};

export function PauseDialog({ onResume, onExit }: PauseDialogProps) {
  return (
    <div className={styles.overlay} role="dialog" aria-modal="true" aria-labelledby="pause-title">
      <div className={styles.card}>
        <h2 id="pause-title" className={styles.title}>
          Pause
        </h2>
        <p className={styles.sub}>Your timer is paused. Resume when you&apos;re ready.</p>
        <div className={styles.actions}>
          <button type="button" className={styles.resume} onClick={onResume}>
            Resume
          </button>
          <button type="button" className={styles.exit} onClick={onExit}>
            Exit session
          </button>
        </div>
      </div>
    </div>
  );
}
