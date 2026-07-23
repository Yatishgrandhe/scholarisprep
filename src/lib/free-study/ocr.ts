/**
 * Client-side OCR — vision API (LangChain/Mistral) with Tesseract fallback.
 * Tuned for tutoring whiteboard snapshots: sparse handwriting on a light board.
 */

import { aiRequest } from "@/lib/ai/clientKey";

export type OcrProgress = {
  status: string;
  progress: number;
};

const VISION_OCR_URL = "/api/ai/ocr";

/**
 * Send a base64 image to the server-side vision model for OCR.
 * Returns extracted text or null on failure (so callers can fall back).
 */
async function recognizeVision(
  base64Data: string,
  mode: "handwriting" | "printed" | "math" | "auto" = "auto",
  prompt?: string,
): Promise<string | null> {
  try {
    const res = await aiRequest(VISION_OCR_URL, {
      method: "POST",
      headers: { "content-type": "application/json" },
      body: JSON.stringify({
        image: base64Data,
        mode,
        prompt,
      }),
    });
    if (!res.ok) return null;
    const data = await res.json();
    return typeof data?.text === "string" ? data.text : null;
  } catch {
    return null;
  }
}

/**
 * Convert an image source to a base64 data URL string.
 */
async function toBase64(
  image: ImageBitmap | HTMLCanvasElement | Blob | File | string,
): Promise<string> {
  if (typeof image === "string") {
    return image.startsWith("data:") ? image : `data:image/png;base64,${image}`;
  }

  if (image instanceof HTMLCanvasElement) {
    return image.toDataURL("image/png");
  }

  if (image instanceof Blob || image instanceof File) {
    return new Promise((resolve, reject) => {
      const reader = new FileReader();
      reader.onload = () => resolve(reader.result as string);
      reader.onerror = () => reject(new Error("Failed to read image"));
      reader.readAsDataURL(image);
    });
  }

  // ImageBitmap — draw to canvas then export
  const canvas = new OffscreenCanvas(image.width, image.height);
  const ctx = canvas.getContext("2d")!;
  ctx.drawImage(image, 0, 0);
  const blob = await canvas.convertToBlob({ type: "image/png" });
  return toBase64(blob);
}

/**
 * Tesseract-only fallback (original client-side OCR).
 */
async function recognizeTesseract(
  image: ImageBitmap | HTMLCanvasElement | Blob | File | string,
  onProgress?: (p: OcrProgress) => void,
): Promise<string> {
  const { createWorker } = await import("tesseract.js");
  const worker = await createWorker("eng", 1, {
    logger: (m) => {
      if (typeof m.progress === "number") {
        onProgress?.({
          status: String(m.status ?? "recognizing"),
          progress: m.progress,
        });
      }
    },
  });
  try {
    await worker.setParameters({
      tessedit_pageseg_mode: "7" as never,
      preserve_interword_spaces: "1",
    });
    const { data } = await worker.recognize(image as Parameters<typeof worker.recognize>[0]);
    return (data.text ?? "").replace(/\s+\n/g, "\n").trim();
  } finally {
    await worker.terminate();
  }
}

/**
 * Primary OCR entry point: tries vision API first, falls back to Tesseract.
 * Mode controls the system prompt sent to the vision model.
 */
export async function recognizeImageText(
  image: ImageBitmap | HTMLCanvasElement | Blob | File | string,
  onProgress?: (p: OcrProgress) => void,
  opts?: { mode?: "handwriting" | "printed" | "math" | "auto"; prompt?: string },
): Promise<string> {
  onProgress?.({ status: "trying vision model…", progress: 0.1 });

  // Try vision API first
  try {
    const base64 = await toBase64(image);
    const result = await recognizeVision(base64, opts?.mode ?? "auto", opts?.prompt);
    if (result && result.length > 0) {
      onProgress?.({ status: "complete", progress: 1 });
      return result;
    }
  } catch {
    // Fall through to Tesseract
  }

  // Fallback: Tesseract
  onProgress?.({ status: "using Tesseract fallback…", progress: 0.3 });
  return recognizeTesseract(image, onProgress);
}
