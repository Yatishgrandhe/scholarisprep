"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import {
  createSttSession,
  isSpeechRecognitionSupported,
  type SttSession,
} from "@/lib/free-study/stt";
import { createSentenceChunker } from "@/lib/free-study/sentenceChunker";
import { useStreamingTts } from "@/hooks/useStreamingTts";
import { useTutorStream } from "@/hooks/useTutorStream";
import type { TutorStreamContext } from "@/lib/tutor/questionContext";
import type { FreeStudyTelemetry } from "@/lib/ai/telemetryPayload";

export type VoiceState =
  | "idle"
  | "listening"
  | "transcribing"
  | "thinking"
  | "speaking";

export type VoiceConversationOptions = {
  conversationId: string;
  context?: TutorStreamContext;
  telemetry?: FreeStudyTelemetry | null;
  /** Auto-speak the AI response. Default: true. */
  autoSpeak?: boolean;
  /** Language for STT. Default: "en-US". */
  lang?: string;
};

export type UseVoiceConversationReturn = {
  state: VoiceState;
  /** The user's last spoken message. */
  userMessage: string;
  /** The AI's streaming response text. */
  aiResponse: string;
  /** Live STT interim text while listening. */
  interim: string;
  /** Error message if something failed. */
  error: string | null;
  /** Start listening for user speech. */
  startListening: () => void;
  /** Stop listening and process the transcript. */
  stopListening: () => void;
  /** Send a text message directly (bypass STT). */
  sendText: (text: string) => void;
  /** Interrupt AI speech mid-sentence. */
  interrupt: () => void;
  /** Reset all state. */
  reset: () => void;
  /** Whether auto-speak is on. */
  autoSpeak: boolean;
  /** Toggle auto-speak on/off. */
  toggleAutoSpeak: () => void;
};

/**
 * Full voice conversation state machine for Free Study:
 * idle → listening → transcribing → thinking → speaking → idle
 *
 * Uses Web Speech API for STT and Kitten TTS / browser fallback for TTS.
 */
export function useVoiceConversation(
  opts: VoiceConversationOptions,
): UseVoiceConversationReturn {
  const {
    conversationId,
    context,
    telemetry,
    autoSpeak: initialAutoSpeak = true,
    lang = "en-US",
  } = opts;

  const [state, setState] = useState<VoiceState>("idle");
  const [userMessage, setUserMessage] = useState("");
  const [aiResponse, setAiResponse] = useState("");
  const [interim, setInterim] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [autoSpeak, setAutoSpeak] = useState(initialAutoSpeak);

  const sttRef = useRef<SttSession | null>(null);
  const bufferRef = useRef("");
  const stateRef = useRef<VoiceState>("idle");

  const { startStream, cancelStream, isStreaming } = useTutorStream();
  const tts = useStreamingTts();

  // Keep stateRef in sync
  useEffect(() => {
    stateRef.current = state;
  }, [state]);

  const reset = useCallback(() => {
    sttRef.current?.abort();
    sttRef.current = null;
    cancelStream();
    tts.interrupt();
    setState("idle");
    setUserMessage("");
    setAiResponse("");
    setInterim("");
    setError(null);
    bufferRef.current = "";
  }, [cancelStream, tts]);

  const sendAndListen = useCallback(
    async (message: string) => {
      if (!message.trim()) return;

      setUserMessage(message);
      setAiResponse("");
      setState("thinking");
      setError(null);

      try {
        const result = await startStream({
          conversationId,
          message,
          context,
          telemetry,
        });

        if (result.aborted) {
          setState("idle");
          return;
        }

        const responseText = result.text;
        setAiResponse(responseText);

        if (autoSpeak && responseText.trim()) {
          setState("speaking");
          await tts.speak(responseText);
        }

        setState("idle");
      } catch (err) {
        const msg = err instanceof Error ? err.message : "Voice conversation failed";
        setError(msg);
        setState("idle");
      }
    },
    [conversationId, context, telemetry, autoSpeak, startStream, tts],
  );

  const startListening = useCallback(() => {
    if (!isSpeechRecognitionSupported()) {
      setError("Voice needs Chrome or Edge.");
      return;
    }
    if (stateRef.current === "speaking") {
      tts.interrupt();
    }

    setError(null);
    bufferRef.current = "";
    setInterim("");

    const session = createSttSession({
      lang,
      onResult: ({ transcript, interim: nextInterim }) => {
        if (transcript) bufferRef.current += transcript;
        setInterim(nextInterim);
      },
      onError: (message) => {
        setError(message);
        setState("idle");
        sttRef.current = null;
      },
      onEnd: () => {
        const transcript = bufferRef.current.trim();
        sttRef.current = null;
        setInterim("");

        if (transcript) {
          setState("transcribing");
          // Small delay so the user sees "Transcribing..." briefly
          setTimeout(() => sendAndListen(transcript), 80);
        } else {
          setState("idle");
        }
      },
    });

    if (!session) {
      setError("Speech recognition needs Chrome or Edge.");
      return;
    }

    sttRef.current = session;
    setState("listening");
    session.start();
  }, [lang, sendAndListen, tts]);

  const stopListening = useCallback(() => {
    sttRef.current?.stop();
  }, []);

  const sendText = useCallback(
    (text: string) => {
      if (text.trim()) sendAndListen(text);
    },
    [sendAndListen],
  );

  const interrupt = useCallback(() => {
    if (stateRef.current === "speaking") {
      tts.interrupt();
      setState("idle");
    }
  }, [tts]);

  const toggleAutoSpeak = useCallback(() => {
    setAutoSpeak((prev) => !prev);
  }, []);

  // Cleanup on unmount
  useEffect(() => {
    return () => {
      sttRef.current?.abort();
      cancelStream();
      tts.interrupt();
    };
  }, [cancelStream, tts]);

  return {
    state,
    userMessage,
    aiResponse,
    interim,
    error,
    startListening,
    stopListening,
    sendText,
    interrupt,
    reset,
    autoSpeak,
    toggleAutoSpeak,
  };
}
