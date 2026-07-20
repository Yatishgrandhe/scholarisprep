import type { Question } from "@/components/question/QuestionInterface";
import { isMathSection } from "@/lib/question/isMathSection";

export type HighlightColor = "yellow" | "blue" | "pink";

export type TextSegment =
  | { type: "text"; value: string }
  | { type: "highlight"; value: string; color: HighlightColor };

export type PassageExcerpt = {
  segments: TextSegment[];
};

export type EliminatedOption = {
  id: string;
  text: string;
  rationale: string;
};

export type ExplanationStep = {
  number: number;
  title: string;
  body: string;
  passageExcerpt?: PassageExcerpt;
  eliminatedOptions: EliminatedOption[];
};

export type OptionVerdict = {
  id: string;
  text: string;
  isCorrect: boolean;
  rationale: string;
};

export type ParsedStepExplanation = {
  steps: ExplanationStep[];
  plainText: string;
  optionVerdicts: OptionVerdict[];
  correctOptionId: string;
  hasStructuredSteps: boolean;
};

const HIGHLIGHT_COLORS: HighlightColor[] = ["yellow", "blue", "pink"];

const STEP_SPLIT_RE =
  /(?=\*{0,2}Step\s+\d+\s*(?:[—–:\-]|\s*[—–:\-]|\s*:\s*))/i;

const STEP_HEADER_RE =
  /^\*{0,2}Step\s+(\d+)\s*(?:[—–\-]\s*([^.\n*]+)|:\s*([^.\n*]+))\.?\*{0,2}\s*/i;

const HIGHLIGHT_MARKER_RE =
  /\{\{(yellow|blue|pink):([^}]+)\}\}/gi;

const DISTRACTOR_LINE_RE =
  /[-•*]\s*\*{0,2}([A-D])\*{0,2}\s*(?:\(([^)]*)\))?\s*:?\s*(.+)/i;

const GENERIC_OPTION_EXPLANATION_RE =
  /^(correct\s*\([A-D]\)|matches the worked solution|reflects a common misread)/i;

type QuestionInput = Pick<
  Question,
  "explanation" | "options" | "stimulus_text" | "stimulus_type" | "section"
>;

function normalizeWhitespace(text: string): string {
  return text.replace(/\r\n/g, "\n").trim();
}

function stripMarkdownBold(text: string): string {
  return text.replace(/\*\*/g, "").trim();
}

/** Remove `{{color:phrase}}` highlight markers, keeping the phrase text. */
function stripHighlightMarkers(text: string): string {
  return text
    .replace(/\{\{(?:yellow|blue|pink):([^}]+)\}\}/gi, "$1")
    .replace(/[ \t]{2,}/g, " ")
    .trim();
}

function colorForStep(stepNumber: number): HighlightColor {
  return HIGHLIGHT_COLORS[(stepNumber - 1) % HIGHLIGHT_COLORS.length];
}

