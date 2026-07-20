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
    // PSM 11 = SPARSE_TEXT — better for board handwriting than full-page layout.
    await worker.setParameters({
      tessedit_pageseg_mode: "11" as never,
      preserve_interword_spaces: "1",
    });
    const { data } = await worker.recognize(image);
    return (data.text ?? "").replace(/\s+\n/g, "\n").trim();
  } finally {
    await worker.terminate();
  }
}
