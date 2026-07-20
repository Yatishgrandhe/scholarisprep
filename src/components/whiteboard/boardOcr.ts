/**
 * Board OCR bridge: canvas / PNG snapshot → free-study OCR → text for chat.
 *
 * Reuses handwriting PSM (SPARSE_TEXT / page seg 11) from
 * `@/lib/free-study/ocr` — do not fork Tesseract params here.
 */

import {
  recognizeImageText,
  type OcrProgress,
} from "@/lib/free-study/ocr";

export type { OcrProgress };

/**
 * Free-study image OCR entry point used by Whiteboard Studio.
 * Alias of `recognizeImageText` (handwriting-tuned PSM already applied).
 */
export const ocrImage = recognizeImageText;

export type BoardOcrSource =
  | HTMLCanvasElement
  | Blob
  | File
  | ImageBitmap
  | string;

export type BoardOcrErrorCode =
  | "empty_board"
  | "snapshot"
  | "no_text"
  | "failed";

export class BoardOcrError extends Error {
  readonly code: BoardOcrErrorCode;

  constructor(code: BoardOcrErrorCode, message: string) {
    super(message);
    this.name = "BoardOcrError";
    this.code = code;
  }
}

export type BoardOcrSuccess = {
  ok: true;
  text: string;
};

export type BoardOcrFailure = {
  ok: false;
  code: BoardOcrErrorCode;
  error: string;
};

export type BoardOcrResult = BoardOcrSuccess | BoardOcrFailure;

export type OcrBoardOptions = {
  onProgress?: (p: OcrProgress) => void;
  /** When true (default), refuse OCR if `hasInk` is false. */
  requireInk?: boolean;
  /** From BoardCanvas.hasInk() — required when requireInk is true. */
  hasInk?: boolean;
};

const MSG = {
  empty_board: "Write something on the board first.",
  snapshot: "Could not snapshot the board.",
  no_text:
    "No text detected — try darker, larger handwriting and Read handwriting again.",
  failed: "OCR failed",
} as const;

function toClearError(err: unknown): BoardOcrFailure {
  if (err instanceof BoardOcrError) {
    return { ok: false, code: err.code, error: err.message };
  }
  const message =
    err instanceof Error && err.message.trim()
      ? err.message.trim()
      : MSG.failed;
  return { ok: false, code: "failed", error: message };
}

/** PNG blob from an HTML canvas (null if toBlob fails). */
export function canvasToPngBlob(
  canvas: HTMLCanvasElement,
): Promise<Blob | null> {
  return new Promise((resolve) => {
    try {
      canvas.toBlob((blob) => resolve(blob), "image/png");
    } catch {
      resolve(null);
    }
  });
}

/**
 * Normalize a board source into something `ocrImage` accepts.
 * Canvases are snapshotted to PNG so OCR never touches a live drawing surface.
 */
export async function resolveBoardImage(
  source: BoardOcrSource,
): Promise<Blob | File | ImageBitmap | string> {
  if (typeof HTMLCanvasElement !== "undefined" && source instanceof HTMLCanvasElement) {
    const blob = await canvasToPngBlob(source);
    if (!blob) {
      throw new BoardOcrError("snapshot", MSG.snapshot);
    }
    return blob;
  }
  return source as Blob | File | ImageBitmap | string;
}

/**
 * Snapshot → `ocrImage` (free-study) → trimmed text for the chat dock.
 * Always returns a result object — never throws for expected failures.
 */
export async function ocrBoardSnapshot(
  source: BoardOcrSource | null | undefined,
  options: OcrBoardOptions = {},
): Promise<BoardOcrResult> {
  const requireInk = options.requireInk !== false;

  if (requireInk && options.hasInk === false) {
    return { ok: false, code: "empty_board", error: MSG.empty_board };
  }

  if (source == null) {
    return { ok: false, code: "snapshot", error: MSG.snapshot };
  }

  try {
    const image = await resolveBoardImage(source);
    const text = (await ocrImage(image, options.onProgress)).trim();
    if (!text) {
      return { ok: false, code: "no_text", error: MSG.no_text };
    }
    return { ok: true, text };
  } catch (err) {
    return toClearError(err);
  }
}

/**
 * Convenience: OCR from a BoardCanvas-style handle (`snapshotBlob` + `hasInk`).
 */
export async function ocrFromBoardHandle(
  board: {
    snapshotBlob: () => Promise<Blob | null>;
    hasInk: () => boolean;
  },
  options: Omit<OcrBoardOptions, "hasInk"> = {},
): Promise<BoardOcrResult> {
  const hasInk = board.hasInk();
  if (options.requireInk !== false && !hasInk) {
    return { ok: false, code: "empty_board", error: MSG.empty_board };
  }
  const blob = await board.snapshotBlob();
  if (!blob) {
    return { ok: false, code: "snapshot", error: MSG.snapshot };
  }
  return ocrBoardSnapshot(blob, {
    ...options,
    requireInk: false,
    hasInk: true,
  });
}

/** Tutor chat message wrapping recognized board text. */
export function formatBoardChatPrompt(ocrText: string): string {
  const text = ocrText.trim();
  return `Help me with this whiteboard work:\n${text}`;
}
