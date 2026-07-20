import type { SimManifest } from "@/sims/contracts";

/** Static fields only — `load` is attached in register.ts */
export const collisionsManifestBase = {
  id: "collisions-1d",
  title: "1D collisions",
  shortDescription:
    "Predict final velocities for a head-on collision, then compare elastic (ideal) vs inelastic (dissipative) outcomes.",
  subject: "physics" as const,
  fidelity: "ideal" as const,
  fidelityNote:
    "Ideal = perfectly elastic (e=1). Dissipative = inelastic with restitution e < 1; 1D, no friction.",
  examTags: [
    { board: "AP" as const, course: "Physics 1", units: ["Momentum"] },
    { board: "IB" as const, course: "Physics", units: ["Mechanics"] },
  ],
  misconceptionIds: [
    "phys.collision.heavier_always_stops",
    "phys.collision.velocities_swap_always",
    "phys.collision.momentum_not_conserved_inelastic",
  ],
  renderMode: "canvas2d" as const,
  priority: "P0" as const,
  fidelityModes: ["ideal", "dissipative"] as SimManifest["fidelityModes"],
};

export type CollisionParams = {
  m1: number;
  m2: number;
  u1: number;
  u2: number;
  /** Coefficient of restitution; 1 = elastic, 0 = perfectly inelastic. */
  e: number;
};

export type CollisionOutcome = {
  v1: number;
  v2: number;
  pBefore: number;
  pAfter: number;
  keBefore: number;
  keAfter: number;
  keLoss: number;
};

/**
 * 1D collision with restitution e.
 * Elastic (e=1) and inelastic (0 ≤ e < 1) share the same closed form.
 */
export function collisionAnalytics(p: CollisionParams): CollisionOutcome {
  const { m1, m2, u1, u2, e } = p;
  const mSum = m1 + m2;
  const v1 = ((m1 - e * m2) * u1 + m2 * (1 + e) * u2) / mSum;
  const v2 = (m1 * (1 + e) * u1 + (m2 - e * m1) * u2) / mSum;
  const pBefore = m1 * u1 + m2 * u2;
  const pAfter = m1 * v1 + m2 * v2;
  const keBefore = 0.5 * m1 * u1 * u1 + 0.5 * m2 * u2 * u2;
  const keAfter = 0.5 * m1 * v1 * v1 + 0.5 * m2 * v2 * v2;
  return {
    v1,
    v2,
    pBefore,
    pAfter,
    keBefore,
    keAfter,
    keLoss: keBefore - keAfter,
  };
}

/** Default restitution for dissipative mode. */
export const DISSIPATIVE_E = 0.45;
