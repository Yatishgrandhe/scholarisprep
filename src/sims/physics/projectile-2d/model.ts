import type { SimManifest } from "@/sims/contracts";

/** Static fields only — `load` is attached in register.ts */
export const projectileManifestBase = {
  id: "projectile-2d",
  title: "Projectile motion (2D)",
  shortDescription:
    "Launch a projectile, predict range and flight time, then compare against an ideal no-drag model.",
  subject: "physics" as const,
  fidelity: "ideal" as const,
  fidelityNote: "No air resistance; constant g; flat ground.",
  examTags: [
    { board: "AP" as const, course: "Physics 1", units: ["Kinematics"] },
    { board: "IB" as const, course: "Physics", units: ["Mechanics"] },
    { board: "SAT" as const, course: "Math", units: ["Kinematics"] },
  ],
  misconceptionIds: [
    "phys.projectile.time_depends_on_mass",
    "phys.projectile.range_max_at_90",
    "phys.projectile.horizontal_accel",
  ],
  renderMode: "canvas2d" as const,
  priority: "P0" as const,
  fidelityModes: ["ideal"] as SimManifest["fidelityModes"],
};

export const G_EARTH = 9.81;

export type ProjectileParams = {
  v0: number;
  angleDeg: number;
  h0: number;
  g: number;
};

export function projectileAnalytics(p: ProjectileParams) {
  const theta = (p.angleDeg * Math.PI) / 180;
  const vx = p.v0 * Math.cos(theta);
  const vy = p.v0 * Math.sin(theta);
  // y(t) = h0 + vy t − ½ g t² = 0
  const disc = vy * vy + 2 * p.g * p.h0;
  const tFlight = (vy + Math.sqrt(Math.max(0, disc))) / p.g;
  const range = vx * tFlight;
  const tPeak = Math.max(0, vy / p.g);
  const hMax = p.h0 + vy * tPeak - 0.5 * p.g * tPeak * tPeak;
  return { vx, vy, tFlight, range, hMax, tPeak };
}
