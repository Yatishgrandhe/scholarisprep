import type { SimManifest } from "@/sims/contracts";

export const forcesFbdManifestBase = {
  id: "forces-fbd",
  title: "Forces & free-body diagram",
  shortDescription:
    "Apply a push to a block, predict net force and acceleration from the FBD, then compare ideal vs frictional models.",
  subject: "physics" as const,
  fidelity: "ideal" as const,
  fidelityNote: "1D horizontal; Ideal = frictionless; Dissipative = kinetic friction μ_k N.",
  examTags: [
    { board: "AP" as const, course: "Physics 1", units: ["Dynamics"] },
    { board: "IB" as const, course: "Physics", units: ["Mechanics"] },
  ],
  misconceptionIds: [
    "phys.forces.motion_requires_net_force",
    "phys.forces.friction_always_opposes_push",
    "phys.forces.heavier_falls_faster_horizontal",
    "phys.forces.normal_equals_weight_always",
  ],
  renderMode: "canvas2d" as const,
  priority: "P0" as const,
  fidelityModes: ["ideal", "dissipative"] as SimManifest["fidelityModes"],
};

export const G_EARTH = 9.81;

export type ForcesFbdParams = {
  mass: number;
  /** Applied horizontal force (N), positive = right. */
  FApplied: number;
  /** Kinetic friction coefficient; 0 in Ideal mode. */
  muK: number;
  g: number;
};

export type ForcesFbdAnalytics = {
  N: number;
  FFriction: number;
  FNet: number;
  a: number;
  /** Time to travel 2 m from rest (or ∞ if a≈0). */
  t2m: number;
};

export function forcesFbdAnalytics(p: ForcesFbdParams): ForcesFbdAnalytics {
  const N = p.mass * p.g;
  const FFriction =
    p.muK > 0 && Math.abs(p.FApplied) > 1e-9
      ? -Math.sign(p.FApplied) * p.muK * N
      : 0;
  // If applied force is below kinetic friction and we start from rest, stay at rest
  // (simple teaching model — no static μ separate from μ_k).
  const FNet =
    p.muK > 0 && Math.abs(p.FApplied) <= p.muK * N + 1e-9
      ? 0
      : p.FApplied + FFriction;
  const a = FNet / p.mass;
  const dist = 2;
  const t2m =
    Math.abs(a) < 1e-9
      ? Number.POSITIVE_INFINITY
      : Math.sqrt((2 * dist) / Math.abs(a));
  return { N, FFriction, FNet, a, t2m };
}
