"use client";

import { useCallback, useRef, useState } from "react";

export type StreamingTtsProgress = {
  status: "idle" | "downloading" | "speaking" | "ready" | "error";
  progress: number;
  message?: string;
};

/**
 * Streaming TTS hook — uses browser SpeechSynthesis by default (instant,
 * no downloads). Falls back to ElevenLabs WebSocket streaming when
 * NEXT_PUBLIC_ELEVENLABS_API_KEY is set.
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
  const utteranceRef = useRef<SpeechSynthesisUtterance | null>(null);

  // Ensure synth is available
  const getSynth = useCallback(() => {
    if (typeof window === "undefined") return null;
    if (!synthRef.current) {
      synthRef.current = window.speechSynthesis;
    }
    return synthRef.current;
  }, []);

  const preload = useCallback(async () => {
    // Browser SpeechSynthesis needs no preloading
    setProgress({ status: "ready", progress: 1 });
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
      const synth = getSynth();
      if (synth) {
        synth.cancel();
      }
      abortRef.current?.abort();
      abortRef.current = new AbortController();

      const apiKey = process.env.NEXT_PUBLIC_ELEVENLABS_API_KEY;

      if (apiKey) {
        // ElevenLabs streaming path
        await speakElevenLabs(clean, apiKey, abortRef.current.signal, setProgress);
      } else {
        // Browser SpeechSynthesis path
        await speakBrowser(clean, getSynth, setProgress);
      }
    },
    [getSynth],
  );

  const interrupt = useCallback(() => {
    abortRef.current?.abort();
    const synth = getSynth();
    if (synth) {
      synth.cancel();
    }
    setProgress({ status: "ready", progress: 1 });
  }, [getSynth]);

  return { progress, speak, preload, interrupt };
}

/** Browser SpeechSynthesis — instant, no API key needed. */
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
    utterance.rate = 1.0;
    utterance.pitch = 1.0;
    utterance.volume = 1.0;

    // Pick a good English voice
    const voices = synth.getVoices();
    const preferred = voices.find(
      (v) =>
        v.lang.startsWith("en") &&
        (v.name.includes("Google") ||
          v.name.includes("Samantha") ||
          v.name.includes("Daniel") ||
          v.name.includes("Enhanced")),
    );
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
      // Keep progress alive during long speeches
      setProgress({ status: "speaking", progress: 0.8 });
    };

    synth.speak(utterance);
  });
}

/** ElevenLabs WebSocket streaming — high quality, ~150ms TTFB. */
async function speakElevenLabs(
  text: string,
  apiKey: string,
  signal: AbortSignal,
  setProgress: (p: StreamingTtsProgress) => void,
): Promise<void> {
  setProgress({ status: "downloading", progress: 0.1, message: "Connecting to voice service…" });

  // ElevenLabs TTS API (REST streaming)
  const voiceId = "21m00Tcm4TlvDq8ikWAM"; // Rachel - natural female voice
  const modelId = "eleven_turbo_v2_5";

  const res = await fetch(
    `https://api.elevenlabs.io/v1/text-to-speech/${voiceId}/stream`,
    {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "xi-api-key": apiKey,
      },
      body: JSON.stringify({
        text,
        model_id: modelId,
        voice_settings: {
          stability: 0.5,
          similarity_boost: 0.75,
          style: 0.3,
          use_speaker_boost: true,
        },
      }),
      signal,
    },
  );

  if (!res.ok) {
    const errText = await res.text().catch(() => "Unknown error");
    setProgress({ status: "error", progress: 0, message: `Voice service error: ${res.status}` });
    throw new Error(`ElevenLabs error ${res.status}: ${errText}`);
  }

  setProgress({ status: "speaking", progress: 0.5 });

  // Decode audio stream and play via AudioContext
  const reader = res.body?.getReader();
  if (!reader) {
    setProgress({ status: "error", progress: 0, message: "No audio stream" });
    return;
  }

  const chunks: Uint8Array[] = [];
  while (true) {
    const { done, value } = await reader.read();
    if (done) break;
    if (value) chunks.push(value);
  }

  // Combine all chunks
  const totalLength = chunks.reduce((acc, c) => acc + c.length, 0);
  const combined = new Uint8Array(totalLength);
  let offset = 0;
  for (const chunk of chunks) {
    combined.set(chunk, offset);
    offset += chunk.length;
  }

  // Decode and play
  const audioCtx = new AudioContext();
  try {
    const audioBuffer = await audioCtx.decodeAudioData(combined.buffer);
    const source = audioCtx.createBufferSource();
    source.buffer = audioBuffer;
    source.connect(audioCtx.destination);

    await new Promise<void>((resolve, reject) => {
      source.onended = () => {
        void audioCtx.close();
        resolve();
      };
      source.addEventListener("error", () =>
        reject(new Error("Audio playback failed")),
      );
      source.start();
    });
  } finally {
    setProgress({ status: "ready", progress: 1 });
  }
}
