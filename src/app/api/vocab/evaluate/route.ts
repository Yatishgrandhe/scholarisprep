import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { completeJson } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";

type EvalResult = { correct: boolean; feedback: string };

function escapeRegex(s: string): string {
  return s.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

/** Heuristic fallback when no AI key is configured (or the model errors). */
function heuristic(word: string, sentence: string): EvalResult {
  const usesWord = new RegExp(`\\b${escapeRegex(word)}`, "i").test(sentence);
  const wordCount = sentence.trim().split(/\s+/).filter(Boolean).length;
  if (!usesWord) {
    return { correct: false, feedback: `Make sure your sentence actually uses "${word}".` };
  }
  if (wordCount < 4) {
    return { correct: false, feedback: "Add more context — aim for a full sentence." };
  }
  return { correct: true, feedback: "Looks good — your sentence uses the word in context." };
}

export async function POST(req: Request) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const body = (await req.json().catch(() => null)) as {
    word?: unknown;
    definition?: unknown;
    sentence?: unknown;
  } | null;
  const word = typeof body?.word === "string" ? body.word.trim() : "";
  const definition =
    typeof body?.definition === "string" ? body.definition.trim() : "";
  const sentence =
    typeof body?.sentence === "string" ? body.sentence.trim() : "";

  if (!word || !sentence) {
    return NextResponse.json(
      { error: "Missing word or sentence" },
      { status: 400 },
    );
  }

  const ai = await resolveAiClient(req, user);
  if (!ai) {
    return NextResponse.json({ ...heuristic(word, sentence), ai: false });
  }

  const prompt = `You are an SAT vocabulary coach grading whether a student used a word correctly.

Word: "${word}"
Definition: "${definition || "(use the word's standard meaning)"}"
Student's sentence: "${sentence}"

Decide if the sentence uses the word in a way that fits its meaning and is grammatical. Be encouraging but honest. Respond with ONLY strict JSON, no prose:
{"correct": true|false, "feedback": "one short, specific sentence of feedback"}`;

  try {
    const result = await completeJson<Partial<EvalResult>>(ai, prompt, {
      temperature: 0.2,
      maxTokens: 180,
    });
    return NextResponse.json({
      correct: Boolean(result?.correct),
      feedback:
        typeof result?.feedback === "string" && result.feedback.trim()
          ? result.feedback.trim()
          : "Checked.",
      ai: true,
    });
  } catch {
    // Model hiccup / unparseable output — fall back to the heuristic.
    return NextResponse.json({ ...heuristic(word, sentence), ai: false });
  }
}
