import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { dbError, parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import {
  complete,
  extractJson,
  NO_KEY_MESSAGE,
} from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import { sanitizeUserInput } from "@/lib/sanitize";

const schema = z.object({
  section: z.enum(["reading_writing", "math"]),
  topic: z.string().min(1).max(120),
  difficulty: z.enum(["easy", "medium", "hard"]),
  seed: z.string().min(1).max(200),
  exam_type: z.enum(["SAT", "ACT", "JAMB", "GRE", "GMAT", "CUSTOM"]).default("SAT"),
});

type GeneratedOption = {
  id: string;
  text: string;
  is_correct: boolean;
};

type GeneratedQuestion = {
  question_text: string;
  stimulus_text?: string | null;
  options: GeneratedOption[];
  explanation: string;
  hint: string;
};

function stubQuestion(
  section: string,
  topic: string,
  difficulty: string,
  seed: string,
): GeneratedQuestion {
  const correctId = "B";
  return {
    question_text: `[Demo ${seed.slice(0, 8)}] A ${difficulty} ${section.replace("_", " ")} question about ${topic}. What is the best approach?`,
    stimulus_text:
      section === "reading_writing"
        ? `Sample passage for ${topic}. The author argues that consistent practice improves outcomes.`
        : null,
    options: [
      { id: "A", text: "Guess randomly", is_correct: false },
      { id: "B", text: "Apply the core concept step by step", is_correct: true },
      { id: "C", text: "Skip the question", is_correct: false },
      { id: "D", text: "Memorize without understanding", is_correct: false },
    ],
    explanation: `The correct answer is ${correctId} because it follows the standard method for ${topic}.`,
    hint: `Identify what the question is asking, then recall the key rule for ${topic}.`,
  };
}

function normalizeOptions(raw: unknown): GeneratedOption[] {
  if (!Array.isArray(raw)) return [];
  return raw
    .map((o, i) => {
      const item = o as Record<string, unknown>;
      const id = String(item.id ?? ["A", "B", "C", "D"][i] ?? "A");
      return {
        id,
        text: String(item.text ?? ""),
        is_correct: Boolean(item.is_correct),
      };
    })
    .filter((o) => o.text.length > 0)
    .slice(0, 4);
}

export async function POST(req: NextRequest) {
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

  const parsed = await parseJsonBody(req, schema);
  if (!parsed.ok) return parsed.response;

  const { section, topic, difficulty, seed, exam_type } = parsed.data;
  const cleanTopic = sanitizeUserInput(topic);
  const cleanSeed = sanitizeUserInput(seed);

  // AI runs on the user's own Mistral key.
  const ai = await resolveAiClient(req, user);
  if (!ai) {
    return NextResponse.json(
      { error: NO_KEY_MESSAGE, code: "NO_AI_KEY" },
      { status: 400 },
    );
  }

  // Stub stays as the on-error fallback so a transient model failure still
  // returns a usable question rather than a 500.
  let generated: GeneratedQuestion = stubQuestion(
    section,
    cleanTopic,
    difficulty,
    cleanSeed,
  );

  {
    {
      try {
        const prompt = `You are an expert College Board Digital SAT item writer. Generate ONE unique ${difficulty} difficulty ${section === "math" ? "Math" : "Reading and Writing"} question.

Topic: ${cleanTopic}
Uniqueness seed: ${cleanSeed}
Exam: ${exam_type}

Return ONLY valid JSON:
{
  "question_text": "string (use $...$ for math)",
  "stimulus_text": ${section === "reading_writing" ? '"passage string or null"' : "null"},
  "options": [
    { "id": "A", "text": "string", "is_correct": false },
    { "id": "B", "text": "string", "is_correct": true },
    { "id": "C", "text": "string", "is_correct": false },
    { "id": "D", "text": "string", "is_correct": false }
  ],
  "explanation": "why the correct answer works",
  "hint": "short hint without giving away the answer"
}

Requirements:
- Exactly 4 options A-D with exactly one is_correct true.
- College Board style wording; no trick questions.
- For math, use LaTeX in $...$ where needed.
- For reading_writing, include a short stimulus_text passage when appropriate.`;

        const text = await complete(ai, prompt, {
          maxTokens: 1500,
          temperature: 0.7,
        });

        const raw = extractJson<Record<string, unknown>>(text);
        const options = normalizeOptions(raw.options);
        if (options.some((o) => o.is_correct) && options.length === 4) {
          generated = {
            question_text: String(raw.question_text ?? generated.question_text),
            stimulus_text:
              raw.stimulus_text != null ? String(raw.stimulus_text) : null,
            options,
            explanation: String(raw.explanation ?? generated.explanation),
            hint: String(raw.hint ?? generated.hint),
          };
        }
      } catch {
        /* use stub */
      }
    }
  }

  const correctOpt = generated.options.find((o) => o.is_correct);

  const { data: inserted, error } = await supabase
    .from("questions")
    .insert({
      question_text: generated.question_text,
      stimulus_text: generated.stimulus_text ?? null,
      options: generated.options,
      explanation: generated.explanation,
      hint: generated.hint,
      topic: cleanTopic,
      section,
      difficulty,
      exam_type,
      question_type: "multiple_choice",
      correct_answer: correctOpt?.id ?? "A",
      ai_generated: true,
      generation_seed: cleanSeed,
      is_platform_question: false,
      created_by: user.id,
    })
    .select("id")
    .single();

  if (error || !inserted) {
    return dbError("[ai/generate-sat-question] insert", error);
  }

  return NextResponse.json({
    question: {
      id: inserted.id,
      ...generated,
      section,
      topic: cleanTopic,
      difficulty,
      exam_type,
    },
  });
}
