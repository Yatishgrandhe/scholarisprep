"use client";

import { useCallback, useMemo, useRef, useState } from "react";
import { toast } from "sonner";

import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useTutorStream } from "@/hooks/useTutorStream";
import type { FreeStudyTelemetry } from "@/lib/ai/telemetryPayload";
import { createClient } from "@/lib/supabase/client";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";

export type BoardTutorMessage = {
  role: "user" | "assistant";
  content: string;
};

export type UseBoardTutorOptions = {
  /**
   * Live OCR / voice / PDF getters — read at ask time so the latest board
   * snapshot wins (same sync-ref pattern as Free Studying whiteboard).
   */
  getOcrText?: () => string;
  getTranscript?: () => string;
  getPdfExcerpt?: () => string;
};

/**
 * Whiteboard Studio tutor: ensure conversation + stream + `source: "whiteboard"`
 * telemetry. Consumed by `BoardChatDock`.
 */
export function useBoardTutor(options: UseBoardTutorOptions = {}) {
  const { getOcrText, getTranscript, getPdfExcerpt } = options;
  const { user } = useAuth();
  const examType = useActiveExamType();
  const supabase = useMemo(() => createClient(), []);

  const [messages, setMessages] = useState<BoardTutorMessage[]>([]);
  const [conversationId, setConversationId] = useState<string | null>(null);

  /** Internal OCR when the dock/studio does not pass `getOcrText`. */
  const [ocrText, setOcrTextState] = useState("");
  const ocrTextRef = useRef(ocrText);
  const setOcrText = useCallback((text: string) => {
    ocrTextRef.current = text;
    setOcrTextState(text);
  }, []);

  const {
    isStreaming,
    streamedText,
    statusNote,
    startStream,
    cancelStream,
    setStreamedText,
  } = useTutorStream();

  const ensureConversation = useCallback(async (): Promise<string | null> => {
    if (conversationId) return conversationId;
    if (!user) return null;
    await ensureFreshSession(supabase);
    const { data, error } = await supabase
      .from("tutor_conversations")
      .insert({
        user_id: user.id,
        title: "Whiteboard",
        exam_type: examType,
        context_type: "free_study",
      })
      .select("id")
      .single();
    if (error || !data) {
      toast.error("Could not start a Whiteboard chat.");
      return null;
    }
    setConversationId(data.id);
    return data.id;
  }, [conversationId, examType, supabase, user]);

  const buildTelemetry = useCallback((): FreeStudyTelemetry => {
    const telemetry: FreeStudyTelemetry = { source: "whiteboard" };
    const ocr = (getOcrText?.() ?? ocrTextRef.current).trim();
    if (ocr) telemetry.ocr_text = ocr;
    const transcript = getTranscript?.().trim();
    if (transcript) telemetry.transcript = transcript;
    const pdf = getPdfExcerpt?.().trim();
    if (pdf) telemetry.pdf_excerpt = pdf.slice(0, 6000);
    return telemetry;
  }, [getOcrText, getPdfExcerpt, getTranscript]);

  const askScho = useCallback(
    async (
      message: string,
      options?: { ocrText?: string; transcript?: string },
    ) => {
      const text = message.trim();
      if (!text || isStreaming || !user) return;
      if (options?.ocrText !== undefined) {
        ocrTextRef.current = options.ocrText;
        setOcrTextState(options.ocrText);
      }
      setMessages((m) => [...m, { role: "user", content: text }]);
      setStreamedText("");
      const id = await ensureConversation();
      if (!id) return;
      try {
        const telemetry = buildTelemetry();
        if (options?.transcript?.trim()) {
          telemetry.transcript = options.transcript.trim();
        }
        const result = await startStream({
          conversationId: id,
          message: text,
          context: { exam_type: examType },
          telemetry,
        });
        if (!result.aborted && result.text) {
          setMessages((m) => [
            ...m,
            { role: "assistant", content: result.text },
          ]);
        }
      } catch (err) {
        toast.error(err instanceof Error ? err.message : "Scho request failed");
      } finally {
        setStreamedText("");
      }
    },
    [
      buildTelemetry,
      ensureConversation,
      examType,
      isStreaming,
      setStreamedText,
      startStream,
      user,
    ],
  );

  const clearMessages = useCallback(() => {
    setMessages([]);
    setStreamedText("");
  }, [setStreamedText]);

  return {
    messages,
    conversationId,
    ocrText,
    setOcrText,
    isStreaming,
    streamedText,
    statusNote,
    askScho,
    cancelStream,
    ensureConversation,
    buildTelemetry,
    clearMessages,
    canAsk: Boolean(user) && !isStreaming,
  };
}
