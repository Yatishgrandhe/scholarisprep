"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import type {
  KokoroProgress,
  KokoroWorkerIn,
  KokoroWorkerOut,
} from "@/lib/free-study/speechText";
import { stripMarkdownForSpeech } from "@/lib/free-study/speechText";

async function playPcm(pcm: Float32Array, sampleRate: number) {
  const ctx = new AudioContext({ sampleRate });
  const buffer = ctx.createBuffer(1, pcm.length, sampleRate);
  buffer.copyToChannel(pcm, 0);
  const source = ctx.createBufferSource();
  source.buffer = buffer;
  source.connect(ctx.destination);
  await new Promise<void>((resolve, reject) => {
    source.onended = () => {
      void ctx.close();
      resolve();
    };
    source.addEventListener("error", () =>
      reject(new Error("Audio playback failed")),
    );
    source.start();
  });
}

/** Main-thread Kokoro fallback when the worker cannot load. */
async function speakOnMainThread(
  text: string,
  onProgress: (p: KokoroProgress) => void,
): Promise<void> {
  onProgress({
    status: "downloading",
    progress: 0.05,
    message: "Loading Kokoro…",
  });
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
        : 0.1;
    onProgress({
      status: "downloading",
      progress: p,
      message: info.file ? `Loading ${info.file}` : info.status,
    });
  };

  let tts;
  try {
    tts = await KokoroTTS.from_pretrained(modelId, {
      dtype: "fp32",
      device: "webgpu",
      progress_callback,
    });
  } catch {
    tts = await KokoroTTS.from_pretrained(modelId, {
      dtype: "q8",
      device: "wasm",
      progress_callback,
    });
  }

  onProgress({ status: "speaking", progress: 1, message: "Speaking…" });
  const clean = stripMarkdownForSpeech(text).slice(0, 1200);
  if (!clean) {
    onProgress({ status: "ready", progress: 1 });
    return;
  }
  const result = await tts.generate(clean, { voice: "af_heart" });
  await playPcm(result.audio, result.sampling_rate);
  onProgress({ status: "ready", progress: 1 });
}

export function useKokoroTts() {
  const [progress, setProgress] = useState<KokoroProgress>({
    status: "idle",
    progress: 0,
  });
  const workerRef = useRef<Worker | null>(null);
  const readyRef = useRef(false);
  const workerFailedRef = useRef(false);
  const audioResolveRef = useRef<(() => void) | null>(null);
  const audioRejectRef = useRef<((err: Error) => void) | null>(null);

  useEffect(() => {
    return () => {
      workerRef.current?.terminate();
      workerRef.current = null;
    };
  }, []);

  const ensureWorker = useCallback(async (): Promise<Worker | null> => {
    if (workerFailedRef.current) return null;
    if (workerRef.current) return workerRef.current;

    try {
      const worker = new Worker(
        new URL("../workers/kokoroTts.worker.ts", import.meta.url),
        { type: "module" },
      );
      worker.onmessage = (ev: MessageEvent<KokoroWorkerOut>) => {
        const msg = ev.data;
        if (msg.type === "progress") {
          setProgress({
            status: "downloading",
            progress: msg.progress,
            message: msg.message,
          });
        } else if (msg.type === "ready") {
          readyRef.current = true;
          setProgress({ status: "ready", progress: 1 });
        } else if (msg.type === "audio") {
          setProgress({ status: "speaking", progress: 1 });
          void playPcm(msg.pcm, msg.sampleRate)
            .then(() => {
              setProgress({ status: "ready", progress: 1 });
              audioResolveRef.current?.();
              audioResolveRef.current = null;
              audioRejectRef.current = null;
            })
            .catch((err: Error) => {
              setProgress({
                status: "error",
                progress: 0,
                message: err.message,
              });
              audioRejectRef.current?.(err);
              audioResolveRef.current = null;
              audioRejectRef.current = null;
            });
        } else if (msg.type === "error") {
          setProgress({ status: "error", progress: 0, message: msg.message });
          audioRejectRef.current?.(new Error(msg.message));
          audioResolveRef.current = null;
          audioRejectRef.current = null;
        }
      };
      worker.onerror = () => {
        worker.terminate();
        workerRef.current = null;
        readyRef.current = false;
        workerFailedRef.current = true;
        audioRejectRef.current?.(new Error("Kokoro worker failed to load"));
        audioResolveRef.current = null;
        audioRejectRef.current = null;
      };
      workerRef.current = worker;
      worker.postMessage({ type: "init" } satisfies KokoroWorkerIn);
      return worker;
    } catch {
      workerFailedRef.current = true;
      return null;
    }
  }, []);

  const preload = useCallback(async () => {
    const worker = await ensureWorker();
    if (!worker) {
      // Warm main-thread path with a tiny speak noop via progress only
      setProgress({
        status: "downloading",
        progress: 0.1,
        message: "Preparing neural voice (main thread)…",
      });
    }
  }, [ensureWorker]);

  const speak = useCallback(
    async (text: string) => {
      const worker = await ensureWorker();
      if (!worker) {
        await speakOnMainThread(text, setProgress);
        return;
      }

      try {
        await new Promise<void>((resolve, reject) => {
          audioResolveRef.current = resolve;
          audioRejectRef.current = reject;
          worker.postMessage({
            type: "speak",
            text,
            voice: "af_heart",
          } satisfies KokoroWorkerIn);
        });
      } catch {
        // Worker speak failed — fall back to main thread once
        workerFailedRef.current = true;
        workerRef.current?.terminate();
        workerRef.current = null;
        await speakOnMainThread(text, setProgress);
      }
    },
    [ensureWorker],
  );

  return { progress, speak, preload };
}
