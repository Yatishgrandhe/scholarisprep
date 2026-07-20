import { completeJson, type AiAuth } from "@/lib/ai/mistral";
import { sanitizeUserInput } from "@/lib/sanitize";
import type { DiagnosticSection, DiagnosticSlot } from "./diagnosticBlueprint";

export type GeneratedOption = {
  id: string;
  text: string;
  is_correct: boolean;
};

export type GeneratedDiagnosticQuestion = {
  question_text: string;
  stimulus_text?: string | null;
  stimulus_type?: string | null;
  options: GeneratedOption[];
  explanation: string;
  hint: string;
  topic: string;
  section: DiagnosticSection;
  difficulty: "hard" | "expert";
  calculator_allowed: boolean;
};

function normalizeOptions(raw: unknown): GeneratedOption[] {
  if (!Array.isArray(raw)) return [];
  return raw
    .map((o, i) => {
      const item = o as Record<string, unknown>;
      const id = String(item.id ?? ["A", "B", "C", "D"][i] ?? "A");
      return {
        id,
        text: String(item.text ?? ""),
        is_correct: Boolean(item.is_correct),
      };
    })
    .filter((o) => o.text.length > 0)
    .slice(0, 4);
}

function longPassage(topic: string): string {
  return [
    `Scholars studying ${topic} have long debated how institutions adapt when social and economic pressures accelerate. Historical records from the late twentieth century suggest that policy shifts often lag behind measurable changes in public behavior, leaving analysts to infer causes from incomplete data.`,
    `More recent fieldwork complicates that narrative. Researchers documenting community responses found that local organizations sometimes implemented reforms years before national guidelines changed, especially when funding structures rewarded early experimentation. These findings imply that "lag" may be an artifact of which units researchers choose to measure rather than a universal delay.`,
    `A parallel line of inquiry examines media coverage. When journalists frame ${topic} as a crisis, audiences report heightened concern, yet longitudinal surveys show that sustained engagement depends on whether stories highlight actionable steps. Episodic alarm without practical recommendations tends to produce short spikes in attention followed by rapid disengagement.`,
    `Taken together, the evidence supports a nuanced conclusion: adaptation is neither purely top-down nor purely grassroots. Instead, outcomes emerge from networks of actors—educators, planners, advocates, and residents—whose incentives align only intermittently. Understanding those alignments, the authors argue, is essential for predicting which interventions will endure beyond initial publicity.`,
  ].join("\n\n");
}

type MathStub = {
  stem: (topic: string) => string;
  options: GeneratedOption[];
  explanation: string;
};

