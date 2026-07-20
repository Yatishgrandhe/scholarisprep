import { randomUUID } from "crypto";
import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { dbError, parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { buildDiagnosticBlueprint } from "@/lib/onboarding/diagnosticBlueprint";
import { DIAGNOSTIC_SEED_KEY, questionFromRow } from "@/lib/onboarding/diagnostic";
import { generateDiagnosticBatch } from "@/lib/onboarding/generateDiagnosticQuestion";
import { NO_KEY_MESSAGE } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import { createClient } from "@/lib/supabase/server";
import type { Database } from "@/types/supabase";

const schema = z.object({
  exam_type: z
    .enum(["SAT", "ACT", "JAMB", "GRE", "GMAT", "CUSTOM"])
    .default("SAT"),
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

  const limited = rateLimit("generate-diagnostic", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const parsed = await parseJsonBody(req, schema);
  if (!parsed.ok) return parsed.response;

  const { exam_type } = parsed.data;
  const sessionId = randomUUID();
  const sessionSeed = `${DIAGNOSTIC_SEED_KEY}_${sessionId}`;
  const slots = buildDiagnosticBlueprint(sessionSeed, exam_type);

  const generated = await generateDiagnosticBatch(
    ai,
    slots,
    sessionSeed,
    exam_type,
    5,
  );

  type QuestionInsert = Database["public"]["Tables"]["questions"]["Insert"];
  const rows: QuestionInsert[] = generated.map((q, i) => {
    const correctOpt = q.options.find((o) => o.is_correct);
    const sectionLabel =
      q.section === "math" ? "SAT Math" : "SAT Reading & Writing";
    return {
      question_text: q.question_text,
      stimulus_text: q.stimulus_text ?? null,
      stimulus_type: q.stimulus_type ?? (q.stimulus_text ? "passage" : null),
      options: q.options,
      explanation: q.explanation,
      hint: q.hint,
      topic: q.topic,
      section: sectionLabel,
      difficulty: q.difficulty,
      exam_type,
      question_type: "multiple_choice" as const,
      correct_answer: correctOpt?.id ?? "A",
      ai_generated: true,
      generation_seed: `${sessionSeed}_q${i}`,
      is_platform_question: true,
      calculator_allowed: q.calculator_allowed,
      created_by: user.id,
    };
  });

  const { data: inserted, error } = await supabase
    .from("questions")
    .insert(rows)
    .select("*");

  if (error || !inserted?.length) {
    return dbError("[ai/generate-diagnostic] insert", error);
  }

  const questions = inserted
    .sort(
      (a, b) =>
        Number(
          (a.generation_seed ?? "").split("_q").pop() ?? 0,
        ) -
        Number((b.generation_seed ?? "").split("_q").pop() ?? 0),
    )
    .map(questionFromRow);

  return NextResponse.json({
    session_id: sessionId,
    session_seed: sessionSeed,
    question_count: questions.length,
    questions,
  });
}
