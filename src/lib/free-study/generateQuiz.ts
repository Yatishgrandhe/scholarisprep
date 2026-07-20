/**
 * Client helper: generate MCQs from extracted PDF/image **text** via
 * `POST /api/ai/free-study/quiz`. Text only — never pass File/Blob.
 *
 * Extract with free-study OCR / pdf.js on the client, then call this.
 */
import { aiRequest } from "@/lib/ai/clientKey";
import type { ExamType } from "@/types/supabase";

export type GenerateQuizOption = {
  id: string;
  text: string;
  is_correct: boolean;
};

export type GenerateQuizQuestion = {
  question_text: string;
  options: GenerateQuizOption[];
  explanation: string;
  correct_answer: string;
};

export type GenerateQuizResult = {
  exam_type: ExamType;
  count: number;
  questions: GenerateQuizQuestion[];
};

export type GenerateQuizInput = {
  /** Extracted plain text from a PDF or image (OCR). Never a File/Blob. */
  text: string;
  exam_type?: ExamType | string;
  /** Number of MCQs (1–10). Defaults server-side to 5. */
  count?: number;
};

export class GenerateQuizError extends Error {
  readonly status: number;
  readonly code?: string;

  constructor(message: string, status: number, code?: string) {
    super(message);
    this.name = "GenerateQuizError";
    this.status = status;
    this.code = code;
  }
}

/**
 * Call the free-study quiz API with already-extracted text.
 * Throws `GenerateQuizError` on non-OK responses.
 */
export async function generateQuiz(
  input: GenerateQuizInput,
): Promise<GenerateQuizResult> {
  // Text only — refuse non-strings (File/Blob must be extracted client-side first).
  if (typeof input.text !== "string") {
    throw new GenerateQuizError(
      "Pass extracted text only — never a File/Blob. Run OCR / pdf extract first.",
      400,
      "TEXT_ONLY",
    );
  }

  const text = input.text.trim();
  if (text.replace(/\s/g, "").length < 40) {
    throw new GenerateQuizError(
      "Not enough readable text to build a quiz.",
      400,
    );
  }

  const body: Record<string, unknown> = { text };
  if (input.exam_type) body.exam_type = input.exam_type;
  if (input.count != null) body.count = input.count;

  const res = await aiRequest("/api/ai/free-study/quiz", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(body),
  });

  const data = (await res.json().catch(() => ({}))) as {
    error?: string;
    code?: string;
    exam_type?: ExamType;
    count?: number;
    questions?: GenerateQuizQuestion[];
  };

  if (!res.ok) {
    throw new GenerateQuizError(
      data.error ?? "Quiz generation failed.",
      res.status,
      data.code,
    );
  }

  if (!Array.isArray(data.questions) || data.questions.length === 0) {
    throw new GenerateQuizError("No questions returned.", 422);
  }

  return {
    exam_type: (data.exam_type ?? "SAT") as ExamType,
    count: data.count ?? data.questions.length,
    questions: data.questions,
  };
}
