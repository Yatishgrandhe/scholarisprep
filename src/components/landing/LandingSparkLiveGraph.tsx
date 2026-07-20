"use client";

import { useId, useMemo } from "react";
import {
  Area,
  AreaChart,
  CartesianGrid,
  ReferenceLine,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";
import { cn } from "@/lib/utils";
import { buildShmSeries } from "./shmSeries";
import styles from "./LandingSparkLiveGraph.module.css";

type LandingSparkLiveGraphProps = {
  omega?: number;
  /** hero uses --spark-chart-h from stage; try ≈ 160px */
  size?: "hero" | "try";
  className?: string;
  showLegend?: boolean;
};

type TipEntry = {
  dataKey?: string | number;
  value?: number | string;
  color?: string;
  name?: string;
};

function ShmTooltip({
  active,
  payload,
  label,
}: {
  active?: boolean;
  payload?: TipEntry[];
  label?: string | number;
}) {
  if (!active || !payload?.length) return null;
  return (
    <div className={styles.tooltip}>
      <p className={styles.tooltipLabel}>t = {label}</p>
      <ul className={styles.tooltipList}>
        {payload.map((entry) => (
          <li key={String(entry.dataKey)} style={{ color: entry.color }}>
            <span>{entry.name}</span>
            <strong>
              {typeof entry.value === "number"
                ? entry.value.toFixed(2)
                : entry.value}
            </strong>
          </li>
        ))}
      </ul>
    </div>
  );
}

/**
 * Premium Live Graph Spark: dual AreaChart of SHM x(t) vs a(t).
 * Cobalt = displacement, teal = acceleration (opposite phase, ω² scaled).
 * Theme via CSS `:global(.dark)` tokens — no next-themes hook required.
 */
export function LandingSparkLiveGraph({
  omega = 1.4,
  size = "hero",
  className,
  showLegend = true,
}: LandingSparkLiveGraphProps) {
  const gid = useId().replace(/:/g, "");
  const data = useMemo(() => buildShmSeries(omega, 1, 100), [omega]);

  const cobalt = "hsl(var(--spark-x))";
  const teal = "hsl(var(--spark-a))";
  const grid = "hsl(var(--spark-grid))";
  const axis = "hsl(var(--spark-axis))";
  const zero = "hsl(var(--spark-zero))";

  const height =
    size === "hero" ? ("var(--spark-chart-h, 168px)" as const) : 160;
  const tick = size === "hero" ? 10 : 11;
  const aMax = Math.ceil(omega * omega * 1.15 * 10) / 10;
  const domain: [number, number] = [-aMax, aMax];

  return (
    <div
      className={cn(styles.root, size === "try" && styles.rootTry, className)}
    >
      <div className={styles.chart} style={{ height }}>
        <ResponsiveContainer width="100%" height="100%">
          <AreaChart
            data={data}
            margin={{
              top: 8,
              right: size === "hero" ? 6 : 10,
              left: size === "hero" ? -12 : -4,
              bottom: 0,
            }}
          >
            <defs>
              <linearGradient id={`xFill-${gid}`} x1="0" y1="0" x2="0" y2="1">
                <stop offset="0%" stopColor={cobalt} stopOpacity={0.35} />
                <stop offset="50%" stopColor={cobalt} stopOpacity={0.08} />
                <stop offset="100%" stopColor={cobalt} stopOpacity={0.02} />
              </linearGradient>
              <linearGradient id={`aFill-${gid}`} x1="0" y1="0" x2="0" y2="1">
                <stop offset="0%" stopColor={teal} stopOpacity={0.28} />
                <stop offset="50%" stopColor={teal} stopOpacity={0.06} />
                <stop offset="100%" stopColor={teal} stopOpacity={0.02} />
              </linearGradient>
            </defs>
            <CartesianGrid
              strokeDasharray="3 4"
              stroke={grid}
              vertical={false}
            />
            <XAxis
              dataKey="t"
              type="number"
              domain={[0, "dataMax"]}
              tickCount={5}
              tick={{ fontSize: tick, fill: axis }}
              stroke={grid}
              tickLine={false}
              axisLine={{ stroke: grid }}
              label={
                size === "try"
                  ? {
                      value: "t",
                      position: "insideBottomRight",
                      offset: -2,
                      fill: axis,
                      fontSize: 10,
                    }
                  : undefined
              }
            />
            <YAxis
              domain={domain}
              tick={{ fontSize: tick, fill: axis }}
              stroke={grid}
              tickLine={false}
              axisLine={false}
              width={size === "hero" ? 34 : 40}
              tickFormatter={(v: number) =>
                Math.abs(v) >= 10 ? v.toFixed(0) : v.toFixed(1)
              }
            />
            <ReferenceLine
              y={0}
              stroke={zero}
              strokeWidth={1.5}
              strokeOpacity={0.85}
            />
            <Tooltip
              content={<ShmTooltip />}
              cursor={{ stroke: grid, strokeDasharray: "4 4" }}
            />
            <Area
              type="monotone"
              dataKey="x"
              name="x(t)"
              stroke={cobalt}
              strokeWidth={2.25}
              fill={`url(#xFill-${gid})`}
              isAnimationActive={false}
              dot={false}
              activeDot={{ r: 3.5, strokeWidth: 0, fill: cobalt }}
            />
            <Area
              type="monotone"
              dataKey="a"
              name="a(t)"
              stroke={teal}
              strokeWidth={2.25}
              fill={`url(#aFill-${gid})`}
              isAnimationActive={false}
              dot={false}
              activeDot={{ r: 3.5, strokeWidth: 0, fill: teal }}
            />
          </AreaChart>
        </ResponsiveContainer>
      </div>

      {showLegend ? (
        <div className={styles.legend}>
          <span className={styles.legX}>x(t)</span>
          <span className={styles.legA}>a(t)</span>
          <span className={styles.legOmega}>ω = {omega.toFixed(1)}</span>
        </div>
      ) : null}
    </div>
  );
}

export default LandingSparkLiveGraph;
