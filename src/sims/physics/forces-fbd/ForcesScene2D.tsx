"use client";

import { useEffect, useRef } from "react";
import { integrateFixed, type OdeFn } from "@/sims/kernel";
import {
  forcesFbdAnalytics,
  type ForcesFbdParams,
} from "./model";
import styles from "@/sims/shell/SimShell.module.css";

type Props = {
  params: ForcesFbdParams;
  time: number | null;
  playing: boolean;
};

function buildOde(a: number): OdeFn {
  // state: [x, v]
  return (_t, y, dydt) => {
    dydt[0] = y[1]!;
    dydt[1] = a;
  };
}

function drawArrow(
  ctx: CanvasRenderingContext2D,
  x0: number,
  y0: number,
  x1: number,
  y1: number,
  color: string,
  dpr: number,
  label: string,
) {
  const dx = x1 - x0;
  const dy = y1 - y0;
  const len = Math.hypot(dx, dy);
  if (len < 4 * dpr) return;
  const ux = dx / len;
  const uy = dy / len;
  const head = 10 * dpr;

  ctx.strokeStyle = color;
  ctx.fillStyle = color;
  ctx.lineWidth = 2.5 * dpr;
  ctx.beginPath();
  ctx.moveTo(x0, y0);
  ctx.lineTo(x1, y1);
  ctx.stroke();
  ctx.beginPath();
  ctx.moveTo(x1, y1);
  ctx.lineTo(x1 - head * ux + head * 0.45 * uy, y1 - head * uy - head * 0.45 * ux);
  ctx.lineTo(x1 - head * ux - head * 0.45 * uy, y1 - head * uy + head * 0.45 * ux);
  ctx.closePath();
  ctx.fill();

  ctx.font = `${11 * dpr}px ui-monospace, Menlo, monospace`;
  ctx.fillText(label, x1 + 6 * dpr * Math.sign(ux || 1), y1 - 8 * dpr);
}

export function ForcesScene2D({ params, time, playing: _playing }: Props) {
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

    const analytics = forcesFbdAnalytics(params);
    const t = time ?? 0;
    let x = 0;
    let v = 0;
    if (t > 0 && Math.abs(analytics.a) > 1e-9) {
      const state = integrateFixed(
        buildOde(analytics.a),
        new Float64Array([0, 0]),
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

    const groundY = h * 0.62;
    const worldW = 4.5;
    const pad = 48 * dpr;
    const scale = (w - 2 * pad) / worldW;
    const blockW = 56 * dpr;
    const blockH = 40 * dpr;
    const blockCx = pad + Math.min(Math.max(x, 0), worldW - 0.6) * scale;
    const blockCy = groundY - blockH / 2;

    // Ground
    ctx.strokeStyle = "rgba(148, 163, 184, 0.55)";
    ctx.lineWidth = 2 * dpr;
    ctx.beginPath();
    ctx.moveTo(pad * 0.4, groundY);
    ctx.lineTo(w - pad * 0.3, groundY);
    ctx.stroke();

    // Distance markers
    ctx.fillStyle = "rgba(226, 232, 240, 0.55)";
    ctx.font = `${10 * dpr}px ui-monospace, Menlo, monospace`;
    for (let m = 0; m <= 4; m++) {
      const px = pad + m * scale;
      ctx.beginPath();
      ctx.moveTo(px, groundY);
      ctx.lineTo(px, groundY + 8 * dpr);
      ctx.stroke();
      ctx.fillText(`${m} m`, px - 8 * dpr, groundY + 20 * dpr);
    }

    // Block
    ctx.fillStyle = "#38bdf8";
    ctx.shadowColor = "rgba(56, 189, 248, 0.4)";
    ctx.shadowBlur = 10 * dpr;
    ctx.fillRect(blockCx - blockW / 2, blockCy - blockH / 2, blockW, blockH);
    ctx.shadowBlur = 0;

    // FBD arrows (force scale: px per newton)
    const fScale = 3.2 * dpr;
    const cx = blockCx;
    const cy = blockCy;

    // Applied
    if (Math.abs(params.FApplied) > 0.05) {
      const tip = cx + params.FApplied * fScale;
      drawArrow(ctx, cx, cy, tip, cy, "#fbbf24", dpr, "F_app");
    }

    // Friction
    if (Math.abs(analytics.FFriction) > 0.05) {
      const tip = cx + analytics.FFriction * fScale;
      drawArrow(ctx, cx, cy + 14 * dpr, tip, cy + 14 * dpr, "#f87171", dpr, "f_k");
    }

    // Weight (down)
    drawArrow(
      ctx,
      cx,
      cy,
      cx,
      cy + Math.min(70 * dpr, params.mass * params.g * 0.55 * dpr),
      "#94a3b8",
      dpr,
      "mg",
    );

    // Normal (up)
    drawArrow(
      ctx,
      cx,
      cy,
      cx,
      cy - Math.min(70 * dpr, analytics.N * 0.55 * dpr),
      "#a78bfa",
      dpr,
      "N",
    );

    // Readouts
    ctx.fillStyle = "rgba(226, 232, 240, 0.8)";
    ctx.font = `${11 * dpr}px ui-monospace, Menlo, monospace`;
    ctx.fillText(`x = ${x.toFixed(2)} m`, 28 * dpr, 28 * dpr);
    ctx.fillText(`v = ${v.toFixed(2)} m/s`, 28 * dpr, 46 * dpr);
    ctx.fillText(`a = ${analytics.a.toFixed(2)} m/s²`, 28 * dpr, 64 * dpr);
    ctx.fillText(`F_net = ${analytics.FNet.toFixed(2)} N`, 28 * dpr, 82 * dpr);
  }, [params, time]);

  return (
    <div className={styles.canvas2dHost}>
      <canvas
        ref={canvasRef}
        className={styles.canvas2d}
        aria-label="Free-body diagram of a pushed block"
      />
    </div>
  );
}
