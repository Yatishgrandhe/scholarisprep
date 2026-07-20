/**
 * POST /api/ai/free-study/quiz — generate structured MCQs from extracted
 * PDF/image **text** (client OCR / pdf.js). Text only — never file blobs.
 *
 * Auth + CSRF + rate limit; AI via `resolveAiClient` (same keyPolicy as tutor).
 */
import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { verifyCsrf } from "@/lib/csrf";
import { isExamType } from "@/lib/examTypes";
import type { ExamType } from "@/types/supabase";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import { completeJson, NO_KEY_MESSAGE } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";

export const runtime = "nodejs";
export const maxDuration = 60;

const MAX_TEXT_CHARS = 14000;
const DEFAULT_COUNT = 5;
const MAX_COUNT = 10;

/** Reject blob/file fields explicitly — quiz is text-only. */
const FORBIDDEN_BLOB_KEYS = [
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

const bodySchema = z
  .object({
    text: z.string().min(40).max(60000),
    exam_type: z.string().optional(),
    count: z.number().int().min(1).max(MAX_COUNT).optional(),
  })
  .strict();

export type FreeStudyQuizOption = {
  id: string;
  text: string;
  is_correct: boolean;
};

export type FreeStudyQuizQuestion = {
  question_text: string;
  options: FreeStudyQuizOption[];
  explanation: string;
  correct_answer: string;
};

export type FreeStudyQuizResponse = {
  exam_type: ExamType;
  count: number;
  questions: FreeStudyQuizQuestion[];
};

type ModelQuizPayload = {
  questions?: unknown;
};

function stripTags(input: string): string {
  return input.replace(/<[^>]*>/g, "").trim();
}

function buildPrompt(
  sourceText: string,
  exam: ExamType,
  count: number,
): string {
  return `You are an expert ${exam} item writer. Using ONLY the study text between the triple quotes, write ${count} multiple-choice quiz questions that check understanding of that material.

"""
${sourceText.slice(0, MAX_TEXT_CHARS)}
"""

Return ONLY valid JSON (no prose, no markdown fences):
{
  "questions": [
    {
      "question_text": "string (use $...$ for math when needed)",
      "options": [
        { "id": "A", "text": "string", "is_correct": false },
        { "id": "B", "text": "string", "is_correct": true },
        { "id": "C", "text": "string", "is_correct": false },
        { "id": "D", "text": "string", "is_correct": false }
      ],
      "explanation": "why the correct answer is right, grounded in the source text",
      "correct_answer": "B"
    }
  ]
}

Requirements:
- Exactly ${count} questions.
- Exactly 4 options A–D per question; exactly one is_correct true.
- correct_answer must match the id of the option with is_correct true.
- Ground every question in the provided text; do not invent unrelated topics.
- ${exam}-appropriate wording and difficulty.
- No trick questions; no identical options.`;
}

function normalizeOptions(raw: unknown): FreeStudyQuizOption[] {
  if (!Array.isArray(raw)) return [];
  const labels = ["A", "B", "C", "D"] as const;
  return raw
    .map((o, i) => {
      const item = (o ?? {}) as Record<string, unknown>;
      const id = String(item.id ?? labels[i] ?? "A")
        .trim()
        .toUpperCase()
        .slice(0, 1);
      return {
        id: labels.includes(id as (typeof labels)[number])
          ? id
          : (labels[i] ?? "A"),
        text: String(item.text ?? "").trim(),
        is_correct: Boolean(item.is_correct),
      };
    })
    .filter((o) => o.text.length > 0)
    .slice(0, 4);
}

function normalizeQuestions(
  raw: unknown,
  expectedCount: number,
): FreeStudyQuizQuestion[] {
  if (!Array.isArray(raw)) return [];
  const out: FreeStudyQuizQuestion[] = [];
  for (const item of raw) {
    if (out.length >= expectedCount) break;
    const row = (item ?? {}) as Record<string, unknown>;
    const options = normalizeOptions(row.options);
    if (options.length !== 4) continue;
    const correctCount = options.filter((o) => o.is_correct).length;
    if (correctCount !== 1) continue;
    const correct = options.find((o) => o.is_correct)!;
    const questionText = String(row.question_text ?? "").trim();
    if (!questionText) continue;
    const claimed = String(row.correct_answer ?? correct.id)
      .trim()
      .toUpperCase()
      .slice(0, 1);
    out.push({
      question_text: questionText,
      options,
      explanation: String(row.explanation ?? "").trim() ||
        `The correct answer is ${correct.id}.`,
      correct_answer: claimed === correct.id ? claimed : correct.id,
    });
  }
  return out;
}

function rejectBlobFields(json: unknown): NextResponse | null {
  if (!json || typeof json !== "object" || Array.isArray(json)) return null;
  const keys = Object.keys(json as Record<string, unknown>);
  const hit = keys.find((k) =>
    (FORBIDDEN_BLOB_KEYS as readonly string[]).includes(k),
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
    return await handleQuiz(req);
  } catch (err) {
    console.error("[free-study/quiz] unhandled error:", err);
    return NextResponse.json(
      { error: "Could not generate a quiz. Please try again." },
      { status: 500 },
    );
  }
}

async function handleQuiz(req: NextRequest): Promise<NextResponse> {
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

  // Re-wrap for shared validator (body already consumed).
  const parsed = bodySchema.safeParse(rawJson);
  if (!parsed.success) {
    return NextResponse.json(
      { error: "Validation failed", details: parsed.error.flatten() },
      { status: 400 },
    );
  }

  const count = parsed.data.count ?? DEFAULT_COUNT;
  const exam: ExamType = isExamType(parsed.data.exam_type ?? "")
    ? (parsed.data.exam_type as ExamType)
    : "SAT";
  const text = stripTags(parsed.data.text);
  if (text.replace(/\s/g, "").length < 40) {
    return NextResponse.json(
      { error: "Not enough readable text to build a quiz." },
      { status: 400 },
    );
  }

  let questions: FreeStudyQuizQuestion[] = [];
  try {
    const json = await completeJson<ModelQuizPayload>(
      ai,
      buildPrompt(text, exam, count),
      { maxTokens: 3500, temperature: 0.5 },
    );
    questions = normalizeQuestions(json.questions, count);
  } catch (err) {
    console.warn("[free-study/quiz] generation failed:", err);
    return NextResponse.json(
      { error: "Quiz generation failed. Try again with clearer text." },
      { status: 422 },
    );
  }

  if (questions.length === 0) {
    return NextResponse.json(
      { error: "Model returned no usable questions. Try again." },
      { status: 422 },
    );
  }

  const body: FreeStudyQuizResponse = {
    exam_type: exam,
    count: questions.length,
    questions,
  };
  return NextResponse.json(body);
}
