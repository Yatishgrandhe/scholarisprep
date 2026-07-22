"use client";

import { useEffect, useRef } from "react";
import { integrateFixed, type OdeFn } from "@/sims/kernel";
import { shmAnalytics, type ShmParams } from "./model";
import styles from "@/sims/shell/SimShell.module.css";

type Props = {
  params: ShmParams;
  time: number | null;
  history: Array<{ t: number; x: number }>;
};

function buildOde(mass: number, k: number, damping: number): OdeFn {
  // state: [x, v]
  return (_t, y, dydt) => {
    dydt[0] = y[1]!;
    dydt[1] = (-k * y[0]! - damping * y[1]!) / mass;
  };
}

export function ShmScene2D({ params, time, history }: Props) {
  const canvasRef = useRef<HTMLCanvasElement>(null);

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;
    const ctx = canvas.getContext("2d");
    if (!ctx) return;

    const dpr = Math.min(window.devicePixelRatio || 1, 2);
    const rect = canvas.getBoundingClientRect();
    const w = Math.max(1, Math.floor(rect.width * dpr));
    const h = Math.max(1, Math.floor(rect.height * dpr));
    if (canvas.width !== w || canvas.height !== h) {
      canvas.width = w;
      canvas.height = h;
    }

    const analytics = shmAnalytics(params);
    const t = time ?? 0;
    let x = params.amplitude;
    let v = 0;
    if (t > 0) {
      const y0 = new Float64Array([params.amplitude, 0]);
      const state = integrateFixed(
        buildOde(params.mass, params.k, params.damping),
        y0,
        0,
        t,
        1 / 120,
      );
      x = state[0]!;
      v = state[1]!;
    }

    const grad = ctx.createLinearGradient(0, 0, 0, h);
    grad.addColorStop(0, "#0f172a");
    grad.addColorStop(1, "#1e293b");
    ctx.fillStyle = grad;
    ctx.fillRect(0, 0, w, h);

    const midY = h * 0.38;
    const graphTop = h * 0.55;
    const graphBot = h - 28 * dpr;
    const ampPx = Math.min(w * 0.32, 140 * dpr);
    const wallX = 36 * dpr;
    const eqX = wallX + ampPx + 40 * dpr;
    const massX = eqX + (x / Math.max(params.amplitude, 1e-6)) * ampPx;

    // Wall
    ctx.fillStyle = "#64748b";
    ctx.fillRect(wallX - 10 * dpr, midY - 36 * dpr, 10 * dpr, 72 * dpr);

    // Spring coils
    const coils = 12;
    ctx.strokeStyle = "#94a3b8";
    ctx.lineWidth = 2 * dpr;
    ctx.beginPath();
    ctx.moveTo(wallX, midY);
    for (let i = 1; i <= coils; i++) {
      const px = wallX + ((massX - 18 * dpr - wallX) * i) / coils;
      const py = midY + (i % 2 === 0 ? -14 : 14) * dpr;
      ctx.lineTo(px, py);
    }
    ctx.lineTo(massX - 16 * dpr, midY);
    ctx.stroke();

    // Mass
    ctx.fillStyle = "#38bdf8";
    ctx.shadowColor = "rgba(56, 189, 248, 0.4)";
    ctx.shadowBlur = 10 * dpr;
    const mw = 32 * dpr;
    const mh = 28 * dpr;
    ctx.fillRect(massX - mw / 2, midY - mh / 2, mw, mh);
    ctx.shadowBlur = 0;

    // Equilibrium line
    ctx.strokeStyle = "rgba(148, 163, 184, 0.35)";
    ctx.setLineDash([4 * dpr, 4 * dpr]);
    ctx.beginPath();
    ctx.moveTo(eqX, midY - 50 * dpr);
    ctx.lineTo(eqX, midY + 50 * dpr);
    ctx.stroke();
    ctx.setLineDash([]);

    // x(t) graph
    ctx.fillStyle = "rgba(15, 23, 42, 0.55)";
    ctx.fillRect(24 * dpr, graphTop, w - 48 * dpr, graphBot - graphTop);
    ctx.strokeStyle = "rgba(148, 163, 184, 0.4)";
    ctx.strokeRect(24 * dpr, graphTop, w - 48 * dpr, graphBot - graphTop);

    const gLeft = 24 * dpr;
    const gRight = w - 24 * dpr;
    const gMid = (graphTop + graphBot) / 2;
    const tWindow = Math.max(analytics.period * 2, 2);
    const xScale = (gRight - gLeft) / tWindow;
    const yScale = ((graphBot - graphTop) * 0.4) / Math.max(params.amplitude, 1e-6);

    ctx.strokeStyle = "rgba(148, 163, 184, 0.35)";
    ctx.beginPath();
    ctx.moveTo(gLeft, gMid);
    ctx.lineTo(gRight, gMid);
    ctx.stroke();

    const series =
      history.length > 1
        ? history
        : Array.from({ length: 80 }, (_, i) => {
            const tt = (tWindow * i) / 79;
            const y0 = new Float64Array([params.amplitude, 0]);
            const st = integrateFixed(
              buildOde(params.mass, params.k, params.damping),
              y0,
              0,
              tt,
              1 / 60,
            );
            return { t: tt, x: st[0]! };
          });

    ctx.strokeStyle = "#60a5fa";
    ctx.lineWidth = 1.75 * dpr;
    ctx.beginPath();
    series.forEach((pt, i) => {
      const px = gLeft + pt.t * xScale;
      const py = gMid - pt.x * yScale;
      if (i === 0) ctx.moveTo(px, py);
      else ctx.lineTo(px, py);
    });
    ctx.stroke();

    ctx.fillStyle = "rgba(226, 232, 240, 0.92)";
    ctx.font = `${14 * dpr}px ui-monospace, Menlo, monospace`;
    ctx.shadowColor = "rgba(0,0,0,0.6)";
    ctx.shadowBlur = 3 * dpr;
    ctx.fillText(`x = ${x.toFixed(3)} m`, 28 * dpr, 28 * dpr);
    ctx.fillText(`v = ${v.toFixed(3)} m/s`, 28 * dpr, 46 * dpr);
    ctx.fillText("x(t)", 28 * dpr, graphTop + 16 * dpr);
    ctx.shadowColor = "transparent";
    ctx.shadowBlur = 0;
  }, [params, time, history]);

  return (
    <div className={styles.canvas2dHost}>
      <canvas
        ref={canvasRef}
        className={styles.canvas2d}
        aria-label="Mass-spring oscillator"
      />
    </div>
  );
}
