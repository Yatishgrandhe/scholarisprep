/**
 * Grading + helpers for Digital SAT student-produced response (grid-in) math
 * questions — the "type in the text box" items.
 *
 * Official answer-entry rules (College Board, Bluebook test directions):
 *  - Enter only one answer if more than one is correct.
 *  - Up to 5 characters for a positive answer; up to 6 (incl. the minus sign)
 *    for a negative answer.
 *  - Fractions and decimals are both accepted.
 *  - If a decimal is long/repeating, truncate or round at the fourth digit.
 *  - Mixed numbers (3½) must be entered as an improper fraction (7/2) or a
 *    decimal (3.5).
 *  - Do not enter symbols such as %, comma, or $.
 *
 * Grading accepts any mathematically-equivalent entry (1/2 = 0.5 = .5), so a
 * stored answer of "0.6" matches "3/5", "6/10", ".6", etc.
 */

/** The official directions, shown in the response UI. */
export const GRID_IN_DIRECTIONS: string[] = [
  "If you find more than one correct answer, enter only one answer.",
  "You can enter up to 5 characters for a positive answer and up to 6 characters (including the negative sign) for a negative answer.",
  "If your answer is a fraction that doesn't fit in the provided space, enter the decimal equivalent.",
  "If your answer is a decimal that doesn't fit in the provided space, enter it by truncating or rounding at the fourth digit.",
  "If your answer is a mixed number (such as 3½), enter it as an improper fraction (7/2) or its decimal equivalent (3.5).",
  "Don't enter symbols such as a percent sign, comma, or dollar sign.",
];

/** One-line note appended to a grid-in question stem. */
export const GRID_IN_STEM_NOTE =
  "Enter your answer in the box as an integer, fraction, or decimal — no %, $, or commas.";

/** Strip symbols the SAT grid ignores and collapse whitespace. */
export function normalizeGridEntry(raw: string): string {
  return String(raw ?? "")
    .replace(/[$,%\s]/g, (m) => (m === " " ? " " : ""))
    .trim();
}

/**
 * Parse an entry into a number. Accepts integers, decimals (incl. leading "."),
 * simple fractions "a/b", and mixed numbers "a b/c". Returns null if unparseable
 * or non-finite (e.g. division by zero).
 */
export function parseGridValue(raw: string): number | null {
  const s = normalizeGridEntry(raw);
  if (!s) return null;

  // mixed number: "3 1/2"
  const mixed = s.match(/^(-?\d+)\s+(\d+)\/(\d+)$/);
  if (mixed) {
    const whole = Number(mixed[1]);
    const num = Number(mixed[2]);
    const den = Number(mixed[3]);
    if (den === 0) return null;
    const sign = whole < 0 || Object.is(whole, -0) || /^-/.test(mixed[1]) ? -1 : 1;
    const val = Math.abs(whole) + num / den;
    return Number.isFinite(val) ? sign * val : null;
  }

  // fraction: "a/b"
  const frac = s.match(/^(-?\d*\.?\d+)\/(-?\d*\.?\d+)$/);
  if (frac) {
    const num = Number(frac[1]);
    const den = Number(frac[2]);
    if (den === 0) return null;
    const val = num / den;
    return Number.isFinite(val) ? val : null;
  }

  // plain decimal/integer (allow leading "." and trailing ".")
  if (/^-?(\d+\.?\d*|\.\d+)$/.test(s)) {
    const val = Number(s);
    return Number.isFinite(val) ? val : null;
  }

  return null;
}

function truncate4(n: number): number {
  // truncate (toward zero) at the fourth decimal digit
  return Math.trunc(n * 10000) / 10000;
}

/**
 * True when the typed `input` is an acceptable answer for any of the accepted
 * canonical answers. Values are compared by magnitude with tolerance that
 * honors the "round or truncate at the fourth digit" rule.
 */
export function gradeGridIn(
  input: string,
  accepted: string | string[],
): boolean {
  const inVal = parseGridValue(input);
  if (inVal === null) return false;
  const list = Array.isArray(accepted) ? accepted : [accepted];

  for (const a of list) {
    const aVal = parseGridValue(a);
    if (aVal === null) continue;
    // exact (within float noise)
    if (Math.abs(inVal - aVal) <= 1e-9) return true;
    // accept rounding OR truncation at the 4th decimal of the true value
    const rounded = Math.round(aVal * 10000) / 10000;
    const truncated = truncate4(aVal);
    if (
      Math.abs(inVal - rounded) <= 1e-9 ||
      Math.abs(inVal - truncated) <= 1e-9
    ) {
      return true;
    }
    // relative tolerance for long decimals a student rounded themselves
    const tol = Math.max(5e-4, Math.abs(aVal) * 1e-4);
    if (Math.abs(inVal - aVal) <= tol) return true;
  }
  return false;
}

/** Pull the accepted answer(s) for a grid-in from its option list. The SPR
 * sentinel option's text may hold a single value or a "|"-delimited list. */
export function acceptedGridAnswers(
  options: { id: string; text: string; is_correct?: boolean }[],
  correctAnswer?: string | null,
): string[] {
  const set = new Set<string>();
  const spr = options.find((o) => o.id === "SPR");
  if (spr?.text) {
    for (const part of spr.text.split("|")) {
      const t = part.trim();
      if (t) set.add(t);
    }
  }
  if (correctAnswer && correctAnswer !== "SPR") set.add(correctAnswer.trim());
  return [...set];
}

/** A question is a grid-in when it carries the SPR sentinel option. */
export function isGridInOptions(
  options: { id: string }[] | undefined | null,
): boolean {
  return Array.isArray(options) && options.some((o) => o.id === "SPR");
}

/**
 * Unified correctness check for a stored answer. For multiple choice the
 * selection is an option id; for grid-in it is the typed string, graded by
 * equivalence. Use this everywhere correctness is computed (practice + exam).
 */
export function isSelectionCorrect(
  options: { id: string; text: string; is_correct?: boolean }[] | undefined | null,
  selected: string | null | undefined,
  correctAnswer?: string | null,
): boolean {
  if (!selected || !Array.isArray(options)) return false;
  if (isGridInOptions(options)) {
    return gradeGridIn(selected, acceptedGridAnswers(options, correctAnswer));
  }
  const correctOpt =
    options.find((o) => o.is_correct) ??
    (correctAnswer ? options.find((o) => o.id === correctAnswer) : undefined);
  return Boolean(correctOpt && correctOpt.id === selected);
}

/** Max characters allowed in the box given the stored answer (5 pos / 6 neg). */
export function gridMaxLength(accepted: string[]): number {
  return accepted.some((a) => a.trim().startsWith("-")) ? 6 : 5;
}
