import type { SimManifest } from "@/sims/contracts";

export const shmManifestBase = {
  id: "shm-spring",
  title: "SHM — mass-spring",
  shortDescription:
    "Predict period and amplitude speed for an ideal spring oscillator, then run and compare.",
  subject: "physics" as const,
  fidelity: "ideal" as const,
  fidelityNote: "Hooke’s law, no damping; small-amplitude ideal SHM.",
  examTags: [
    { board: "AP" as const, course: "Physics 1", units: ["Simple Harmonic Motion"] },
    { board: "IB" as const, course: "Physics", units: ["Oscillations"] },
  ],
  misconceptionIds: [
    "phys.shm.period_depends_on_amplitude",
    "phys.shm.period_independent_of_mass",
    "phys.shm.max_speed_at_amplitude",
  ],
  renderMode: "canvas2d" as const,
  priority: "P0" as const,
  fidelityModes: ["ideal", "dissipative"] as SimManifest["fidelityModes"],
};

export type ShmParams = {
  mass: number;
  k: number;
  amplitude: number;
  /** Linear damping coefficient (N·s/m); 0 = ideal. */
  damping: number;
};

export function shmAnalytics(p: ShmParams) {
  const omega0 = Math.sqrt(p.k / p.mass);
  const gamma = p.damping / (2 * p.mass);
  const underdamped = gamma * gamma < omega0 * omega0;
  const omegaD = underdamped ? Math.sqrt(omega0 * omega0 - gamma * gamma) : 0;
  const period =
    p.damping === 0
      ? (2 * Math.PI) / omega0
      : underdamped
        ? (2 * Math.PI) / omegaD
        : Number.POSITIVE_INFINITY;
  const vMax = omega0 * p.amplitude;
  return { omega0, omegaD, gamma, period, vMax, underdamped };
}
