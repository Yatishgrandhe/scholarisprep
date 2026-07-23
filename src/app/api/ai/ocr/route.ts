import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { HumanMessage, SystemMessage } from "@langchain/core/messages";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import { createChatModel, NO_KEY_MESSAGE } from "@/lib/ai/mistral";

export const runtime = "nodejs";
export const maxDuration = 30;

const schema = z.object({
  image: z.string().min(10).max(5_000_000),
  prompt: z.string().max(2000).optional(),
  mode: z.enum(["handwriting", "printed", "math", "auto"]).default("auto"),
});

const OCR_PROMPTS: Record<string, string> = {
  auto: `Extract ALL text from this image. Preserve the original layout, spacing, and line breaks as closely as possible. For handwritten text, read it carefully even if imperfect. For printed text, reproduce it exactly. Return ONLY the extracted text with no commentary.`,
  handwriting: `Read this whiteboard/handwritten image carefully. Extract every word, number, and symbol you can see. Preserve line breaks and approximate spacing. For math expressions, use standard notation (e.g. x^2, √, fractions). Return ONLY the extracted text.`,
  printed: `Extract all printed/typed text from this image exactly as it appears. Preserve formatting, line breaks, and structure. Return ONLY the extracted text.`,
  math: `Extract all mathematical expressions, equations, and text from this image. Use standard math notation: superscripts as x^2, square roots as √, fractions as a/b. Preserve the structure of multi-line math. Return ONLY the extracted math and text.`,
};

function sseError(message: string, status = 400): NextResponse {
  return NextResponse.json({ error: message }, { status });
}

export async function POST(req: NextRequest) {
  try {
    const csrfFailure = verifyCsrf(req);
    if (csrfFailure) return csrfFailure;

    const supabase = await createClient();
    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (!user) return sseError("Unauthorized", 401);

    const limited = rateLimit("free-study-ocr", user.id);
    if (!limited.ok) return rateLimitResponse(limited.retryAfterSeconds);

    let rawJson: unknown;
    try {
      rawJson = await req.json();
    } catch {
      return sseError("Invalid JSON body");
    }

    const parsed = schema.safeParse(rawJson);
    if (!parsed.success) {
      return sseError("Validation failed: " + parsed.error.flatten().formErrors.join(", "));
    }

    const { image, prompt, mode } = parsed.data;

    const ai = await resolveAiClient(req, user);
    if (!ai) return sseError(NO_KEY_MESSAGE, 400);

    const systemPrompt = prompt || OCR_PROMPTS[mode] || OCR_PROMPTS.auto;
    const imageUrl = image.startsWith("data:") ? image : `data:image/png;base64,${image}`;

    const model = createChatModel(ai, { temperature: 0.1, maxTokens: 2000 });

    const response = await model.invoke([
      new SystemMessage(systemPrompt),
      new HumanMessage({
        content: [
          { type: "image_url", image_url: { url: imageUrl } },
          { type: "text", text: "Extract all text from this image." },
        ],
      }),
    ]);

    const text =
      typeof response.content === "string"
        ? response.content
        : Array.isArray(response.content)
          ? response.content
              .map((p: { type: string; text?: string }) => (p.type === "text" ? p.text : ""))
              .join("")
          : "";

    return NextResponse.json({ text: text.trim() });
  } catch (err) {
    console.error("[AI OCR]", err);
    return sseError("OCR failed. Please try again.", 500);
  }
}
