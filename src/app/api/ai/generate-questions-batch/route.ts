import { randomUUID } from "crypto";
import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { dbError, parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { getQuestionFormat } from "@/lib/questionFormats";
import {
  generateQuestionsParallel,
  questionPayloadToInsert,
} from "@/lib/question/generateQuestions";
import { NO_KEY_MESSAGE } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import type { Database, ExamType } from "@/types/supabase";

const EXAM_TYPES = [
  "SAT",
  "ACT",
  "JAMB",
  "GRE",
  "AP_BIOLOGY",
  "AP_CHEMISTRY",
  "AP_PHYSICS",
  "AP_CALCULUS_AB",
  "AP_CALCULUS_BC",
  "AP_STATISTICS",
  "AP_ENGLISH",
  "AP_US_HISTORY",
  "AP_WORLD_HISTORY",
  "AP_PSYCHOLOGY",
  "AP_ECONOMICS",
  "AP_COMPUTER_SCIENCE",
] as const satisfies readonly ExamType[];

const schema = z.object({
  exam_type: z.enum(EXAM_TYPES),
  section: z.string().min(1).max(80).optional(),
  topic: z.string().min(2).max(120),
  difficulty: z.enum(["easy", "medium", "hard", "expert"]).default("medium"),
  count: z.number().int().min(1).max(10).default(5),
});

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

  const ai = await resolveAiClient(req, user);
  if (!ai) {
    return NextResponse.json(
      { error: NO_KEY_MESSAGE, code: "NO_AI_KEY" },
      { status: 400 },
    );
  }

  const limited = rateLimit("generate-question", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const parsed = await parseJsonBody(req, schema);
  if (!parsed.ok) return parsed.response;

  const { exam_type, section, topic, difficulty, count } = parsed.data;
  const batchId = randomUUID();
  const format = getQuestionFormat(exam_type, section);

  const requests = Array.from({ length: count }, (_, i) => ({
    exam_type,
    section: format.section,
    topic,
    difficulty,
    seed: `${batchId}_${topic}_${i}`,
  }));

  const results = await generateQuestionsParallel(ai, requests);
  const succeeded = results.filter((r) => r.ok);

  if (succeeded.length === 0) {
    return NextResponse.json(
      {
        error: "All generations failed",
        failures: results.map((r) => ({
          seed: r.seed,
          errors: r.ok ? [] : r.errors,
        })),
      },
      { status: 422 },
    );
  }

  type QuestionInsert = Database["public"]["Tables"]["questions"]["Insert"];
  const rows: QuestionInsert[] = succeeded.map((r) => {
    if (!r.ok) throw new Error("unreachable");
    return questionPayloadToInsert(r.question, {
      exam_type,
      formatSectionLabel: format.sectionLabel,
      topic,
      difficulty,
      generation_seed: r.seed,
      created_by: user.id,
      calculator_allowed: format.calculatorAllowed,
      stimulus_type: format.stimulusType,
    });
  });

  const { data: inserted, error } = await supabase
    .from("questions")
    .insert(rows)
    .select("id, topic, section, difficulty, generation_seed");

  if (error || !inserted?.length) {
    return dbError("[ai/generate-questions-batch] insert", error);
  }

  const failures = results.filter((r) => !r.ok);

  return NextResponse.json({
    batch_id: batchId,
    requested: count,
    generated: inserted.length,
    failed: failures.length,
    questions: inserted,
    failures: failures.map((r) => ({
      seed: r.seed,
      errors: r.ok ? [] : r.errors,
    })),
  });
}
