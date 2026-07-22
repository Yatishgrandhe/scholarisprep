/**
 * Client-side OCR via tesseract.js (runs in a browser worker under the hood).
 * Tuned for tutoring whiteboard snapshots: sparse handwriting on a light board.
 */

export type OcrProgress = {
  status: string;
  progress: number;
};

export async function recognizeImageText(
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
    // PSM 7 = SINGLE_LINE — best for sparse board handwriting on one line.
    // PSM 11 (SPARSE_TEXT) caused + to be misread as √ (sqrt symbol).
    await worker.setParameters({
      tessedit_pageseg_mode: "7" as never,
      preserve_interword_spaces: "1",
      tessedit_char_whitelist:
        "0123456789+-=×÷/().√ ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ",
    });
    const { data } = await worker.recognize(image as Parameters<typeof worker.recognize>[0]);
    return (data.text ?? "").replace(/\s+\n/g, "\n").trim();
  } finally {
    await worker.terminate();
  }
}
