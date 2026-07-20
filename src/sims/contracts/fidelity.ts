import type { FidelityMode } from "./types";

export type FidelityBadgeSpec = {
  mode: FidelityMode;
  label: string;
  shortLabel: string;
  description: string;
};

const BADGES: Record<FidelityMode, FidelityBadgeSpec> = {
  ideal: {
    mode: "ideal",
    label: "Ideal model",
    shortLabel: "Ideal",
    description:
      "Frictionless / lossless assumptions. Good for first principles; not a real-lab twin.",
  },
  dissipative: {
    mode: "dissipative",
    label: "Dissipative model",
    shortLabel: "Dissipative",
    description:
      "Includes drag, damping, or resistance. Closer to messy reality; still a model.",
  },
  illustrative: {
    mode: "illustrative",
    label: "Illustrative",
    shortLabel: "Illustrative",
    description:
      "Visual teaching aid — not numerically certified. Do not treat as measurement.",
  },
};

export function getFidelityBadge(mode: FidelityMode): FidelityBadgeSpec {
  return BADGES[mode];
}

export function fidelityModes(): FidelityMode[] {
  return ["ideal", "dissipative", "illustrative"];
}
