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
import {
  ACT_SECTIONS,
  SAT_MATH_DOMAINS,
  SAT_RW_DOMAINS,
  flattenSkills,
} from "@/lib/dashboard/bankTaxonomy";

export const runtime = "nodejs";
export const maxDuration = 45;

const MAX_TEXT_CHARS = 14000;

const bodySchema = z.object({
  report_text: z.string().min(40).max(60000),
  exam_type: z.string().optional(),
});

type Parsed = {
  total: number | null;
  reading_writing: number | null;
  math: number | null;
  target: number | null;
  weak_topics: string[];
};

function buildPrompt(reportText: string, exam: ExamType, skillLabels: string[]): string {
  return `You are reading a student's ${exam} score report. Raw extracted text (may be noisy / out of order) is between the quotes:
"""
${reportText.slice(0, MAX_TEXT_CHARS)}
"""

When naming weak areas, use ONLY these official skill names, copied verbatim:
${skillLabels.join(", ") || "(use general SAT skills)"}

Infer the total/composite score, the Reading & Writing section score and the Math section score (each out of 800 for the SAT), and the skills the student is weakest in (low percentages, "Needs attention"/"Developing" bands, or the lower-scoring section).

Return ONLY a JSON object (no prose, no markdown):
{
  "total": <total score number or null>,
  "reading_writing": <R&W section score number or null>,
  "math": <Math section score number or null>,
  "target": <a realistic goal ~100-150 above total, or null>,
  "weak_topics": [<up to 6 EXACT skill names from the list, weakest first>]
}`;
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

  const limited = rateLimit("generate-study-plan", user.id);
  if (!limited.ok) return rateLimitResponse(limited.retryAfterSeconds);

  const ai = await resolveAiClient(req, user);
  if (!ai) {
    return NextResponse.json({ error: NO_KEY_MESSAGE, code: "NO_AI_KEY" }, { status: 400 });
  }

  const parsed = await parseJsonBody(req, bodySchema);
  if (!parsed.ok) return parsed.response;

  const exam: ExamType = isExamType(parsed.data.exam_type ?? "")
    ? (parsed.data.exam_type as ExamType)
    : "SAT";

  const skillLabels = (
    exam === "ACT"
      ? flattenSkills(ACT_SECTIONS)
      : flattenSkills([...SAT_RW_DOMAINS, ...SAT_MATH_DOMAINS])
  ).map((s) => s.label);

  const num = (v: unknown): number | null =>
    typeof v === "number" && Number.isFinite(v) ? v : null;

  let result: Parsed = {
    total: null,
    reading_writing: null,
    math: null,
    target: null,
    weak_topics: [],
  };
  try {
    const json = await completeJson<Partial<Parsed>>(
      ai,
      buildPrompt(parsed.data.report_text, exam, skillLabels),
      { maxTokens: 700, temperature: 0.2 },
    );
    result = {
      total: num(json.total),
      reading_writing: num(json.reading_writing),
      math: num(json.math),
      target: num(json.target),
      weak_topics: Array.isArray(json.weak_topics)
        ? json.weak_topics.filter((t): t is string => typeof t === "string").slice(0, 6)
        : [],
    };
  } catch (err) {
    console.warn("[parse-score-report] extraction failed:", err);
    return NextResponse.json(
      { error: "Could not read that report. You can enter your scores manually." },
      { status: 200 },
    );
  }

  // Derive total from sections if the model missed the total but found sections.
  if (result.total == null && result.reading_writing != null && result.math != null) {
    result.total = result.reading_writing + result.math;
  }

  return NextResponse.json(result);
}
