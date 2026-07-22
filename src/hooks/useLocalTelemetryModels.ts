"use client";

import { useCallback, useRef, useState } from "react";
import { recognizeImageText, type OcrProgress } from "@/lib/free-study/ocr";
import {
  createSttSession,
  isSpeechRecognitionSupported,
  type SttSession,
} from "@/lib/free-study/stt";
import { useStreamingTts } from "@/hooks/useStreamingTts";

export type LocalModelStatus =
  | "idle"
  | "downloading"
  | "ready"
  | "error"
  | "unsupported";

export type LocalTelemetryModelsState = {
  ocr: { status: LocalModelStatus; progress: number; message?: string };
  stt: { status: LocalModelStatus; message?: string };
  tts: { status: LocalModelStatus; progress: number; message?: string };
};

/**
 * Aggregates OCR / STT / TTS progress for Free Studying panes.
 */
export function useLocalTelemetryModels() {
  const [ocr, setOcr] = useState<LocalTelemetryModelsState["ocr"]>({
    status: "idle",
    progress: 0,
  });
  const [stt, setStt] = useState<LocalTelemetryModelsState["stt"]>({
    status: isSpeechRecognitionSupported() ? "idle" : "unsupported",
    message: isSpeechRecognitionSupported()
      ? undefined
      : "Web Speech API needs Chrome or Edge",
  });
  const { progress: ttsProgress, speak, preload } = useStreamingTts();
  const sttSessionRef = useRef<SttSession | null>(null);
  const sttBufferRef = useRef("");

  const runOcr = useCallback(
    async (image: ImageBitmap | HTMLCanvasElement | Blob | File | string) => {
      setOcr({ status: "downloading", progress: 0, message: "Starting OCR…" });
      try {
        const text = await recognizeImageText(image, (p: OcrProgress) => {
          setOcr({
            status: "downloading",
            progress: p.progress,
            message: p.status,
          });
        });
        setOcr({ status: "ready", progress: 1 });
        return text;
      } catch (err) {
        const message = err instanceof Error ? err.message : "OCR failed";
        setOcr({ status: "error", progress: 0, message });
        throw err;
      }
    },
    [],
  );

  const startListening = useCallback(
    (onPartial: (full: string, interim: string) => void) => {
      if (!isSpeechRecognitionSupported()) {
        setStt({
          status: "unsupported",
          message: "Web Speech API needs Chrome or Edge",
        });
        return null;
      }
      sttBufferRef.current = "";
      const session = createSttSession({
        onResult: ({ transcript, interim }) => {
          if (transcript) sttBufferRef.current += transcript;
          onPartial(sttBufferRef.current, interim);
        },
        onError: (message) => {
          setStt({ status: "error", message });
        },
        onEnd: () => {
          setStt({ status: "ready" });
        },
      });
      if (!session) return null;
      sttSessionRef.current = session;
      setStt({ status: "downloading", message: "Listening…" });
      session.start();
      return session;
    },
    [],
  );

  const stopListening = useCallback(() => {
    sttSessionRef.current?.stop();
    sttSessionRef.current = null;
    setStt({ status: "ready" });
    return sttBufferRef.current;
  }, []);

  const models: LocalTelemetryModelsState = {
    ocr,
    stt,
    tts: {
      status:
        ttsProgress.status === "downloading"
          ? "downloading"
          : ttsProgress.status === "error"
            ? "error"
            : ttsProgress.status === "ready" || ttsProgress.status === "speaking"
              ? "ready"
              : "idle",
      progress: ttsProgress.progress,
      message: ttsProgress.message,
    },
  };

  return {
    models,
    runOcr,
    startListening,
    stopListening,
    preloadTts: preload,
    speakWithStreaming: speak,
    ttsProgress,
  };
}
