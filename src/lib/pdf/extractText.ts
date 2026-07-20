"use client";

/**
 * Extract plain text from a PDF in the BROWSER with pdfjs.
 *
 * Doing this client-side (instead of parsing the PDF in a serverless function)
 * avoids the fragile pdfjs-in-Vercel bundling that was making the score-report
 * upload fail — the browser ships pdfjs reliably. The worker is served from our
 * own origin (`/public/pdf.worker.min.mjs`) so it satisfies the CSP
 * `worker-src 'self'` rule. pdfjs is loaded lazily so it stays out of the
 * page's initial bundle.
 */
let workerConfigured = false;

export async function extractPdfTextClient(file: File): Promise<string> {
  const pdfjs = await import("pdfjs-dist");
  if (!workerConfigured) {
    pdfjs.GlobalWorkerOptions.workerSrc = "/pdf.worker.min.mjs";
    workerConfigured = true;
  }

  const data = await file.arrayBuffer();
  const doc = await pdfjs.getDocument({ data, isEvalSupported: false }).promise;

  const pages: string[] = [];
  for (let i = 1; i <= doc.numPages; i += 1) {
    const page = await doc.getPage(i);
    const content = await page.getTextContent();
    pages.push(
      content.items
        .map((item) =>
          typeof item === "object" && item && "str" in item
            ? (item as { str: string }).str
            : "",
        )
        .join(" "),
    );
  }

  await doc.destroy();
  return pages.join("\n");
}
