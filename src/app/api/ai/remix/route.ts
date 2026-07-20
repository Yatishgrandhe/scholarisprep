/**
 * POST /api/ai/remix — generate a same-skill, same-difficulty variant of a
 * question in a fresh real-world context, on the user's own Mistral key.
 *
 * Exam-aware: SAT / ACT / AP / IB writer personas. Supports MCQ and FRQ remix.
 * Ephemeral — client stores in sessionStorage; we persist nothing here.
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
import { figureSpecSchema, renderFigure } from "@/lib/ai/figureRender";
import {
  isFrqQuestionType,
  remixFrqSystemPrompt,
  remixMcqSystemPrompt,
} from "@/lib/ai/remixPrompts";

export const runtime = "nodejs";

const optionIn = z.object({
  id: z.string(),
  text: z.string(),
  is_correct: z.boolean().optional(),
});

const inputSchema = z.object({
  exam_type: z.string().optional(),
  question: z.object({
    id: z.string(),
    question_text: z.string(),
    stimulus_text: z.string().optional().default(""),
    options: z.array(optionIn).optional().default([]),
    correct_answer: z.string().optional(),
    explanation: z.string().optional(),
    topic: z.string().optional(),
    section: z.string().optional(),
    difficulty: z.string().optional(),
    math_skill_code: z.string().optional(),
    question_type: z.string().optional(),
    exam_type: z.string().optional(),
  }),
});

const OPTION_ID = z.enum(["A", "B", "C", "D"]);

const mcqRemixSchema = z.object({
  question_text: z.string().min(3),
  stimulus_text: z
    .string()
    .describe(
      "intro/setup prose ONLY — never include <svg>, HTML, or markdown code fences; may be empty for a bare question",
    ),
  options: z
    .array(
      z.object({
        id: OPTION_ID,
        text: z.string().min(1),
        is_correct: z.boolean(),
        explanation: z
          .string()
          .describe("why this choice is right or the specific error that produces it"),
      }),
    )
    .length(4),
  correct_answer: OPTION_ID,
  answer_value: z
    .string()
    .describe(
      "the plain final value of the correct answer, e.g. '12', '6/11', '3\\\\sqrt2' — MUST equal the correct option's value",
    ),
  explanation: z.string().min(3).describe("full worked solution, using LaTeX $...$ for math"),
  figure: figureSpecSchema
    .optional()
    .describe("only when the item needs a drawing; else omit or use kind:none"),
});

const frqRemixSchema = z.object({
  question_text: z.string().min(3),
  stimulus_text: z.string().describe("setup/stimulus prose only; no SVG/HTML"),
  model_answer: z.string().min(3).describe("expected key points / model response"),
  rubric: z.string().min(3).describe("brief scoring rubric (points per part)"),
  explanation: z.string().min(3).describe("full worked solution with Goal/Steps/Answer"),
  figure: figureSpecSchema.optional(),
});

function normVal(s: string): string {
  return String(s)
    .replace(/\$/g, "")
    .replace(/\\[dt]?frac\s*\{(-?\d+)\}\s*\{(-?\d+)\}/g, "$1/$2")
    .replace(/\\left|\\right|\\,|\\;|\\!|\s/g, "")
    .replace(/\\cdot|\\times/g, "*")
    .toLowerCase()
    .trim();
}

function stripSvg(s: string): string {
  return (s || "").replace(/<svg[\s\S]*?<\/svg>/g, "").trim();
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

    const limited = rateLimit("ai-remix", user.id);
    if (!limited.ok) return rateLimitResponse(limited.retryAfterSeconds);

    const ai = await resolveAiClient(req, user);
    if (!ai) {
      return NextResponse.json({ error: NO_KEY_MESSAGE, code: "NO_AI_KEY" }, { status: 400 });
    }

    const parsed = await parseJsonBody(req, inputSchema);
    if (!parsed.ok) return parsed.response;
    const q = parsed.data.question;
    const examType =
      parsed.data.exam_type || q.exam_type || "SAT";
    const questionType = q.question_type || "multiple_choice";
    const frqMode = isFrqQuestionType(questionType);

    if (!frqMode && (q.options?.length ?? 0) < 2) {
      return NextResponse.json(
        { error: "MCQ remix requires at least 2 options on the source item." },
        { status: 400 },
      );
    }

    const hadFigure = /<svg/.test(q.stimulus_text || "");
    const payload = {
      exam_type: examType,
      question_type: questionType,
      skill: q.math_skill_code || q.topic || q.section || "unknown",
      difficulty: q.difficulty || "medium",
      question_text: q.question_text,
      stimulus_text: stripSvg(q.stimulus_text || ""),
      has_figure: hadFigure,
      options: (q.options ?? []).map((o) => ({ id: o.id, text: o.text })),
      explanation: q.explanation ?? "",
    };

    const model = createChatModel(ai, { temperature: 0.85, maxTokens: 2200 });
    const figureHint = hadFigure
      ? "This item HAS a figure — include a matching `figure` spec whose numbers agree with your question."
      : "This item has no figure — omit `figure` (or use kind:none).";

    if (frqMode) {
      const structured = model.withStructuredOutput(frqRemixSchema, {
        name: "remixed_frq_item",
      });
      const messages = [
        new SystemMessage(remixFrqSystemPrompt(examType)),
        new HumanMessage(
          `SOURCE ITEM (JSON):\n${JSON.stringify(payload)}\n\n${figureHint}`,
        ),
      ];

      type FrqOut = z.infer<typeof frqRemixSchema>;
      let out: FrqOut | null = null;
      for (let attempt = 0; attempt < 2 && !out; attempt++) {
        try {
          const candidate = await structured.invoke(messages);
          if (candidate.question_text.trim().length >= 3) out = candidate;
        } catch (e) {
          if (attempt === 1) throw e;
        }
      }
      if (!out) {
        return NextResponse.json(
          { error: "Remix produced an inconsistent FRQ — try again." },
          { status: 422 },
        );
      }

      let stimulus = stripSvg(out.stimulus_text || "");
      const svg = renderFigure(out.figure ?? null);
      if (svg) stimulus = (stimulus ? stimulus + "\n\n" : "") + svg;

      const remixed = {
        id: q.id,
        question_text: out.question_text.trim(),
        stimulus_text: stimulus,
        options: [],
        correct_answer: out.model_answer,
        explanation: out.explanation,
        topic: q.topic,
        section: q.section,
        difficulty: q.difficulty,
        question_type: questionType,
        exam_type: examType,
        rubric: out.rubric,
        model_answer: out.model_answer,
        is_remix: true,
      };
      return NextResponse.json({ question: remixed });
    }

    const structured = model.withStructuredOutput(mcqRemixSchema, {
      name: "remixed_item",
    });
    const messages = [
      new SystemMessage(remixMcqSystemPrompt(examType)),
      new HumanMessage(
        `SOURCE ITEM (JSON):\n${JSON.stringify(payload)}\n\n${figureHint}`,
      ),
    ];

    type Remixed = z.infer<typeof mcqRemixSchema>;
    const isValid = (o: Remixed) => {
      const ids = o.options.map((x) => x.id).sort().join(",");
      const corr = o.options.filter((x) => x.is_correct);
      const distinct = new Set(o.options.map((x) => x.text)).size === 4;
      if (
        ids !== "A,B,C,D" ||
        corr.length !== 1 ||
        corr[0].id !== o.correct_answer ||
        !distinct
      ) {
        return false;
      }
      const keyed = normVal(corr[0].text);
      const stated = normVal(o.answer_value);
      const clean = /^-?[\d./*]+$/;
      if (clean.test(keyed) && clean.test(stated) && keyed !== stated) return false;
      return true;
    };

    let out: Remixed | null = null;
    for (let attempt = 0; attempt < 2 && !out; attempt++) {
      try {
        const candidate = await structured.invoke(messages);
        if (isValid(candidate)) out = candidate;
      } catch (e) {
        if (attempt === 1) throw e;
      }
    }
    if (!out) {
      return NextResponse.json(
        { error: "Remix produced an inconsistent item — try again." },
        { status: 422 },
      );
    }

    let stimulus = stripSvg(out.stimulus_text || "");
    const svg = renderFigure(out.figure ?? null);
    if (svg) stimulus = (stimulus ? stimulus + "\n\n" : "") + svg;

    const remixed = {
      id: q.id,
      question_text: out.question_text.trim(),
      stimulus_text: stimulus,
      options: out.options.map((o) => ({
        id: o.id,
        text: o.text,
        is_correct: o.is_correct,
        explanation: o.explanation,
      })),
      correct_answer: out.correct_answer,
      explanation: out.explanation,
      topic: q.topic,
      section: q.section,
      difficulty: q.difficulty,
      question_type: questionType,
      exam_type: examType,
      is_remix: true,
    };
    return NextResponse.json({ question: remixed });
  } catch (err) {
    console.error("[AI Remix] error:", err);
    const detail = err instanceof Error ? err.message : String(err);
    return NextResponse.json(
      { error: `Couldn't remix this question — ${detail}` },
      { status: 500 },
    );
  }
}
