/**
 * Frozen W0 contracts for Scholaris STEM Lab.
 * Packs and shell must import from here — do not fork these shapes.
 */

import type { ComponentType } from "react";

export type SimSubject = "physics" | "chemistry" | "biology" | "math";

/** Honest model label shown on every lab. */
export type FidelityMode = "ideal" | "dissipative" | "illustrative";

export type SimPriority = "P0" | "P1" | "P2";

export type SimRenderMode = "canvas2d" | "r3f" | "hybrid";

/** Visual staging tier owned by SimShell (R3F path). */
export type VisualTier = "cinematic" | "standard" | "lite";

export type ExamBoard = "SAT" | "AP" | "IB";

export type ExamTag = {
  board: ExamBoard;
  /** e.g. "Physics 1", "Math", "Chemistry" */
  course?: string;
  units?: string[];
};

/**
 * Catalog entry. Packs register these; the registry never hardcodes pack IDs.
 * `load` is a dynamic import so the catalog page stays light.
 */
export type SimManifest = {
  id: string;
  title: string;
  shortDescription: string;
  subject: SimSubject;
  fidelity: FidelityMode;
  /** One-line honesty note (e.g. "No air resistance"). */
  fidelityNote?: string;
  examTags: ExamTag[];
  misconceptionIds: string[];
  renderMode: SimRenderMode;
  priority: SimPriority;
  /** Optional secondary fidelity modes the lab can toggle. */
  fidelityModes?: FidelityMode[];
  load: () => Promise<{ default: SimLabComponent }>;
};

/** Serializable catalog fields — never include `load` across the RSC boundary. */
export type SimManifestMeta = Omit<SimManifest, "load">;

export type SimLabProps = {
  manifest: SimManifest;
  onTelemetry?: (telemetry: SimTelemetry) => void;
};

export type SimLabComponent = ComponentType<SimLabProps>;

/**
 * Payload for Mistral / Scho — live params only; never invent slider state.
 */
export type SimTelemetry = {
  simId: string;
  subject: SimSubject;
  fidelity: FidelityMode;
  /** Live control values at capture time. */
  params: Record<string, number | string | boolean>;
  /** Student prediction before run (optional keys). */
  prediction: Record<string, number> | null;
  /** Measured / simulated outcome after run. */
  outcome: Record<string, number> | null;
  /** outcome − prediction for shared keys. */
  residual: Record<string, number> | null;
  misconceptionHits: string[];
  /** Wall-clock ms of the run segment, if known. */
  runDurationMs?: number;
  examTags: ExamTag[];
  capturedAt: number;
};

export type PredictCompareMetric = {
  key: string;
  label: string;
  unit?: string;
  /** Digits after decimal for display. */
  precision?: number;
};
