"use client";

import {
  forwardRef,
  useCallback,
  useEffect,
  useId,
  useImperativeHandle,
  useRef,
  useState,
  type PointerEvent as ReactPointerEvent,
} from "react";
import { Microphone, MicrophoneSlash } from "@phosphor-icons/react";
import {
  createSttSession,
  isSpeechRecognitionSupported,
  type SttSession,
} from "@/lib/free-study/stt";
import styles from "./board-voice.module.css";

export type BoardVoiceMode = "toggle" | "ptt" | "continuous";

export type BoardVoiceTranscriptUpdate = {
  /** Accumulated final transcript for the current session. */
  transcript: string;
  /** Live interim hypothesis (not yet final). */
  interim: string;
  /** True while the mic session is active. */
  listening: boolean;
  /** How the session is being driven. */
  mode: BoardVoiceMode;
};

export type BoardVoiceControlsProps = {
  /** Live transcript updates for the chat dock / parent. */
  onTranscript?: (update: BoardVoiceTranscriptUpdate) => void;
  /** Fired once when a listening session stops, with accumulated finals. */
  onSessionEnd?: (transcript: string) => void;
  /** Fired in continuous mode when silence detected after speech (auto-send trigger). */
  onSilence?: (transcript: string) => void;
  /** Initial interaction mode. User can switch in the UI unless locked. */
  defaultMode?: BoardVoiceMode;
  /** Lock to one mode (hides the mode switcher). */
  lockedMode?: BoardVoiceMode;
  /** BCP-47 language for Web Speech API. */
  lang?: string;
  /** Hide the live transcript preview strip. */
  hidePreview?: boolean;
  /**
   * Icon-only mic for embedding in a chat composer well
   * (no rail chrome, status, or Talk label).
   */
  compact?: boolean;
  disabled?: boolean;
  className?: string;
  /** In continuous mode, ms of silence before auto-sending. Default: 2000. */
  silenceTimeoutMs?: number;
};

function combineDisplay(finalText: string, interim: string): string {
  return `${finalText}${interim ? (finalText ? ` ${interim}` : interim) : ""}`.trim();
}

/**
 * Push-to-talk / toggle mic for Whiteboard Studio chat dock.
 * Uses Free Studying Web Speech helpers — does not reimplement STT.
 */
export type BoardVoiceControlsHandle = {
  startListening: () => void;
  stopListening: () => void;
  setContinuousMode: (enabled: boolean) => void;
};

