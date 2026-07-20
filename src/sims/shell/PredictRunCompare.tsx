"use client";

import type { PredictCompareMetric } from "@/sims/contracts";
import styles from "./SimShell.module.css";

type Props = {
  metrics: PredictCompareMetric[];
  prediction: Record<string, number> | null;
  outcome: Record<string, number> | null;
  residual: Record<string, number> | null;
  onPredictChange: (key: string, value: number) => void;
  onCommitPrediction: () => void;
  onRun: () => void;
  onReset: () => void;
  running: boolean;
  canRun: boolean;
};

function formatNum(n: number | undefined, precision = 2): string {
  if (n == null || !Number.isFinite(n)) return "—";
  return n.toFixed(precision);
}

export function PredictRunCompare({
  metrics,
  prediction,
  outcome,
  residual,
  onPredictChange,
  onCommitPrediction,
  onRun,
  onReset,
  running,
  canRun,
}: Props) {
  return (
    <section className={styles.predictPanel} aria-label="Predict, run, compare">
      <header className={styles.predictHeader}>
        <h2 className={styles.railTitle}>Predict → Run → Compare</h2>
        <p className={styles.railHint}>
          Lock a prediction, run the model, then read the residual.
        </p>
      </header>

      <div className={styles.metricTable} role="table">
        <div className={styles.metricRow} role="row">
          <span className={styles.metricHead} role="columnheader">
            Quantity
          </span>
          <span className={styles.metricHead} role="columnheader">
            Your predict
          </span>
          <span className={styles.metricHead} role="columnheader">
            Model
          </span>
          <span className={styles.metricHead} role="columnheader">
            Residual
          </span>
        </div>
        {metrics.map((m) => {
          const prec = m.precision ?? 2;
          return (
            <div className={styles.metricRow} role="row" key={m.key}>
              <label className={styles.metricLabel} htmlFor={`predict-${m.key}`}>
                {m.label}
                {m.unit ? (
                  <span className={styles.metricUnit}> ({m.unit})</span>
                ) : null}
              </label>
              <input
                id={`predict-${m.key}`}
                className={styles.predictInput}
                type="number"
                step="any"
                inputMode="decimal"
                value={prediction?.[m.key] ?? ""}
                onChange={(e) => {
                  const v = Number(e.target.value);
                  if (Number.isFinite(v)) onPredictChange(m.key, v);
                }}
                aria-label={`Predict ${m.label}`}
              />
              <span className={styles.meterValue} role="cell">
                {formatNum(outcome?.[m.key], prec)}
              </span>
              <span
                className={`${styles.meterValue} ${
                  residual?.[m.key] != null && Math.abs(residual[m.key]!) > 1e-6
                    ? styles.residualHot
                    : ""
                }`}
                role="cell"
              >
                {formatNum(residual?.[m.key], prec)}
              </span>
            </div>
          );
        })}
      </div>

      <div className={styles.predictActions}>
        <button
          type="button"
          className={styles.btnSecondary}
          onClick={onCommitPrediction}
        >
          Lock prediction
        </button>
        <button
          type="button"
          className={styles.btnPrimary}
          onClick={onRun}
          disabled={!canRun || running}
        >
          {running ? "Running…" : "Run"}
        </button>
        <button type="button" className={styles.btnGhost} onClick={onReset}>
          Reset
        </button>
      </div>
    </section>
  );
}
