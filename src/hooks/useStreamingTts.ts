"use client";

import { useCallback, useRef, useState } from "react";

export type StreamingTtsProgress = {
  status: "idle" | "downloading" | "speaking" | "ready" | "error";
  progress: number;
  message?: string;
};

let kittenReady = false;
let kittenLoadPromise: Promise<void> | null = null;

/**
 * Loads Kitten TTS (80M, WebGPU) once, then reuses the engine.
 * Falls back to browser SpeechSynthesis if WebGPU unavailable.
 */
async function ensureKitten(
  onProgress?: (stage: string) => void,
): Promise<boolean> {
  if (kittenReady) return true;
  if (typeof window === "undefined") return false;

  // Check WebGPU support
  if (!navigator.gpu) return false;

  if (!kittenLoadPromise) {
    kittenLoadPromise = (async () => {
      try {
        const { textToSpeech } = await import("kitten-tts-webgpu");
        // First call downloads model (~75 MB) and inits WebGPU
        await textToSpeech("", { model: "nano", onProgress });
        kittenReady = true;
      } catch (err) {
        console.warn("Kitten TTS init failed, falling back to browser TTS:", err);
        kittenLoadPromise = null;
      }
    })();
  }

  await kittenLoadPromise;
  return kittenReady;
}

/**
 * Streaming TTS hook — Kitten TTS (free, local, WebGPU) primary,
 * browser SpeechSynthesis fallback.
 *
 * Replaces useKokoroTts for faster, interruptible voice output.
 */
export function useStreamingTts() {
  const [progress, setProgress] = useState<StreamingTtsProgress>({
    status: "idle",
    progress: 0,
  });
  const abortRef = useRef<AbortController | null>(null);
  const synthRef = useRef<SpeechSynthesis | null>(null);
  const audioRef = useRef<HTMLAudioElement | null>(null);

  const getSynth = useCallback(() => {
    if (typeof window === "undefined") return null;
    if (!synthRef.current) {
      synthRef.current = window.speechSynthesis;
    }
    return synthRef.current;
  }, []);

  const preload = useCallback(async () => {
    const hasKitten = await ensureKitten((stage) => {
      setProgress({ status: "downloading", progress: 0.3, message: stage });
    });
    if (hasKitten) {
      setProgress({ status: "ready", progress: 1, message: "Kitten TTS ready" });
    } else {
      setProgress({ status: "ready", progress: 1, message: "Browser TTS ready" });
    }
  }, []);

  const speak = useCallback(
    async (text: string) => {
      const clean = text
        .replace(/<[^>]*>/g, "")
        .replace(/[*_`#~]/g, "")
        .replace(/\n+/g, ". ")
        .trim()
        .slice(0, 2000);

      if (!clean) return;

      // Cancel any ongoing speech
      abortRef.current?.abort();
      abortRef.current = new AbortController();
      const signal = abortRef.current.signal;

      // Stop any playing audio
      if (audioRef.current) {
        audioRef.current.pause();
        audioRef.current = null;
      }

      const hasKitten = await ensureKitten((stage) => {
        setProgress({ status: "downloading", progress: 0.3, message: stage });
      });

      if (hasKitten) {
        await speakKitten(clean, signal, setProgress, audioRef);
      } else {
        await speakBrowser(clean, getSynth, setProgress);
      }
    },
    [getSynth],
  );

  const interrupt = useCallback(() => {
    abortRef.current?.abort();
    if (audioRef.current) {
      audioRef.current.pause();
      audioRef.current = null;
    }
    const synth = getSynth();
    if (synth) {
      synth.cancel();
    }
    setProgress({ status: "ready", progress: 1 });
  }, [getSynth]);

  return { progress, speak, preload, interrupt };
}

/** Kitten TTS — free, local, WebGPU. Sub-second on desktop. */
async function speakKitten(
  text: string,
  signal: AbortSignal,
  setProgress: (p: StreamingTtsProgress) => void,
  audioRef: React.MutableRefObject<HTMLAudioElement | null>,
): Promise<void> {
  setProgress({ status: "downloading", progress: 0.2, message: "Generating speech…" });

  try {
    const { textToSpeech } = await import("kitten-tts-webgpu");
    const wavBlob = await textToSpeech(text, {
      model: "nano",
      voice: "Bella",
      speed: 1.0,
    });

    if (signal.aborted) return;

    setProgress({ status: "speaking", progress: 0.6 });

    const url = URL.createObjectURL(wavBlob);
    const audio = new Audio(url);
    audioRef.current = audio;

    await new Promise<void>((resolve, reject) => {
      audio.onended = () => {
        URL.revokeObjectURL(url);
        audioRef.current = null;
        resolve();
      };
      audio.onerror = () => {
        URL.revokeObjectURL(url);
        audioRef.current = null;
        reject(new Error("Audio playback failed"));
      };
      audio.play().catch(reject);
    });

    setProgress({ status: "ready", progress: 1 });
  } catch (err) {
    setProgress({ status: "error", progress: 0, message: `Kitten TTS failed: ${err}` });
  }
}

/** Browser SpeechSynthesis — instant fallback, no API key needed. */
function speakBrowser(
  text: string,
  getSynth: () => SpeechSynthesis | null,
  setProgress: (p: StreamingTtsProgress) => void,
): Promise<void> {
  return new Promise((resolve, reject) => {
    const synth = getSynth();
    if (!synth) {
      reject(new Error("Speech synthesis not available"));
      return;
    }

    const utterance = new SpeechSynthesisUtterance(text);
    
    // Optimized parameters for natural-sounding speech
    utterance.rate = 0.9;  // Slightly slower for clarity
    utterance.pitch = 1.0; // Natural pitch
    utterance.volume = 1.0;

    // Best voice selection: prefer natural/enhanced voices
    const voices = synth.getVoices();
    const preferred = voices.find((v) => {
      const lang = v.lang.toLowerCase();
      const name = v.name.toLowerCase();
      return (
        lang.startsWith("en") &&
        (name.includes("natural") ||
          name.includes("enhanced") ||
          name.includes("premium") ||
          name.includes("neural") ||
          name.includes("google") ||
          name.includes("samantha") ||
          name.includes("daniel") ||
          name.includes("karen") ||
          name.includes("moira") ||
          name.includes("tessa"))
      );
    });
    if (preferred) utterance.voice = preferred;

    setProgress({ status: "speaking", progress: 0.5 });

    utterance.onend = () => {
      setProgress({ status: "ready", progress: 1 });
      resolve();
    };

    utterance.onerror = (e) => {
      setProgress({ status: "error", progress: 0, message: "Speech failed" });
      reject(new Error(`Speech error: ${e.error}`));
    };

    utterance.onboundary = () => {
      setProgress({ status: "speaking", progress: 0.8 });
    };

    synth.speak(utterance);
  });
}