const MATH_STUBS: MathStub[] = [
  {
    stem: (topic) =>
      `A company's revenue $R$ (in thousands) is modeled by $R(t)=-2t^2+28t+120$ for $0\\le t\\le 14$, where $t$ is months after launch. For ${topic}, what is the maximum revenue in thousands?`,
    options: [
      { id: "A", text: "196", is_correct: false },
      { id: "B", text: "208", is_correct: false },
      { id: "C", text: "218", is_correct: true },
      { id: "D", text: "232", is_correct: false },
    ],
    explanation:
      "The vertex is at $t=-b/(2a)=28/4=7$, so $R(7)=-2(49)+28(7)+120=218$.",
  },
  {
    stem: (topic) =>
      `In the $xy$-plane, line $\\ell$ is perpendicular to the line $3x-4y=8$ and passes through $(2,-1)$. What is the $y$-coordinate of the point on $\\ell$ where $x=5$? (${topic})`,
    options: [
      { id: "A", text: "-5", is_correct: true },
      { id: "B", text: "-3", is_correct: false },
      { id: "C", text: "1", is_correct: false },
      { id: "D", text: "3", is_correct: false },
    ],
    explanation:
      "The given line has slope $3/4$, so $\\ell$ has slope $-4/3$. From $(2,-1)$: $y=-1-\\tfrac{4}{3}(5-2)=-5$.",
  },
  {
    stem: () =>
      `The function $f$ is defined by $f(x)=\\dfrac{x^2-9}{x-3}$ for $x\\ne 3$. If $g(x)=2f(x)-5$, what is $g(7)$?`,
    options: [
      { id: "A", text: "9", is_correct: false },
      { id: "B", text: "12", is_correct: false },
      { id: "C", text: "15", is_correct: true },
      { id: "D", text: "19", is_correct: false },
    ],
    explanation:
      "For $x\\ne 3$, $f(x)=x+3$, so $f(7)=10$ and $g(7)=2(10)-5=15$.",
  },
  {
    stem: (topic) =>
      `A dataset of 12 values has mean 18. Two values, 10 and 14, are removed. What is the mean of the remaining 10 values? (${topic})`,
    options: [
      { id: "A", text: "18", is_correct: false },
      { id: "B", text: "18.6", is_correct: false },
      { id: "C", text: "19.2", is_correct: true },
      { id: "D", text: "20.4", is_correct: false },
    ],
    explanation:
      "The original sum is $12\\times 18=216$. Removing $10+14=24$ leaves $192$, and $192/10=19.2$.",
  },
  {
    stem: () =>
      `A right circular cylinder has volume $54\\pi$ and height 6. A sphere has the same radius as the cylinder's base. What is the sphere's volume?`,
    options: [
      { id: "A", text: "$27\\pi$", is_correct: false },
      { id: "B", text: "$36\\pi$", is_correct: true },
      { id: "C", text: "$48\\pi$", is_correct: false },
      { id: "D", text: "$54\\pi$", is_correct: false },
    ],
    explanation:
      "From $\\pi r^2(6)=54\\pi$, $r^2=9$ so $r=3$. The sphere's volume is $\\tfrac{4}{3}\\pi(27)=36\\pi$.",
  },
];

function pickMathStub(seed: string): MathStub {
  const k = parseInt(seed.slice(-4), 16) % MATH_STUBS.length;
  return MATH_STUBS[k] ?? MATH_STUBS[0]!;
}

export function stubDiagnosticQuestion(
  slot: DiagnosticSlot,
  sessionSeed: string,
  examType: string,
): GeneratedDiagnosticQuestion {
  const itemSeed = `${sessionSeed}-${slot.index}`;
  const isRw = slot.section === "reading_writing";

  if (isRw) {
    return {
      question_text: `Based on the passage, which choice best addresses the ${slot.topic} skill being tested?`,
      stimulus_text: longPassage(slot.topic),
      stimulus_type: "passage",
      options: [
        { id: "A", text: "It claims reform always fails", is_correct: false },
        {
          id: "B",
          text: "It emphasizes nuanced, multi-actor adaptation",
          is_correct: true,
        },
        { id: "C", text: "It rejects all historical evidence", is_correct: false },
        { id: "D", text: "It focuses only on media effects", is_correct: false },
      ],
      explanation:
        "The passage concludes that outcomes depend on interacting networks of actors, not a single cause.",
      hint: "Track the final paragraph's main claim.",
      topic: slot.topic,
      section: slot.section,
      difficulty: slot.difficulty,
      calculator_allowed: false,
    };
  }

  const stub = pickMathStub(itemSeed);
  return {
    question_text: stub.stem(slot.topic),
    stimulus_text: null,
    stimulus_type: null,
    options: stub.options.map((o) => ({ ...o })),
    explanation: stub.explanation,
    hint: "Identify the structure (vertex, slope, mean, or volume) before computing.",
    topic: slot.topic,
    section: slot.section,
    difficulty: slot.difficulty,
    calculator_allowed: slot.difficulty === "expert",
  };
}

