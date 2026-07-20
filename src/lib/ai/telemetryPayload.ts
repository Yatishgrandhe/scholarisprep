import { sanitizeUserInput } from "@/lib/sanitize";

/** Multimodal input channels for Free Studying → Mistral. */
export type TelemetrySource =
  | "tutor"
  | "whiteboard"
  | "pdf"
  | "voice"
  | "notes"
  | "sims";

/** Study intent after PDF/image extract (PdfIntentChooser chips). */
export type FreeStudyIntent =
  | "ask"
  | "quiz"
  | "summarize"
  | "flashcards";

export type FreeStudyTelemetry = {
  source?: TelemetrySource;
  /**
   * Optional study intent — system framing for summarize / quiz / etc.
   * Source text still lives in pdf_excerpt / ocr_text (never file bytes).
   */
  intent?: FreeStudyIntent;
  /** OCR text from whiteboard ink or photo upload (tesseract) — never image bytes. */
  ocr_text?: string;
  /** Extracted PDF plain text (truncated). */
  pdf_excerpt?: string;
  /** Speech-to-text transcript. */
  transcript?: string;
  /** Optional note body snippet attached to the ask. */
  note_excerpt?: string;
  /** Sim run evidence (params / residual / misconceptionHits) — stub for later. */
  sim?: {
    slug?: string;
    params?: Record<string, string | number | boolean>;
    prediction?: string;
    residual?: string;
    misconceptionHits?: string[];
  };
};

const MAX_FIELD = 4000;

function clip(value: string | undefined, max = MAX_FIELD): string | undefined {
  if (!value?.trim()) return undefined;
  const clean = sanitizeUserInput(value).trim();
  if (!clean) return undefined;
  return clean.length > max ? `${clean.slice(0, max)}…` : clean;
}

/** Normalize + clip client telemetry before prompt injection / persistence. */
export function normalizeTelemetry(
  raw: FreeStudyTelemetry | null | undefined,
): FreeStudyTelemetry | null {
  if (!raw || typeof raw !== "object") return null;
  const source = raw.source;
  const normalized: FreeStudyTelemetry = {};
  if (
    source === "tutor" ||
    source === "whiteboard" ||
    source === "pdf" ||
    source === "voice" ||
    source === "notes" ||
    source === "sims"
  ) {
    normalized.source = source;
  }
  const intent = raw.intent;
  if (
    intent === "ask" ||
    intent === "quiz" ||
    intent === "summarize" ||
    intent === "flashcards"
  ) {
    normalized.intent = intent;
  }
  const ocr = clip(raw.ocr_text);
  if (ocr) normalized.ocr_text = ocr;
  const pdf = clip(raw.pdf_excerpt, 6000);
  if (pdf) normalized.pdf_excerpt = pdf;
  const transcript = clip(raw.transcript);
  if (transcript) normalized.transcript = transcript;
  const note = clip(raw.note_excerpt);
  if (note) normalized.note_excerpt = note;
  if (raw.sim && typeof raw.sim === "object") {
    normalized.sim = {
      slug: raw.sim.slug?.trim() || undefined,
      params: raw.sim.params,
      prediction: clip(raw.sim.prediction, 500),
      residual: clip(raw.sim.residual, 500),
      misconceptionHits: Array.isArray(raw.sim.misconceptionHits)
        ? raw.sim.misconceptionHits
            .filter((x): x is string => typeof x === "string")
            .slice(0, 8)
            .map((x) => sanitizeUserInput(x).slice(0, 80))
        : undefined,
    };
  }
  const hasContent =
    Boolean(normalized.source) ||
    Boolean(normalized.intent) ||
    Boolean(normalized.ocr_text) ||
    Boolean(normalized.pdf_excerpt) ||
    Boolean(normalized.transcript) ||
    Boolean(normalized.note_excerpt) ||
    Boolean(normalized.sim?.slug || normalized.sim?.params);
  return hasContent ? normalized : null;
}

/**
 * Format multimodal telemetry for SESSION CONTEXT.
 * Prefer live instrument values; never invent OCR/STT/sim slider state.
 */
export function formatTelemetryPayload(
  telemetry: FreeStudyTelemetry | null | undefined,
): string {
  const t = normalizeTelemetry(telemetry);
  if (!t) return "";

  const lines: string[] = [
    "MULTIMODAL TELEMETRY (treat as ground truth from the student's device — do not invent missing fields):",
  ];
  if (t.source) lines.push(`Channel: ${t.source}`);
  if (t.intent === "summarize") {
    lines.push(
      "Study intent: SUMMARIZE — Produce a study-ready brief from the attached excerpt/OCR. Structure: main claim → key points → definitions/formulas. Stay faithful to the source; do not invent content; do not quiz unless the student asks.",
    );
  } else if (t.intent) {
    lines.push(`Study intent: ${t.intent}`);
  }
  if (t.ocr_text) {
    lines.push(`OCR text:\n${t.ocr_text}`);
  }
  if (t.pdf_excerpt) {
    lines.push(`PDF excerpt:\n${t.pdf_excerpt}`);
  }
  if (t.transcript) {
    lines.push(`Voice transcript:\n${t.transcript}`);
  }
  if (t.note_excerpt) {
    lines.push(`Note excerpt:\n${t.note_excerpt}`);
  }
  if (t.sim) {
    const simLines = [
      t.sim.slug ? `Sim: ${t.sim.slug}` : null,
      t.sim.params ? `Params: ${JSON.stringify(t.sim.params)}` : null,
      t.sim.prediction ? `Student prediction: ${t.sim.prediction}` : null,
      t.sim.residual ? `Run residual: ${t.sim.residual}` : null,
      t.sim.misconceptionHits?.length
        ? `Misconception hits: ${t.sim.misconceptionHits.join(", ")}`
        : null,
    ].filter(Boolean);
    if (simLines.length) {
      lines.push(`Simulation telemetry:\n${simLines.join("\n")}`);
    }
  }
  return lines.length > 1 ? lines.join("\n") : "";
}

/** True when this turn should use Free Studying sampling (temp 0.2). */
export function isFreeStudyTurn(
  telemetry: FreeStudyTelemetry | null | undefined,
): boolean {
  const t = normalizeTelemetry(telemetry);
  if (!t) return false;
  if (t.source && t.source !== "tutor") return true;
  return Boolean(
    t.ocr_text || t.pdf_excerpt || t.transcript || t.note_excerpt || t.sim,
  );
}
