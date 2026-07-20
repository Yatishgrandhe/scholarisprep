"use client";

/**
 * Free Studying Voice mode pane — clearer STT → review → Ask Scho flow.
 * Transcript is sent to Mistral as text telemetry (not whiteboard).
 */

import { useMemo, useState, type ReactNode } from "react";
import { Microphone, PaperPlaneTilt } from "@phosphor-icons/react";
import { isSpeechRecognitionSupported } from "@/lib/free-study/stt";
import styles from "./free-study-voice.module.css";

export type FreeStudyVoiceAskPayload = {
  /** Chat message for the tutor turn. */
  message: string;
  /** Final edited STT text — injected as `telemetry.transcript`. */
  transcript: string;
};

export type FreeStudyVoicePaneProps = {
  transcript: string;
  onTranscriptChange: (value: string) => void;
  listening: boolean;
  onToggleListen: () => void;
  askDisabled?: boolean;
  onAsk: (payload: FreeStudyVoiceAskPayload) => void;
  /** Optional STT / Kokoro progress nodes from the hub. */
  progressSlot?: ReactNode;
  sttError?: string | null;
};

type FlowStep = "listen" | "review" | "ask";

function formatVoiceAskMessage(transcript: string, focus: string): string {
  const t = transcript.trim();
  const f = focus.trim();
  if (f) {
    return `${f}\n\n(Voice transcript is attached as multimodal text telemetry.)`;
  }
  return `Help me understand what I said aloud:\n${t.slice(0, 2000)}`;
}

export function FreeStudyVoicePane({
  transcript,
  onTranscriptChange,
  listening,
  onToggleListen,
  askDisabled = false,
  onAsk,
  progressSlot,
  sttError = null,
}: FreeStudyVoicePaneProps) {
  const supported = useMemo(() => isSpeechRecognitionSupported(), []);
  const [focus, setFocus] = useState("");

  const hasTranscript = Boolean(transcript.trim());
  const activeStep: FlowStep = listening
    ? "listen"
    : hasTranscript
      ? "ask"
      : "listen";

  const stepState = (id: FlowStep) => {
    if (id === "listen") {
      if (listening) return styles.stepActive;
      if (hasTranscript) return styles.stepDone;
      return styles.stepActive;
    }
    if (id === "review") {
      if (hasTranscript && !listening) return styles.stepActive;
      if (hasTranscript) return styles.stepDone;
      return "";
    }
    if (hasTranscript && !listening) return styles.stepActive;
    return "";
  };

  const handleAsk = () => {
    const t = transcript.trim();
    if (!t || askDisabled) return;
    onAsk({
      message: formatVoiceAskMessage(t, focus),
      transcript: t,
    });
  };

  if (!supported) {
    return (
      <div className={styles.root}>
        <div className={styles.unsupported} role="status">
          <strong>Speech recognition unavailable</strong>
          Voice mode needs Chrome or Edge with the Web Speech API. You can still
          type in the chat composer; paste notes there for Scho.
        </div>
      </div>
    );
  }

  return (
    <div className={styles.root}>
      <header className={styles.hero}>
        <h2 className={styles.heroTitle}>Voice → Scho</h2>
        <p className={styles.heroSub}>
          Speak, edit the transcript, then Ask Scho. Your words go to Mistral as
          plain-text telemetry — not audio.
        </p>
      </header>

      <ol className={styles.steps} aria-label="Voice study steps">
        <li className={`${styles.step} ${stepState("listen")}`}>
          <span className={styles.stepNum}>Step 1</span>
          <span className={styles.stepLabel}>Listen</span>
        </li>
        <li className={`${styles.step} ${stepState("review")}`}>
          <span className={styles.stepNum}>Step 2</span>
          <span className={styles.stepLabel}>Review</span>
        </li>
        <li
          className={`${styles.step} ${stepState("ask")}`}
          data-active={activeStep === "ask" ? "true" : undefined}
        >
          <span className={styles.stepNum}>Step 3</span>
          <span className={styles.stepLabel}>Ask Scho</span>
        </li>
      </ol>

      <div className={styles.micRail}>
        <button
          type="button"
          className={`${styles.micBtn} ${listening ? styles.micBtnListening : ""}`}
          onClick={onToggleListen}
          aria-pressed={listening}
          aria-label={listening ? "Stop listening" : "Start listening"}
        >
          <span
            className={`${styles.micPulse} ${listening ? styles.micPulseActive : ""}`}
            aria-hidden
          />
          <Microphone size={16} weight="fill" aria-hidden />
          {listening ? "Stop" : "Start listening"}
        </button>
        <span
          className={`${styles.statusChip} ${listening ? styles.statusLive : ""}`}
          aria-live="polite"
        >
          {listening ? "Listening…" : hasTranscript ? "Ready to ask" : "Mic idle"}
        </span>
      </div>

      <p className={styles.telemetryHint}>
        Only the edited transcript goes to Scho — never the audio recording.
      </p>

      <div className={styles.reviewBlock}>
        <div className={styles.reviewHeader}>
          <p className={styles.reviewLabel} id="fs-voice-transcript-label">
            Transcript
          </p>
          <button
            type="button"
            className={styles.clearBtn}
            disabled={!hasTranscript && !focus.trim()}
            onClick={() => {
              onTranscriptChange("");
              setFocus("");
            }}
          >
            Clear
          </button>
        </div>
        <textarea
          className={`${styles.transcript} ${listening ? styles.transcriptListening : ""}`}
          value={transcript}
          onChange={(e) => onTranscriptChange(e.target.value)}
          rows={7}
          placeholder="Speak, or type corrections here…"
          aria-labelledby="fs-voice-transcript-label"
        />
        {listening ? (
          <p className={styles.interimLine}>Capturing speech… edit anytime.</p>
        ) : null}
        <label className={styles.reviewLabel} htmlFor="fs-voice-focus">
          Optional focus for Scho
        </label>
        <input
          id="fs-voice-focus"
          className={styles.focusField}
          value={focus}
          onChange={(e) => setFocus(e.target.value)}
          placeholder="e.g. Explain the formula I mentioned"
          disabled={askDisabled}
        />
      </div>

      <div className={styles.askRow}>
        <button
          type="button"
          className={styles.askBtn}
          disabled={!hasTranscript || askDisabled}
          onClick={handleAsk}
        >
          <PaperPlaneTilt size={16} weight="fill" aria-hidden />
          Ask Scho
        </button>
        <p className={styles.askMeta}>
          {hasTranscript
            ? "Sends your question with the transcript attached."
            : "Start listening (or paste text) before asking."}
        </p>
      </div>

      {sttError ? (
        <p className={styles.error} role="alert">
          {sttError}
        </p>
      ) : null}

      {progressSlot ? (
        <div className={styles.progressSlot}>{progressSlot}</div>
      ) : null}
    </div>
  );
}
