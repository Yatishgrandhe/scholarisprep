"use client";

import { useCallback, useRef, useState } from "react";

import { aiRequest } from "@/lib/ai/clientKey";
import type { FreeStudyTelemetry } from "@/lib/ai/telemetryPayload";
import type { TutorStreamContext } from "@/lib/tutor/questionContext";

type StreamOptions = {
  conversationId: string;
  message: string;
  context?: TutorStreamContext;
  /** Free Studying multimodal telemetry (OCR / PDF / voice / sims). */
  telemetry?: FreeStudyTelemetry | null;
  /** Board snapshot as base64 data-URL for vision. */
  snapshotBase64?: string;
};

export function useTutorStream() {
  const [isStreaming, setIsStreaming] = useState(false);
  const [streamedText, setStreamedText] = useState("");
  // Transient activity note from the agent (e.g. "Searching the web for …").
  // Cleared as soon as the model starts streaming its answer.
  const [statusNote, setStatusNote] = useState("");
  const abortRef = useRef<AbortController | null>(null);

  const startStream = useCallback(async (options: StreamOptions) => {
    abortRef.current?.abort();
    abortRef.current = new AbortController();
    setIsStreaming(true);
    setStreamedText("");
    setStatusNote("");

    let fullText = "";

    try {
      const res = await aiRequest("/api/ai/tutor", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          conversation_id: options.conversationId,
          message: options.message,
          context: options.context,
          ...(options.telemetry ? { telemetry: options.telemetry } : {}),
          ...(options.snapshotBase64 ? { snapshot_base64: options.snapshotBase64 } : {}),
        }),
        signal: abortRef.current.signal,
      });

      if (!res.ok || !res.body) {
        // Surface the real reason (status + server error message) instead of a
        // generic failure — pre-stream non-200s (CSRF/auth/rate-limit/validation)
        // are otherwise invisible to the user and impossible to debug remotely.
        let detail = `HTTP ${res.status}`;
        try {
          const data = (await res.clone().json()) as { error?: string };
          if (data?.error) detail = `${res.status} — ${data.error}`;
        } catch {
          try {
            const text = (await res.text()).trim();
            if (text) detail = `${res.status} — ${text.slice(0, 160)}`;
          } catch {
            /* keep status-only detail */
          }
        }
        throw new Error(`Scho request failed (${detail})`);
      }

      const reader = res.body.getReader();
      const decoder = new TextDecoder();

      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        const chunk = decoder.decode(value);
        for (const line of chunk.split("\n")) {
          if (!line.startsWith("data: ") || line === "data: [DONE]") continue;
          try {
            const { text, status } = JSON.parse(line.slice(6)) as {
              text?: string;
              status?: string;
            };
            if (status) {
              // Agent activity (e.g. searching the web) — show until the answer
              // starts streaming.
              setStatusNote(status);
            }
            if (text) {
              // Render each model chunk immediately. (Previously this looped
              // char-by-char with an 8ms delay — ~24s of artificial lag on a
              // full answer, which is what made Scho feel like it "took
              // forever". The model already streams incrementally.)
              fullText += text;
              setStreamedText(fullText);
              setStatusNote("");
            }
          } catch {
            /* ignore partial JSON */
          }
        }
      }
    } catch (err: unknown) {
      if (err instanceof Error && err.name === "AbortError") {
        return { text: fullText, aborted: true };
      }
      throw err;
    } finally {
      setIsStreaming(false);
      setStatusNote("");
    }

    return { text: fullText, aborted: false };
  }, []);

  const cancelStream = useCallback(() => {
    abortRef.current?.abort();
    setIsStreaming(false);
    setStatusNote("");
  }, []);

  return {
    isStreaming,
    streamedText,
    statusNote,
    startStream,
    cancelStream,
    setStreamedText,
  };
}
