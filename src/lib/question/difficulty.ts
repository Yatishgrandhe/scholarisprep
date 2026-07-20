/**
 * Shared question-difficulty helpers — normalize DB enum values, format labels,
 * and map to UI tones used across bank / practice / reports / list pages.
 */

export type QuestionDifficulty = "easy" | "medium" | "hard" | "expert";

/** Palette / badge tones (expert folds into hard; challenged is its own tone). */
export type DifficultyTone = "easy" | "medium" | "hard" | "challenge";

/** Grid/palette difficulty including the challenged overlay. */
export type BankDifficulty = DifficultyTone;

export function normalizeQuestionDifficulty(
  value: string | null | undefined,
): QuestionDifficulty {
  const v = (value ?? "").toLowerCase().trim();
  if (v === "easy" || v === "medium" || v === "hard" || v === "expert") {
    return v;
  }
  return "medium";
}

export function formatDifficultyLabel(
  value: string | null | undefined,
  opts?: { challenged?: boolean },
): string {
  if (opts?.challenged) return "Challenge";
  const d = normalizeQuestionDifficulty(value);
  return d.charAt(0).toUpperCase() + d.slice(1);
}

export function difficultyTone(
  value: string | null | undefined,
  opts?: { challenged?: boolean },
): DifficultyTone {
  if (opts?.challenged) return "challenge";
  const raw = (value ?? "").toLowerCase().trim();
  // Legacy / meta callers may pass "challenge" as the difficulty string.
  if (raw === "challenge") return "challenge";
  const d = normalizeQuestionDifficulty(value);
  if (d === "easy") return "easy";
  if (d === "hard" || d === "expert") return "hard";
  return "medium";
}

/**
 * Resolve DB difficulty for navigator/palette cells.
 * Expert uses the hard tone; only `challengedProblem` (via
 * `resolveQuestionBankDifficulty`) gets the challenge tone.
 * Literal `"challenge"` is accepted for legacy/meta callers.
 */
export function resolveBankDifficulty(
  difficulty: string | null | undefined,
): BankDifficulty {
  return difficultyTone(difficulty);
}

export function resolveQuestionBankDifficulty(question: {
  difficulty?: string | null;
  challengedProblem?: boolean;
}): BankDifficulty {
  return difficultyTone(question.difficulty, {
    challenged: Boolean(question.challengedProblem),
  });
}
