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
  workEnergyAnalytics,
  type WorkEnergyParams,
} from "./model";
import { WorkEnergyScene2D } from "./WorkEnergyScene2D";

const METRICS = [
  { key: "WNet", label: "Net work", unit: "J", precision: 2 },
  { key: "deltaKe", label: "ΔKE", unit: "J", precision: 2 },
  { key: "vF", label: "Final speed", unit: "m/s", precision: 2 },
];

const DEFAULTS: WorkEnergyParams = {
  mass: 2,
  FApplied: 10,
  distance: 3,
  muK: 0,
  g: G_EARTH,
  v0: 0,
};

export default function WorkEnergyLab({ manifest, onTelemetry }: SimLabProps) {
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

  const params: WorkEnergyParams = {
    mass: Number(snap.params.mass) || DEFAULTS.mass,
    FApplied: Number(snap.params.FApplied) || 0,
    distance: Number(snap.params.distance) || DEFAULTS.distance,
    muK: Number(snap.params.muK) || 0,
    g: Number(snap.params.g) || G_EARTH,
    v0: Number(snap.params.v0) || 0,
  };

  const truth = useMemo(() => workEnergyAnalytics(params), [params]);
  const [draftPredict, setDraftPredict] = useState<Record<string, number>>({
    WNet: 0,
    deltaKe: 0,
    vF: 0,
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
      muK: mode === "dissipative" ? 0.2 : 0,
    });
  };

  const onRun = () => {
    stopAnim();
    kernel.start();

    const hits: string[] = [];
    if (params.muK > 0 && Math.abs(truth.WFric) > 1e-6) {
      hits.push("phys.energy.friction_does_no_work");
      hits.push("phys.energy.mechanical_always_conserved");
    }
    if (truth.WNet < 0) {
      hits.push("phys.energy.work_always_increases_ke");
    }
    kernel.setMisconceptionHits(hits);

    const tEnd = Number.isFinite(truth.tTravel)
      ? Math.min(truth.tTravel, 8)
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
        kernel.recordOutcome({
          WNet: truth.WNet,
          deltaKe: truth.deltaKe,
          vF: truth.vF,
        });
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
      viewport={<WorkEnergyScene2D params={params} time={animTime} />}
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
            setDraftPredict({ WNet: 0, deltaKe: 0, vF: 0 });
          }}
          running={snap.running}
          canRun={params.mass > 0 && params.distance > 0}
        />
      }
      meters={
        <>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>W_app</span>
            <span className={styles.meterValue}>{truth.WApp.toFixed(2)} J</span>
          </div>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>W_fric</span>
            <span className={styles.meterValue}>
              {truth.WFric.toFixed(2)} J
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
              max={30}
              step={0.5}
              value={params.FApplied}
              disabled={snap.running}
              onChange={(e) =>
                kernel.setParams({ FApplied: Number(e.target.value) })
              }
              aria-label="Applied force"
            />
          </div>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>Distance</span>
              <span className={styles.controlValue}>
                {params.distance.toFixed(1)} m
              </span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={0.5}
              max={6}
              step={0.1}
              value={params.distance}
              disabled={snap.running}
              onChange={(e) =>
                kernel.setParams({ distance: Number(e.target.value) })
              }
              aria-label="Distance"
            />
          </div>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>Initial speed</span>
              <span className={styles.controlValue}>
                {params.v0.toFixed(1)} m/s
              </span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={0}
              max={8}
              step={0.1}
              value={params.v0}
              disabled={snap.running}
              onChange={(e) => kernel.setParams({ v0: Number(e.target.value) })}
              aria-label="Initial speed"
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
                max={0.5}
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
