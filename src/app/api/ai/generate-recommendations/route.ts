import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import {
  parseAiJson,
  validateRecommendationResponse,
} from "@/lib/aiResponseValidator";
import { buildRecommendationPrompt } from "@/lib/promptBuilder";
import { verifyCsrf } from "@/lib/csrf";
import { isApExam, isIbExam } from "@/lib/examFamily";
import { examTypeSchema } from "@/lib/examTypes";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import { complete } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";

const schema = z.object({
  session_id: z.string().uuid(),
  wrong_question_ids: z.array(z.string().uuid()),
  topic_scores: z.record(
    z.string(),
    z.object({ correct: z.number(), total: z.number() }),
  ),
  exam_type: examTypeSchema,
});

type Recommendations = {
  weak_areas: string[];
  study_tip: string;
  recommended_sessions: Array<{
    title: string;
    topic: string;
    difficulty: "easy" | "medium" | "hard";
    question_count: number;
    estimated_minutes: number;
    reason: string;
  }>;
  encouragement: string;
};

const FALLBACK_SAT: Recommendations = {
  weak_areas: ["Reading comprehension", "Algebra"],
  study_tip:
    "You spend more time on early questions than you need to. Skim the passage once, then attack the line the question references.",
  recommended_sessions: [
    {
      title: "Vocabulary in Context: 15 questions",
      topic: "Words in Context",
      difficulty: "medium",
      question_count: 15,
      estimated_minutes: 12,
      reason:
        "Building precision with context clues will lift your Reading & Writing score steadily.",
    },
  ],
  encouragement:
    "Tough sessions are how top scorers find their edge. You showed up, and that matters.",
};

function fallbackForExam(examType: string): Recommendations {
  if (isApExam(examType) || isIbExam(examType)) {
    return {
      weak_areas: ["Core concepts", "Free-response practice"],
      study_tip:
        "Review the unit you missed most, then drill a short mixed set before attempting a timed free-response.",
      recommended_sessions: [
        {
          title: "Unit review: 15 questions",
          topic: "Core skills",
          difficulty: "medium",
          question_count: 15,
          estimated_minutes: 18,
          reason:
            "Targeted unit practice builds the content fluency this course rewards on exam day.",
        },
      ],
      encouragement:
        "Every practice set sharpens your course instincts. Keep stacking consistent reps.",
    };
  }
  if (examType === "ACT") {
    return {
      weak_areas: ["Reading pace", "Algebra foundations"],
      study_tip:
        "Pace each ACT section with a soft checkpoint halfway through — leave time for the last cluster.",
      recommended_sessions: [
        {
          title: "ACT mixed drill: 15 questions",
          topic: "Mixed practice",
          difficulty: "medium",
          question_count: 15,
          estimated_minutes: 15,
          reason:
            "Short mixed sets keep timing sharp without burning a full practice test.",
        },
      ],
      encouragement:
        "Steady section practice compounds. Show up again tomorrow and the score follows.",
    };
  }
  return FALLBACK_SAT;
}

const MAX_AI_ATTEMPTS = 2;

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

  const limited = rateLimit("ai-tutor", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const parsed = await parseJsonBody(req, schema);
  if (!parsed.ok) return parsed.response;

  const { topic_scores, exam_type, wrong_question_ids } = parsed.data;
  const fallback = fallbackForExam(exam_type);

  const { data: recentSessions } = await supabase
    .from("exam_sessions")
    .select("correct_count, total_questions, metadata")
    .eq("user_id", user.id)
    .order("started_at", { ascending: false })
    .limit(10);

  // AI runs on the user's own Mistral key. No key → return the static
  // (non-AI) fallback recommendations so the post-session report still works.
  const ai = await resolveAiClient(req, user);
  if (!ai) {
    return NextResponse.json({ recommendations: fallback });
  }

  const prompt = buildRecommendationPrompt(
    {
      exam_type,
      wrong_question_ids,
      recent_sessions: recentSessions ?? [],
    },
    topic_scores,
  );

  for (let attempt = 0; attempt < MAX_AI_ATTEMPTS; attempt += 1) {
    try {
      const text = await complete(ai, prompt, {
        maxTokens: 1000,
        temperature: 0.5,
      });

      const parsedJson = parseAiJson<unknown>(text);
      if (!parsedJson) continue;

      const validation = validateRecommendationResponse(parsedJson);
      if (validation.valid && validation.data) {
        return NextResponse.json({ recommendations: validation.data });
      }

      console.warn(
        "[ai/generate-recommendations] validation failed",
        validation.errors,
      );
    } catch (err) {
      console.warn("[ai/generate-recommendations] AI attempt failed", err);
    }
  }

  return NextResponse.json({ recommendations: fallback });
}
