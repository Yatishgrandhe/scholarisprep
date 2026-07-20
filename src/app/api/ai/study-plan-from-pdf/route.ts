import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { isExamType } from "@/lib/examTypes";
import type { ExamType } from "@/types/supabase";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import { completeJson, NO_KEY_MESSAGE } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import { generateStudyPlan } from "@/lib/dashboard/generatePlan";
import {
  ACT_SECTIONS,
  SAT_MATH_DOMAINS,
  SAT_RW_DOMAINS,
  flattenSkills,
} from "@/lib/dashboard/bankTaxonomy";

export const runtime = "nodejs";
export const maxDuration = 60;

const MAX_TEXT_CHARS = 14000;

// The PDF is parsed in the browser now; the route receives the extracted text.
const bodySchema = z.object({
  report_text: z.string().min(40).max(60000),
  exam_type: z.string().optional(),
});

type Extracted = {
  baseline_score: number | null;
  target_score: number | null;
  weak_topics: string[];
};

function buildExtractionPrompt(
  reportText: string,
  exam: ExamType,
  topics: string[],
): string {
  return `You are analyzing a student's ${exam} score report. The raw extracted text (it may be noisy, out of order, or contain table fragments) is between the triple quotes:
"""
${reportText.slice(0, MAX_TEXT_CHARS)}
"""

When naming weak areas, use ONLY these official skill names, copied verbatim:
${topics.join(", ") || "(use general SAT skills)"}

Read the report carefully and infer:
- the total / composite score,
- the per-section scores (e.g. Reading & Writing and Math, each out of 800),
- the skills the student performed WORST in. Look for phrases like "Needs attention", "Developing", low percentages, low performance bands, knowledge-and-skills subscores, or the lowest section.

Return ONLY a JSON object (no prose, no markdown fences) of exactly this shape:
{
  "baseline_score": <current total score as a number, or null if not found>,
  "target_score": <a realistic goal ~100-150 points above baseline as a number, or null>,
  "weak_topics": [<up to 6 of the EXACT skill names listed above where the student is weakest, worst first>]
}
If the report only shows section scores (not per-skill), pick weak_topics from the lower-scoring section. Never invent skill names that are not in the list.`;
}

export async function POST(req: NextRequest) {
  try {
    return await handleBuild(req);
  } catch (err) {
    console.error("[study-plan-from-pdf] unhandled error:", err);
    return NextResponse.json(
      { error: "Something went wrong building your plan. Please try again." },
      { status: 500 },
    );
  }
}

async function handleBuild(req: NextRequest): Promise<NextResponse> {
  const csrfFailure = verifyCsrf(req);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const limited = rateLimit("generate-study-plan", user.id);
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

  const parsed = await parseJsonBody(req, bodySchema);
  if (!parsed.ok) return parsed.response;

  const reportText = parsed.data.report_text;
  const exam: ExamType = isExamType(parsed.data.exam_type ?? "")
    ? (parsed.data.exam_type as ExamType)
    : "SAT";

  // The real bank skill labels — so the model maps the report's weak areas onto
  // topics the generated plan can actually drill.
  const skillLabels = (
    exam === "ACT"
      ? flattenSkills(ACT_SECTIONS)
      : flattenSkills([...SAT_RW_DOMAINS, ...SAT_MATH_DOMAINS])
  ).map((s) => s.label);

  // Best-effort extraction — if the model hiccups we still build a usable plan.
  let extracted: Extracted = {
    baseline_score: null,
    target_score: null,
    weak_topics: [],
  };
  try {
    const json = await completeJson<Partial<Extracted>>(
      ai,
      buildExtractionPrompt(reportText, exam, skillLabels),
      { maxTokens: 700, temperature: 0.2 },
    );
    extracted = {
      baseline_score:
        typeof json.baseline_score === "number" ? json.baseline_score : null,
      target_score:
        typeof json.target_score === "number" ? json.target_score : null,
      weak_topics: Array.isArray(json.weak_topics)
        ? json.weak_topics
            .filter((t): t is string => typeof t === "string")
            .slice(0, 6)
        : [],
    };
  } catch (err) {
    console.warn("[study-plan-from-pdf] extraction failed, using defaults:", err);
  }

  const baseline = extracted.baseline_score;
  const target =
    extracted.target_score ?? (baseline != null ? baseline + 100 : null);

  // Full dated plan seeded from the report's weak topics (with videos + tips).
  const planData = await generateStudyPlan(supabase, ai, {
    examType: exam,
    targetScore: target,
    baselineScore: baseline,
    weeklyHours: 10,
    weakTopics: extracted.weak_topics,
  });
  const now = new Date().toISOString();

  const { error: planErr } = await supabase.from("study_plans").upsert(
    {
      user_id: user.id,
      course_id: exam,
      exam_type: exam,
      target_score: target,
      baseline_score: baseline,
      plan_data: planData,
      generated_at: now,
    },
    { onConflict: "user_id,course_id" },
  );
  if (planErr) {
    console.error("[study-plan-from-pdf] study_plans upsert", planErr);
    return NextResponse.json(
      { error: "Could not save your plan. Please try again." },
      { status: 500 },
    );
  }

  await supabase.from("multi_subject_study_plans").upsert(
    {
      user_id: user.id,
      course_id: exam,
      exam_type: exam,
      target_score: target,
      baseline_score: baseline,
      plan_data: planData,
      generated_at: now,
      last_updated: now,
    },
    { onConflict: "user_id,course_id" },
  );

  await supabase.from("user_active_subjects").upsert(
    {
      user_id: user.id,
      exam_type: exam,
      target_score: target,
      updated_at: now,
    },
    { onConflict: "user_id,exam_type" },
  );

  return NextResponse.json({
    plan: planData,
    baseline_score: baseline,
    target_score: target,
  });
}
