/// <reference lib="webworker" />

/**
 * Kokoro TTS Web Worker — WebGPU/fp32 → WASM/q8 fallback.
 * Self-contained (no path aliases) so Next/Turbopack can bundle it reliably.
 * Never uses speechSynthesis.
 */

declare const self: DedicatedWorkerGlobalScope;

type KokoroWorkerIn =
  | { type: "init" }
  | { type: "speak"; text: string; voice?: string };

type KokoroWorkerOut =
  | { type: "progress"; progress: number; message?: string }
  | { type: "ready" }
  | { type: "audio"; pcm: Float32Array; sampleRate: number }
  | { type: "error"; message: string };

function stripMarkdownForSpeech(input: string): string {
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

type KokoroInstance = {
  generate: (
    text: string,
    opts?: { voice?: string },
  ) => Promise<{ audio: Float32Array; sampling_rate: number }>;
};

let tts: KokoroInstance | null = null;

function post(msg: KokoroWorkerOut) {
  self.postMessage(msg);
}

async function initModel() {
  const { KokoroTTS } = await import("kokoro-js");
  const modelId = "onnx-community/Kokoro-82M-v1.0-ONNX";

  const progress_callback = (info: {
    status?: string;
    progress?: number;
    file?: string;
  }) => {
    const raw = info.progress;
    const p =
      typeof raw === "number"
        ? Math.min(1, Math.max(0, raw > 1 ? raw / 100 : raw))
        : 0;
    post({
      type: "progress",
      progress: p,
      message: info.file ? `Loading ${info.file}` : info.status,
    });
  };

  try {
    tts = (await KokoroTTS.from_pretrained(modelId, {
      dtype: "fp32",
      device: "webgpu",
      progress_callback,
    })) as KokoroInstance;
  } catch {
    tts = (await KokoroTTS.from_pretrained(modelId, {
      dtype: "q8",
      device: "wasm",
      progress_callback,
    })) as KokoroInstance;
  }
  post({ type: "ready" });
}

self.onmessage = async (ev: MessageEvent<KokoroWorkerIn>) => {
  const data = ev.data;
  try {
    if (data.type === "init") {
      if (!tts) await initModel();
      else post({ type: "ready" });
      return;
    }
    if (data.type === "speak") {
      if (!tts) await initModel();
      if (!tts) throw new Error("Kokoro failed to load");
      const clean = stripMarkdownForSpeech(data.text).slice(0, 1200);
      if (!clean) {
        post({ type: "error", message: "Nothing to speak" });
        return;
      }
      const result = await tts.generate(clean, {
        voice: data.voice ?? "af_heart",
      });
      // Copy buffer so transfer is safe across worker boundary
      const pcm = new Float32Array(result.audio);
      post({
        type: "audio",
        pcm,
        sampleRate: result.sampling_rate,
      });
    }
  } catch (err) {
    post({
      type: "error",
      message: err instanceof Error ? err.message : "Kokoro TTS failed",
    });
  }
};

export {};
