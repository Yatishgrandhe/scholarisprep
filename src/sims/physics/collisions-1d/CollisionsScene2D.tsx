"use client";

import { useEffect, useRef } from "react";
import { collisionAnalytics, type CollisionParams } from "./model";
import styles from "@/sims/shell/SimShell.module.css";

type Props = {
  params: CollisionParams;
  /** Animation progress 0→1 through approach + impact + separation. */
  progress: number | null;
  playing: boolean;
};

/**
 * Visual timeline: approach (0–0.45), impact flash (0.45–0.55), separation (0.55–1).
 */
function positionsAt(
  params: CollisionParams,
  progress: number,
): { x1: number; x2: number; impacted: boolean } {
  const truth = collisionAnalytics(params);
  const gap = 0.55;
  const x1Start = -1.4;
  const x2Start = 1.4;
  const approachEnd = 0.45;
  const sepStart = 0.55;

  if (progress <= approachEnd) {
    const a = progress / approachEnd;
    const x1 = x1Start + a * (0 - gap / 2 - x1Start);
    const x2 = x2Start + a * (0 + gap / 2 - x2Start);
    return { x1, x2, impacted: false };
  }

  if (progress < sepStart) {
    return { x1: -gap / 2, x2: gap / 2, impacted: true };
  }

  const a = (progress - sepStart) / (1 - sepStart);
  // Post-collision travel scaled by |v| so faster pieces move farther
  const scale = 1.6;
  const x1 = -gap / 2 + truth.v1 * scale * a;
  const x2 = gap / 2 + truth.v2 * scale * a;
  return { x1, x2, impacted: false };
}

export function CollisionsScene2D({ params, progress, playing }: Props) {
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

    const truth = collisionAnalytics(params);
    const p = progress ?? 0;
    const { x1, x2, impacted } = positionsAt(params, p);

    const grad = ctx.createLinearGradient(0, 0, 0, h);
    grad.addColorStop(0, "#0f172a");
    grad.addColorStop(1, "#1e293b");
    ctx.fillStyle = grad;
    ctx.fillRect(0, 0, w, h);

    const midY = h * 0.52;
    const worldHalf = 3.2;
    const pad = 40 * dpr;
    const scale = (w - 2 * pad) / (2 * worldHalf);
    const toScreen = (x: number) => pad + (x + worldHalf) * scale;

    // Track
    ctx.strokeStyle = "rgba(148, 163, 184, 0.5)";
    ctx.lineWidth = 2 * dpr;
    ctx.beginPath();
    ctx.moveTo(pad * 0.5, midY + 28 * dpr);
    ctx.lineTo(w - pad * 0.5, midY + 28 * dpr);
    ctx.stroke();

    // Center mark
    ctx.strokeStyle = "rgba(148, 163, 184, 0.3)";
    ctx.setLineDash([4 * dpr, 4 * dpr]);
    ctx.beginPath();
    ctx.moveTo(toScreen(0), midY - 60 * dpr);
    ctx.lineTo(toScreen(0), midY + 40 * dpr);
    ctx.stroke();
    ctx.setLineDash([]);

    const r1 = (10 + Math.sqrt(params.m1) * 8) * dpr;
    const r2 = (10 + Math.sqrt(params.m2) * 8) * dpr;

    // Velocity arrows (pre if idle/approach, post if separating)
    const showPost = p >= 0.55;
    const drawArrow = (
      x: number,
      v: number,
      color: string,
      yOff: number,
    ) => {
      if (Math.abs(v) < 1e-3) return;
      const sx = toScreen(x);
      const len = Math.min(70 * dpr, Math.abs(v) * 12 * dpr);
      const dir = v >= 0 ? 1 : -1;
      ctx.strokeStyle = color;
      ctx.fillStyle = color;
      ctx.lineWidth = 2 * dpr;
      ctx.beginPath();
      ctx.moveTo(sx, midY + yOff);
      ctx.lineTo(sx + dir * len, midY + yOff);
      ctx.stroke();
      ctx.beginPath();
      ctx.moveTo(sx + dir * len, midY + yOff);
      ctx.lineTo(sx + dir * len - dir * 8 * dpr, midY + yOff - 5 * dpr);
      ctx.lineTo(sx + dir * len - dir * 8 * dpr, midY + yOff + 5 * dpr);
      ctx.closePath();
      ctx.fill();
    };

    if (!playing || p < 0.45) {
      drawArrow(x1, params.u1, "rgba(56, 189, 248, 0.7)", -r1 - 18 * dpr);
      drawArrow(x2, params.u2, "rgba(251, 146, 60, 0.7)", -r2 - 18 * dpr);
    } else if (showPost) {
      drawArrow(x1, truth.v1, "rgba(56, 189, 248, 0.85)", -r1 - 18 * dpr);
      drawArrow(x2, truth.v2, "rgba(251, 146, 60, 0.85)", -r2 - 18 * dpr);
    }

    // Impact flash
    if (impacted) {
      ctx.fillStyle = "rgba(250, 204, 21, 0.35)";
      ctx.beginPath();
      ctx.arc(toScreen(0), midY, 22 * dpr, 0, Math.PI * 2);
      ctx.fill();
    }

    // Mass 1
    const sx1 = toScreen(x1);
    ctx.fillStyle = "#38bdf8";
    ctx.shadowColor = "rgba(56, 189, 248, 0.45)";
    ctx.shadowBlur = 12 * dpr;
    ctx.beginPath();
    ctx.arc(sx1, midY, r1, 0, Math.PI * 2);
    ctx.fill();
    ctx.shadowBlur = 0;

    // Mass 2
    const sx2 = toScreen(x2);
    ctx.fillStyle = "#fb923c";
    ctx.shadowColor = "rgba(251, 146, 60, 0.4)";
    ctx.shadowBlur = 12 * dpr;
    ctx.beginPath();
    ctx.arc(sx2, midY, r2, 0, Math.PI * 2);
    ctx.fill();
    ctx.shadowBlur = 0;

    // Labels
    ctx.fillStyle = "rgba(226, 232, 240, 0.92)";
    ctx.font = `${14 * dpr}px ui-monospace, Menlo, monospace`;
    ctx.shadowColor = "rgba(0,0,0,0.6)";
    ctx.shadowBlur = 3 * dpr;
    ctx.textAlign = "center";
    ctx.fillText(`m₁ ${params.m1.toFixed(1)} kg`, sx1, midY + r1 + 18 * dpr);
    ctx.fillText(`m₂ ${params.m2.toFixed(1)} kg`, sx2, midY + r2 + 18 * dpr);

    ctx.textAlign = "left";
    ctx.fillText(
      `e = ${params.e.toFixed(2)}  ·  ΔKE = ${truth.keLoss.toFixed(2)} J`,
      24 * dpr,
      28 * dpr,
    );
    ctx.fillText(
      `p: ${truth.pBefore.toFixed(2)} → ${truth.pAfter.toFixed(2)} kg·m/s`,
      24 * dpr,
      46 * dpr,
    );
    ctx.shadowColor = "transparent";
    ctx.shadowBlur = 0;
  }, [params, progress, playing]);

  return (
    <div className={styles.canvas2dHost}>
      <canvas
        ref={canvasRef}
        className={styles.canvas2d}
        aria-label="One-dimensional collision"
      />
    </div>
  );
}
