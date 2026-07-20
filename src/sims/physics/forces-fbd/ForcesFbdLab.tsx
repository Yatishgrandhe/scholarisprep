"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import type { FidelityMode, SimLabProps } from "@/sims/contracts";
import { SimKernel } from "@/sims/kernel";
import {
  PredictRunCompare,
  SimShell,
  useSimKernel,
} from "@/sims/shell";
import styles from "@/sims/shell/SimShell.module.css";
import {
  G_EARTH,
  forcesFbdAnalytics,
  type ForcesFbdParams,
} from "./model";
import { ForcesScene2D } from "./ForcesScene2D";

const METRICS = [
  { key: "FNet", label: "Net force", unit: "N", precision: 2 },
  { key: "a", label: "Acceleration", unit: "m/s²", precision: 2 },
  { key: "t2m", label: "Time to 2 m", unit: "s", precision: 2 },
];

const DEFAULTS: ForcesFbdParams = {
  mass: 2,
  FApplied: 12,
  muK: 0,
  g: G_EARTH,
};

export default function ForcesFbdLab({ manifest, onTelemetry }: SimLabProps) {
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

  const params: ForcesFbdParams = {
    mass: Number(snap.params.mass) || DEFAULTS.mass,
    FApplied: Number(snap.params.FApplied) || 0,
    muK: Number(snap.params.muK) || 0,
    g: Number(snap.params.g) || G_EARTH,
  };

  const truth = useMemo(() => forcesFbdAnalytics(params), [params]);
  const [draftPredict, setDraftPredict] = useState<Record<string, number>>({
    FNet: 0,
    a: 0,
    t2m: 0,
  });
  const [animTime, setAnimTime] = useState<number | null>(null);
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
      muK: mode === "dissipative" ? 0.25 : 0,
    });
  };

  const onRun = () => {
    stopAnim();
    kernel.start();
    const hits: string[] = [];
    if (Math.abs(truth.FNet) < 1e-6 && Math.abs(params.FApplied) > 1e-6) {
      hits.push("phys.forces.motion_requires_net_force");
    }
    if (params.muK > 0 && Math.sign(truth.FFriction) === Math.sign(params.FApplied) && Math.abs(params.FApplied) > 0) {
      hits.push("phys.forces.friction_always_opposes_push");
    }
    kernel.setMisconceptionHits(hits);

    const tEnd = Number.isFinite(truth.t2m)
      ? Math.min(truth.t2m, 6)
      : 2.5;
    const t0 =
      typeof performance !== "undefined" ? performance.now() : Date.now();

    const tick = (now: number) => {
      const elapsed = (now - t0) / 1000;
      const t = Math.min(elapsed, tEnd);
      setAnimTime(t);
      kernel.setTime(t);
      if (t < tEnd) {
        rafRef.current = requestAnimationFrame(tick);
      } else {
        const outcome: Record<string, number> = {
          FNet: truth.FNet,
          a: truth.a,
        };
        if (Number.isFinite(truth.t2m)) outcome.t2m = truth.t2m;
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
        <ForcesScene2D params={params} time={animTime} playing={snap.running} />
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
            setDraftPredict({ FNet: 0, a: 0, t2m: 0 });
          }}
          running={snap.running}
          canRun={params.mass > 0}
        />
      }
      meters={
        <>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>N</span>
            <span className={styles.meterValue}>{truth.N.toFixed(2)} N</span>
          </div>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>f_k</span>
            <span className={styles.meterValue}>
              {truth.FFriction.toFixed(2)} N
            </span>
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
              min={0.5}
              max={8}
              step={0.1}
              value={params.mass}
              disabled={snap.running}
              onChange={(e) => kernel.setParams({ mass: Number(e.target.value) })}
              aria-label="Mass"
            />
          </div>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>Applied force</span>
              <span className={styles.controlValue}>
                {params.FApplied.toFixed(1)} N
              </span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={0}
              max={40}
              step={0.5}
              value={params.FApplied}
              disabled={snap.running}
              onChange={(e) =>
                kernel.setParams({ FApplied: Number(e.target.value) })
              }
              aria-label="Applied force"
            />
          </div>
          {snap.fidelity === "dissipative" ? (
            <div className={styles.controlGroup}>
              <div className={styles.controlLabel}>
                <span>μ_k</span>
                <span className={styles.controlValue}>{params.muK.toFixed(2)}</span>
              </div>
              <input
                className={styles.slider}
                type="range"
                min={0.05}
                max={0.6}
                step={0.01}
                value={params.muK}
                disabled={snap.running}
                onChange={(e) =>
                  kernel.setParams({ muK: Number(e.target.value) })
                }
                aria-label="Kinetic friction coefficient"
              />
            </div>
          ) : null}
        </>
      }
    />
  );
}
