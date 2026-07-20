/**
 * DSAT challenged math bank — ultra-hard tier (25 × 19 skills = 475).
 * Delegates to dsat-math-blueprint challenged generators.
 */
export {
  generateChallengedDsatMathQuestion as generateChallengedBankItem,
  validateDsatMathQuestion as validateChallengedRow,
  CHALLENGED_PER_SKILL,
  MATH_SKILLS,
} from "./dsat-math-blueprint.mjs";
