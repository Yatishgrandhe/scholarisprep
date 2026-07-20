"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import type { SimLabProps } from "@/sims/contracts";
import { SimKernel } from "@/sims/kernel";
import {
  PredictRunCompare,
  SimShell,
  useSimKernel,
} from "@/sims/shell";
import styles from "@/sims/shell/SimShell.module.css";
import {
  G_EARTH,
  projectileAnalytics,
  type ProjectileParams,
} from "./model";
import { ProjectileScene2D } from "./ProjectileScene2D";

const METRICS = [
  { key: "range", label: "Range", unit: "m", precision: 2 },
  { key: "tFlight", label: "Flight time", unit: "s", precision: 2 },
  { key: "hMax", label: "Max height", unit: "m", precision: 2 },
];

const DEFAULTS: ProjectileParams = {
  v0: 18,
  angleDeg: 45,
  h0: 0,
  g: G_EARTH,
};

export default function ProjectileLab({ manifest, onTelemetry }: SimLabProps) {
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

  const params: ProjectileParams = {
    v0: Number(snap.params.v0) || DEFAULTS.v0,
    angleDeg: Number(snap.params.angleDeg) || DEFAULTS.angleDeg,
    h0: Number(snap.params.h0) || 0,
    g: Number(snap.params.g) || G_EARTH,
  };

  const truth = useMemo(() => projectileAnalytics(params), [params]);
  const [draftPredict, setDraftPredict] = useState<Record<string, number>>({
    range: 0,
    tFlight: 0,
    hMax: 0,
  });
  const [animTime, setAnimTime] = useState<number | null>(null);
  const [trail, setTrail] = useState<Array<{ x: number; y: number }>>([]);
  const rafRef = useRef<number | null>(null);

  const stopAnim = useCallback(() => {
    if (rafRef.current != null) {
      cancelAnimationFrame(rafRef.current);
      rafRef.current = null;
    }
  }, []);

  useEffect(() => () => stopAnim(), [stopAnim]);

  const onPredictChange = (key: string, value: number) => {
    setDraftPredict((prev) => ({ ...prev, [key]: value }));
  };

  const onCommitPrediction = () => {
    kernel.setPrediction({ ...draftPredict });
  };

  const onReset = () => {
    stopAnim();
    kernel.reset({ ...DEFAULTS });
    setAnimTime(null);
    setTrail([]);
    setDraftPredict({ range: 0, tFlight: 0, hMax: 0 });
  };

  const onRun = () => {
    stopAnim();
    setTrail([{ x: 0, y: params.h0 }]);
    kernel.start();
    const tEnd = truth.tFlight;
    const t0 =
      typeof performance !== "undefined" ? performance.now() : Date.now();

    const tick = (now: number) => {
      const elapsed = (now - t0) / 1000;
      // Visual pace ~1× realtime, capped
      const t = Math.min(elapsed, tEnd);
      setAnimTime(t);
      kernel.setTime(t);
      if (t < tEnd) {
        rafRef.current = requestAnimationFrame(tick);
      } else {
        kernel.recordOutcome({
          range: truth.range,
          tFlight: truth.tFlight,
          hMax: truth.hMax,
        });
        onTelemetry?.(kernel.getTelemetry());
        setAnimTime(tEnd);
      }
    };
    rafRef.current = requestAnimationFrame(tick);
  };

  const onTrailPoint = useCallback((x: number, y: number) => {
    setTrail((prev) => {
      const last = prev[prev.length - 1];
      if (last && Math.hypot(last.x - x, last.y - y) < 0.08) return prev;
      return [...prev, { x, y }];
    });
  }, []);

  return (
    <SimShell
      manifest={manifest}
      fidelity={snap.fidelity}
      viewport={
        <ProjectileScene2D
          params={params}
          time={animTime}
          playing={snap.running}
          trail={trail}
          onTrailPoint={onTrailPoint}
        />
      }
      pedagogy={
        <PredictRunCompare
          metrics={METRICS}
          prediction={snap.prediction ?? draftPredict}
          outcome={snap.outcome}
          residual={snap.residual}
          onPredictChange={onPredictChange}
          onCommitPrediction={onCommitPrediction}
          onRun={onRun}
          onReset={onReset}
          running={snap.running}
          canRun={params.v0 > 0}
        />
      }
      meters={
        <>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>vx</span>
            <span className={styles.meterValue}>{truth.vx.toFixed(2)} m/s</span>
          </div>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>vy₀</span>
            <span className={styles.meterValue}>{truth.vy.toFixed(2)} m/s</span>
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
              <span>Launch speed</span>
              <span className={styles.controlValue}>{params.v0.toFixed(1)} m/s</span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={1}
              max={40}
              step={0.5}
              value={params.v0}
              disabled={snap.running}
              onChange={(e) => kernel.setParams({ v0: Number(e.target.value) })}
              aria-label="Launch speed"
            />
          </div>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>Angle</span>
              <span className={styles.controlValue}>{params.angleDeg.toFixed(0)}°</span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={5}
              max={85}
              step={1}
              value={params.angleDeg}
              disabled={snap.running}
              onChange={(e) =>
                kernel.setParams({ angleDeg: Number(e.target.value) })
              }
              aria-label="Launch angle"
            />
          </div>
          <div className={styles.controlGroup}>
            <div className={styles.controlLabel}>
              <span>Launch height</span>
              <span className={styles.controlValue}>{params.h0.toFixed(1)} m</span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={0}
              max={20}
              step={0.5}
              value={params.h0}
              disabled={snap.running}
              onChange={(e) => kernel.setParams({ h0: Number(e.target.value) })}
              aria-label="Launch height"
            />
          </div>
        </>
      }
    />
  );
}
