/**
 * Client-side OCR via tesseract.js (runs in a browser worker under the hood).
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
    const { data } = await worker.recognize(image);
    return (data.text ?? "").trim();
  } finally {
    await worker.terminate();
  }
}
