/**
 * Free Studying — flashcards from extracted PDF/image **text** (never blobs).
 *
 * Client helper calls `/api/ai/free-study/flashcards` via `aiRequest`.
 * Prompt + normalize are shared with the API route (no Mistral import here —
 * keeps this module client-safe).
 */

import { aiRequest } from "@/lib/ai/clientKey";
import { isExamType } from "@/lib/examTypes";
import type { ExamType } from "@/types/supabase";

export const FLASHCARDS_MAX_TEXT_CHARS = 14_000;
export const FLASHCARDS_DEFAULT_COUNT = 8;
export const FLASHCARDS_MAX_COUNT = 16;
export const FLASHCARDS_MIN_TEXT_CHARS = 40;

export const FLASHCARDS_FORBIDDEN_BLOB_KEYS = [
  "file",
  "files",
  "blob",
  "blobs",
  "image",
  "images",
  "pdf",
  "attachment",
  "attachments",
  "dataUrl",
  "data_url",
  "base64",
] as const;

export type FreeStudyFlashcard = {
  front: string;
  back: string;
  /** Optional short cue (e.g. topic tag). */
  hint?: string;
};

export type FreeStudyFlashcardsResponse = {
  exam_type: ExamType;
  count: number;
  cards: FreeStudyFlashcard[];
};

export type GenerateFlashcardsInput = {
  text: string;
  exam_type?: string;
  count?: number;
};

export type GenerateFlashcardsResult =
  | { ok: true; data: FreeStudyFlashcardsResponse }
  | { ok: false; error: string; code?: string; status: number };

export function stripHtmlTags(input: string): string {
  return input.replace(/<[^>]*>/g, "").trim();
}

export function resolveFlashcardsExamType(raw?: string): ExamType {
  return isExamType(raw ?? "") ? (raw as ExamType) : "SAT";
}

export function clampFlashcardsCount(count?: number): number {
  if (typeof count !== "number" || !Number.isFinite(count)) {
    return FLASHCARDS_DEFAULT_COUNT;
  }
  return Math.min(
    FLASHCARDS_MAX_COUNT,
    Math.max(1, Math.round(count)),
  );
}

/** Text-only Mistral prompt — source truncated for token budget. */
export function buildFlashcardsPrompt(
  sourceText: string,
  exam: ExamType,
  count: number,
): string {
  return `You are an expert ${exam} study coach. Using ONLY the study text between the triple quotes, create ${count} flashcards for active recall.

"""
${sourceText.slice(0, FLASHCARDS_MAX_TEXT_CHARS)}
"""

Return ONLY valid JSON (no prose, no markdown fences):
{
  "cards": [
    {
      "front": "prompt / term / question (concise)",
      "back": "answer / definition / explanation (1–3 short sentences)",
      "hint": "optional short topic tag"
    }
  ]
}

Requirements:
- Exactly ${count} cards (or fewer only if the source truly lacks enough distinct facts).
- Front = cue the student sees first; back = what they should recall.
- Prefer terms, formulas, definitions, cause→effect, and must-know facts from the text.
- Ground every card in the provided text; do not invent unrelated topics.
- ${exam}-appropriate wording. No HTML. No identical fronts.`;
}

type ModelFlashcardsPayload = {
  cards?: unknown;
};

export function normalizeFlashcards(
  raw: unknown,
  expectedCount: number,
): FreeStudyFlashcard[] {
  const payload = (raw ?? {}) as ModelFlashcardsPayload;
  if (!Array.isArray(payload.cards)) return [];

  const out: FreeStudyFlashcard[] = [];
  const seenFronts = new Set<string>();

  for (const item of payload.cards) {
    if (out.length >= expectedCount) break;
    const row = (item ?? {}) as Record<string, unknown>;
    const front = String(row.front ?? "").trim();
    const back = String(row.back ?? "").trim();
    if (!front || !back) continue;
    const key = front.toLowerCase();
    if (seenFronts.has(key)) continue;
    seenFronts.add(key);
    const hintRaw = String(row.hint ?? "").trim();
    out.push({
      front,
      back,
      ...(hintRaw ? { hint: hintRaw.slice(0, 80) } : {}),
    });
  }
  return out;
}

/**
 * Client: generate flashcards from extracted text via the Free Studying API.
 * Never send file blobs — pass OCR / pdf.js text only.
 */
export async function generateFlashcardsFromText(
  input: GenerateFlashcardsInput,
): Promise<GenerateFlashcardsResult> {
  const text = stripHtmlTags(input.text);
  if (text.replace(/\s/g, "").length < FLASHCARDS_MIN_TEXT_CHARS) {
    return {
      ok: false,
      error: "Not enough readable text to build flashcards.",
      code: "TEXT_TOO_SHORT",
      status: 400,
    };
  }

  const body: GenerateFlashcardsInput = {
    text,
    exam_type: input.exam_type,
    count: clampFlashcardsCount(input.count),
  };

  let res: Response;
  try {
    res = await aiRequest("/api/ai/free-study/flashcards", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
    });
  } catch {
    return {
      ok: false,
      error: "Network error — could not reach flashcards API.",
      status: 0,
    };
  }

  let json: unknown = null;
  try {
    json = await res.json();
  } catch {
    json = null;
  }

  const errObj = (json ?? {}) as {
    error?: unknown;
    code?: unknown;
    cards?: unknown;
    exam_type?: unknown;
    count?: unknown;
  };

  if (!res.ok) {
    return {
      ok: false,
      error:
        typeof errObj.error === "string" && errObj.error.trim()
          ? errObj.error.trim()
          : "Could not generate flashcards.",
      code: typeof errObj.code === "string" ? errObj.code : undefined,
      status: res.status,
    };
  }

  const exam = resolveFlashcardsExamType(
    typeof errObj.exam_type === "string" ? errObj.exam_type : input.exam_type,
  );
  const cards = normalizeFlashcards(
    { cards: errObj.cards },
    clampFlashcardsCount(
      typeof errObj.count === "number" ? errObj.count : body.count,
    ),
  );

  if (cards.length === 0) {
    return {
      ok: false,
      error: "No usable flashcards returned. Try again with clearer text.",
      code: "EMPTY_CARDS",
      status: 422,
    };
  }

  return {
    ok: true,
    data: {
      exam_type: exam,
      count: cards.length,
      cards,
    },
  };
}
