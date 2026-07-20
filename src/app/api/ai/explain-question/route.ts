import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { buildExplainerPrompt } from "@/lib/promptBuilder";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import {
  chatStream,
  NO_KEY_MESSAGE,
} from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import { sanitizeUserInput } from "@/lib/sanitize";
import { resolveCoursePreload } from "@/lib/tutor/coursePreload";
import { getSubjectConfig } from "@/lib/subjectContext";
import { isExamType } from "@/lib/examTypes";
import type { ExamType } from "@/types/supabase";

const SSE_HEADERS = {
  "Content-Type": "text/event-stream",
  "Cache-Control": "no-cache",
  Connection: "keep-alive",
} as const;

const schema = z.object({
  question_id: z.string().uuid(),
  question_text: z.string(),
  topic: z.string().optional(),
  exam_type: z.string().optional(),
  section: z.string().optional(),
  stimulus_text: z.string().nullable().optional(),
  selected_option: z.string(),
  is_correct: z.boolean(),
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

  const limited = rateLimit("generate-question", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const parsed = await parseJsonBody(req, schema);
  if (!parsed.ok) return parsed.response;

  const data = parsed.data;
  const encoder = new TextEncoder();

  // Prefer client exam_type; fall back to the question row so we never hardcode SAT.
  let examType = data.exam_type;
  if (!examType) {
    const { data: qRow } = await supabase
      .from("questions")
      .select("exam_type, section, explanation")
      .eq("id", data.question_id)
      .maybeSingle();
    examType = qRow?.exam_type ?? undefined;
  }

  const resolved =
    examType && isExamType(examType) ? (examType as ExamType) : null;
  const subjectConfig = resolved ? await getSubjectConfig(resolved) : null;
  const preloadExam =
    resolved ??
    (examType && (examType.startsWith("AP_") || examType.startsWith("IB_"))
      ? examType
      : null);
  const coursePreload = preloadExam
    ? await resolveCoursePreload(preloadExam, subjectConfig)
    : "";

  let prompt = buildExplainerPrompt(
    {
      question_text: sanitizeUserInput(data.question_text),
      topic: data.topic,
      exam_type: examType ?? "unknown",
      section: data.section,
      stimulus_text: data.stimulus_text,
    },
    data.selected_option,
    data.is_correct,
  );
  if (coursePreload.trim()) {
    prompt = `${prompt}\n\nCOURSE CONTEXT (authoritative for this exam):\n${coursePreload}`;
  }

  // AI runs on the user's own Mistral key. No key → guide them to Settings.
  const ai = await resolveAiClient(req, user);
  if (!ai) {
    const stream = new ReadableStream({
      start(controller) {
        controller.enqueue(
          encoder.encode(`data: ${JSON.stringify({ text: NO_KEY_MESSAGE })}\n\n`),
        );
        controller.enqueue(encoder.encode("data: [DONE]\n\n"));
        controller.close();
      },
    });
    return new Response(stream, { headers: SSE_HEADERS });
  }

  const stream = new ReadableStream({
    async start(controller) {
      try {
        for await (const text of chatStream(ai, {
          messages: [{ role: "user", content: prompt }],
          temperature: 0.4,
          maxTokens: 500,
        })) {
          if (text) {
            controller.enqueue(
              encoder.encode(`data: ${JSON.stringify({ text })}\n\n`),
            );
          }
        }
        controller.enqueue(encoder.encode("data: [DONE]\n\n"));
      } catch {
        controller.enqueue(
          encoder.encode(
            `data: ${JSON.stringify({ text: "Explanation unavailable right now." })}\n\n`,
          ),
        );
        controller.enqueue(encoder.encode("data: [DONE]\n\n"));
      } finally {
        controller.close();
      }
    },
  });

  return new Response(stream, { headers: SSE_HEADERS });
}
