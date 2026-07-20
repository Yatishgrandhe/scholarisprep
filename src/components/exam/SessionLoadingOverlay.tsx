import styles from "./SessionLoadingOverlay.module.css";
import type { PracticeLoadProgress } from "@/lib/practice/queries";

type OverlayAction = { label: string; onClick: () => void };

type SessionLoadingOverlayProps = {
  message?: string;
  progress?: PracticeLoadProgress;
  /** When provided, shows action buttons instead of the spinner (e.g. a retry
   * after the load watchdog fires) so the user is never stranded on a spinner. */
  actions?: OverlayAction[];
};

function progressLabel(progress?: PracticeLoadProgress): string | null {
  if (!progress) return null;
  if (progress.phase === "scanning") {
    if (progress.total != null) {
      return `Found ${progress.total.toLocaleString()} questions`;
    }
    if (progress.loaded > 0) {
      return `Scanning bank… ${progress.loaded.toLocaleString()} loaded`;
    }
    return "Scanning question bank…";
  }
  if (progress.total != null && progress.total > 0) {
    return `Loading questions… ${Math.min(progress.loaded, progress.total)}/${progress.total}`;
  }
  return "Loading questions…";
}

export function SessionLoadingOverlay({
  message = "Getting your questions ready…",
  progress,
  actions,
}: SessionLoadingOverlayProps) {
  const detail = progressLabel(progress);
  const hasActions = Array.isArray(actions) && actions.length > 0;

  return (
    <div
      className={styles.overlay}
      role="status"
      aria-live="polite"
      aria-busy={!hasActions}
    >
      <div className={styles.inner}>
        {hasActions ? null : <span className={styles.spinner} aria-hidden />}
        <p className={styles.message}>{message}</p>
        {detail && !hasActions ? <p className={styles.detail}>{detail}</p> : null}
        {hasActions ? (
          <div className={styles.actions}>
            {actions!.map((a) => (
              <button
                key={a.label}
                type="button"
                className={styles.actionBtn}
                onClick={a.onClick}
              >
                {a.label}
              </button>
            ))}
          </div>
        ) : null}
      </div>
    </div>
  );
}
