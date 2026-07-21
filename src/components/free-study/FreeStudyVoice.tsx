"use client";

import { useCallback, useState } from "react";
import { Microphone, Stop, X } from "@phosphor-icons/react";
import { toast } from "sonner";
import { useLocalTelemetryModels } from "@/hooks/useLocalTelemetryModels";
import { FreeStudyLayout } from "./FreeStudyLayout";
import { FreeStudyChat, type ChatMessage } from "./FreeStudyChat";
import styles from "./free-study-voice.module.css";

type RecordingState = "idle" | "listening" | "done";

export function FreeStudyVoice() {
  const [recordingState, setRecordingState] = useState<RecordingState>("idle");
  const [transcript, setTranscript] = useState("");
  const [focus, setFocus] = useState("");
  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [isStreaming, setIsStreaming] = useState(false);

  const { models, startListening, stopListening } = useLocalTelemetryModels();
  const sttSupported = models.stt.status !== "unsupported";

  const handleStart = useCallback(() => {
    if (!sttSupported) {
      toast.error("Speech recognition is not supported in this browser");
      return;
    }

    setRecordingState("listening");
    setTranscript("");

    startListening((full, _interim) => {
      setTranscript(full);
    });
  }, [sttSupported, startListening]);

  const handleStop = useCallback(() => {
    const finalTranscript = stopListening();
    setTranscript(finalTranscript);
    setRecordingState("done");
  }, [stopListening]);

  const handleClear = useCallback(() => {
    setTranscript("");
    setFocus("");
    setRecordingState("idle");
    setMessages([]);
  }, []);

  const handleSend = useCallback(
    async (content: string) => {
      const fullContext = focus
        ? `Focus area: ${focus}\n\nMy question: ${content}`
        : content;

      const userMsg: ChatMessage = { role: "user", content: fullContext };
      setMessages((prev) => [...prev, userMsg]);
      setIsStreaming(true);

      try {
        const res = await fetch("/api/ai/tutor", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            messages: [
              {
                role: "system",
                content: `The user spoke the following (transcribed):\n\n${transcript}`,
              },
              ...[...messages, userMsg].map((m) => ({
                role: m.role,
                content: m.content,
              })),
            ],
            examType: "general",
          }),
        });

        if (!res.ok) throw new Error("Failed");

        const reader = res.body?.getReader();
        if (!reader) throw new Error("No body");

        const decoder = new TextDecoder();
        let assistant = "";

        setMessages((prev) => [...prev, { role: "assistant", content: "" }]);

        while (true) {
          const { done, value } = await reader.read();
          if (done) break;
          assistant += decoder.decode(value, { stream: true });
          setMessages((prev) => {
            const next = [...prev];
            next[next.length - 1] = { role: "assistant", content: assistant };
            return next;
          });
        }
      } catch {
        toast.error("Something went wrong");
        setMessages((prev) => prev.filter((m) => m !== userMsg));
      } finally {
        setIsStreaming(false);
      }
    },
    [transcript, focus, messages],
  );

  return (
    <FreeStudyLayout mode="Voice">
      <div className={styles.layout}>
        <div className={styles.left}>
          <div className={styles.panelHeader}>
            <h2 className={styles.panelTitle}>Voice Input</h2>
            {transcript ? (
              <button
                type="button"
                className={styles.clearBtn}
                onClick={handleClear}
              >
                <X size={14} aria-hidden /> Clear
              </button>
            ) : null}
          </div>

          <div className={styles.recordSection}>
            <button
              type="button"
              className={`${styles.micBtn} ${recordingState === "listening" ? styles.micActive : ""}`}
              onClick={recordingState === "listening" ? handleStop : handleStart}
              disabled={!sttSupported}
            >
              {recordingState === "listening" ? (
                <Stop size={32} weight="fill" aria-hidden />
              ) : (
                <Microphone size={32} weight="duotone" aria-hidden />
              )}
            </button>

            <span className={styles.statusChip}>
              {recordingState === "listening"
                ? "Listening…"
                : recordingState === "done"
                  ? "Ready to ask"
                  : "Mic idle"}
            </span>
          </div>

          {transcript ? (
            <div className={styles.transcriptBlock}>
              <label className={styles.fieldLabel}>Transcript</label>
              <textarea
                className={styles.textarea}
                value={transcript}
                onChange={(e) => setTranscript(e.target.value)}
                placeholder="Your speech will appear here…"
              />
            </div>
          ) : null}

          <div className={styles.fieldBlock}>
            <label className={styles.fieldLabel}>
              Focus area (optional)
            </label>
            <input
              className={styles.input}
              type="text"
              value={focus}
              onChange={(e) => setFocus(e.target.value)}
              placeholder="e.g. Calculus integration"
            />
          </div>
        </div>

        <div className={styles.right}>
          <FreeStudyChat
            messages={messages}
            onSend={handleSend}
            isStreaming={isStreaming}
            disabled={!transcript.trim()}
            placeholder={
              transcript.trim()
                ? "Ask about what you said…"
                : "Speak first, then ask"
            }
            emptyState={
              <div className={styles.empty}>
                <p className={styles.emptyTitle}>Ask about your recording</p>
                <p className={styles.emptyDesc}>
                  Record your voice, review the transcript, then ask Scho for
                  help.
                </p>
              </div>
            }
          />
        </div>
      </div>
    </FreeStudyLayout>
  );
}
