"use client";

import { useEffect, useRef } from "react";
import { integrateFixed, type OdeFn } from "@/sims/kernel";
import {
  workEnergyAnalytics,
  type WorkEnergyParams,
} from "./model";
import styles from "@/sims/shell/SimShell.module.css";

type Props = {
  params: WorkEnergyParams;
  time: number | null;
};

function buildOde(a: number): OdeFn {
  return (_t, y, dydt) => {
    dydt[0] = y[1]!;
    dydt[1] = a;
  };
}

export function WorkEnergyScene2D({ params, time }: Props) {
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

    const analytics = workEnergyAnalytics(params);
    const t = time ?? 0;
    const a = analytics.FNet / params.mass;
    let x = 0;
    let v = params.v0;
    if (t > 0 && Number.isFinite(a)) {
      const state = integrateFixed(
        buildOde(a),
        new Float64Array([0, params.v0]),
        0,
        t,
        1 / 120,
      );
      x = Math.min(state[0]!, params.distance);
      v = state[1]!;
    }

    const grad = ctx.createLinearGradient(0, 0, 0, h);
    grad.addColorStop(0, "#0f172a");
    grad.addColorStop(1, "#1e293b");
    ctx.fillStyle = grad;
    ctx.fillRect(0, 0, w, h);

    const pad = 48 * dpr;
    const groundY = h * 0.55;
    const worldW = Math.max(params.distance * 1.2, 3);
    const scale = (w - 2 * pad) / worldW;
    const blockW = 48 * dpr;
    const blockH = 36 * dpr;
    const startX = pad;
    const endX = pad + params.distance * scale;
    const blockCx = startX + x * scale;
    const blockCy = groundY - blockH / 2;

    // Track
    ctx.strokeStyle = "rgba(148, 163, 184, 0.5)";
    ctx.lineWidth = 2 * dpr;
    ctx.beginPath();
    ctx.moveTo(pad * 0.5, groundY);
    ctx.lineTo(w - pad * 0.3, groundY);
    ctx.stroke();

    // Start / finish markers
    ctx.strokeStyle = "rgba(56, 189, 248, 0.55)";
    ctx.setLineDash([4 * dpr, 4 * dpr]);
    ctx.beginPath();
    ctx.moveTo(startX, groundY - 50 * dpr);
    ctx.lineTo(startX, groundY + 10 * dpr);
    ctx.moveTo(endX, groundY - 50 * dpr);
    ctx.lineTo(endX, groundY + 10 * dpr);
    ctx.stroke();
    ctx.setLineDash([]);

    ctx.fillStyle = "rgba(226, 232, 240, 0.65)";
    ctx.font = `${10 * dpr}px ui-monospace, Menlo, monospace`;
    ctx.fillText("0", startX - 4 * dpr, groundY + 22 * dpr);
    ctx.fillText(
      `${params.distance.toFixed(1)} m`,
      endX - 18 * dpr,
      groundY + 22 * dpr,
    );

    // Work region tint
    ctx.fillStyle = "rgba(37, 99, 235, 0.12)";
    ctx.fillRect(startX, groundY - 48 * dpr, endX - startX, 48 * dpr);

    // Block
    ctx.fillStyle = "#38bdf8";
    ctx.shadowColor = "rgba(56, 189, 248, 0.4)";
    ctx.shadowBlur = 10 * dpr;
    ctx.fillRect(blockCx - blockW / 2, blockCy - blockH / 2, blockW, blockH);
    ctx.shadowBlur = 0;

    // Energy bars (bottom)
    const barTop = h * 0.68;
    const barH = 18 * dpr;
    const barLeft = pad;
    const barMaxW = w - 2 * pad;
    const keMax = Math.max(analytics.ke0, analytics.keF, Math.abs(analytics.WApp), 1);
    const keNow = 0.5 * params.mass * v * v;

    const drawBar = (
      y: number,
      value: number,
      color: string,
      label: string,
    ) => {
      const width = Math.min(barMaxW, (Math.abs(value) / keMax) * barMaxW);
      ctx.fillStyle = "rgba(15, 23, 42, 0.5)";
      ctx.fillRect(barLeft, y, barMaxW, barH);
      ctx.fillStyle = color;
      ctx.fillRect(barLeft, y, width, barH);
      ctx.fillStyle = "rgba(226, 232, 240, 0.8)";
      ctx.font = `${10 * dpr}px ui-monospace, Menlo, monospace`;
      ctx.fillText(
        `${label} ${value.toFixed(2)} J`,
        barLeft + 6 * dpr,
        y + barH - 5 * dpr,
      );
    };

    drawBar(barTop, keNow, "#38bdf8", "KE");
    drawBar(barTop + 28 * dpr, analytics.WApp, "#fbbf24", "W_app");
    drawBar(barTop + 56 * dpr, analytics.WFric, "#f87171", "W_fric");
    drawBar(barTop + 84 * dpr, analytics.WNet, "#a78bfa", "W_net");

    ctx.fillStyle = "rgba(226, 232, 240, 0.8)";
    ctx.font = `${11 * dpr}px ui-monospace, Menlo, monospace`;
    ctx.fillText(`x = ${x.toFixed(2)} m`, 28 * dpr, 28 * dpr);
    ctx.fillText(`v = ${v.toFixed(2)} m/s`, 28 * dpr, 46 * dpr);
    ctx.fillText(
      `ΔKE (theory) = ${analytics.deltaKe.toFixed(2)} J`,
      28 * dpr,
      64 * dpr,
    );
  }, [params, time]);

  return (
    <div className={styles.canvas2dHost}>
      <canvas
        ref={canvasRef}
        className={styles.canvas2d}
        aria-label="Work and kinetic energy visualization"
      />
    </div>
  );
}
