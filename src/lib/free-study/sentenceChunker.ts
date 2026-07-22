/**
 * Splits streaming AI text into sentence-level chunks for progressive TTS.
 * Yields each sentence as it completes (ends with . ! ? or newline).
 */

const SENTENCE_END = /[.!?]\s|\n+/;

export function createSentenceChunker(onChunk: (sentence: string) => void) {
  let buffer = "";

  const push = (text: string) => {
    buffer += text;
    // Split on sentence boundaries
    const parts = buffer.split(SENTENCE_END);
    // All but the last part are complete sentences
    for (let i = 0; i < parts.length - 1; i++) {
      const s = parts[i]?.trim();
      if (s) onChunk(s);
    }
    // Keep the remainder (may be incomplete)
    buffer = parts[parts.length - 1] ?? "";
  };

  const flush = () => {
    const remaining = buffer.trim();
    if (remaining) onChunk(remaining);
    buffer = "";
  };

  const reset = () => {
    buffer = "";
  };

  return { push, flush, reset };
}
