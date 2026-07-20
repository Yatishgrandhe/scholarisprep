/**
 * Summarize intent for Free Studying PDF / image text → tutor stream.
 * Source text rides in telemetry (`pdf_excerpt` / `ocr_text`); the user
 * message is a short framing ask (never raw PDF/image bytes).
 */
import type { FreeStudyTelemetry } from "@/lib/ai/telemetryPayload";

export type SummarizeChannel = "pdf" | "image";

/** Short chat message — full source lives in telemetry. */
export const SUMMARIZE_USER_MESSAGE =
  "Please summarize the attached source text for studying. Give me: (1) the main claim or thesis, (2) key points in short bullets, (3) definitions or formulas worth remembering. Stay faithful to the source — do not invent details or turn this into a quiz.";

const PDF_CLIP = 6000;
const OCR_CLIP = 4000;

export type SummarizeTutorTurn = {
  message: string;
  telemetry: FreeStudyTelemetry;
};

/**
 * Build tutor-stream payload for the Summarize chip.
 * Text only — callers must already have extracted PDF/OCR text.
 */
export function buildSummarizeTutorTurn(opts: {
  text: string;
  channel: SummarizeChannel;
}): SummarizeTutorTurn {
  const raw = String(opts.text ?? "").trim();
  if (!raw) {
    throw new Error("Nothing to summarize — extract PDF or OCR text first.");
  }

  const max = opts.channel === "pdf" ? PDF_CLIP : OCR_CLIP;
  const clip = raw.length > max ? `${raw.slice(0, max)}…` : raw;

  const telemetry: FreeStudyTelemetry = {
    source: opts.channel === "pdf" ? "pdf" : "tutor",
    intent: "summarize",
  };
  if (opts.channel === "pdf") {
    telemetry.pdf_excerpt = clip;
  } else {
    telemetry.ocr_text = clip;
  }

  return {
    message: SUMMARIZE_USER_MESSAGE,
    telemetry,
  };
}

/** True when this turn should use summarize system framing. */
export function isSummarizeIntent(
  telemetry: FreeStudyTelemetry | null | undefined,
): boolean {
  return telemetry?.intent === "summarize";
}
