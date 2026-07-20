import { NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { generateCourseDescription } from "@/lib/courses/ai-lesson";
import { NO_KEY_MESSAGE } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import { examTypeSchema } from "@/lib/examTypes";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";

const schema = z.object({
  title: z.string().min(3).max(200),
  exam_type: examTypeSchema.default("SAT"),
  subject: z.string().min(1).max(120),
});

export async function POST(request: Request) {
  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const ai = await resolveAiClient(request, user);
  if (!ai) {
    return NextResponse.json(
      { error: NO_KEY_MESSAGE, code: "NO_AI_KEY" },
      { status: 400 },
    );
  }

  const limited = rateLimit("generate-course", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const parsed = await parseJsonBody(request, schema);
  if (!parsed.ok) return parsed.response;

  try {
    const description = await generateCourseDescription(
      ai,
      parsed.data.title,
      parsed.data.exam_type,
      parsed.data.subject,
    );
    return NextResponse.json({ description });
  } catch (err) {
    console.error("[ai/generate-course-description]", err);
    return NextResponse.json(
      { error: "Could not generate description. Please try again." },
      { status: 500 },
    );
  }
}
