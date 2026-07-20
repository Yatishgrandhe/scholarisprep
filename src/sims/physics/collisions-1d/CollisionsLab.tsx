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
  collisionAnalytics,
  DISSIPATIVE_E,
  type CollisionParams,
} from "./model";
import { CollisionsScene2D } from "./CollisionsScene2D";

const METRICS = [
  { key: "v1", label: "v₁ final", unit: "m/s", precision: 2 },
  { key: "v2", label: "v₂ final", unit: "m/s", precision: 2 },
  { key: "keLoss", label: "KE lost", unit: "J", precision: 2 },
];

const DEFAULTS: CollisionParams = {
  m1: 2,
  m2: 1,
  u1: 3,
  u2: -1,
  e: 1,
};

const RUN_DURATION_S = 2.2;

export default function CollisionsLab({ manifest, onTelemetry }: SimLabProps) {
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

  const eRaw = Number(snap.params.e);
  const params: CollisionParams = {
    m1: Number(snap.params.m1) || DEFAULTS.m1,
    m2: Number(snap.params.m2) || DEFAULTS.m2,
    u1: Number(snap.params.u1) || 0,
    u2: Number(snap.params.u2) || 0,
    e: Number.isFinite(eRaw) ? eRaw : DEFAULTS.e,
  };

  const truth = useMemo(() => collisionAnalytics(params), [params]);
  const [draftPredict, setDraftPredict] = useState<Record<string, number>>({
    v1: 0,
    v2: 0,
    keLoss: 0,
  });
  const [progress, setProgress] = useState<number | null>(null);
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
      e: mode === "dissipative" ? DISSIPATIVE_E : 1,
    });
  };

  const onRun = () => {
    stopAnim();
    setProgress(0);
    kernel.start();
    const t0 =
      typeof performance !== "undefined" ? performance.now() : Date.now();

    const tick = (now: number) => {
      const elapsed = (now - t0) / 1000;
      const p = Math.min(elapsed / RUN_DURATION_S, 1);
      setProgress(p);
      kernel.setTime(elapsed);
      if (p < 1) {
        rafRef.current = requestAnimationFrame(tick);
      } else {
        kernel.recordOutcome({
          v1: truth.v1,
          v2: truth.v2,
          keLoss: truth.keLoss,
        });
        onTelemetry?.(kernel.getTelemetry());
        setProgress(1);
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
        <CollisionsScene2D
          params={params}
          progress={progress}
          playing={snap.running}
        />
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
            setProgress(null);
            setDraftPredict({ v1: 0, v2: 0, keLoss: 0 });
          }}
          running={snap.running}
          canRun={params.m1 > 0 && params.m2 > 0}
        />
      }
      meters={
        <>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>e</span>
            <span className={styles.meterValue}>{params.e.toFixed(2)}</span>
          </div>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>p before</span>
            <span className={styles.meterValue}>
              {truth.pBefore.toFixed(2)} kg·m/s
            </span>
          </div>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>KE before</span>
            <span className={styles.meterValue}>
              {truth.keBefore.toFixed(2)} J
            </span>
          </div>
        </>
      }
      controls={
        <>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>Mass m₁</span>
              <span className={styles.controlValue}>
                {params.m1.toFixed(1)} kg
              </span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={0.5}
              max={5}
              step={0.1}
              value={params.m1}
              disabled={snap.running}
              onChange={(e) =>
                kernel.setParams({ m1: Number(e.target.value) })
              }
              aria-label="Mass 1"
            />
          </div>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>Mass m₂</span>
              <span className={styles.controlValue}>
                {params.m2.toFixed(1)} kg
              </span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={0.5}
              max={5}
              step={0.1}
              value={params.m2}
              disabled={snap.running}
              onChange={(e) =>
                kernel.setParams({ m2: Number(e.target.value) })
              }
              aria-label="Mass 2"
            />
          </div>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>u₁ (initial)</span>
              <span className={styles.controlValue}>
                {params.u1.toFixed(1)} m/s
              </span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={-5}
              max={8}
              step={0.1}
              value={params.u1}
              disabled={snap.running}
              onChange={(e) =>
                kernel.setParams({ u1: Number(e.target.value) })
              }
              aria-label="Initial velocity 1"
            />
          </div>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>u₂ (initial)</span>
              <span className={styles.controlValue}>
                {params.u2.toFixed(1)} m/s
              </span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={-5}
              max={8}
              step={0.1}
              value={params.u2}
              disabled={snap.running}
              onChange={(e) =>
                kernel.setParams({ u2: Number(e.target.value) })
              }
              aria-label="Initial velocity 2"
            />
          </div>
          {snap.fidelity === "dissipative" ? (
            <div className={styles.controlGroup}>
              <div className={styles.controlLabel}>
                <span>Restitution e</span>
                <span className={styles.controlValue}>
                  {params.e.toFixed(2)}
                </span>
              </div>
              <input
                className={styles.slider}
                type="range"
                min={0}
                max={0.95}
                step={0.05}
                value={params.e}
                disabled={snap.running}
                onChange={(e) =>
                  kernel.setParams({ e: Number(e.target.value) })
                }
                aria-label="Coefficient of restitution"
              />
            </div>
          ) : null}
        </>
      }
    />
  );
}
