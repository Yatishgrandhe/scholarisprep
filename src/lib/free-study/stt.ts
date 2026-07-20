/**
 * Browser Web Speech API STT for Free Studying voice mode.
 * Chrome/Edge only; clear fallback when unsupported.
 */

export type SttStatus = "idle" | "listening" | "unsupported" | "error";

export type SttResult = {
  transcript: string;
  interim: string;
  final: boolean;
};

type SpeechRecognitionLike = {
  continuous: boolean;
  interimResults: boolean;
  lang: string;
  start: () => void;
  stop: () => void;
  abort: () => void;
  onresult: ((ev: SpeechRecognitionEventLike) => void) | null;
  onerror: ((ev: { error?: string }) => void) | null;
  onend: (() => void) | null;
};

type SpeechRecognitionEventLike = {
  resultIndex: number;
  results: ArrayLike<{
    isFinal: boolean;
    0: { transcript: string };
  }>;
};

function getSpeechRecognitionCtor():
  | (new () => SpeechRecognitionLike)
  | null {
  if (typeof window === "undefined") return null;
  const w = window as Window & {
    SpeechRecognition?: new () => SpeechRecognitionLike;
    webkitSpeechRecognition?: new () => SpeechRecognitionLike;
  };
  return w.SpeechRecognition ?? w.webkitSpeechRecognition ?? null;
}

export function isSpeechRecognitionSupported(): boolean {
  return getSpeechRecognitionCtor() !== null;
}

export type SttSession = {
  start: () => void;
  stop: () => void;
  abort: () => void;
};

export function createSttSession(options: {
  lang?: string;
  onResult: (result: SttResult) => void;
  onError?: (message: string) => void;
  onEnd?: () => void;
}): SttSession | null {
  const Ctor = getSpeechRecognitionCtor();
  if (!Ctor) return null;

  const recognition = new Ctor();
  recognition.continuous = true;
  recognition.interimResults = true;
  recognition.lang = options.lang ?? "en-US";

  recognition.onresult = (ev) => {
    let interim = "";
    let finalChunk = "";
    for (let i = ev.resultIndex; i < ev.results.length; i += 1) {
      const row = ev.results[i];
      if (!row) continue;
      const text = row[0]?.transcript ?? "";
      if (row.isFinal) finalChunk += text;
      else interim += text;
    }
    options.onResult({
      transcript: finalChunk,
      interim,
      final: Boolean(finalChunk.trim()),
    });
  };

  recognition.onerror = (ev) => {
    const code = ev.error ?? "unknown";
    if (code === "aborted" || code === "no-speech") return;
    options.onError?.(
      code === "not-allowed"
        ? "Microphone permission denied."
        : `Speech recognition error: ${code}`,
    );
  };

  recognition.onend = () => {
    options.onEnd?.();
  };

  return {
    start: () => recognition.start(),
    stop: () => recognition.stop(),
    abort: () => recognition.abort(),
  };
}
