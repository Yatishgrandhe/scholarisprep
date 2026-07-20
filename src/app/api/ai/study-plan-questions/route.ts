import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { examTypeSchema } from "@/lib/examTypes";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import { completeJson } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import { fetchPracticeQuestions } from "@/lib/practice/queries";
import { skillLabelForId } from "@/lib/dashboard/bankTaxonomy";

export const maxDuration = 45;

const bodySchema = z.object({
  exam_type: examTypeSchema,
  skill_id: z.string().min(1).max(20),
  section: z.enum(["reading_writing", "math"]),
  count: z.number().int().min(1).max(50),
});

const DIFF_RANK: Record<string, number> = { easy: 0, medium: 1, hard: 2 };

/** Even spread of `count` items across a difficulty-sorted pool. */
function pickSpread<T>(pool: T[], count: number): T[] {
  if (pool.length <= count) return pool;
  const step = pool.length / count;
  const out: T[] = [];
  for (let i = 0; i < count; i += 1) out.push(pool[Math.floor(i * step)]);
  return out;
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
  if (!limited.ok) return rateLimitResponse(limited.retryAfterSeconds);

  const parsed = await parseJsonBody(req, bodySchema);
  if (!parsed.ok) return parsed.response;

  const { exam_type, skill_id, section, count } = parsed.data;
  const ai = await resolveAiClient(req, user);

  // Candidate pool for this one skill — a few times the requested count so the
  // AI (or the deterministic fallback) has room to curate a good set.
  const poolSize = Math.min(50, Math.max(24, count * 4));
  const pool = await fetchPracticeQuestions(
    supabase,
    {
      section,
      topic: "all",
      difficulty: "all",
      examType: exam_type,
      skillIds: [skill_id],
    },
    poolSize,
    undefined,
    user.id,
  );

  if (pool.length === 0) {
    return NextResponse.json({ question_ids: [] });
  }
  if (pool.length <= count) {
    return NextResponse.json({ question_ids: pool.map((q) => q.id) });
  }

  // Difficulty-sorted pool drives both the deterministic fallback and the
  // candidate ordering shown to the model.
  const sorted = [...pool].sort(
    (a, b) =>
      (DIFF_RANK[a.difficulty ?? "medium"] ?? 1) -
      (DIFF_RANK[b.difficulty ?? "medium"] ?? 1),
  );
  const deterministic = pickSpread(sorted, count).map((q) => q.id);

  if (!ai) {
    return NextResponse.json({ question_ids: deterministic });
  }

  // Let Mistral curate which questions best teach the skill.
  const label = skillLabelForId(skill_id) ?? skill_id;
  const lines = sorted
    .map((q) => {
      const preview = (q.question_text ?? "")
        .replace(/\s+/g, " ")
        .trim()
        .slice(0, 110);
      return `${q.id} | ${q.difficulty ?? "medium"} | ${preview}`;
    })
    .join("\n");

  const prompt = `You are choosing ${exam_type} practice questions for a focused lesson on "${label}".
Pick EXACTLY ${count} question ids that build mastery: start easier and progress to harder, cover varied question styles, and avoid near-duplicates.

Candidates (id | difficulty | preview):
${lines}

Return ONLY JSON (no prose, no markdown): { "question_ids": ["<id>", ...] } — exactly ${count} ids, each copied verbatim from the list above, ordered easiest-first.`;

  try {
    const raw = await completeJson<{ question_ids?: unknown }>(ai, prompt, {
      maxTokens: 700,
      temperature: 0.3,
    });
    const valid = new Set(pool.map((q) => q.id));
    const picked: string[] = [];
    if (Array.isArray(raw.question_ids)) {
      for (const id of raw.question_ids) {
        if (typeof id === "string" && valid.has(id) && !picked.includes(id)) {
          picked.push(id);
        }
        if (picked.length >= count) break;
      }
    }
    // Top up from the deterministic spread if the model returned too few.
    if (picked.length < count) {
      for (const id of deterministic) {
        if (!picked.includes(id)) picked.push(id);
        if (picked.length >= count) break;
      }
    }
    return NextResponse.json({ question_ids: picked.slice(0, count) });
  } catch (err) {
    console.warn("[study-plan-questions] AI select failed, using fallback:", err);
    return NextResponse.json({ question_ids: deterministic });
  }
}
