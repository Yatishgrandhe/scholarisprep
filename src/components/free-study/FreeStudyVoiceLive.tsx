"use client";

import { useCallback, useRef } from "react";
import {
  Microphone,
  MicrophoneSlash,
  PaperPlaneRight,
  SpeakerHigh,
  SpeakerSlash,
  StopCircle,
} from "@phosphor-icons/react";
import {
  useVoiceConversation,
  type VoiceState,
} from "@/hooks/useVoiceConversation";
import type { TutorStreamContext } from "@/lib/tutor/questionContext";
import type { FreeStudyTelemetry } from "@/lib/ai/telemetryPayload";
import styles from "./free-study-voice.module.css";

type FreeStudyVoiceLiveProps = {
  conversationId: string;
  context?: TutorStreamContext;
  telemetry?: FreeStudyTelemetry | null;
};

const STATE_LABELS: Record<VoiceState, string> = {
  idle: "Tap to speak",
  listening: "Listening…",
  transcribing: "Transcribing…",
  thinking: "Thinking…",
  speaking: "Speaking…",
};

const STATE_COLORS: Record<VoiceState, string> = {
  idle: "",
  listening: styles.listening,
  transcribing: styles.transcribing,
  thinking: styles.thinking,
  speaking: styles.speaking,
};

export function FreeStudyVoiceLive({
  conversationId,
  context,
  telemetry,
}: FreeStudyVoiceLiveProps) {
  const {
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
  } = useVoiceConversation({ conversationId, context, telemetry, autoSpeak: false });

  const inputRef = useRef<HTMLInputElement>(null);

  const handleMicClick = useCallback(() => {
    if (state === "speaking") {
      interrupt();
    } else if (state === "listening") {
      stopListening();
    } else if (state === "idle") {
      startListening();
    }
  }, [state, interrupt, stopListening, startListening]);

  const handleSend = useCallback(() => {
    const val = inputRef.current?.value?.trim();
    if (val) {
      sendText(val);
      if (inputRef.current) inputRef.current.value = "";
    }
  }, [sendText]);

  const handleKeyDown = useCallback(
    (e: React.KeyboardEvent) => {
      if (e.key === "Enter" && !e.shiftKey) {
        e.preventDefault();
        handleSend();
      }
    },
    [handleSend],
  );

  const isActive = state !== "idle";
  const micDisabled = state === "thinking" || state === "transcribing";

  return (
    <div className={styles.container}>
      {/* Status indicator */}
      <div className={`${styles.statusBar} ${STATE_COLORS[state]}`}>
        <span className={styles.statusDot} />
        <span className={styles.statusText}>{STATE_LABELS[state]}</span>
        {error && <span className={styles.errorText}>{error}</span>}
      </div>

      {/* Main mic button */}
      <div className={styles.micArea}>
        <button
          type="button"
          className={`${styles.micBtn} ${isActive ? styles.micBtnActive : ""} ${STATE_COLORS[state]}`}
          onClick={handleMicClick}
          disabled={micDisabled}
          aria-label={state === "listening" ? "Stop listening" : "Start listening"}
        >
          {state === "listening" ? (
            <StopCircle size={32} weight="fill" aria-hidden />
          ) : state === "speaking" ? (
            <SpeakerSlash size={32} weight="fill" aria-hidden />
          ) : (
            <Microphone size={32} weight="fill" aria-hidden />
          )}
        </button>
        {state === "listening" && interim && (
          <p className={styles.interimText}>{interim}</p>
        )}
      </div>

      {/* Transcript area */}
      <div className={styles.transcriptArea}>
        {userMessage && (
          <div className={styles.userBubble}>
            <span className={styles.bubbleLabel}>You</span>
            <p className={styles.bubbleText}>{userMessage}</p>
          </div>
        )}
        {aiResponse && (
          <div className={styles.aiBubble}>
            <span className={styles.bubbleLabel}>Scho</span>
            <p className={styles.bubbleText}>{aiResponse}</p>
          </div>
        )}
        {!userMessage && !aiResponse && (
          <p className={styles.emptyHint}>
            Start a voice conversation — ask anything about your topic.
          </p>
        )}
      </div>

      {/* Bottom bar: text input + controls */}
      <div className={styles.bottomBar}>
        <input
          ref={inputRef}
          className={styles.textInput}
          type="text"
          placeholder="Or type a message…"
          onKeyDown={handleKeyDown}
          disabled={state === "thinking"}
        />
        <button
          type="button"
          className={styles.iconBtn}
          onClick={handleSend}
          disabled={state === "thinking"}
          aria-label="Send message"
        >
          <PaperPlaneRight size={16} weight="fill" aria-hidden />
        </button>
        <button
          type="button"
          className={`${styles.iconBtn} ${autoSpeak ? styles.iconBtnActive : ""}`}
          onClick={toggleAutoSpeak}
          aria-label={autoSpeak ? "Auto-speak on" : "Auto-speak off"}
          title={autoSpeak ? "Auto-speak: ON" : "Auto-speak: OFF"}
        >
          {autoSpeak ? (
            <SpeakerHigh size={16} weight="fill" aria-hidden />
          ) : (
            <SpeakerSlash size={16} weight="bold" aria-hidden />
          )}
        </button>
      </div>
    </div>
  );
}
