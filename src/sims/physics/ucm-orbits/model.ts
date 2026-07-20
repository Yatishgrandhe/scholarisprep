import type { SimManifest } from "@/sims/contracts";

/** Static fields only — `load` is attached in register.ts */
export const ucmManifestBase = {
  id: "ucm-orbits",
  title: "UCM & circular orbits",
  shortDescription:
    "Predict period and centripetal acceleration for uniform circular motion or a gravity-bound circular orbit, then compare.",
  subject: "physics" as const,
  fidelity: "ideal" as const,
  fidelityNote:
    "Ideal UCM: fixed ω. Gravity-orbit: v = √(GM/r), T = 2π√(r³/GM); central point mass, no drag.",
  examTags: [
    {
      board: "AP" as const,
      course: "Physics 1",
      units: ["Circular Motion & Gravitation"],
    },
    {
      board: "IB" as const,
      course: "Physics",
      units: ["Circular motion", "Gravitational fields"],
    },
  ],
  misconceptionIds: [
    "phys.ucm.centripetal_outward",
    "phys.ucm.period_independent_of_radius",
    "phys.orbit.heavier_satellite_faster",
  ],
  renderMode: "canvas2d" as const,
  priority: "P0" as const,
  fidelityModes: ["ideal"] as SimManifest["fidelityModes"],
};

/** Surface-g reference for meter display in UCM mode. */
export const G_EARTH = 9.81;

/**
 * Pedagogical central GM (m³/s²) so LEO-scale radii give runnable periods.
 * Not Earth-true; honesty note covers the model.
 */
export const GM_DEMO = 80;

export type UcmMode = "ucm" | "orbit";

export type UcmParams = {
  mode: UcmMode;
  radius: number;
  /** Angular speed for UCM mode (rad/s). */
  omega: number;
  /** Central GM for orbit mode (m³/s²). */
  gm: number;
};

export type UcmOutcome = {
  period: number;
  speed: number;
  aCentripetal: number;
  /** GM/r² in orbit mode; g reference in UCM mode. */
  gEff: number;
};

export function ucmAnalytics(p: UcmParams): UcmOutcome {
  if (p.mode === "orbit") {
    const speed = Math.sqrt(p.gm / p.radius);
    const period = 2 * Math.PI * Math.sqrt((p.radius * p.radius * p.radius) / p.gm);
    const aCentripetal = p.gm / (p.radius * p.radius);
    return {
      period,
      speed,
      aCentripetal,
      gEff: aCentripetal,
    };
  }
  const speed = p.omega * p.radius;
  const period = (2 * Math.PI) / p.omega;
  const aCentripetal = p.omega * p.omega * p.radius;
  return {
    period,
    speed,
    aCentripetal,
    gEff: G_EARTH,
  };
}
