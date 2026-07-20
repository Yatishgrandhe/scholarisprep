import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { buildTutorPrompt } from "@/lib/promptBuilder";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { NO_KEY_MESSAGE, type ChatTurn } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import {
  formatTutorAgentError,
  formatTutorRouteError,
  streamTutorAgent,
} from "@/lib/ai/tutorAgent";
import {
  isFreeStudyTurn,
  normalizeTelemetry,
  type FreeStudyTelemetry,
} from "@/lib/ai/telemetryPayload";
import { getSubjectConfig } from "@/lib/subjectContext";
import { getTutorPerformanceData } from "@/lib/tutor/performance";
import { resolveCoursePreload } from "@/lib/tutor/coursePreload";
import { sanitizeUserInput } from "@/lib/sanitize";
import { createClient } from "@/lib/supabase/server";
import { isExamType } from "@/lib/examTypes";

const telemetrySchema = z
  .object({
    source: z
      .enum(["tutor", "whiteboard", "pdf", "voice", "notes", "sims"])
      .optional(),
    intent: z
      .enum(["ask", "quiz", "summarize", "flashcards"])
      .optional(),
    ocr_text: z.string().max(8000).optional(),
    pdf_excerpt: z.string().max(12000).optional(),
    transcript: z.string().max(8000).optional(),
    note_excerpt: z.string().max(8000).optional(),
    sim: z
      .object({
        slug: z.string().max(120).optional(),
        params: z.record(z.string(), z.union([z.string(), z.number(), z.boolean()])).optional(),
        prediction: z.string().max(1000).optional(),
        residual: z.string().max(1000).optional(),
        misconceptionHits: z.array(z.string().max(120)).max(8).optional(),
      })
      .optional(),
  })
  .optional();

const schema = z.object({
  conversation_id: z.string().uuid(),
  message: z.string().min(1).max(3000),
  context: z
    .object({
      exam_type: z.string().optional(),
      topic: z.string().optional(),
      question_text: z.string().optional(),
      stimulus_text: z.string().optional(),
      section: z.string().optional(),
      selected_option: z.string().optional(),
      is_correct: z.boolean().optional(),
      correct_answer: z.string().optional(),
      explanation: z.string().optional(),
      options: z
        .array(
          z.object({
            id: z.string(),
            text: z.string(),
            is_correct: z.boolean().optional(),
          }),
        )
        .optional(),
    })
    .optional(),
  telemetry: telemetrySchema,
});

const SSE_HEADERS = {
  "Content-Type": "text/event-stream",
  "Cache-Control": "no-cache",
  Connection: "keep-alive",
} as const;

/** SSE stream carrying a single message then [DONE] — used for graceful errors. */
function sseMessageStream(text: string): Response {
  const encoder = new TextEncoder();
  const stream = new ReadableStream({
    start(controller) {
      controller.enqueue(encoder.encode(`data: ${JSON.stringify({ text })}\n\n`));
      controller.enqueue(encoder.encode("data: [DONE]\n\n"));
      controller.close();
    },
  });
  return new Response(stream, { headers: SSE_HEADERS });
}

export async function POST(req: NextRequest) {
  // Never let an unexpected throw become a hard 500 — the client renders that as
  // "Something went wrong" with no recourse. Catch, log for server diagnosis,
  // and stream a graceful message instead.
  try {
    return await handleTutor(req);
  } catch (err) {
    console.error("[AI Tutor] unhandled route error:", err);
    return sseMessageStream(formatTutorRouteError(err));
  }
}