function splitSentences(text: string): string[] {
  const cleaned = stripMarkdownBold(text);
  const parts = cleaned
    .split(/(?<=[.!?])\s+(?=[A-Z"'])/)
    .map((s) => s.trim())
    .filter(Boolean);
  return parts.length > 0 ? parts : [cleaned];
}

function extractDistractorSection(text: string): {
  main: string;
  distractors: Map<string, string>;
} {
  const marker = /(?:\*\*)?Distractor analysis:?\*{0,2}/i;
  const match = marker.exec(text);
  if (!match) {
    return { main: text, distractors: new Map() };
  }

  const main = text.slice(0, match.index).trim();
  const tail = text.slice(match.index + match[0].length).trim();
  const distractors = new Map<string, string>();

  for (const line of tail.split("\n")) {
    const parsed = DISTRACTOR_LINE_RE.exec(line.trim());
    if (!parsed) continue;
    distractors.set(parsed[1].toUpperCase(), stripMarkdownBold(parsed[3] ?? "").trim());
  }

  return { main, distractors };
}

function parseStepBlocks(text: string): Array<{ number: number; title: string; body: string }> {
  const blocks = text
    .split(STEP_SPLIT_RE)
    .map((b) => b.trim())
    .filter(Boolean);

  if (blocks.length <= 1 && !/^Step\s+\d+/i.test(blocks[0] ?? "")) {
    return [];
  }

  const steps: Array<{ number: number; title: string; body: string }> = [];

  for (const block of blocks) {
    const headerMatch = STEP_HEADER_RE.exec(block);
    if (!headerMatch) continue;

    const number = Number(headerMatch[1]);
    const title = stripMarkdownBold(headerMatch[2] ?? headerMatch[3] ?? "").trim();
    const body = block.slice(headerMatch[0].length).trim();
    steps.push({
      number,
      title: title || `Step ${number}`,
      body: stripMarkdownBold(body),
    });
  }

  return steps;
}

function synthesizeProseSteps(
  text: string,
  isMath: boolean,
): Array<{ number: number; title: string; body: string }> {
  const sentences = splitSentences(text);
  if (sentences.length <= 1) {
    return [
      {
        number: 1,
        title: isMath ? "Understand the problem" : "Read the passage and question",
        body: text,
      },
    ];
  }

  if (sentences.length <= 3) {
    const titles = isMath
      ? ["Understand the problem", "Work through the solution", "Confirm the answer"]
      : ["Understand the question", "Analyze the choices", "Select the best answer"];

    return sentences.map((body, index) => ({
      number: index + 1,
      title: titles[index] ?? `Step ${index + 1}`,
      body,
    }));
  }

  const third = Math.max(1, Math.floor(sentences.length / 3));
  const groups = [
    sentences.slice(0, third).join(" "),
    sentences.slice(third, third * 2).join(" "),
    sentences.slice(third * 2).join(" "),
  ].filter(Boolean);

  const titles = isMath
    ? ["Understand the problem", "Solve step by step", "Select the correct answer"]
    : ["Understand the passage", "Evaluate each choice", "Confirm the best answer"];

  return groups.map((body, index) => ({
    number: index + 1,
    title: titles[index] ?? `Step ${index + 1}`,
    body,
  }));
}

function extractQuotedPhrases(text: string): string[] {
  const phrases: string[] = [];
  const patterns = [
    /"([^"]{8,120})"/g,
    /'([^']{8,120})'/g,
    /"([^"]{8,120})"/g,
  ];

  for (const pattern of patterns) {
    let match: RegExpExecArray | null;
    while ((match = pattern.exec(text)) !== null) {
      phrases.push(match[1].trim());
    }
  }

  return [...new Set(phrases)];
}

function extractHighlightMarkers(text: string): Array<{ phrase: string; color: HighlightColor }> {
  const markers: Array<{ phrase: string; color: HighlightColor }> = [];
  let match: RegExpExecArray | null;
  const re = new RegExp(HIGHLIGHT_MARKER_RE.source, "gi");
  while ((match = re.exec(text)) !== null) {
    const color = match[1].toLowerCase() as HighlightColor;
    markers.push({ phrase: match[2].trim(), color });
  }
  return markers;
}

function findPhraseInText(
  phrase: string,
  haystack: string,
): { index: number; length: number } | null {
  const normalizedPhrase = phrase.trim();
  if (!normalizedPhrase || normalizedPhrase.length < 4) return null;

  const direct = haystack.indexOf(normalizedPhrase);
  if (direct >= 0) {
    return { index: direct, length: normalizedPhrase.length };
  }

  const lowerHay = haystack.toLowerCase();
  const lowerPhrase = normalizedPhrase.toLowerCase();
  const lowerIndex = lowerHay.indexOf(lowerPhrase);
  if (lowerIndex >= 0) {
    return { index: lowerIndex, length: normalizedPhrase.length };
  }

  return null;
}

function buildPassageExcerpt(
  stimulus: string,
  stepBody: string,
  stepNumber: number,
): PassageExcerpt | undefined {
  const highlights: Array<{ start: number; end: number; color: HighlightColor }> = [];

  const addHighlight = (phrase: string, color: HighlightColor) => {
    const found = findPhraseInText(phrase, stimulus);
    if (!found) return;
    const end = found.index + found.length;
    const overlaps = highlights.some(
      (h) => !(end <= h.start || found.index >= h.end),
    );
    if (!overlaps) {
      highlights.push({ start: found.index, end, color });
    }
  };

  for (const marker of extractHighlightMarkers(stepBody)) {
    addHighlight(marker.phrase, marker.color);
  }

  const defaultColor = colorForStep(stepNumber);
  for (const phrase of extractQuotedPhrases(stepBody)) {
    addHighlight(phrase, defaultColor);
  }

  if (highlights.length === 0) {
    return undefined;
  }

  highlights.sort((a, b) => a.start - b.start);

  const segments: TextSegment[] = [];
  let cursor = 0;

  for (const highlight of highlights) {
    if (highlight.start > cursor) {
      segments.push({
        type: "text",
        value: stimulus.slice(cursor, highlight.start),
      });
    }
    segments.push({
      type: "highlight",
      value: stimulus.slice(highlight.start, highlight.end),
      color: highlight.color,
    });
    cursor = highlight.end;
  }

  if (cursor < stimulus.length) {
    segments.push({ type: "text", value: stimulus.slice(cursor) });
  }

  return { segments };
}

