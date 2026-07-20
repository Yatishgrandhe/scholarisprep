"use client";

import { useEffect, useRef } from "react";
import { integrateFixed, type OdeFn } from "@/sims/kernel";
import { projectileAnalytics, type ProjectileParams } from "./model";
import styles from "@/sims/shell/SimShell.module.css";

type Props = {
  params: ProjectileParams;
  /** Simulation clock [0, tFlight] while animating; null = idle preview. */
  time: number | null;
  playing: boolean;
  trail: Array<{ x: number; y: number }>;
  onTrailPoint?: (x: number, y: number) => void;
};

function buildOde(g: number): OdeFn {
  // state: [x, y, vx, vy]
  return (_t, y, dydt) => {
    dydt[0] = y[2]!;
    dydt[1] = y[3]!;
    dydt[2] = 0;
    dydt[3] = -g;
  };
}

export function ProjectileScene2D({
  params,
  time,
  playing,
  trail,
  onTrailPoint,
}: Props) {
  const canvasRef = useRef<HTMLCanvasElement>(null);
  const lastSampleRef = useRef(0);

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

    const analytics = projectileAnalytics(params);
    const pad = 48 * dpr;
    const worldW = Math.max(analytics.range * 1.15, 8);
    const worldH = Math.max(analytics.hMax * 1.25, params.h0 + 2, 4);
    const sx = (w - 2 * pad) / worldW;
    const sy = (h - 2 * pad) / worldH;
    const scale = Math.min(sx, sy);

    const toScreen = (x: number, y: number) => ({
      px: pad + x * scale,
      py: h - pad - y * scale,
    });

    // Background
    const grad = ctx.createLinearGradient(0, 0, 0, h);
    grad.addColorStop(0, "#0f172a");
    grad.addColorStop(1, "#1e293b");
    ctx.fillStyle = grad;
    ctx.fillRect(0, 0, w, h);

    // Ground
    const g0 = toScreen(0, 0);
    const g1 = toScreen(worldW, 0);
    ctx.strokeStyle = "rgba(148, 163, 184, 0.55)";
    ctx.lineWidth = 2 * dpr;
    ctx.beginPath();
    ctx.moveTo(pad * 0.4, g0.py);
    ctx.lineTo(w - pad * 0.3, g1.py);
    ctx.stroke();

    // Ideal analytic arc (ghost)
    ctx.strokeStyle = "rgba(37, 99, 235, 0.35)";
    ctx.lineWidth = 1.5 * dpr;
    ctx.setLineDash([6 * dpr, 6 * dpr]);
    ctx.beginPath();
    const steps = 64;
    for (let i = 0; i <= steps; i++) {
      const t = (analytics.tFlight * i) / steps;
      const x = analytics.vx * t;
      const y = params.h0 + analytics.vy * t - 0.5 * params.g * t * t;
      const p = toScreen(x, Math.max(0, y));
      if (i === 0) ctx.moveTo(p.px, p.py);
      else ctx.lineTo(p.px, p.py);
    }
    ctx.stroke();
    ctx.setLineDash([]);

    // Recorded trail
    if (trail.length > 1) {
      ctx.strokeStyle = "rgba(56, 189, 248, 0.85)";
      ctx.lineWidth = 2 * dpr;
      ctx.beginPath();
      trail.forEach((pt, i) => {
        const p = toScreen(pt.x, pt.y);
        if (i === 0) ctx.moveTo(p.px, p.py);
        else ctx.lineTo(p.px, p.py);
      });
      ctx.stroke();
    }

    // Current position via RK4 (or launch rest)
    let x = 0;
    let y = params.h0;
    const t = time ?? 0;
    if (t > 0) {
      const y0 = new Float64Array([0, params.h0, analytics.vx, analytics.vy]);
      const state = integrateFixed(buildOde(params.g), y0, 0, t, 1 / 120);
      x = state[0]!;
      y = Math.max(0, state[1]!);
      if (playing && onTrailPoint && t - lastSampleRef.current > 0.04) {
        lastSampleRef.current = t;
        onTrailPoint(x, y);
      }
    } else {
      lastSampleRef.current = 0;
    }

    // Launcher
    const launch = toScreen(0, params.h0);
    ctx.fillStyle = "#94a3b8";
    ctx.beginPath();
    ctx.arc(launch.px, launch.py, 4 * dpr, 0, Math.PI * 2);
    ctx.fill();

    // Projectile
    const ball = toScreen(x, y);
    ctx.fillStyle = "#38bdf8";
    ctx.shadowColor = "rgba(56, 189, 248, 0.45)";
    ctx.shadowBlur = 12 * dpr;
    ctx.beginPath();
    ctx.arc(ball.px, ball.py, 7 * dpr, 0, Math.PI * 2);
    ctx.fill();
    ctx.shadowBlur = 0;

    // Axes ticks
    ctx.fillStyle = "rgba(226, 232, 240, 0.7)";
    ctx.font = `${11 * dpr}px ui-monospace, Menlo, monospace`;
    ctx.fillText("0", pad - 10 * dpr, g0.py + 16 * dpr);
    ctx.fillText(`${worldW.toFixed(0)} m`, g1.px - 36 * dpr, g0.py + 16 * dpr);
  }, [params, time, playing, trail, onTrailPoint]);

  return (
    <div className={styles.canvas2dHost}>
      <canvas ref={canvasRef} className={styles.canvas2d} aria-label="Projectile trajectory" />
    </div>
  );
}
