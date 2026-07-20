/** Strip AI scaffolding labels and split passage into readable paragraphs / cross-text blocks. */
export function formatStimulusText(raw: string): string[] {
  let text = raw.trim();
  if (!text) return [];

  text = text.replace(/^\[Passage[^\]]*\]\s*\n*/i, "");
  text = text.replace(/^Text\s+1[:\.]?\s*/i, "");

  const crossTextSplit = text.split(
    /(?<=\.)\s+(?=While the author of Text 2|The author of Text 2|Text 2[:\.])/i,
  );
  if (crossTextSplit.length > 1) {
    return crossTextSplit
      .map((block) =>
        block
          .replace(/^Text\s+\d+[:\.]?\s*/i, "")
          .replace(/^Paragraph\s+\d+\.?\s*/i, "")
          .trim(),
      )
      .filter(Boolean);
  }

  const labeledSplit = text.split(/\n(?=Text\s+\d+[:\.]?\s*)/i);
  if (labeledSplit.length > 1) {
    return labeledSplit
      .map((block) => block.replace(/^Text\s+\d+[:\.]?\s*/i, "").trim())
      .filter(Boolean);
  }

  const blocks = text
    .split(/\n\n+/)
    .map((block) => block.trim())
    .filter(Boolean);

  return blocks.map((block) =>
    block
      .replace(/^Paragraph\s+\d+\.?\s*/i, "")
      .replace(/\nParagraph\s+\d+\.?\s*/gi, "\n\n")
      .replace(/^Text\s+\d+[:\.]?\s*/i, "")
      .trim(),
  );
}

/**
 * Locate the first bullet marker: a •/‣/▪/◦, or a hyphen/asterisk that begins an
 * item (at the start, after a newline, or after sentence punctuation). A mid-
 * sentence " - " (word, space, dash) is deliberately NOT treated as a bullet.
 */
const NOTE_BULLET_SCAN = /(?:^|\n|[.;:!?])[ \t]*[-*][ \t]+|[•‣▪◦]/;

/**
 * Rhetorical-synthesis / notes-style stimulus detection. These passages are a
 * list of bullet "notes" the student has gathered; they must render as a real
 * bulleted list (intro line + <ul>), not a run-on paragraph of inline bullets.
 *
 * The bank stores these several ways — each note on its own line, all notes on
 * one line separated by "- " / ". - " markers, or a short source title line
 * followed by "•" bullets — so we key off yielding at least two parsed items.
 */
export function isNotesStimulus(text: string): boolean {
  return parseNotes(text).length >= 2;
}

/**
 * Extract the note items from a notes-style stimulus regardless of layout:
 * newline- or inline-separated, "-"/"*"/"•" markers, with or without a leading
 * source-title line (which is dropped — the list renders its own intro). Break
 * before each bullet, preserving any sentence punctuation that preceded a dash.
 */
export function parseNotes(text: string): string[] {
  const t = text.trim();
  // Skip any short title/intro that precedes the first bullet.
  const firstIdx = t.search(NOTE_BULLET_SCAN);
  const body = firstIdx > 0 ? t.slice(firstIdx) : t;
  return body
    .replace(/(^|\n|[.;:!?])[ \t]*[-*][ \t]+/g, (_m, before: string) =>
      /[.;:!?]/.test(before) ? `${before}\n` : "\n",
    )
    .replace(/[ \t\n]*[•‣▪◦][ \t]*/g, "\n")
    .split("\n")
    .map((l) => l.trim())
    .filter(Boolean);
}

export function isPipeTable(text: string): boolean {
  const lines = text
    .split("\n")
    .map((l) => l.trim())
    .filter(Boolean);
  if (lines.length < 2) return false;
  const pipeLines = lines.filter((l) => l.includes("|"));
  return pipeLines.length >= 2 && pipeLines.length >= lines.length - 1;
}

export function parsePipeTable(text: string): string[][] {
  const lines = text
    .split("\n")
    .map((l) => l.trim())
    .filter((l) => l.includes("|"));

  return lines
    .filter((line) => !/^\|?[\s\-:|]+\|?$/.test(line))
    .map((line) =>
      line
        .replace(/^\|/, "")
        .replace(/\|$/, "")
        .split("|")
        .map((cell) => cell.trim()),
    );
}