function parseEliminatedFromStep(
  stepBody: string,
  options: QuestionInput["options"],
  distractors: Map<string, string>,
  isFinalStep: boolean,
): EliminatedOption[] {
  const eliminated: EliminatedOption[] = [];

  for (const option of options) {
    if (option.is_correct) continue;

    const idPattern = new RegExp(
      `(?:eliminate|choice\\s+${option.id}|option\\s+${option.id}|\\*\\*${option.id}\\*\\*|\\b${option.id}\\b\\s*(?:is\\s+)?(?:wrong|incorrect))`,
      "i",
    );

    const mentionedInStep = idPattern.test(stepBody);
    const fromDistractorBlock = isFinalStep && distractors.has(option.id);

    if (!mentionedInStep && !fromDistractorBlock) {
      continue;
    }

    const rationale =
      distractors.get(option.id) ??
      option.explanation?.trim() ??
      "This choice does not match the reasoning in this step.";

    eliminated.push({
      id: option.id,
      text: option.text,
      rationale: stripHighlightMarkers(stripMarkdownBold(rationale)),
    });
  }

  return eliminated;
}

function resolveOptionRationale(
  option: QuestionInput["options"][number],
  mainExplanation: string,
  distractors: Map<string, string>,
): string {
  const fromDistractor = distractors.get(option.id);
  if (fromDistractor) return fromDistractor;

  const optionExpl = option.explanation?.trim() ?? "";
  if (!optionExpl) return "";

  if (optionExpl === mainExplanation.trim()) return "";

  if (GENERIC_OPTION_EXPLANATION_RE.test(optionExpl)) {
    return option.is_correct ? "" : stripHighlightMarkers(optionExpl);
  }

  return stripHighlightMarkers(stripMarkdownBold(optionExpl));
}

function shouldUseStimulus(stimulusType?: Question["stimulus_type"]): boolean {
  return (
    stimulusType === "passage" ||
    stimulusType === "poem" ||
    stimulusType === undefined ||
    stimulusType === null
  );
}

export function parseStepExplanation(question: QuestionInput): ParsedStepExplanation {
  const explanation = normalizeWhitespace(question.explanation ?? "");
  const stimulus = question.stimulus_text?.trim() ?? "";
  const isMath = isMathSection(question.section ?? "");

  const { main, distractors } = extractDistractorSection(explanation);
  let rawSteps = parseStepBlocks(main);

  const hasStructuredSteps = rawSteps.length > 0;
  if (!hasStructuredSteps && explanation) {
    rawSteps = synthesizeProseSteps(main || explanation, isMath);
  }

  const correctOption =
    question.options.find((o) => o.is_correct) ?? question.options[0];

  const steps: ExplanationStep[] = rawSteps.map((step, index) => {
    // Build the highlighted passage box from the RAW body (needs the markers),
    // then strip the markers from the body text shown to the reader.
    const passageExcerpt =
      stimulus && shouldUseStimulus(question.stimulus_type)
        ? buildPassageExcerpt(stimulus, step.body, step.number)
        : undefined;
    return {
      number: step.number,
      title: stripHighlightMarkers(step.title),
      body: stripHighlightMarkers(step.body),
      passageExcerpt,
      eliminatedOptions: parseEliminatedFromStep(
        step.body,
        question.options,
        distractors,
        index === rawSteps.length - 1,
      ),
    };
  });

  const optionVerdicts: OptionVerdict[] = question.options.map((option) => ({
    id: option.id,
    text: option.text,
    isCorrect: option.is_correct,
    rationale: resolveOptionRationale(option, explanation, distractors),
  }));

  return {
    steps,
    plainText: stripHighlightMarkers(explanation),
    optionVerdicts,
    correctOptionId: correctOption?.id ?? "A",
    hasStructuredSteps,
  };
}

export function buildHighlightedPassageText(segments: TextSegment[]): string {
  return segments
    .map((segment) =>
      segment.type === "text"
        ? segment.value
        : `{{${segment.color}:${segment.value}}}`,
    )
    .join("");
}
