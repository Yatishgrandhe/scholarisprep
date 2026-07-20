import { normalizeHtmlContent } from "@/lib/question/normalizeHtmlContent";
import { normalizeMathText } from "@/lib/question/normalizeMathText";

/** Remove a trailing exam question sentence accidentally merged into passage text. */
export function stripTrailingQuestionFromStimulus(
  stimulus: string,
  stem: string,
): string {
  const trimmed = stimulus.trim();
  if (!trimmed || stem.includes("?")) return trimmed;

  const lastQ = trimmed.lastIndexOf("?");
  if (lastQ === -1) return trimmed;

  const beforeQ = trimmed.slice(0, lastQ);
  const lastPeriod = beforeQ.lastIndexOf(".");
  if (lastPeriod === -1) return trimmed;

  const trailing = trimmed.slice(lastPeriod + 1).trim();
  if (!trailing.endsWith("?")) return trimmed;

  const questionWords = new Set(
    stem.toLowerCase().split(/\W+/).filter((w) => w.length > 3),
  );
  const trailingWords = trailing
    .toLowerCase()
    .split(/\W+/)
    .filter((w) => w.length > 3);
  const overlap = trailingWords.filter((w) => questionWords.has(w)).length;
  if (overlap >= 2 || trailing.length > 40) {
    return trimmed.slice(0, lastPeriod + 1).trim();
  }

  return trimmed;
}

export function normalizeQuestionField(text: string | null | undefined): string {
  if (!text) return "";
  const html = normalizeHtmlContent(text);
  return normalizeMathText(html);
}

export function normalizeStimulusField(
  stimulus: string | null | undefined,
  stem: string,
): string | undefined {
  if (!stimulus?.trim()) return undefined;
  let normalized = normalizeQuestionField(stimulus);
  normalized = stripTrailingQuestionFromStimulus(normalized, stem);
  return normalized.trim() || undefined;
}
