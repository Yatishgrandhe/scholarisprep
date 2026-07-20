/**
 * Shared ODE helpers — fixed-step RK4.
 * Labs must import from here; do not duplicate integrators per scene.
 */

/** dy/dt = f(t, y) writing into `dydt` (same length as y). */
export type OdeFn = (t: number, y: Float64Array, dydt: Float64Array) => void;

function ensureScratch(n: number, pool: Float64Array[], idx: number): Float64Array {
  let buf = pool[idx];
  if (!buf || buf.length !== n) {
    buf = new Float64Array(n);
    pool[idx] = buf;
  }
  return buf;
}

/**
 * One classical RK4 step. Mutates `y` in place unless `out` is provided.
 * Returns the array that holds the new state (`out` or `y`).
 */
export function rk4Step(
  f: OdeFn,
  t: number,
  y: Float64Array,
  dt: number,
  out?: Float64Array,
  scratch?: Float64Array[],
): Float64Array {
  const n = y.length;
  const pool = scratch ?? [];
  const k1 = ensureScratch(n, pool, 0);
  const k2 = ensureScratch(n, pool, 1);
  const k3 = ensureScratch(n, pool, 2);
  const k4 = ensureScratch(n, pool, 3);
  const tmp = ensureScratch(n, pool, 4);
  const result = out ?? y;

  f(t, y, k1);

  for (let i = 0; i < n; i++) tmp[i] = y[i]! + 0.5 * dt * k1[i]!;
  f(t + 0.5 * dt, tmp, k2);

  for (let i = 0; i < n; i++) tmp[i] = y[i]! + 0.5 * dt * k2[i]!;
  f(t + 0.5 * dt, tmp, k3);

  for (let i = 0; i < n; i++) tmp[i] = y[i]! + dt * k3[i]!;
  f(t + dt, tmp, k4);

  for (let i = 0; i < n; i++) {
    result[i] =
      y[i]! + (dt / 6) * (k1[i]! + 2 * k2[i]! + 2 * k3[i]! + k4[i]!);
  }
  return result;
}

export type IntegrateOptions = {
  /** Called after each accepted step with time and state (do not mutate). */
  onStep?: (t: number, y: Float64Array) => void;
  /** Max steps guard (default 1e6). */
  maxSteps?: number;
};

/**
 * Integrate from t0 to tEnd with fixed dt using RK4.
 * Returns a copy of the final state.
 */
export function integrateFixed(
  f: OdeFn,
  y0: Float64Array,
  t0: number,
  tEnd: number,
  dt: number,
  options: IntegrateOptions = {},
): Float64Array {
  if (dt <= 0) throw new Error("integrateFixed: dt must be positive");
  const maxSteps = options.maxSteps ?? 1_000_000;
  const y = new Float64Array(y0);
  const scratch: Float64Array[] = [];
  let t = t0;
  let steps = 0;

  while (t < tEnd - 1e-15) {
    const remaining = tEnd - t;
    const step = remaining < dt ? remaining : dt;
    rk4Step(f, t, y, step, y, scratch);
    t += step;
    steps += 1;
    if (steps > maxSteps) {
      throw new Error("integrateFixed: exceeded maxSteps");
    }
    options.onStep?.(t, y);
  }

  return y;
}

/** Semi-implicit Euler (velocity Verlet-friendly for simple mechanics). */
export function symplecticEulerStep(
  accel: (pos: Float64Array, vel: Float64Array, t: number, aOut: Float64Array) => void,
  pos: Float64Array,
  vel: Float64Array,
  t: number,
  dt: number,
  aScratch?: Float64Array,
): void {
  const a = aScratch && aScratch.length === pos.length
    ? aScratch
    : new Float64Array(pos.length);
  accel(pos, vel, t, a);
  for (let i = 0; i < vel.length; i++) {
    vel[i] = vel[i]! + a[i]! * dt;
    pos[i] = pos[i]! + vel[i]! * dt;
  }
}
