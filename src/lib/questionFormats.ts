import { sanitizeUserInput } from "@/lib/sanitize";
import type { Difficulty, ExamType } from "@/types/supabase";
import {
  validateQuestion,
  type QuestionOptionInput,
  type QuestionValidationInput,
  type QuestionValidationResult,
} from "@/lib/questionValidator";

export type GeneratedQuestionPayload = {
  question_text: string;
  stimulus_text?: string | null;
  stimulus_type?: string | null;
  options: QuestionOptionInput[];
  explanation: string;
  hint: string;
};

export type QuestionFormat = {
  exam_type: ExamType | string;
  section: string;
  sectionLabel: string;
  systemInstruction: string;
  outputSchema: string;
  fewShotExamples?: string;
  maxOutputTokens: number;
  temperature: number;
  calculatorAllowed: boolean;
  stimulusType: string | null;
  validateOutput: (raw: unknown) => QuestionValidationResult;
};

const OUTPUT_SCHEMA = `{
  "question_text": "string",
  "stimulus_text": "string or null",
  "options": [
    { "id": "A", "text": "string", "is_correct": false },
    { "id": "B", "text": "string", "is_correct": true },
    { "id": "C", "text": "string", "is_correct": false },
    { "id": "D", "text": "string", "is_correct": false }
  ],
  "explanation": "string",
  "hint": "string"
}`;

const AP_EXAM_TYPES: ExamType[] = [
  "AP_BIOLOGY",
  "AP_CHEMISTRY",
  "AP_PHYSICS",
  "AP_CALCULUS_AB",
  "AP_CALCULUS_BC",
  "AP_STATISTICS",
  "AP_ENGLISH",
  "AP_US_HISTORY",
  "AP_WORLD_HISTORY",
  "AP_PSYCHOLOGY",
  "AP_ECONOMICS",
  "AP_COMPUTER_SCIENCE",
];

