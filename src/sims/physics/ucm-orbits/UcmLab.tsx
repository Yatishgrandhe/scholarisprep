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
  GM_DEMO,
  ucmAnalytics,
  type UcmMode,
  type UcmParams,
} from "./model";
import { UcmScene2D } from "./UcmScene2D";

const METRICS = [
  { key: "period", label: "Period", unit: "s", precision: 2 },
  { key: "aCentripetal", label: "a centripetal", unit: "m/s²", precision: 2 },
  { key: "speed", label: "Speed", unit: "m/s", precision: 2 },
];

const DEFAULTS: UcmParams = {
  mode: "ucm",
  radius: 2.5,
  omega: 1.5,
  gm: GM_DEMO,
};

export default function UcmLab({ manifest, onTelemetry }: SimLabProps) {
  const kernelRef = useRef<SimKernel | null>(null);
  if (!kernelRef.current) {
    kernelRef.current = new SimKernel({
      simId: manifest.id,
      subject: manifest.subject,
      fidelity: manifest.fidelity,
      examTags: manifest.examTags,
      initialParams: {
        mode: DEFAULTS.mode,
        radius: DEFAULTS.radius,
        omega: DEFAULTS.omega,
        gm: DEFAULTS.gm,
      },
      fixedDt: 1 / 120,
    });
  }
  const kernel = kernelRef.current;
  const snap = useSimKernel(kernel);

  const mode = (String(snap.params.mode) === "orbit" ? "orbit" : "ucm") as UcmMode;
  const params: UcmParams = {
    mode,
    radius: Number(snap.params.radius) || DEFAULTS.radius,
    omega: Number(snap.params.omega) || DEFAULTS.omega,
    gm: Number(snap.params.gm) || DEFAULTS.gm,
  };

  const truth = useMemo(() => ucmAnalytics(params), [params]);
  const [draftPredict, setDraftPredict] = useState<Record<string, number>>({
    period: 0,
    aCentripetal: 0,
    speed: 0,
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

  const setMode = (next: UcmMode) => {
    kernel.setParams({ mode: next });
  };

  const onRun = () => {
    stopAnim();
    setTrail([{ x: params.radius, y: 0 }]);
    kernel.start();
    // Animate one full period (or at least 2 s)
    const tEnd = Math.max(truth.period, 1.5);
    const t0 =
      typeof performance !== "undefined" ? performance.now() : Date.now();

    const tick = (now: number) => {
      const elapsed = (now - t0) / 1000;
      const t = Math.min(elapsed, tEnd);
      setAnimTime(t);
      kernel.setTime(t);

      // Analytic angle for trail (matches circular path)
      const theta = (2 * Math.PI * t) / truth.period;
      const tx = params.radius * Math.cos(theta);
      const ty = params.radius * Math.sin(theta);
      setTrail((prev) => {
        const last = prev[prev.length - 1];
        if (last && Math.hypot(last.x - tx, last.y - ty) < 0.06) return prev;
        return [...prev, { x: tx, y: ty }];
      });

      if (t < tEnd) {
        rafRef.current = requestAnimationFrame(tick);
      } else {
        kernel.recordOutcome({
          period: truth.period,
          aCentripetal: truth.aCentripetal,
          speed: truth.speed,
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
        <div className={styles.predictActions}>
          {(["ucm", "orbit"] as const).map((m) => (
            <button
              key={m}
              type="button"
              className={
                params.mode === m ? styles.btnSecondary : styles.btnGhost
              }
              onClick={() => setMode(m)}
              disabled={snap.running}
            >
              {m === "ucm" ? "UCM" : "gravity-orbit"}
            </button>
          ))}
        </div>
      }
      viewport={
        <UcmScene2D params={params} time={animTime} trail={trail} />
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
            kernel.reset({
              mode: DEFAULTS.mode,
              radius: DEFAULTS.radius,
              omega: DEFAULTS.omega,
              gm: DEFAULTS.gm,
            });
            setAnimTime(null);
            setTrail([]);
            setDraftPredict({ period: 0, aCentripetal: 0, speed: 0 });
          }}
          running={snap.running}
          canRun={params.radius > 0 && (params.mode === "orbit" ? params.gm > 0 : params.omega > 0)}
        />
      }
      meters={
        <>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>v</span>
            <span className={styles.meterValue}>
              {truth.speed.toFixed(2)} m/s
            </span>
          </div>
          <div className={styles.meterRow}>
            <span className={styles.meterLabel}>a_c</span>
            <span className={styles.meterValue}>
              {truth.aCentripetal.toFixed(2)} m/s²
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
              <span>Radius</span>
              <span className={styles.controlValue}>
                {params.radius.toFixed(2)} m
              </span>
            </div>
            <input
              className={styles.slider}
              type="range"
              min={0.8}
              max={5}
              step={0.1}
              value={params.radius}
              disabled={snap.running}
              onChange={(e) =>
                kernel.setParams({ radius: Number(e.target.value) })
              }
              aria-label="Orbit radius"
            />
          </div>
          {params.mode === "ucm" ? (
            <div className={styles.controlGroup}>
              <div className={styles.controlLabel}>
                <span>Angular speed ω</span>
                <span className={styles.controlValue}>
                  {params.omega.toFixed(2)} rad/s
                </span>
              </div>
              <input
                className={styles.slider}
                type="range"
                min={0.4}
                max={4}
                step={0.05}
                value={params.omega}
                disabled={snap.running}
                onChange={(e) =>
                  kernel.setParams({ omega: Number(e.target.value) })
                }
                aria-label="Angular speed"
              />
            </div>
          ) : (
            <div className={styles.controlGroup}>
              <div className={styles.controlLabel}>
                <span>Central GM</span>
                <span className={styles.controlValue}>
                  {params.gm.toFixed(0)} m³/s²
                </span>
              </div>
              <input
                className={styles.slider}
                type="range"
                min={20}
                max={200}
                step={5}
                value={params.gm}
                disabled={snap.running}
                onChange={(e) =>
                  kernel.setParams({ gm: Number(e.target.value) })
                }
                aria-label="Central gravitational parameter"
              />
            </div>
          )}
        </>
      }
    />
  );
}
