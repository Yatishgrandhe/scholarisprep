/**
 * Unit-free stroke geometry helpers for BoardCanvas.
 * Pure TypeScript — no DOM/React. Coordinates are abstract (CSS px or world units).
 */

/** Canvas stroke style: round caps + joins for ink-like strokes. */
export const STROKE_LINE_CAP = "round" as const;
export const STROKE_LINE_JOIN = "round" as const;
export const STROKE_MITER_LIMIT = 2;

/** Default pressure when PointerEvent.pressure is 0 / missing (mouse). */
export const DEFAULT_PRESSURE = 0.5;

/** Pressure→width curve: minScale + pressure * rangeScale (clamped). */
export const PRESSURE_WIDTH_MIN_SCALE = 0.55;
export const PRESSURE_WIDTH_RANGE_SCALE = 0.9;
export const MIN_STROKE_WIDTH = 1;

export type Point2 = {
  x: number;
  y: number;
};

export type PressurePoint = Point2 & {
  /** Normalized 0–1; omit or ≤0 treated as DEFAULT_PRESSURE. */
  pressure?: number;
};

export type StrokeStyleConstants = {
  lineCap: typeof STROKE_LINE_CAP;
  lineJoin: typeof STROKE_LINE_JOIN;
  miterLimit: typeof STROKE_MITER_LIMIT;
};

/** Ready-to-spread onto CanvasRenderingContext2D for ink strokes. */
export const ROUND_STROKE_STYLE: StrokeStyleConstants = {
  lineCap: STROKE_LINE_CAP,
  lineJoin: STROKE_LINE_JOIN,
  miterLimit: STROKE_MITER_LIMIT,
};

function distSq(a: Point2, b: Point2): number {
  const dx = a.x - b.x;
  const dy = a.y - b.y;
  return dx * dx + dy * dy;
}

function dist(a: Point2, b: Point2): number {
  return Math.sqrt(distSq(a, b));
}

/** Perpendicular distance from point P to segment AB. */
function perpendicularDistance(p: Point2, a: Point2, b: Point2): number {
  const dx = b.x - a.x;
  const dy = b.y - a.y;
  const lenSq = dx * dx + dy * dy;
  if (lenSq === 0) return dist(p, a);
  const t = ((p.x - a.x) * dx + (p.y - a.y) * dy) / lenSq;
  const projX = a.x + t * dx;
  const projY = a.y + t * dy;
  return Math.hypot(p.x - projX, p.y - projY);
}

/**
 * Map pointer pressure → stroke width.
 * pressure ≤ 0 or missing → DEFAULT_PRESSURE (mouse / trackpad).
 */
export function pressureToWidth(
  baseWidth: number,
  pressure: number = DEFAULT_PRESSURE,
): number {
  const p = pressure > 0 ? Math.min(1, pressure) : DEFAULT_PRESSURE;
  return Math.max(
    MIN_STROKE_WIDTH,
    baseWidth * (PRESSURE_WIDTH_MIN_SCALE + p * PRESSURE_WIDTH_RANGE_SCALE),
  );
}

/**
 * Ramer–Douglas–Peucker path simplification.
 * `epsilon` is in the same units as point coordinates (typically CSS px).
 */
export function simplifyPath<T extends Point2>(
  points: readonly T[],
  epsilon = 0.75,
): T[] {
  if (points.length <= 2) return points.slice();

  const first = points[0]!;
  const last = points[points.length - 1]!;
  let maxDist = 0;
  let index = 0;

  for (let i = 1; i < points.length - 1; i++) {
    const d = perpendicularDistance(points[i]!, first, last);
    if (d > maxDist) {
      maxDist = d;
      index = i;
    }
  }

  if (maxDist > epsilon) {
    const left = simplifyPath(points.slice(0, index + 1), epsilon);
    const right = simplifyPath(points.slice(index), epsilon);
    return left.slice(0, -1).concat(right);
  }

  return [first, last];
}

/**
 * Chaikin corner-cutting smoother.
 * `iterations` 1–3 typical; higher = rounder but denser.
 * Preserves endpoints; interpolates midpoints only.
 */
export function smoothPath<T extends Point2>(
  points: readonly T[],
  iterations = 2,
): Point2[] {
  if (points.length < 3 || iterations < 1) {
    return points.map((p) => ({ x: p.x, y: p.y }));
  }

  let current: Point2[] = points.map((p) => ({ x: p.x, y: p.y }));
  const passes = Math.min(4, Math.max(1, Math.floor(iterations)));

  for (let pass = 0; pass < passes; pass++) {
    if (current.length < 3) break;
    const next: Point2[] = [{ x: current[0]!.x, y: current[0]!.y }];

    for (let i = 0; i < current.length - 1; i++) {
      const a = current[i]!;
      const b = current[i + 1]!;
      next.push({
        x: 0.75 * a.x + 0.25 * b.x,
        y: 0.75 * a.y + 0.25 * b.y,
      });
      next.push({
        x: 0.25 * a.x + 0.75 * b.x,
        y: 0.25 * a.y + 0.75 * b.y,
      });
    }

    const end = current[current.length - 1]!;
    next.push({ x: end.x, y: end.y });
    current = next;
  }

  return current;
}

/**
 * Simplify then smooth — typical pipeline for committed strokes.
 */
export function refineStrokePath<T extends Point2>(
  points: readonly T[],
  options?: {
    simplifyEpsilon?: number;
    smoothIterations?: number;
  },
): Point2[] {
  const simplified = simplifyPath(points, options?.simplifyEpsilon ?? 0.75);
  return smoothPath(simplified, options?.smoothIterations ?? 2);
}

/**
 * Cumulative arc-length parameterization (0 → total length).
 * Useful for variable-width ribbons or dash patterns.
 */
export function pathArcLengths(points: readonly Point2[]): {
  lengths: number[];
  total: number;
} {
  const lengths: number[] = [0];
  let total = 0;
  for (let i = 1; i < points.length; i++) {
    total += dist(points[i - 1]!, points[i]!);
    lengths.push(total);
  }
  return { lengths, total };
}

/**
 * Width samples along a pressure polyline (one width per input point).
 */
export function widthsFromPressure(
  points: readonly PressurePoint[],
  baseWidth: number,
): number[] {
  return points.map((p) => pressureToWidth(baseWidth, p.pressure ?? 0));
}
