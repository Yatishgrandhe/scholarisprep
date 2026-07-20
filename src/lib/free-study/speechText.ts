/**
 * Strip markdown noise so Kokoro speaks clean prose (never speechSynthesis).
 */
export function stripMarkdownForSpeech(input: string): string {
  return input
    .replace(/^#{1,6}\s+/gm, "")
    .replace(/\*\*([^*]+)\*\*/g, "$1")
    .replace(/\*([^*]+)\*/g, "$1")
    .replace(/`([^`]+)`/g, "$1")
    .replace(/!\[[^\]]*]\([^)]+\)/g, "")
    .replace(/\[([^\]]+)]\([^)]+\)/g, "$1")
    .replace(/\$\$[\s\S]*?\$\$/g, " ")
    .replace(/\$([^$]+)\$/g, "$1")
    .replace(/^\s*[-*+]\s+/gm, "")
    .replace(/^\s*\d+\.\s+/gm, "")
    .replace(/\n{2,}/g, ". ")
    .replace(/\s+/g, " ")
    .trim();
}

export type KokoroProgress = {
  status: "idle" | "downloading" | "ready" | "speaking" | "error";
  /** 0–1 while downloading */
  progress: number;
  message?: string;
};

export type KokoroWorkerOut =
  | { type: "progress"; progress: number; message?: string }
  | { type: "ready" }
  | { type: "audio"; pcm: Float32Array; sampleRate: number }
  | { type: "error"; message: string };

export type KokoroWorkerIn =
  | { type: "init" }
  | { type: "speak"; text: string; voice?: string };