function normalizeOptions(raw: unknown): QuestionOptionInput[] {
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

function parsePayload(raw: unknown): GeneratedQuestionPayload | null {
  if (!raw || typeof raw !== "object") return null;
  const record = raw as Record<string, unknown>;
  const options = normalizeOptions(record.options);
  if (options.length !== 4) return null;

  const stimulusRaw = record.stimulus_text;
  const stimulus =
    stimulusRaw === null || stimulusRaw === undefined
      ? null
      : String(stimulusRaw).trim() || null;

  return {
    question_text: String(record.question_text ?? "").trim(),
    stimulus_text: stimulus,
    stimulus_type: stimulus ? String(record.stimulus_type ?? "passage") : null,
    options,
    explanation: String(record.explanation ?? "").trim(),
    hint: String(record.hint ?? "").trim(),
  };
}

function makeValidator(
  examType: ExamType | string,
  section: string,
): (raw: unknown) => QuestionValidationResult {
  return (raw: unknown) => {
    const payload = parsePayload(raw);
    if (!payload) {
      return { valid: false, errors: ["invalid JSON structure"] };
    }
    const input: QuestionValidationInput = {
      exam_type: examType,
      section,
      question_text: payload.question_text,
      stimulus_text: payload.stimulus_text,
      options: payload.options,
      explanation: payload.explanation,
      hint: payload.hint,
    };
    return validateQuestion(input);
  };
}

function baseMcqInstruction(examLabel: string, sectionLabel: string): string {
  return `You are an expert ${examLabel} ${sectionLabel} item writer for Scholaris.
Return ONLY valid JSON matching this schema (no markdown fences):
${OUTPUT_SCHEMA}

Requirements:
- Exactly 4 options A–D with exactly one is_correct: true.
- College-prep caliber; avoid trivial one-step items unless difficulty is easy.
- No lorem ipsum or placeholder text.
- Use $...$ LaTeX for math notation where appropriate.`;
}

function satRwFormat(): QuestionFormat {
  return {
    exam_type: "SAT",
    section: "reading_writing",
    sectionLabel: "SAT Reading & Writing",
    systemInstruction: baseMcqInstruction("Digital SAT", "Reading and Writing"),
    outputSchema: OUTPUT_SCHEMA,
    fewShotExamples: `Digital SAT RW taxonomy (Domains A–E): CID/COE/INF (Information), CTC/TSP/WIC (Craft), SYN/TRA (Expression), BOU/FSS (Conventions).
Formats: cross-text (Text 1 / Text 2, ~150–200 words each), notes synthesis (bullet • notes + rhetorical goal), inference subtypes (general, prediction/forecast, implication), COE two-part (Part A claim + Part B supporting quotation).
Example stem: "Which choice best states the main idea of the text?"
Passage: analytical prose (~200–400 words); CTC requires paired passages of similar length.`,
    maxOutputTokens: 4096,
    temperature: 0.85,
    calculatorAllowed: false,
    stimulusType: "passage",
    validateOutput: makeValidator("SAT", "reading_writing"),
  };
}

function satMathFormat(): QuestionFormat {
  return {
    exam_type: "SAT",
    section: "math",
    sectionLabel: "SAT Math",
    systemInstruction: baseMcqInstruction("Digital SAT", "Math"),
    outputSchema: OUTPUT_SCHEMA,
    maxOutputTokens: 2048,
    temperature: 0.8,
    calculatorAllowed: false,
    stimulusType: null,
    validateOutput: makeValidator("SAT", "math"),
  };
}

function actEnglishFormat(): QuestionFormat {
  return {
    exam_type: "ACT",
    section: "english",
    sectionLabel: "ACT English",
    systemInstruction: baseMcqInstruction("ACT", "English"),
    outputSchema: OUTPUT_SCHEMA,
    maxOutputTokens: 3072,
    temperature: 0.82,
    calculatorAllowed: false,
    stimulusType: "passage",
    validateOutput: makeValidator("ACT", "english"),
  };
}

function actMathFormat(): QuestionFormat {
  return {
    exam_type: "ACT",
    section: "math",
    sectionLabel: "ACT Mathematics",
    systemInstruction: baseMcqInstruction("ACT", "Mathematics"),
    outputSchema: OUTPUT_SCHEMA,
    maxOutputTokens: 2048,
    temperature: 0.8,
    calculatorAllowed: true,
    stimulusType: null,
    validateOutput: makeValidator("ACT", "math"),
  };
}

function actReadingFormat(): QuestionFormat {
  return {
    exam_type: "ACT",
    section: "reading",
    sectionLabel: "ACT Reading",
    systemInstruction: baseMcqInstruction("ACT", "Reading"),
    outputSchema: OUTPUT_SCHEMA,
    maxOutputTokens: 4096,
    temperature: 0.85,
    calculatorAllowed: false,
    stimulusType: "passage",
    validateOutput: makeValidator("ACT", "reading"),
  };
}

function actScienceFormat(): QuestionFormat {
  return {
    exam_type: "ACT",
    section: "science",
    sectionLabel: "ACT Science",
    systemInstruction: `${baseMcqInstruction("ACT", "Science")}
Include a short experiment description, data table, or conflicting viewpoints as stimulus_text.
Questions should test scientific reasoning and data interpretation, not recall trivia.`,
    outputSchema: OUTPUT_SCHEMA,
    maxOutputTokens: 3072,
    temperature: 0.82,
    calculatorAllowed: false,
    stimulusType: "data_table",
    validateOutput: makeValidator("ACT", "science"),
  };
}

function jambFormat(section?: string): QuestionFormat {
  const normalized = (section ?? "english").toLowerCase();
  const isEnglish = normalized.includes("english");
  return {
    exam_type: "JAMB",
    section: normalized,
    sectionLabel: isEnglish ? "JAMB English Language" : `JAMB ${section ?? "General"}`,
    systemInstruction: baseMcqInstruction("JAMB UTME", section ?? "General"),
    outputSchema: OUTPUT_SCHEMA,
    maxOutputTokens: isEnglish ? 3072 : 2048,
    temperature: 0.82,
    calculatorAllowed: normalized.includes("math"),
    stimulusType: isEnglish ? "passage" : null,
    validateOutput: makeValidator("JAMB", normalized),
  };
}

function greVerbalFormat(): QuestionFormat {
  return {
    exam_type: "GRE",
    section: "verbal",
    sectionLabel: "GRE Verbal Reasoning",
    systemInstruction: baseMcqInstruction("GRE", "Verbal Reasoning"),
    outputSchema: OUTPUT_SCHEMA,
    maxOutputTokens: 3072,
    temperature: 0.82,
    calculatorAllowed: false,
    stimulusType: "passage",
    validateOutput: makeValidator("GRE", "verbal"),
  };
}

function greQuantFormat(): QuestionFormat {
  return {
    exam_type: "GRE",
    section: "quant",
    sectionLabel: "GRE Quantitative Reasoning",
    systemInstruction: baseMcqInstruction("GRE", "Quantitative Reasoning"),
    outputSchema: OUTPUT_SCHEMA,
    maxOutputTokens: 2048,
    temperature: 0.8,
    calculatorAllowed: true,
    stimulusType: null,
    validateOutput: makeValidator("GRE", "quant"),
  };
}

function apFormat(examType: ExamType): QuestionFormat {
  const label = examType.replace(/^AP_/, "AP ").replace(/_/g, " ");
  const needsStimulus =
    examType !== "AP_CALCULUS_AB" &&
    examType !== "AP_CALCULUS_BC" &&
    examType !== "AP_COMPUTER_SCIENCE" &&
    examType !== "AP_PSYCHOLOGY";

  return {
    exam_type: examType,
    section: "multiple_choice",
    sectionLabel: `${label} — Multiple Choice`,
    systemInstruction: `${baseMcqInstruction(label, "Multiple Choice")}
Align content with official AP ${label} course framework.
${needsStimulus ? "Include stimulus_text (passage, data, or scenario) when the topic requires context." : "stimulus_text may be null for standalone problem-solving."}`,
    outputSchema: OUTPUT_SCHEMA,
    maxOutputTokens: 3072,
    temperature: 0.82,
    calculatorAllowed:
      examType.includes("CALCULUS") ||
      examType.includes("STATISTICS") ||
      examType.includes("PHYSICS") ||
      examType.includes("CHEMISTRY"),
    stimulusType: needsStimulus ? "passage" : null,
    validateOutput: makeValidator(examType, "multiple_choice"),
  };
}

function normalizeSectionKey(
  examType: ExamType | string,
  section?: string,
): string {
  const s = (section ?? "").toLowerCase().replace(/[_-]+/g, " ").trim();

  if (examType === "SAT") {
    if (s.includes("math")) return "math";
    return "reading_writing";
  }
  if (examType === "ACT") {
    if (s.includes("english")) return "english";
    if (s.includes("math")) return "math";
    if (s.includes("science")) return "science";
    if (s.includes("reading")) return "reading";
    return "english";
  }
  if (examType === "GRE") {
    if (s.includes("quant")) return "quant";
    if (s.includes("verbal")) return "verbal";
    return "verbal";
  }
  if (examType === "JAMB") return s || "english";
  if (String(examType).startsWith("AP_")) return "multiple_choice";
  return s || "general";
}

export function getQuestionFormat(
  exam_type: ExamType | string,
  section?: string,
): QuestionFormat {
  const key = normalizeSectionKey(exam_type, section);

  if (exam_type === "SAT") {
    return key === "math" ? satMathFormat() : satRwFormat();
  }
  if (exam_type === "ACT") {
    if (key === "math") return actMathFormat();
    if (key === "reading") return actReadingFormat();
    if (key === "science") return actScienceFormat();
    return actEnglishFormat();
  }
  if (exam_type === "JAMB") return jambFormat(key);
  if (exam_type === "GRE") {
    return key === "quant" ? greQuantFormat() : greVerbalFormat();
  }
  if (AP_EXAM_TYPES.includes(exam_type as ExamType)) {
    return apFormat(exam_type as ExamType);
  }

  return {
    exam_type,
    section: key,
    sectionLabel: `${exam_type} Practice`,
    systemInstruction: baseMcqInstruction(String(exam_type), section ?? "General"),
    outputSchema: OUTPUT_SCHEMA,
    maxOutputTokens: 2048,
    temperature: 0.8,
    calculatorAllowed: key.includes("math"),
    stimulusType: null,
    validateOutput: makeValidator(exam_type, key),
  };
}

export function buildGenerationPrompt(
  format: QuestionFormat,
  topic: string,
  difficulty: Difficulty,
  seed: string,
): string {
  const cleanTopic = sanitizeUserInput(topic);
  const cleanSeed = sanitizeUserInput(seed);

  const stimulusRule = format.stimulusType
    ? `- stimulus_text: REQUIRED (${format.stimulusType}); substantial college-level content.`
    : "- stimulus_text: null (no long passage).";

  return `${format.systemInstruction}

Topic/skill: ${cleanTopic}
Section: ${format.sectionLabel}
Difficulty: ${difficulty}
Uniqueness seed: ${cleanSeed}

Return JSON:
${format.outputSchema}

${stimulusRule}
- question_text must be clear and self-contained given any stimulus.
${format.fewShotExamples ? `\n${format.fewShotExamples}` : ""}`;
}

export function parseGeneratedQuestionJson(
  text: string,
  format: QuestionFormat,
): { payload: GeneratedQuestionPayload | null; validation: QuestionValidationResult } {
  try {
    const raw = JSON.parse(text) as unknown;
    const validation = format.validateOutput(raw);
    if (!validation.valid) {
      return { payload: null, validation };
    }
    return { payload: parsePayload(raw), validation };
  } catch {
    return {
      payload: null,
      validation: { valid: false, errors: ["response is not valid JSON"] },
    };
  }
}
