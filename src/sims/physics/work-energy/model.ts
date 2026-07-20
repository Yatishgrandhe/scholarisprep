import type { SimManifest } from "@/sims/contracts";

export const workEnergyManifestBase = {
  id: "work-energy",
  title: "Work–energy theorem",
  shortDescription:
    "Push a block over a fixed distance: predict ΔKE from net work, then compare Ideal (frictionless) vs Dissipative (μ_k) runs.",
  subject: "physics" as const,
  fidelity: "ideal" as const,
  fidelityNote:
    "1D horizontal; Ideal = W_app = ΔKE; Dissipative = W_net = W_app + W_fric = ΔKE (mechanical energy not conserved).",
  examTags: [
    { board: "AP" as const, course: "Physics 1", units: ["Work, Energy, and Power"] },
    { board: "IB" as const, course: "Physics", units: ["Mechanics"] },
  ],
  misconceptionIds: [
    "phys.energy.work_always_increases_ke",
    "phys.energy.friction_does_no_work",
    "phys.energy.ke_depends_only_on_force",
    "phys.energy.mechanical_always_conserved",
  ],
  renderMode: "canvas2d" as const,
  priority: "P0" as const,
  fidelityModes: ["ideal", "dissipative"] as SimManifest["fidelityModes"],
};

export const G_EARTH = 9.81;

export type WorkEnergyParams = {
  mass: number;
  FApplied: number;
  /** Displacement over which work is done (m). */
  distance: number;
  muK: number;
  g: number;
  /** Initial speed (m/s). */
  v0: number;
};

export type WorkEnergyAnalytics = {
  N: number;
  FFriction: number;
  FNet: number;
  WApp: number;
  WFric: number;
  WNet: number;
  ke0: number;
  keF: number;
  deltaKe: number;
  vF: number;
  /** Time to cover `distance` from v0 under constant a (or ∞). */
  tTravel: number;
};

export function workEnergyAnalytics(p: WorkEnergyParams): WorkEnergyAnalytics {
  const N = p.mass * p.g;
  const movingRight = p.v0 > 1e-9 || p.FApplied > 0;
  const FFriction =
    p.muK > 0 && movingRight ? -p.muK * N : p.muK > 0 ? p.muK * N : 0;

  // Stuck at rest if |F| ≤ μ N and v0 ≈ 0
  const stuck =
    p.muK > 0 &&
    Math.abs(p.v0) < 1e-9 &&
    Math.abs(p.FApplied) <= p.muK * N + 1e-9;

  const FNet = stuck ? 0 : p.FApplied + FFriction;
  const a = FNet / p.mass;
  const WApp = p.FApplied * p.distance;
  const WFric = stuck ? 0 : FFriction * p.distance;
  const WNet = WApp + WFric;
  const ke0 = 0.5 * p.mass * p.v0 * p.v0;
  const keFRaw = ke0 + WNet;
  const keF = Math.max(0, keFRaw);
  const deltaKe = keF - ke0;
  const vF = Math.sqrt((2 * keF) / p.mass);

  // x = v0 t + ½ a t² = distance
  let tTravel = Number.POSITIVE_INFINITY;
  if (!stuck) {
    if (Math.abs(a) < 1e-9) {
      if (Math.abs(p.v0) > 1e-9) tTravel = p.distance / p.v0;
    } else {
      const disc = p.v0 * p.v0 + 2 * a * p.distance;
      if (disc >= 0) {
        const t = (-p.v0 + Math.sqrt(disc)) / a;
        if (t > 0) tTravel = t;
      }
    }
  }

  return {
    N,
    FFriction: stuck ? 0 : FFriction,
    FNet,
    WApp,
    WFric,
    WNet,
    ke0,
    keF,
    deltaKe,
    vF,
    tTravel,
  };
}