export const BoardVoiceControls = forwardRef<BoardVoiceControlsHandle, BoardVoiceControlsProps>(function BoardVoiceControls({
  onTranscript,
  onSessionEnd,
  onSilence,
  defaultMode = "toggle",
  lockedMode,
  lang = "en-US",
  hidePreview = false,
  compact = false,
  disabled = false,
  className,
  silenceTimeoutMs = 2000,
}: BoardVoiceControlsProps, ref) {
  const labelId = useId();
  const supported = isSpeechRecognitionSupported();
  const [mode, setMode] = useState<BoardVoiceMode>(lockedMode ?? defaultMode);
  const [listening, setListening] = useState(false);
  const [finalText, setFinalText] = useState("");
  const [interim, setInterim] = useState("");
  const [error, setError] = useState<string | null>(null);

  const sessionRef = useRef<SttSession | null>(null);
  const bufferRef = useRef("");
  const listeningRef = useRef(false);
  const modeRef = useRef(mode);
  const onTranscriptRef = useRef(onTranscript);
  const onSessionEndRef = useRef(onSessionEnd);
  const onSilenceRef = useRef(onSilence);
  const silenceTimeoutMsRef = useRef(silenceTimeoutMs);
  const pttPointerIdRef = useRef<number | null>(null);
  const silenceTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const continuousRestartRef = useRef(false);

  useEffect(() => {
    modeRef.current = mode;
  }, [mode]);

  useEffect(() => {
    onTranscriptRef.current = onTranscript;
  }, [onTranscript]);

  useEffect(() => {
    onSessionEndRef.current = onSessionEnd;
  }, [onSessionEnd]);

  useEffect(() => {
    onSilenceRef.current = onSilence;
  }, [onSilence]);

  useEffect(() => {
    silenceTimeoutMsRef.current = silenceTimeoutMs;
  }, [silenceTimeoutMs]);

  useEffect(() => {
    if (lockedMode) setMode(lockedMode);
  }, [lockedMode]);

  const emit = useCallback(
    (nextFinal: string, nextInterim: string, nextListening: boolean) => {
      onTranscriptRef.current?.({
        transcript: nextFinal,
        interim: nextInterim,
        listening: nextListening,
        mode: modeRef.current,
      });
    },
    [],
  );

  const stopSession = useCallback(
    (opts?: { abort?: boolean }) => {
      const session = sessionRef.current;
      sessionRef.current = null;
      listeningRef.current = false;
      pttPointerIdRef.current = null;

      if (session) {
        if (opts?.abort) session.abort();
        else session.stop();
      }

      const finished = bufferRef.current.trim();
      setListening(false);
      setInterim("");
      emit(bufferRef.current, "", false);
      if (finished) onSessionEndRef.current?.(finished);
    },
    [emit],
  );

  const startSession = useCallback(() => {
    if (!supported || disabled || listeningRef.current) return false;

    setError(null);
    bufferRef.current = "";
    setFinalText("");
    setInterim("");

    const session = createSttSession({
      lang,
      onResult: ({ transcript, interim: nextInterim }) => {
        if (transcript) bufferRef.current += transcript;
        setFinalText(bufferRef.current);
        setInterim(nextInterim);
        emit(bufferRef.current, nextInterim, true);

        // Reset silence timer on each speech result
        if (silenceTimerRef.current) clearTimeout(silenceTimerRef.current);
        if (modeRef.current === "continuous" && bufferRef.current.trim()) {
          silenceTimerRef.current = setTimeout(() => {
            if (!listeningRef.current) return;
            const finished = bufferRef.current.trim();
            if (finished) {
              onSilenceRef.current?.(finished);
            }
          }, silenceTimeoutMsRef.current);
        }
      },
      onError: (message) => {
        setError(message);
        stopSession({ abort: true });
      },
      onEnd: () => {
        if (!listeningRef.current) return;
        listeningRef.current = false;
        sessionRef.current = null;
        pttPointerIdRef.current = null;
        setListening(false);
        setInterim("");
        emit(bufferRef.current, "", false);
        const finished = bufferRef.current.trim();
        if (finished) onSessionEndRef.current?.(finished);

        // Continuous mode: auto-restart after a short pause
        if (modeRef.current === "continuous" && !disabled && continuousRestartRef.current) {
          continuousRestartRef.current = false;
          setTimeout(() => {
            if (modeRef.current === "continuous" && !listeningRef.current) {
              startSession();
            }
          }, 300);
        }
      },
    });

    if (!session) {
      setError("Speech recognition needs Chrome or Edge.");
      return false;
    }

    try {
      session.start();
    } catch {
      setError("Could not start the microphone.");
      return false;
    }

    sessionRef.current = session;
    listeningRef.current = true;
    setListening(true);
    emit("", "", true);
    return true;
  }, [disabled, emit, lang, stopSession, supported]);

  useEffect(() => {
    return () => {
      if (silenceTimerRef.current) clearTimeout(silenceTimerRef.current);
      sessionRef.current?.abort();
      sessionRef.current = null;
      listeningRef.current = false;
    };
  }, []);

  useImperativeHandle(
    ref,
    () => ({
      startListening: () => {
        if (!listeningRef.current) startSession();
      },
      stopListening: () => {
        stopSession();
      },
      setContinuousMode: (enabled: boolean) => {
        continuousRestartRef.current = enabled;
        if (enabled) {
          setMode("continuous");
        } else if (modeRef.current === "continuous") {
          setMode(defaultMode);
        }
      },
    }),
    [startSession, stopSession, defaultMode],
  );

  const toggleListening = () => {
    if (listeningRef.current) stopSession();
    else startSession();
  };

  const onPttPointerDown = (e: ReactPointerEvent<HTMLButtonElement>) => {
    if (disabled || !supported) return;
    if (e.button !== 0) return;
    e.preventDefault();
    e.currentTarget.setPointerCapture(e.pointerId);
    pttPointerIdRef.current = e.pointerId;
    startSession();
  };

  const onPttPointerUp = (e: ReactPointerEvent<HTMLButtonElement>) => {
    if (pttPointerIdRef.current !== e.pointerId) return;
    if (e.currentTarget.hasPointerCapture(e.pointerId)) {
      e.currentTarget.releasePointerCapture(e.pointerId);
    }
    stopSession();
  };

  const onPttLostCapture = () => {
    if (listeningRef.current && modeRef.current === "ptt") stopSession();
  };

  const rootClass = [styles.root, compact ? styles.compact : "", className]
    .filter(Boolean)
    .join(" ");

  if (!supported) {
    return (
      <div
        className={rootClass}
        role="group"
        aria-labelledby={labelId}
      >
        <div className={styles.unsupported} id={labelId}>
          <MicrophoneSlash size={compact ? 16 : 18} weight="bold" aria-hidden />
          {compact ? (
            <span className={styles.unsupportedShort}>Voice unavailable</span>
          ) : (
            <div>
              <strong>Voice unavailable</strong>
              Web Speech API needs Chrome or Edge. Type in the chat dock instead.
            </div>
          )}
        </div>
      </div>
    );
  }

  const activeMode = lockedMode ?? mode;
  const statusText = error
    ? error
    : listening
      ? activeMode === "ptt"
        ? "Listening — release to stop"
        : activeMode === "continuous"
          ? "Listening — auto-sends on silence"
          : "Listening — tap mic to stop"
      : activeMode === "ptt"
        ? "Hold to talk"
        : activeMode === "continuous"
          ? "Tap to start continuous"
          : "Tap to talk";

  const preview = combineDisplay(finalText, interim);
  const micLabel =
    activeMode === "ptt"
      ? listening
        ? "Release"
        : "Hold"
      : activeMode === "continuous"
        ? listening
          ? "Stop"
          : "Live"
        : listening
          ? "Stop"
          : "Talk";

  return (
    <div
      className={rootClass}
      role="group"
      aria-labelledby={labelId}
    >
      <div className={styles.rail}>
        {!lockedMode && !compact ? (
          <div className={styles.modes} role="radiogroup" aria-label="Mic mode">
            <button
              type="button"
              role="radio"
              aria-checked={mode === "toggle"}
              className={[
                styles.modeBtn,
                mode === "toggle" ? styles.modeBtnActive : "",
              ]
                .filter(Boolean)
                .join(" ")}
              disabled={disabled || listening}
              onClick={() => setMode("toggle")}
            >
              Toggle
            </button>
            <button
              type="button"
              role="radio"
              aria-checked={mode === "ptt"}
              className={[
                styles.modeBtn,
                mode === "ptt" ? styles.modeBtnActive : "",
              ]
                .filter(Boolean)
                .join(" ")}
              disabled={disabled || listening}
              onClick={() => setMode("ptt")}
            >
              Hold
            </button>
            <button
              type="button"
              role="radio"
              aria-checked={mode === "continuous"}
              className={[
                styles.modeBtn,
                mode === "continuous" ? styles.modeBtnActive : "",
              ]
                .filter(Boolean)
                .join(" ")}
              disabled={disabled || listening}
              onClick={() => setMode("continuous")}
            >
              Live
            </button>
          </div>
        ) : null}

        <div className={styles.micWrap}>
          <span
            className={[styles.pulse, listening ? styles.pulseActive : ""]
              .filter(Boolean)
              .join(" ")}
            aria-hidden
          />
          <button
            type="button"
            className={[styles.mic, listening ? styles.micListening : ""]
              .filter(Boolean)
              .join(" ")}
            disabled={disabled}
            aria-pressed={listening}
            title={statusText}
            aria-label={
              activeMode === "ptt"
                ? listening
                  ? "Release to stop talking"
                  : "Hold to talk"
                : listening
                  ? "Stop listening"
                  : "Start listening"
            }
            onClick={activeMode === "toggle" ? toggleListening : undefined}
            onPointerDown={activeMode === "ptt" ? onPttPointerDown : undefined}
            onPointerUp={activeMode === "ptt" ? onPttPointerUp : undefined}
            onPointerCancel={activeMode === "ptt" ? onPttPointerUp : undefined}
            onLostPointerCapture={
              activeMode === "ptt" ? onPttLostCapture : undefined
            }
          >
            <Microphone size={compact ? 16 : 18} weight="fill" aria-hidden />
            {!compact ? (
              <span className={styles.micLabel}>{micLabel}</span>
            ) : null}
          </button>
        </div>

        <div className={compact ? styles.metaSr : styles.meta}>
          <p
            id={labelId}
            className={[
              styles.status,
              error ? styles.statusError : listening ? "" : styles.statusMuted,
            ]
              .filter(Boolean)
              .join(" ")}
          >
            {statusText}
          </p>
          {!compact ? (
            <p className={styles.hint}>
              {activeMode === "ptt"
                ? "Push-to-talk keeps the board free while you speak."
                : activeMode === "continuous"
                  ? "Auto-sends when you stop talking."
                  : "Toggle stays on until you tap stop."}
            </p>
          ) : null}
        </div>
      </div>

      {!hidePreview ? (
        <p
          className={[styles.preview, preview ? "" : styles.previewEmpty]
            .filter(Boolean)
            .join(" ")}
          aria-live="polite"
          aria-label="Live transcript"
        >
          {preview ? (
            <>
              {finalText}
              {interim ? (
                <span className={styles.interim}>
                  {finalText ? " " : ""}
                  {interim}
                </span>
              ) : null}
            </>
          ) : (
            "Transcript will appear here for the chat dock…"
          )}
        </p>
      ) : null}
    </div>
  );
});

BoardVoiceControls.displayName = "BoardVoiceControls";
