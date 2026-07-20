"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import type { FidelityMode, SimLabProps } from "@/sims/contracts";
import { integrateFixed, SimKernel, type OdeFn } from "@/sims/kernel";
import {
  PredictRunCompare,
  SimShell,
  useSimKernel,
} from "@/sims/shell";
import styles from "@/sims/shell/SimShell.module.css";
import { shmAnalytics, type ShmParams } from "./model";
import { ShmScene2D } from "./ShmScene2D";

function shmOde(mass: number, k: number, damping: number): OdeFn {
  return (_t, y, dydt) => {
    dydt[0] = y[1]!;
    dydt[1] = (-k * y[0]! - damping * y[1]!) / mass;
  };
}

function sampleX(params: ShmParams, t: number): number {
  if (t <= 0) return params.amplitude;
  const state = integrateFixed(
    shmOde(params.mass, params.k, params.damping),
    new Float64Array([params.amplitude, 0]),
    0,
    t,
    1 / 120,
  );
  return state[0]!;
}

const METRICS = [
  { key: "period", label: "Period", unit: "s", precision: 3 },
  { key: "vMax", label: "Max |v|", unit: "m/s", precision: 3 },
];

const DEFAULTS: ShmParams = {
  mass: 0.5,
  k: 20,
  amplitude: 0.12,
  damping: 0,
};

export default function ShmLab({ manifest, onTelemetry }: SimLabProps) {
  const kernelRef = useRef<SimKernel | null>(null);
  if (!kernelRef.current) {
    kernelRef.current = new SimKernel({
      simId: manifest.id,
      subject: manifest.subject,
      fidelity: manifest.fidelity,
      examTags: manifest.examTags,
      initialParams: { ...DEFAULTS },
      fixedDt: 1 / 120,
    });
  }
  const kernel = kernelRef.current;
  const snap = useSimKernel(kernel);

  const params: ShmParams = {
    mass: Number(snap.params.mass) || DEFAULTS.mass,
    k: Number(snap.params.k) || DEFAULTS.k,
    amplitude: Number(snap.params.amplitude) || DEFAULTS.amplitude,
    damping: Number(snap.params.damping) || 0,
  };

  const truth = useMemo(() => shmAnalytics(params), [params]);
  const [draftPredict, setDraftPredict] = useState<Record<string, number>>({
    period: 0,
    vMax: 0,
  });
  const [animTime, setAnimTime] = useState<number | null>(null);
  const [history, setHistory] = useState<Array<{ t: number; x: number }>>([]);
  const rafRef = useRef<number | null>(null);

  const stopAnim = useCallback(() => {
    if (rafRef.current != null) {
      cancelAnimationFrame(rafRef.current);
      rafRef.current = null;
    }
  }, []);

  useEffect(() => () => stopAnim(), [stopAnim]);

  const setFidelity = (mode: FidelityMode) => {
    kernel.setFidelity(mode);
    kernel.setParams({
      damping: mode === "dissipative" ? 0.35 : 0,
    });
  };

  const onRun = () => {
    stopAnim();
    setHistory([{ t: 0, x: params.amplitude }]);
    kernel.start();
    const tEnd = Number.isFinite(truth.period)
      ? truth.period * 2
      : Math.max(2, 4 / Math.max(truth.omega0, 0.1));
    const t0 =
      typeof performance !== "undefined" ? performance.now() : Date.now();

    const tick = (now: number) => {
      const elapsed = (now - t0) / 1000;
      const t = Math.min(elapsed, tEnd);
      setAnimTime(t);
      kernel.setTime(t);
      setHistory((prev) => {
        if (prev.length > 0 && t - prev[prev.length - 1]!.t < 0.03) return prev;
        return [...prev, { t, x: sampleX(params, t) }];
      });
      if (t < tEnd) {
        rafRef.current = requestAnimationFrame(tick);
      } else {
        const outcome: Record<string, number> = { vMax: truth.vMax };
        if (Number.isFinite(truth.period)) outcome.period = truth.period;
        kernel.recordOutcome(outcome);
        onTelemetry?.(kernel.getTelemetry());
        setAnimTime(tEnd);
      }
    };
    rafRef.current = requestAnimationFrame(tick);
  };

  return (
    <SimShell
      manifest={manifest}
      fidelity={snap.fidelity}
      titleAddon={
        manifest.fidelityModes && manifest.fidelityModes.length > 1 ? (
          <div className={styles.predictActions}>
            {manifest.fidelityModes.map((mode) => (
              <button
                key={mode}
                type="button"
                className={
                  snap.fidelity === mode ? styles.btnSecondary : styles.btnGhost
                }
                onClick={() => setFidelity(mode)}
                disabled={snap.running}
              >
                {mode}
              </button>
            ))}
          </div>
        ) : null
      }
      viewport={
        <ShmScene2D params={params} time={animTime} history={history} />
      }
      pedagogy={
        <PredictRunCompare
          metrics={METRICS}
          prediction={snap.prediction ?? draftPredict}
          outcome={snap.outcome}
          residual={snap.residual}
          onPredictChange={(key, value) =>
            setDraftPredict((prev) => ({ ...prev, [key]: value }))
          }
          onCommitPrediction={() => kernel.setPrediction({ ...draftPredict })}
          onRun={onRun}
          onReset={() => {
            stopAnim();
            kernel.reset({ ...DEFAULTS });
            kernel.setFidelity("ideal");
            setAnimTime(null);
            setHistory([]);
            setDraftPredict({ period: 0, vMax: 0 });
          }}
          running={snap.running}
          canRun={params.mass > 0 && params.k > 0}
        />
      }
      meters={
        <>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>ω₀</span>
            <span className={styles.meterValue}>
              {truth.omega0.toFixed(3)} rad/s
            </span>
          </div>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>T (ideal)</span>
            <span className={styles.meterValue}>{truth.period.toFixed(3)} s</span>
          </div>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>t</span>
            <span className={styles.meterValue}>
              {(animTime ?? 0).toFixed(2)} s
            </span>
          </div>
        </>
      }
      controls={
        <>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>Mass</span>
              <span className={styles.controlValue}>{params.mass.toFixed(2)} kg</span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={0.1}
              max={2}
              step={0.05}
              value={params.mass}
              disabled={snap.running}
              onChange={(e) => kernel.setParams({ mass: Number(e.target.value) })}
              aria-label="Mass"
            />
          </div>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>Spring k</span>
              <span className={styles.controlValue}>{params.k.toFixed(1)} N/m</span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={2}
              max={80}
              step={1}
              value={params.k}
              disabled={snap.running}
              onChange={(e) => kernel.setParams({ k: Number(e.target.value) })}
              aria-label="Spring constant"
            />
          </div>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>Amplitude</span>
              <span className={styles.controlValue}>
                {(params.amplitude * 100).toFixed(0)} cm
              </span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={0.02}
              max={0.25}
              step={0.01}
              value={params.amplitude}
              disabled={snap.running}
              onChange={(e) =>
                kernel.setParams({ amplitude: Number(e.target.value) })
              }
              aria-label="Amplitude"
            />
          </div>
        </>
      }
    />
  );
}
