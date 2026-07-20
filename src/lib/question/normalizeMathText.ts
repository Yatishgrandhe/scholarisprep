const BARE_LATEX_RE =
  /\\(?:frac|sqrt|text|left|right|cdot|times|pi|theta|alpha|beta|gamma|delta|leq|geq|neq|approx|infty|sum|int|log|ln|sin|cos|tan|vec|overline|underline|pm|mp|degree|circ|binom|dfrac|tfrac)/;

/** Normalize LaTeX delimiters for KaTeX (`$...$` / `$$...$$`). */
export function normalizeMathText(input: string): string {
  if (!input?.trim()) return input ?? "";

  let text = input
    .replace(/\\\(([\s\S]+?)\\\)/g, (_, inner: string) => `$${inner.trim()}$`)
    .replace(/\\\[([\s\S]+?)\\\]/g, (_, inner: string) => `$$${inner.trim()}$$`);

  if (/\$/.test(text)) return text;

  const trimmed = text.trim();
  if (!BARE_LATEX_RE.test(trimmed)) return text;

  if (/^[\w\s\\^_{}+=\-().,/|&<>[\]:;'!?]*$/.test(trimmed)) {
    return `$${trimmed}$`;
  }

  return trimmed.replace(
    /(\d*\\(?:frac|sqrt|text)\{(?:[^{}]|\{[^{}]*\})*\}(?:\{(?:[^{}]|\{[^{}]*\})*\})?|\d+\\sqrt\{[^}]+\}|[+-]?\d*\.?\d*\\sqrt\{[^}]+\})/g,
    (match) => `$${match}$`,
  );
}