async function handleTutor(req: NextRequest): Promise<Response> {
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

  const { conversation_id, message, context, telemetry: rawTelemetry } =
    parsed.data;
  const cleanMessage = sanitizeUserInput(message);
  const telemetry: FreeStudyTelemetry | null = normalizeTelemetry(rawTelemetry);
  const freeStudy = isFreeStudyTurn(telemetry);

  const { data: conversation } = await supabase
    .from("tutor_conversations")
    .select("id, user_id, context_type, context_id")
    .eq("id", conversation_id)
    .single();

  if (!conversation || conversation.user_id !== user.id) {
    return new Response("Forbidden", { status: 403 });
  }

  // AI runs on the user's own Mistral key. No key → guide them to Settings
  // instead of failing opaquely. (Checked before persisting the user message so
  // the conversation isn't left with a dangling unanswered turn.)
  const ai = await resolveAiClient(req, user);
  if (!ai) {
    return sseMessageStream(NO_KEY_MESSAGE);
  }

  await supabase.from("tutor_messages").insert({
    conversation_id,
    role: "user",
    content: cleanMessage,
  });

  const { data: historyRows } = await supabase
    .from("tutor_messages")
    .select("role, content")
    .eq("conversation_id", conversation_id)
    .order("created_at", { ascending: false })
    // Keep recent context only — a smaller prompt means a faster first token.
    .limit(8);

  const messages: ChatTurn[] = (historyRows ?? [])
    .reverse()
    .filter((m) => m.role === "user" || m.role === "assistant")
    .map((m) => ({
      role: (m.role === "assistant" ? "assistant" : "user") as ChatTurn["role"],
      content: m.content,
    }));

  const examTypeRaw = context?.exam_type;
  const resolvedExamType =
    examTypeRaw && isExamType(examTypeRaw) ? examTypeRaw : null;
  const [subjectConfig, performanceData] = await Promise.all([
    resolvedExamType ? getSubjectConfig(resolvedExamType) : null,
    // Student's score/weak-area snapshot so Scho already knows it and never
    // re-asks "what's your current/target score / which section is hard".
    resolvedExamType
      ? getTutorPerformanceData(supabase, user.id, resolvedExamType)
      : undefined,
  ]);

  // Prefer string startsWith for AP_/IB_ even when enum lagging behind catalog.
  const preloadExam =
    resolvedExamType ??
    (examTypeRaw &&
    (examTypeRaw.startsWith("AP_") || examTypeRaw.startsWith("IB_"))
      ? examTypeRaw
      : null);
  const coursePreload = preloadExam
    ? await resolveCoursePreload(preloadExam, subjectConfig)
    : "";

  const systemInstruction = buildTutorPrompt(undefined, {
    examType: examTypeRaw,
    requestContext: context,
    subjectConfig,
    coursePreload: coursePreload || null,
    performanceData,
    telemetry,
    conversationContext: {
      context_type: conversation.context_type,
      context_id: conversation.context_id,
    },
    questionContext: context?.question_text
      ? {
          question_text: context.question_text,
          topic: context.topic,
          stimulus_text: context.stimulus_text,
          section: context.section,
          selected_option: context.selected_option,
          is_correct: context.is_correct,
          correct_answer: context.correct_answer,
          explanation: context.explanation,
          options: context.options,
        }
      : undefined,
  });

  const encoder = new TextEncoder();
  let assistantText = "";

  const persist = async () => {
    if (!assistantText.trim()) return;
    await supabase.from("tutor_messages").insert({
      conversation_id,
      role: "assistant",
      content: assistantText,
    });
    await supabase
      .from("tutor_conversations")
      .update({ updated_at: new Date().toISOString() })
      .eq("id", conversation_id);
  };

  // Course-aware LangChain agent (`streamTutorAgent` → `streamWithTools`).
  // Free Studying multimodal turns use cooler sampling + slightly longer budget.
  const agentEvents = streamTutorAgent({
    ai,
    systemPrompt: systemInstruction,
    messages,
    examType: preloadExam ?? resolvedExamType ?? examTypeRaw ?? null,
    temperature: freeStudy ? 0.2 : 0.6,
    maxTokens: freeStudy ? 700 : 650,
    maxRounds: 3,
  });

  const stream = new ReadableStream({
    async start(controller) {
      try {
        for await (const event of agentEvents) {
          if (event.type === "token") {
            assistantText += event.text;
            controller.enqueue(
              encoder.encode(`data: ${JSON.stringify({ text: event.text })}\n\n`),
            );
          } else if (event.type === "search") {
            // Transient UI indicator — not persisted to the message history.
            const status = event.query
              ? `Searching the web for “${event.query}”…`
              : "Searching the web…";
            controller.enqueue(
              encoder.encode(`data: ${JSON.stringify({ status })}\n\n`),
            );
          }
        }
        // Persist BEFORE closing: a DB error here must not trigger an enqueue
        // on a closed controller (that throw would escape as a 500).
        await persist();
        controller.enqueue(encoder.encode("data: [DONE]\n\n"));
        controller.close();
      } catch (err) {
        console.error("[AI Tutor stream]", err);
        try {
          controller.enqueue(
            encoder.encode(
              `data: ${JSON.stringify({ text: formatTutorAgentError(err) })}\n\n`,
            ),
          );
          controller.enqueue(encoder.encode("data: [DONE]\n\n"));
          controller.close();
        } catch {
          /* controller already closed — nothing left to send */
        }
      }
    },
  });

  return new Response(stream, { headers: SSE_HEADERS });
}
