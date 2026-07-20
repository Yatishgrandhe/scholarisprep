import type { ExamType } from "@/types/supabase";

export type QuestionOptionInput = {
  id: string;
  text: string;
  is_correct?: boolean;
};

export type QuestionValidationInput = {
  exam_type: ExamType | string;
  section?: string | null;
  question_text: string;
  stimulus_text?: string | null;
  options: QuestionOptionInput[];
  explanation?: string | null;
  hint?: string | null;
};

export type QuestionValidationResult = {
  valid: boolean;
  errors: string[];
};

const OPTION_IDS = ["A", "B", "C", "D"] as const;
const LOREM_PATTERN = /lorem ipsum|dolor sit amet/i;

function wordCount(text: string): number {
  return text.trim().split(/\s+/).filter(Boolean).length;
}

function normalizeSection(section?: string | null): string {
  return (section ?? "").toLowerCase().replace(/[_-]+/g, " ");
}

function isSatRw(examType: string, section: string): boolean {
  if (examType !== "SAT") return false;
  return (
    section.includes("reading") ||
    section.includes("writing") ||
    section === "rw" ||
    section === "reading writing"
  );
}

function isSatMath(examType: string, section: string): boolean {
  if (examType !== "SAT") return false;
  return section.includes("math");
}

function isActEnglish(examType: string, section: string): boolean {
  return examType === "ACT" && section.includes("english");
}

function isActMath(examType: string, section: string): boolean {
  return examType === "ACT" && section.includes("math");
}

function isActReading(examType: string, section: string): boolean {
  return examType === "ACT" && section.includes("reading");
}

function isActScience(examType: string, section: string): boolean {
  return examType === "ACT" && section.includes("science");
}

function isGreVerbal(examType: string, section: string): boolean {
  return examType === "GRE" && section.includes("verbal");
}

function isGreQuant(examType: string, section: string): boolean {
  return examType === "GRE" && (section.includes("quant") || section.includes("quantitative"));
}

function isApExam(examType: string): boolean {
  return examType.startsWith("AP_");
}

export function validateQuestion(
  input: QuestionValidationInput,
): QuestionValidationResult {
  const errors: string[] = [];
  const examType = String(input.exam_type);
  const section = normalizeSection(input.section);
  const questionText = input.question_text?.trim() ?? "";
  const stimulus = input.stimulus_text?.trim() ?? "";
  const explanation = input.explanation?.trim() ?? "";
  const hint = input.hint?.trim() ?? "";

  if (questionText.length < 12) {
    errors.push("question_text is too short");
  }
  if (LOREM_PATTERN.test(questionText) || LOREM_PATTERN.test(stimulus)) {
    errors.push("placeholder lorem ipsum text is not allowed");
  }
  if (!explanation) {
    errors.push("explanation is required");
  }
  if (!hint) {
    errors.push("hint is required");
  }

  const options = (input.options ?? []).slice(0, 4);
  if (options.length !== 4) {
    errors.push("exactly 4 options (A–D) are required");
  }

  const correctCount = options.filter((o) => o.is_correct).length;
  if (correctCount !== 1) {
    errors.push("exactly one option must be marked is_correct");
  }

  for (let i = 0; i < options.length; i += 1) {
    const expectedId = OPTION_IDS[i];
    const opt = options[i]!;
    if (opt.id !== expectedId) {
      errors.push(`option ${i + 1} must have id "${expectedId}"`);
    }
    if (!opt.text?.trim()) {
      errors.push(`option ${expectedId} text is empty`);
    }
  }

  if (isSatRw(examType, section)) {
    if (!stimulus) {
      errors.push("SAT Reading & Writing requires stimulus_text");
    } else if (wordCount(stimulus) < 120) {
      errors.push("SAT Reading & Writing passage is too short (min ~120 words)");
    }
  }

  if (isSatMath(examType, section)) {
    if (stimulus && wordCount(stimulus) > 40) {
      errors.push("SAT Math items should not include a long passage stimulus");
    }
  }

  if (isActEnglish(examType, section) || isActReading(examType, section)) {
    if (!stimulus) {
      errors.push("ACT English/Reading requires stimulus_text");
    }
  }

  if (isActScience(examType, section)) {
    if (!stimulus) {
      errors.push("ACT Science requires stimulus_text or data context");
    }
  }

  if (isActMath(examType, section) && stimulus && wordCount(stimulus) > 60) {
    errors.push("ACT Math should avoid long passage stimuli");
  }

  if (examType === "JAMB" && section.includes("english") && !stimulus) {
    errors.push("JAMB English Language items require stimulus_text");
  }

  if (isGreVerbal(examType, section) && !stimulus) {
    errors.push("GRE Verbal items require stimulus_text");
  }

  if (isGreQuant(examType, section) && stimulus && wordCount(stimulus) > 80) {
    errors.push("GRE Quant items should not use long passage stimuli");
  }

  if (isApExam(examType) && section.includes("multiple choice")) {
    if (
      examType !== "AP_CALCULUS_AB" &&
      examType !== "AP_CALCULUS_BC" &&
      examType !== "AP_COMPUTER_SCIENCE" &&
      examType !== "AP_PSYCHOLOGY" &&
      !stimulus &&
      (examType.includes("BIOLOGY") ||
        examType.includes("CHEMISTRY") ||
        examType.includes("ENGLISH") ||
        examType.includes("HISTORY") ||
        examType.includes("ECONOMICS"))
    ) {
      errors.push("AP multiple-choice items in this subject typically need stimulus_text");
    }
  }

  return { valid: errors.length === 0, errors };
}
