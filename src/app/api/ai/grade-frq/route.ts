/**
 * POST /api/ai/grade-frq — Mistral-graded free-response / short-answer scoring.
 * Returns score + feedback; practice shell persists ai_score / ai_feedback /
 * rubric_scores on question_attempts (columns present).
 */
import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import { createChatModel, NO_KEY_MESSAGE } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import { HumanMessage, SystemMessage } from "@langchain/core/messages";
import { apIbDisplayName, isApOrIbExamType } from "@/lib/apIbCatalog";
import { sanitizeUserInput } from "@/lib/sanitize";
import {
  formatRubricForGrader,
  frqGraderScaleHint,
  resolveFrqMaxPoints,
  parseFrqParts,
} from "@/lib/ai/frqGrading";

export const runtime = "nodejs";

const rubricInputSchema = z.union([
  z.string(),
  z.record(z.string(), z.unknown()),
  z.array(z.unknown()),
]);

const inputSchema = z.object({
  exam_type: z.string().optional().default("SAT"),
  question_id: z.string().uuid().optional(),
  question_text: z.string().min(1),
  stimulus_text: z.string().optional().default(""),
  topic: z.string().optional(),
  section: z.string().optional(),
  question_subtype: z.string().optional(),
  rubric: rubricInputSchema.optional(),
  model_answer: z.string().optional(),
  explanation: z.string().optional(),
  student_answer: z.string().min(1).max(12000),
  max_points: z.number().min(1).max(40).optional(),
});

const rubricScoreSchema = z.object({
  id: z.string().describe("criterion id from the rubric"),
  points_earned: z.number().describe("points awarded for this criterion"),
  points_possible: z.number().describe("max points for this criterion"),
  note: z.string().optional().describe("brief note on why points were/weren't earned"),
});

const gradeSchema = z.object({
  score: z.number().describe("points awarded, 0 to max_points"),
  max_points: z.number(),
  is_correct: z
    .boolean()
    .describe("true when the response earns full or near-full credit (≥80%)"),
  feedback: z
    .string()
    .describe("encouraging, specific feedback with what earned / missed points"),
  strengths: z.array(z.string()).describe("1–3 concrete strengths"),
  improvements: z.array(z.string()).describe("1–3 concrete improvements"),
  rubric_scores: z
    .array(rubricScoreSchema)
    .optional()
    .describe("per-criterion scores when a multi-point rubric is provided"),
});

function systemPrompt(
  examType: string,
  maxPoints: number,
  scaleHint: string,
  hasParts: boolean,
  partCount: number,
): string {
  const course =
    isApOrIbExamType(examType) ? apIbDisplayName(examType) : examType;
  const partInstruction = hasParts
    ? `\n\nThis is a multi-part FRQ with ${partCount} parts labeled (a), (b), (c), etc.
- The student's answer is formatted as "(a) [answer]\n(b) [answer]\n(c) [answer]".
- Grade EACH part independently against its corresponding part of the question.
- In rubric_scores, provide one entry per criterion, but also include a "part" field for each.
- Allocate the max_points across parts based on the rubric criteria.
- If a part is missing or blank, award 0 for that part.
- Feedback should mention which parts earned/won points specifically.`
    : "";
  return `You are Scho, an expert ${course} free-response grader on Scholaris.

${scaleHint}${partInstruction}

Grade the student's written response against the rubric / model answer.
- Award an integer score from 0 to ${maxPoints}.
- Be fair: award partial credit for correct reasoning even if the final answer is incomplete.
- When a multi-criterion rubric is provided, fill rubric_scores for each criterion; the sum of points_earned should equal score.
- Feedback should be warm, specific, and under 180 words.
- Use LaTeX $...$ for any math in feedback.
- Set is_correct true only when score >= ${Math.ceil(maxPoints * 0.8)}.
- Never invent facts not supported by the student response or the key.`;
}

export async function POST(req: NextRequest) {
  try {
    const csrf = verifyCsrf(req);
    if (csrf) return csrf;

    const supabase = await createClient();
    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (!user) return NextResponse.json({ error: "Unauthorized" }, { status: 401 });

    const limited = rateLimit("ai-grade-frq", user.id);
    if (!limited.ok) return rateLimitResponse(limited.retryAfterSeconds);

    const ai = await resolveAiClient(req, user);
    if (!ai) {
      return NextResponse.json({ error: NO_KEY_MESSAGE, code: "NO_AI_KEY" }, { status: 400 });
    }

    const parsed = await parseJsonBody(req, inputSchema);
    if (!parsed.ok) return parsed.response;
    const data = parsed.data;

    const rubricText = formatRubricForGrader(data.rubric);
    const maxPoints = resolveFrqMaxPoints({
      max_points: data.max_points,
      question_subtype: data.question_subtype,
      section: data.section,
      exam_type: data.exam_type,
      rubric: data.rubric,
    });
    const scaleHint = frqGraderScaleHint({
      exam_type: data.exam_type,
      question_subtype: data.question_subtype,
      section: data.section,
      max_points: maxPoints,
    });

    const frqParts = parseFrqParts(data.question_text);
    const hasParts = frqParts.length >= 2;

    const model = createChatModel(ai, { temperature: 0.2, maxTokens: 1100 });
    const structured = model.withStructuredOutput(gradeSchema, {
      name: "frq_grade",
    });

    const payload = {
      exam_type: data.exam_type,
      topic: data.topic,
      section: data.section,
      question_subtype: data.question_subtype ?? null,
      question_text: sanitizeUserInput(data.question_text),
      stimulus_text: sanitizeUserInput(data.stimulus_text).slice(0, 3000),
      rubric: rubricText ? sanitizeUserInput(rubricText).slice(0, 4000) : null,
      model_answer: data.model_answer
        ? sanitizeUserInput(data.model_answer).slice(0, 3000)
        : null,
      explanation: data.explanation
        ? sanitizeUserInput(data.explanation).slice(0, 3000)
        : null,
      student_answer: sanitizeUserInput(data.student_answer).slice(0, 8000),
      max_points: maxPoints,
      ...(hasParts ? {
        parts: frqParts.map((p) => ({
          id: p.id,
          label: p.label,
          prompt: p.prompt,
        })),
      } : {}),
    };

    const result = await structured.invoke([
      new SystemMessage(systemPrompt(data.exam_type, maxPoints, scaleHint, hasParts, frqParts.length)),
      new HumanMessage(`GRADE THIS RESPONSE (JSON):\n${JSON.stringify(payload)}`),
    ]);

    const score = Math.max(0, Math.min(maxPoints, Math.round(result.score)));
    const isCorrect =
      result.is_correct || score >= Math.ceil(maxPoints * 0.8);

    const rubricScores = (result.rubric_scores ?? []).map((r) => ({
      id: r.id,
      points_earned: Math.max(0, Math.round(r.points_earned)),
      points_possible: Math.max(0, Math.round(r.points_possible)),
      ...(r.note ? { note: r.note } : {}),
    }));

    return NextResponse.json({
      score,
      max_points: maxPoints,
      is_correct: isCorrect,
      feedback: result.feedback,
      strengths: result.strengths ?? [],
      improvements: result.improvements ?? [],
      rubric_scores: rubricScores,
      ai_score: score,
      ai_feedback: result.feedback,
    });
  } catch (err) {
    console.error("[AI grade-frq] error:", err);
    return NextResponse.json(
      { error: "Couldn't grade this response. Please try again." },
      { status: 500 },
    );
  }
}
