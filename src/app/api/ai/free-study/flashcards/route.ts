/**
 * POST /api/ai/free-study/flashcards — flashcards from extracted PDF/image
 * **text** (client OCR / pdf.js). Text only — never file blobs.
 *
 * Auth + CSRF + rate limit; AI via `resolveAiClient` (same keyPolicy as tutor).
 */
import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { verifyCsrf } from "@/lib/csrf";
import type { ExamType } from "@/types/supabase";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import { completeJson, NO_KEY_MESSAGE } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import {
  FLASHCARDS_DEFAULT_COUNT,
  FLASHCARDS_FORBIDDEN_BLOB_KEYS,
  FLASHCARDS_MAX_COUNT,
  FLASHCARDS_MIN_TEXT_CHARS,
  buildFlashcardsPrompt,
  clampFlashcardsCount,
  normalizeFlashcards,
  resolveFlashcardsExamType,
  stripHtmlTags,
  type FreeStudyFlashcardsResponse,
} from "@/lib/free-study/generateFlashcards";

export const runtime = "nodejs";
export const maxDuration = 60;

const bodySchema = z
  .object({
    text: z.string().min(FLASHCARDS_MIN_TEXT_CHARS).max(60_000),
    exam_type: z.string().optional(),
    count: z.number().int().min(1).max(FLASHCARDS_MAX_COUNT).optional(),
  })
  .strict();

type ModelPayload = { cards?: unknown };

function rejectBlobFields(json: unknown): NextResponse | null {
  if (!json || typeof json !== "object" || Array.isArray(json)) return null;
  const keys = Object.keys(json as Record<string, unknown>);
  const hit = keys.find((k) =>
    (FLASHCARDS_FORBIDDEN_BLOB_KEYS as readonly string[]).includes(k),
  );
  if (!hit) return null;
  return NextResponse.json(
    {
      error:
        "This endpoint accepts extracted text only — do not send file blobs. Extract PDF/image text on the client first.",
      code: "TEXT_ONLY",
    },
    { status: 400 },
  );
}

export async function POST(req: NextRequest) {
  try {
    return await handleFlashcards(req);
  } catch (err) {
    console.error("[free-study/flashcards] unhandled error:", err);
    return NextResponse.json(
      { error: "Could not generate flashcards. Please try again." },
      { status: 500 },
    );
  }
}

async function handleFlashcards(req: NextRequest): Promise<NextResponse> {
  const csrfFailure = verifyCsrf(req);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const limited = rateLimit("generate-question", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const ai = await resolveAiClient(req, user);
  if (!ai) {
    return NextResponse.json(
      { error: NO_KEY_MESSAGE, code: "NO_AI_KEY" },
      { status: 400 },
    );
  }

  let rawJson: unknown;
  try {
    rawJson = await req.json();
  } catch {
    return NextResponse.json({ error: "Invalid JSON body" }, { status: 400 });
  }

  const blobReject = rejectBlobFields(rawJson);
  if (blobReject) return blobReject;

  const parsed = bodySchema.safeParse(rawJson);
  if (!parsed.success) {
    return NextResponse.json(
      { error: "Validation failed", details: parsed.error.flatten() },
      { status: 400 },
    );
  }

  const count = clampFlashcardsCount(
    parsed.data.count ?? FLASHCARDS_DEFAULT_COUNT,
  );
  const exam: ExamType = resolveFlashcardsExamType(parsed.data.exam_type);
  const text = stripHtmlTags(parsed.data.text);
  if (text.replace(/\s/g, "").length < FLASHCARDS_MIN_TEXT_CHARS) {
    return NextResponse.json(
      { error: "Not enough readable text to build flashcards." },
      { status: 400 },
    );
  }

  let cards: FreeStudyFlashcardsResponse["cards"] = [];
  try {
    const json = await completeJson<ModelPayload>(
      ai,
      buildFlashcardsPrompt(text, exam, count),
      { maxTokens: 2800, temperature: 0.45 },
    );
    cards = normalizeFlashcards(json, count);
  } catch (err) {
    console.warn("[free-study/flashcards] generation failed:", err);
    return NextResponse.json(
      {
        error: "Flashcard generation failed. Try again with clearer text.",
      },
      { status: 422 },
    );
  }

  if (cards.length === 0) {
    return NextResponse.json(
      { error: "Model returned no usable flashcards. Try again." },
      { status: 422 },
    );
  }

  const body: FreeStudyFlashcardsResponse = {
    exam_type: exam,
    count: cards.length,
    cards,
  };
  return NextResponse.json(body);
}
