import type { Question, Option } from "@/components/question/QuestionInterface";
import type { QuestionRow } from "@/lib/question/schema";
import {
  normalizeQuestionField,
  normalizeStimulusField,
} from "@/lib/question/normalizeQuestionContent";
import { normalizeHtmlContent } from "@/lib/question/normalizeHtmlContent";
import {
  isChallengedProblem,
  normalizeOptionRows,
} from "@/lib/question/questionQuality";
import {
  formatRubricForGrader,
  modelAnswerFromOptions,
  resolveFrqMaxPoints,
} from "@/lib/ai/frqGrading";
import { normalizeQuestionDifficulty } from "@/lib/question/difficulty";

export function formatSectionLabel(section: string | null): string {
  if (!section) return "Practice";
  if (section === "math") return "Math";
  if (section === "reading_writing") return "Reading and Writing";
  return section.replace(/_/g, " ").replace(/\b\w/g, (c) => c.toUpperCase());
}

function mapStimulusType(
  value: string | null,
): Question["stimulus_type"] | undefined {
  if (!value) return undefined;
  if (
    value === "data_table" ||
    value === "poem" ||
    value === "passage" ||
    value === "graph_description" ||
    value === "diagram"
  ) {
    return value === "diagram" ? "graph_description" : value;
  }
  if (value.includes("table") || value.includes("data")) return "data_table";
  if (value.includes("poem")) return "poem";
  if (value.includes("diagram") || value.includes("graph") || value.includes("figure")) {
    return "graph_description";
  }
  return "passage";
}

export function stimulusLabel(
  type: Question["stimulus_type"],
): string | null {
  if (type === "data_table") return "Data Table";
  if (type === "poem") return "Poem";
  if (type === "passage") return "Passage";
  if (type === "graph_description") return "Figure";
  return null;
}

export function mapDbQuestion(row: QuestionRow): Question {
  const rawOptions = normalizeOptionRows(row);
  const questionText = normalizeQuestionField(row.question_text);
  const stimulusText = normalizeStimulusField(row.stimulus_text, questionText);

  const options: Option[] = rawOptions.map((opt) => ({
    id: opt.id,
    text: normalizeQuestionField(opt.text),
    is_correct: opt.is_correct ?? opt.id === row.correct_answer,
    explanation: normalizeQuestionField(opt.explanation ?? row.explanation ?? ""),
  }));

  const modelAnswer = modelAnswerFromOptions(options);
  const rubricText = formatRubricForGrader(row.rubric);
  const isFrq =
    row.question_type === "free_response" || row.question_type === "short_answer";
  const maxPoints = isFrq
    ? resolveFrqMaxPoints({
        max_points: row.max_points,
        question_subtype: row.question_subtype,
        section: row.section,
        exam_type: row.exam_type,
        rubric: row.rubric,
      })
    : undefined;

  return {
    id: row.id,
    question_text: questionText,
    stimulus_text: stimulusText,
    stimulus_type: mapStimulusType(row.stimulus_type),
    options,
    explanation: normalizeQuestionField(row.explanation ?? ""),
    hint:
      normalizeHtmlContent(row.hint ?? "") ||
      "Read the passage carefully and eliminate choices that contradict the text.",
    topic: row.topic ?? "General",
    difficulty: normalizeQuestionDifficulty(row.difficulty),
    section: formatSectionLabel(row.section),
    calculator_allowed: row.calculator_allowed ?? false,
    challengedProblem: isChallengedProblem(row.source_metadata),
    question_type: row.question_type ?? "multiple_choice",
    question_subtype: row.question_subtype ?? undefined,
    exam_type: row.exam_type ?? undefined,
    model_answer: isFrq ? modelAnswer : undefined,
    rubric: isFrq ? rubricText : undefined,
    max_points: maxPoints,
  };
}

/** Map a DB row without failing the whole batch when one row is malformed. */
export function safeMapDbQuestion(row: QuestionRow): Question | null {
  try {
    return mapDbQuestion(row);
  } catch (err) {
    console.error("safeMapDbQuestion failed:", row.id, err);
    return null;
  }
}

export function shuffle<T>(items: T[]): T[] {
  const copy = [...items];
  for (let i = copy.length - 1; i > 0; i -= 1) {
    const j = Math.floor(Math.random() * (i + 1));
    [copy[i], copy[j]] = [copy[j], copy[i]];
  }
  return copy;
}
