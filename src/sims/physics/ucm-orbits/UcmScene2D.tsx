"use client";

import { useEffect, useRef } from "react";
import { integrateFixed, type OdeFn } from "@/sims/kernel";
import { ucmAnalytics, type UcmParams } from "./model";
import styles from "@/sims/shell/SimShell.module.css";

type Props = {
  params: UcmParams;
  /** Simulation clock while animating; null = idle at θ=0. */
  time: number | null;
  trail: Array<{ x: number; y: number }>;
};

/** Polar UCM / circular orbit in Cartesian: state [x, y, vx, vy]. */
function buildOde(params: UcmParams): OdeFn {
  if (params.mode === "orbit") {
    const gm = params.gm;
    return (_t, y, dydt) => {
      const x = y[0]!;
      const yy = y[1]!;
      const r2 = x * x + yy * yy;
      const r = Math.sqrt(Math.max(r2, 1e-12));
      const a = -gm / (r * r * r);
      dydt[0] = y[2]!;
      dydt[1] = y[3]!;
      dydt[2] = a * x;
      dydt[3] = a * yy;
    };
  }
  // Ideal UCM via analytic accel toward center with |a| = ω²r
  const omega = params.omega;
  return (_t, y, dydt) => {
    const x = y[0]!;
    const yy = y[1]!;
    dydt[0] = y[2]!;
    dydt[1] = y[3]!;
    dydt[2] = -omega * omega * x;
    dydt[3] = -omega * omega * yy;
  };
}

function initialState(params: UcmParams): Float64Array {
  const truth = ucmAnalytics(params);
  // Start at (r, 0) with velocity +ŷ
  return new Float64Array([params.radius, 0, 0, truth.speed]);
}

export function UcmScene2D({ params, time, trail }: Props) {
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

    const truth = ucmAnalytics(params);
    const t = time ?? 0;
    let x = params.radius;
    let y = 0;
    if (t > 0) {
      const state = integrateFixed(
        buildOde(params),
        initialState(params),
        0,
        t,
        1 / 120,
      );
      x = state[0]!;
      y = state[1]!;
    }

    const grad = ctx.createLinearGradient(0, 0, 0, h);
    grad.addColorStop(0, "#0f172a");
    grad.addColorStop(1, "#1e293b");
    ctx.fillStyle = grad;
    ctx.fillRect(0, 0, w, h);

    const cx = w / 2;
    const cy = h / 2;
    const pad = 36 * dpr;
    const worldR = params.radius * 1.35;
    const scale = Math.min((w - 2 * pad) / (2 * worldR), (h - 2 * pad) / (2 * worldR));
    const toScreen = (wx: number, wy: number) => ({
      px: cx + wx * scale,
      py: cy - wy * scale,
    });

    // Orbit path (ghost)
    ctx.strokeStyle = "rgba(37, 99, 235, 0.4)";
    ctx.lineWidth = 1.5 * dpr;
    ctx.setLineDash([6 * dpr, 6 * dpr]);
    ctx.beginPath();
    ctx.arc(cx, cy, params.radius * scale, 0, Math.PI * 2);
    ctx.stroke();
    ctx.setLineDash([]);

    // Trail
    if (trail.length > 1) {
      ctx.strokeStyle = "rgba(56, 189, 248, 0.8)";
      ctx.lineWidth = 2 * dpr;
      ctx.beginPath();
      trail.forEach((pt, i) => {
        const p = toScreen(pt.x, pt.y);
        if (i === 0) ctx.moveTo(p.px, p.py);
        else ctx.lineTo(p.px, p.py);
      });
      ctx.stroke();
    }

    // Center body
    const centerR =
      params.mode === "orbit" ? 14 * dpr : 5 * dpr;
    ctx.fillStyle = params.mode === "orbit" ? "#fbbf24" : "#64748b";
    ctx.beginPath();
    ctx.arc(cx, cy, centerR, 0, Math.PI * 2);
    ctx.fill();

    // Radius line
    const sat = toScreen(x, y);
    ctx.strokeStyle = "rgba(148, 163, 184, 0.45)";
    ctx.lineWidth = 1.25 * dpr;
    ctx.beginPath();
    ctx.moveTo(cx, cy);
    ctx.lineTo(sat.px, sat.py);
    ctx.stroke();

    // Centripetal arrow (inward, red)
    const rr = Math.hypot(x, y) || 1;
    ctx.strokeStyle = "rgba(248, 113, 113, 0.85)";
    ctx.lineWidth = 2 * dpr;
    const inwardEnd = {
      px: sat.px + (-x / rr) * 32 * dpr,
      py: sat.py - (-y / rr) * 32 * dpr,
    };
    ctx.beginPath();
    ctx.moveTo(sat.px, sat.py);
    ctx.lineTo(inwardEnd.px, inwardEnd.py);
    ctx.stroke();

    // Satellite
    ctx.fillStyle = "#38bdf8";
    ctx.shadowColor = "rgba(56, 189, 248, 0.45)";
    ctx.shadowBlur = 12 * dpr;
    ctx.beginPath();
    ctx.arc(sat.px, sat.py, 8 * dpr, 0, Math.PI * 2);
    ctx.fill();
    ctx.shadowBlur = 0;

    // Tangential velocity tick
    const tx = -y / rr;
    const ty = x / rr;
    const vLen = 36 * dpr;
    ctx.strokeStyle = "rgba(52, 211, 153, 0.9)";
    ctx.beginPath();
    ctx.moveTo(sat.px, sat.py);
    ctx.lineTo(sat.px + tx * vLen, sat.py - ty * vLen);
    ctx.stroke();

    ctx.fillStyle = "rgba(226, 232, 240, 0.92)";
    ctx.font = `${14 * dpr}px ui-monospace, Menlo, monospace`;
    ctx.shadowColor = "rgba(0,0,0,0.6)";
    ctx.shadowBlur = 3 * dpr;
    ctx.fillText(
      params.mode === "orbit" ? "gravity-orbit" : "UCM",
      24 * dpr,
      28 * dpr,
    );
    ctx.fillText(`T = ${truth.period.toFixed(2)} s`, 24 * dpr, 46 * dpr);
    ctx.fillText(
      `a_c = ${truth.aCentripetal.toFixed(2)} m/s²`,
      24 * dpr,
      64 * dpr,
    );
    ctx.shadowColor = "transparent";
    ctx.shadowBlur = 0;
  }, [params, time, trail]);

  return (
    <div className={styles.canvas2dHost}>
      <canvas
        ref={canvasRef}
        className={styles.canvas2d}
        aria-label="Uniform circular motion and orbits"
      />
    </div>
  );
}
