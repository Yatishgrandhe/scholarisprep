import { complete, extractJson, type AiAuth } from "@/lib/ai/mistral";
import {
  buildGenerationPrompt,
  getQuestionFormat,
  parseGeneratedQuestionJson,
  type GeneratedQuestionPayload,
} from "@/lib/questionFormats";
import type { Database, Difficulty, ExamType } from "@/types/supabase";

export type GenerateQuestionRequest = {
  exam_type: ExamType;
  section?: string;
  topic: string;
  difficulty: Difficulty;
  seed: string;
};

export type GenerateQuestionResult =
  | { ok: true; question: GeneratedQuestionPayload; seed: string }
  | { ok: false; seed: string; errors: string[] };

type QuestionInsert = Database["public"]["Tables"]["questions"]["Insert"];

export async function generateOneQuestion(
  apiKey: AiAuth,
  req: GenerateQuestionRequest,
): Promise<GenerateQuestionResult> {
  const format = getQuestionFormat(req.exam_type, req.section);
  const prompt = buildGenerationPrompt(
    format,
    req.topic,
    req.difficulty,
    req.seed,
  );

  try {
    const raw = await complete(apiKey, prompt, {
      system: format.systemInstruction,
      maxTokens: format.maxOutputTokens,
      temperature: format.temperature,
    });

    // The model may wrap the JSON in prose/fences; normalize to a clean JSON
    // string so the existing strict parser/validator accepts it.
    const text = JSON.stringify(extractJson(raw));

    const { payload, validation } = parseGeneratedQuestionJson(text, format);
    if (!payload || !validation.valid) {
      return {
        ok: false,
        seed: req.seed,
        errors: validation.errors,
      };
    }

    return { ok: true, question: payload, seed: req.seed };
  } catch (error) {
    const message =
      error instanceof Error ? error.message : "Question generation failed";
    return { ok: false, seed: req.seed, errors: [message] };
  }
}

export async function generateQuestionsParallel(
  apiKey: AiAuth,
  requests: GenerateQuestionRequest[],
): Promise<GenerateQuestionResult[]> {
  return Promise.all(
    requests.map((req) => generateOneQuestion(apiKey, req)),
  );
}

export function questionPayloadToInsert(
  payload: GeneratedQuestionPayload,
  meta: {
    exam_type: ExamType;
    formatSectionLabel: string;
    topic: string;
    difficulty: Difficulty;
    generation_seed: string;
    created_by?: string | null;
    calculator_allowed?: boolean;
    stimulus_type?: string | null;
  },
): QuestionInsert {
  const correctOpt = payload.options.find((o) => o.is_correct);
  return {
    question_text: payload.question_text,
    stimulus_text: payload.stimulus_text ?? null,
    stimulus_type:
      meta.stimulus_type ??
      payload.stimulus_type ??
      (payload.stimulus_text ? "passage" : null),
    options: payload.options,
    explanation: payload.explanation,
    hint: payload.hint,
    topic: meta.topic,
    section: meta.formatSectionLabel,
    difficulty: meta.difficulty,
    exam_type: meta.exam_type,
    question_type: "multiple_choice",
    correct_answer: correctOpt?.id ?? "A",
    ai_generated: true,
    generation_seed: meta.generation_seed,
    is_platform_question: true,
    calculator_allowed: meta.calculator_allowed ?? false,
    created_by: meta.created_by ?? null,
  };
}
