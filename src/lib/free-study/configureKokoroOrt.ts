/**
 * Point ONNX Runtime WASM at same-origin /ort/ assets (see scripts/copy-ort-wasm.mjs).
 * Must run before KokoroTTS.from_pretrained — transformers.js otherwise defaults to
 * cdn.jsdelivr.net, which our CSP blocks and which often fails to fetch.
 */
export async function configureKokoroOrt(): Promise<void> {
  const { env } = await import("@huggingface/transformers");

  // Keep Hub model downloads; only pin ORT runtime binaries locally.
  env.allowRemoteModels = true;

  const onnx = env.backends?.onnx;
  if (!onnx?.wasm) return;

  // Directory must end with / — ORT appends filenames like ort-wasm-simd-threaded.jsep.mjs
  onnx.wasm.wasmPaths = "/ort/";

  // Avoid SharedArrayBuffer / COOP-COEP requirements for threaded WASM when possible.
  try {
    onnx.wasm.numThreads = 1;
  } catch {
    // Some ORT builds freeze numThreads after init — ignore.
  }
}

/** User-facing message when WebGPU and WASM backends both fail. */
export function kokoroBackendErrorMessage(
  webgpuErr: unknown,
  wasmErr: unknown,
): string {
  const w = webgpuErr instanceof Error ? webgpuErr.message : String(webgpuErr);
  const c = wasmErr instanceof Error ? wasmErr.message : String(wasmErr);
  return `Kokoro voice unavailable. WebGPU: ${w}. WASM: ${c}. Try refreshing after the first model download, or continue in text-only mode.`;
}
