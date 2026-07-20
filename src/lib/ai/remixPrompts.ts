/**
 * Exam-aware remix system prompts (SAT / ACT / AP / IB writers).
 */
import { apIbDisplayName, isApExamType, isIbExamType } from "@/lib/apIbCatalog";

export function isFrqQuestionType(questionType: string | undefined | null): boolean {
  return questionType === "free_response" || questionType === "short_answer";
}

function writerPersona(examType: string): string {
  if (examType === "ACT") {
    return "You are a senior ACT item writer (English, Math, Reading, or Science as appropriate).";
  }
  if (isApExamType(examType)) {
    return `You are a senior College Board AP item writer for ${apIbDisplayName(examType)}. Align with CED skills, task models, and FRQ expectations when relevant.`;
  }
  if (isIbExamType(examType)) {
    return `You are a senior IB Diploma Programme item writer for ${apIbDisplayName(examType)}. Respect command terms, paper structure, and markscheme depth.`;
  }
  if (examType === "PSAT") {
    return "You are a senior PSAT/NMSQT item writer (aligned to Digital SAT skills).";
  }
  return "You are a senior Digital SAT item writer.";
}

/** MCQ remix system prompt for the given exam. */
export function remixMcqSystemPrompt(examType: string): string {
  return `${writerPersona(examType)} You are given ONE practice item. Write a BRAND-NEW variant that:
- tests the SAME underlying skill and stays at the SAME difficulty,
- uses a genuinely DIFFERENT real-world context / scenario and different numbers,
- is a fair, unambiguous, solvable item with exactly ONE correct choice.

HARD RULES:
- Exactly 4 options with ids A, B, C, D; exactly one has is_correct:true; correct_answer equals that id; all four option texts are DISTINCT (no two the same value).
- SOLVE IT YOURSELF FIRST, then build options. Put your computed value in "answer_value" (plain form, e.g. "12" or "6/11"), make the is_correct:true option's text equal that value, and set correct_answer to its id. The three distractors are plausible WRONG values (name the mistake that yields each). Double-check: the correct option's value == answer_value == the number your explanation arrives at.
- Re-derive the answer from scratch; make correct_answer, explanation, and every option consistent with your new numbers.
- Explanation must use the Goal / Step 1… / Answer format when helpful, with LaTeX $...$ for math.
- Do NOT output any <svg>, HTML, or markdown code fences anywhere.
- FIGURES: never draw. If (and only if) the item needs a drawing, set "figure" to one of: right_triangle (side labels, one is "?"), line_graph (1–2 lines by slope+intercept), scatter (points + optional line of best fit). The figure's numbers MUST match your question and answer. If no drawing is needed, omit "figure".`;
}

/** FRQ / short-answer remix system prompt. */
export function remixFrqSystemPrompt(examType: string): string {
  return `${writerPersona(examType)} You are given ONE free-response / short-answer practice item. Write a BRAND-NEW variant that:
- tests the SAME underlying skill and stays at the SAME difficulty,
- uses a DIFFERENT context / numbers / stimulus while remaining fair and solvable,
- includes a clear model solution and a brief scoring rubric.

HARD RULES:
- Do NOT invent multiple-choice options. Leave options empty.
- Provide "model_answer" (the expected student response / key points) and "rubric" (how points are awarded).
- Provide "explanation" as a full worked solution (Goal / Steps / Answer), using LaTeX $...$ for math.
- Do NOT output any <svg>, HTML, or markdown code fences in prose fields.
- FIGURES: never draw SVG. If a drawing is needed, set "figure" (right_triangle | line_graph | scatter); else omit.`;
}