function buildPrompt(
  slot: DiagnosticSlot,
  sessionSeed: string,
  examType: string,
): string {
  const itemSeed = sanitizeUserInput(`${sessionSeed}-q${slot.index}`);
  const topic = sanitizeUserInput(slot.topic);

  if (slot.section === "reading_writing") {
    return `You are an expert ${examType} Reading and Writing item writer. Generate ONE unique question.

Topic/skill: ${topic}
Uniqueness seed: ${itemSeed}
Difficulty: hard (Digital SAT caliber)

Return ONLY valid JSON:
{
  "question_text": "string",
  "stimulus_text": "string — REQUIRED: a full passage of 450–650 words split into 4 paragraphs separated by blank lines. Do NOT prefix paragraphs with labels like 'Paragraph 1' or 'Passage'. Use varied, college-level prose. Do NOT use placeholder lorem ipsum.",
  "options": [
    { "id": "A", "text": "string", "is_correct": false },
    { "id": "B", "text": "string", "is_correct": true },
    { "id": "C", "text": "string", "is_correct": false },
    { "id": "D", "text": "string", "is_correct": false }
  ],
  "explanation": "string",
  "hint": "string"
}

Requirements:
- Exactly 4 options A–D with exactly one is_correct true.
- Passage must be substantially longer than a short blurb (minimum ~450 words).
- Question must require reading the full passage, not just the first sentence.`;
  }

  return `You are an expert ${examType} Math item writer. Generate ONE unique question.

Topic: ${topic}
Uniqueness seed: ${itemSeed}
Difficulty: ${slot.difficulty} (challenging, multi-step, appropriate for strong SAT students)

Return ONLY valid JSON:
{
  "question_text": "string (use $...$ LaTeX for math)",
  "stimulus_text": null,
  "options": [
    { "id": "A", "text": "string", "is_correct": false },
    { "id": "B", "text": "string", "is_correct": true },
    { "id": "C", "text": "string", "is_correct": false },
    { "id": "D", "text": "string", "is_correct": false }
  ],
  "explanation": "string with brief solution steps",
  "hint": "string"
}

Requirements:
- Exactly 4 options A–D with exactly one is_correct true.
- Multi-step reasoning; avoid trivial one-operation items.
- Use realistic SAT-style numbers and contexts.
- For expert difficulty, include a non-obvious twist (e.g., domain restriction, function composition, or interpreting parameters).`;
}

export async function generateDiagnosticQuestion(
  apiKey: AiAuth,
  slot: DiagnosticSlot,
  sessionSeed: string,
  examType: string,
): Promise<GeneratedDiagnosticQuestion> {
  let generated = stubDiagnosticQuestion(slot, sessionSeed, examType);

  try {
    const raw = await completeJson<Record<string, unknown>>(
      apiKey,
      buildPrompt(slot, sessionSeed, examType),
      {
        maxTokens: slot.section === "reading_writing" ? 4096 : 2000,
        temperature: 0.85,
      },
    );
    const options = normalizeOptions(raw.options);
    if (options.some((o) => o.is_correct) && options.length === 4) {
      const stimulusRaw =
        slot.section === "reading_writing"
          ? String(raw.stimulus_text ?? generated.stimulus_text ?? "")
          : null;
      const stimulus = stimulusRaw
        ? stimulusRaw
            .replace(/^\[Passage[^\]]*\]\s*\n*/i, "")
            .replace(/^Paragraph\s+\d+\.?\s*/gim, "")
            .trim()
        : null;
      generated = {
        question_text: String(raw.question_text ?? generated.question_text),
        stimulus_text: stimulus,
        stimulus_type: slot.section === "reading_writing" ? "passage" : null,
        options,
        explanation: String(raw.explanation ?? generated.explanation),
        hint: String(raw.hint ?? generated.hint),
        topic: slot.topic,
        section: slot.section,
        difficulty: slot.difficulty,
        calculator_allowed: slot.section === "math" && slot.difficulty === "expert",
      };
    }
  } catch {
    /* keep stub */
  }

  return generated;
}

export async function generateDiagnosticBatch(
  apiKey: AiAuth,
  slots: DiagnosticSlot[],
  sessionSeed: string,
  examType: string,
  concurrency = 5,
): Promise<GeneratedDiagnosticQuestion[]> {
  const results: GeneratedDiagnosticQuestion[] = new Array(slots.length);
  for (let i = 0; i < slots.length; i += concurrency) {
    const chunk = slots.slice(i, i + concurrency);
    const chunkResults = await Promise.all(
      chunk.map((slot) =>
        generateDiagnosticQuestion(apiKey, slot, sessionSeed, examType),
      ),
    );
    chunk.forEach((slot, j) => {
      results[slot.index] = chunkResults[j]!;
    });
  }
  return results;
}
