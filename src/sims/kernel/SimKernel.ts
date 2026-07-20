import type {
  ExamTag,
  FidelityMode,
  SimSubject,
  SimTelemetry,
} from "@/sims/contracts";

export type KernelSnapshot = {
  params: Record<string, number | string | boolean>;
  prediction: Record<string, number> | null;
  outcome: Record<string, number> | null;
  residual: Record<string, number> | null;
  running: boolean;
  time: number;
  fidelity: FidelityMode;
};

export type SimKernelConfig = {
  simId: string;
  subject: SimSubject;
  fidelity: FidelityMode;
  examTags: ExamTag[];
  initialParams: Record<string, number | string | boolean>;
  /** Fixed integrator dt in seconds (default 1/120). */
  fixedDt?: number;
};

/**
 * Shared SimKernel API — param store, predict→run→compare, telemetry export.
 * Scene code owns the ODE; the kernel owns pedagogy state.
 */
export class SimKernel {
  readonly simId: string;
  readonly subject: SimSubject;
  readonly examTags: ExamTag[];
  readonly fixedDt: number;

  private fidelity: FidelityMode;
  private params: Record<string, number | string | boolean>;
  private prediction: Record<string, number> | null = null;
  private outcome: Record<string, number> | null = null;
  private residual: Record<string, number> | null = null;
  private running = false;
  private time = 0;
  private misconceptionHits: string[] = [];
  private runStartedAt: number | null = null;
  private runDurationMs: number | undefined;
  private listeners = new Set<() => void>();

  constructor(config: SimKernelConfig) {
    this.simId = config.simId;
    this.subject = config.subject;
    this.examTags = config.examTags;
    this.fidelity = config.fidelity;
    this.params = { ...config.initialParams };
    this.fixedDt = config.fixedDt ?? 1 / 120;
  }

  subscribe(listener: () => void): () => void {
    this.listeners.add(listener);
    return () => {
      this.listeners.delete(listener);
    };
  }

  private emit(): void {
    for (const listener of this.listeners) listener();
  }

  getSnapshot(): KernelSnapshot {
    return {
      params: { ...this.params },
      prediction: this.prediction ? { ...this.prediction } : null,
      outcome: this.outcome ? { ...this.outcome } : null,
      residual: this.residual ? { ...this.residual } : null,
      running: this.running,
      time: this.time,
      fidelity: this.fidelity,
    };
  }

  getParams(): Record<string, number | string | boolean> {
    return { ...this.params };
  }

  setParams(partial: Record<string, number | string | boolean>): void {
    this.params = { ...this.params, ...partial };
    this.emit();
  }

  getFidelity(): FidelityMode {
    return this.fidelity;
  }

  setFidelity(mode: FidelityMode): void {
    this.fidelity = mode;
    this.emit();
  }

  getTime(): number {
    return this.time;
  }

  setTime(t: number): void {
    this.time = t;
    this.emit();
  }

  advanceTime(dt: number): void {
    this.time += dt;
  }

  isRunning(): boolean {
    return this.running;
  }

  start(): void {
    this.running = true;
    this.runStartedAt = typeof performance !== "undefined" ? performance.now() : Date.now();
    this.emit();
  }

  pause(): void {
    this.running = false;
    if (this.runStartedAt != null) {
      const now = typeof performance !== "undefined" ? performance.now() : Date.now();
      this.runDurationMs = (this.runDurationMs ?? 0) + (now - this.runStartedAt);
      this.runStartedAt = null;
    }
    this.emit();
  }

  reset(params?: Record<string, number | string | boolean>): void {
    if (params) this.params = { ...params };
    this.running = false;
    this.time = 0;
    this.prediction = null;
    this.outcome = null;
    this.residual = null;
    this.misconceptionHits = [];
    this.runStartedAt = null;
    this.runDurationMs = undefined;
    this.emit();
  }

  setPrediction(values: Record<string, number>): void {
    this.prediction = { ...values };
    this.residual = null;
    this.emit();
  }

  clearPrediction(): void {
    this.prediction = null;
    this.residual = null;
    this.emit();
  }

  recordOutcome(values: Record<string, number>): void {
    this.outcome = { ...values };
    this.residual = computeResidual(this.prediction, this.outcome);
    this.pause();
    this.emit();
  }

  setMisconceptionHits(ids: string[]): void {
    this.misconceptionHits = [...ids];
    this.emit();
  }

  getTelemetry(): SimTelemetry {
    return {
      simId: this.simId,
      subject: this.subject,
      fidelity: this.fidelity,
      params: { ...this.params },
      prediction: this.prediction ? { ...this.prediction } : null,
      outcome: this.outcome ? { ...this.outcome } : null,
      residual: this.residual ? { ...this.residual } : null,
      misconceptionHits: [...this.misconceptionHits],
      runDurationMs: this.runDurationMs,
      examTags: this.examTags,
      capturedAt: Date.now(),
    };
  }
}

export function computeResidual(
  prediction: Record<string, number> | null,
  outcome: Record<string, number> | null,
): Record<string, number> | null {
  if (!prediction || !outcome) return null;
  const residual: Record<string, number> = {};
  for (const key of Object.keys(prediction)) {
    const p = prediction[key];
    const o = outcome[key];
    if (typeof p === "number" && typeof o === "number" && Number.isFinite(p) && Number.isFinite(o)) {
      residual[key] = o - p;
    }
  }
  return Object.keys(residual).length > 0 ? residual : null;
}
