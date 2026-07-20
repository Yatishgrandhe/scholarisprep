"use client";

import {
  forwardRef,
  useCallback,
  useEffect,
  useImperativeHandle,
  useRef,
  useState,
} from "react";
import {
  CaretDown,
  PaperPlaneTilt,
  Stop,
} from "@phosphor-icons/react";
import { toast } from "sonner";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useBoardTutor } from "@/hooks/useBoardTutor";
import { useKokoroTts } from "@/hooks/useKokoroTts";
import { FreeStudySectionedReply } from "@/components/free-study/FreeStudySectionedReply";
import { ScholarisLogoMark } from "@/components/brand/ScholarisLogoMark";
import {
  BOARD_ARIA,
  chatLogLiveRegionProps,
} from "@/components/whiteboard/boardA11y";
import {
  BoardVoiceControls,
  type BoardVoiceTranscriptUpdate,
} from "@/components/whiteboard/BoardVoiceControls";
import {
  useBoardMotion,
  type BoardDockEdge,
} from "@/components/whiteboard/useBoardMotion";
import styles from "./board-chat.module.css";

export type BoardChatDockPlacement = "side" | "bottom" | "auto";

export type BoardChatAskOptions = {
  /** Override live OCR for this turn’s telemetry (Ask Scho from OCR strip). */
  ocrText?: string;
};

export type BoardChatDockHandle = {
  /** Send a message (e.g. from whiteboard Ask Scho) and expand the dock. */
  ask: (message: string, options?: BoardChatAskOptions) => void;
  expand: () => void;
  collapse: () => void;
  setOcrText: (text: string) => void;
};

export type BoardChatDockProps = {
  /** Live whiteboard OCR text → tutor telemetry on each ask. */
  ocrText?: string;
  placement?: BoardChatDockPlacement;
  defaultCollapsed?: boolean;
  className?: string;
  /** Optional external TTS; defaults to in-dock Kokoro. */
  onPlay?: (text: string) => void;
  playing?: boolean;
  disabled?: boolean;
  /**
   * When false, dock stays collapsed and does not animate open
   * (e.g. wait for centered Scho open ceremony).
   */
  revealReady?: boolean;
};

function resolveEdge(
  placement: BoardChatDockPlacement,
  autoEdge: BoardDockEdge,
): BoardDockEdge {
  if (placement === "side") return "side";
  if (placement === "bottom") return "bottom";
  return autoEdge;
}

export const BoardChatDock = forwardRef<BoardChatDockHandle, BoardChatDockProps>(
  function BoardChatDock(
    {
      ocrText = "",
      placement = "auto",
      defaultCollapsed = false,
      className,
      onPlay,
      playing,
      disabled,
      revealReady = true,
    },
    ref,
  ) {
    const examType = useActiveExamType();
    const { dockClassName } = useBoardMotion();

    const [collapsed, setCollapsed] = useState(
      defaultCollapsed || !revealReady,
    );
    const [input, setInput] = useState("");
    const [listening, setListening] = useState(false);
    const [autoEdge, setAutoEdge] = useState<BoardDockEdge>("side");

    const ocrLiveRef = useRef(ocrText);
    const transcriptRef = useRef("");
    const feedRef = useRef<HTMLDivElement | null>(null);
    const pendingExpandRef = useRef(false);

    useEffect(() => {
      ocrLiveRef.current = ocrText;
    }, [ocrText]);

    useEffect(() => {
      if (typeof window === "undefined") return;
      const mq = window.matchMedia("(max-width: 860px)");
      const sync = () => setAutoEdge(mq.matches ? "bottom" : "side");
      sync();
      mq.addEventListener("change", sync);
      return () => mq.removeEventListener("change", sync);
    }, []);

    // After Scho open ceremony, expand unless user already collapsed or asked early.
    useEffect(() => {
      if (!revealReady) return;
      if (pendingExpandRef.current || !defaultCollapsed) {
        setCollapsed(false);
        pendingExpandRef.current = false;
      }
    }, [revealReady, defaultCollapsed]);

    const {
      messages,
      ocrText: tutorOcr,
      setOcrText,
      isStreaming,
      streamedText,
      statusNote,
      askScho,
      cancelStream,
      canAsk,
    } = useBoardTutor({
      getOcrText: () => ocrLiveRef.current,
      getTranscript: () => transcriptRef.current,
    });

    const { progress: ttsProgress, speak } = useKokoroTts();

    useEffect(() => {
      if (ocrText.trim()) setOcrText(ocrText);
    }, [ocrText, setOcrText]);

    const handlePlay =
      onPlay ??
      ((text: string) => {
        void speak(text).catch((err) =>
          toast.error(err instanceof Error ? err.message : "Kokoro failed"),
        );
      });
    const isPlaying =
      playing ??
      (ttsProgress.status === "speaking" ||
        ttsProgress.status === "downloading");

    useEffect(() => {
      const el = feedRef.current;
      if (!el) return;
      el.scrollTop = el.scrollHeight;
    }, [messages, streamedText, statusNote, isStreaming]);

    const sendAsk = useCallback(
      async (message: string, options?: BoardChatAskOptions) => {
        const text = message.trim();
        if (!text || disabled || !canAsk) return;
        if (options?.ocrText !== undefined) {
          ocrLiveRef.current = options.ocrText;
        }
        if (!revealReady) {
          pendingExpandRef.current = true;
        } else {
          setCollapsed(false);
        }
        await askScho(text, {
          ocrText: options?.ocrText,
          transcript: transcriptRef.current || undefined,
        });
      },
      [askScho, canAsk, disabled, revealReady],
    );

    useImperativeHandle(
      ref,
      () => ({
        ask: (message: string, options?: BoardChatAskOptions) => {
          void sendAsk(message, options);
        },
        expand: () => {
          if (!revealReady) {
            pendingExpandRef.current = true;
            return;
          }
          setCollapsed(false);
        },
        collapse: () => setCollapsed(true),
        setOcrText: (text: string) => {
          ocrLiveRef.current = text;
          setOcrText(text);
        },
      }),
      [sendAsk, setOcrText, revealReady],
    );

    const onVoiceTranscript = useCallback(
      (update: BoardVoiceTranscriptUpdate) => {
        setListening(update.listening);
        transcriptRef.current = update.transcript;
        const draft =
          `${update.transcript}${update.interim ? ` ${update.interim}` : ""}`.trim();
        if (draft) setInput(draft);
      },
      [],
    );

    const onVoiceSessionEnd = useCallback((transcript: string) => {
      setListening(false);
      const final = transcript.trim();
      if (!final) return;
      transcriptRef.current = final;
      setInput(final);
    }, []);

    const edge = resolveEdge(placement, autoEdge);
    const placementClass =
      placement === "side"
        ? styles.dockSide
        : placement === "bottom"
          ? styles.dockBottom
          : styles.dockAuto;

    const ocrPreview = (ocrText || tutorOcr).trim();
    const canSend = Boolean(input.trim()) && canAsk && !disabled;
    const live = listening || isStreaming;
    const dockOpen = revealReady && !collapsed;

    if (!revealReady || collapsed) {
      return (
        <aside
          className={`${styles.dock} ${styles.collapsed} ${className ?? ""}`}
          aria-label={BOARD_ARIA.chatDock}
          aria-hidden={!revealReady}
        >
          <button
            type="button"
            className={styles.tab}
            onClick={() => {
              if (!revealReady) return;
              setCollapsed(false);
            }}
            aria-expanded={false}
            disabled={!revealReady}
          >
            <span className={styles.tabMark} aria-hidden>
              <ScholarisLogoMark size={16} />
            </span>
            Talk with Scho
            <span
              className={`${styles.tabDot} ${live ? styles.tabDotLive : ""}`}
              aria-hidden
            />
            {messages.length > 0 ? (
              <span className={styles.tabCount} aria-hidden>
                {messages.length}
              </span>
            ) : null}
          </button>
        </aside>
      );
    }

    return (
      <aside
        className={[
          styles.dock,
          placementClass,
          dockClassName(dockOpen, edge),
          className,
        ]
          .filter(Boolean)
          .join(" ")}
        aria-label={BOARD_ARIA.chatDock}
      >
        <div className={styles.shell}>
          <div className={styles.rail} aria-hidden />

          <header className={styles.head}>
            <span
              className={`${styles.brandMark} ${live ? styles.brandMarkLive : ""}`}
              aria-hidden
            >
              <ScholarisLogoMark size={18} />
            </span>
            <div className={styles.brandCopy}>
              <p className={styles.brandTitle}>Scho</p>
              <p className={styles.brandSub}>
                On the board · {examType}
              </p>
            </div>
            <div className={styles.headActions}>
              {isStreaming ? (
                <button
                  type="button"
                  className={styles.iconBtn}
                  onClick={() => cancelStream()}
                  aria-label="Stop reply"
                  title="Stop"
                >
                  <Stop size={14} weight="fill" />
                </button>
              ) : null}
              <button
                type="button"
                className={styles.iconBtn}
                onClick={() => setCollapsed(true)}
                aria-label="Collapse chat"
                title="Collapse"
              >
                <CaretDown size={15} weight="bold" />
              </button>
            </div>
          </header>

          <div
            ref={feedRef}
            className={styles.feed}
            {...chatLogLiveRegionProps()}
          >
            {messages.length === 0 && !streamedText ? (
              <div className={styles.empty}>
                <span className={styles.emptyMark} aria-hidden>
                  <ScholarisLogoMark size={20} />
                </span>
                <strong>Ask while you draw</strong>
                <p className={styles.emptyHint}>
                  Board stays primary. Handwriting OCR attaches automatically
                  when you ask.
                </p>
              </div>
            ) : null}

            {messages.map((m, i) =>
              m.role === "user" ? (
                <div
                  key={`u-${i}`}
                  className={`${styles.turn} ${styles.turnUser}`}
                >
                  <span className={styles.turnMeta}>You</span>
                  <p className={styles.userBubble}>{m.content}</p>
                </div>
              ) : (
                <div
                  key={`a-${i}`}
                  className={`${styles.turn} ${styles.turnAssistant}`}
                >
                  <span className={styles.turnMeta}>Scho</span>
                  <div className={styles.assistantBody}>
                    <FreeStudySectionedReply
                      content={m.content}
                      playing={isPlaying}
                      onPlay={handlePlay}
                    />
                  </div>
                </div>
              ),
            )}

            {streamedText ? (
              <div className={`${styles.turn} ${styles.turnAssistant}`}>
                <span className={styles.turnMeta}>Scho</span>
                <div className={styles.assistantBody}>
                  <FreeStudySectionedReply content={streamedText} />
                </div>
              </div>
            ) : null}

            {statusNote ? <p className={styles.status}>{statusNote}</p> : null}
            {isStreaming && !streamedText ? (
              <p className={styles.thinking}>
                <span className={styles.thinkingDots} aria-hidden>
                  <span />
                  <span />
                  <span />
                </span>
                Scho is thinking…
              </p>
            ) : null}
          </div>

          <div className={styles.footer}>
            {ocrPreview ? (
              <div className={styles.ocrChip} title={ocrPreview}>
                OCR · {ocrPreview.slice(0, 64)}
                {ocrPreview.length > 64 ? "…" : ""}
              </div>
            ) : null}

            <form
              className={styles.composer}
              onSubmit={(e) => {
                e.preventDefault();
                const text = input.trim();
                if (!text) return;
                setInput("");
                void sendAsk(text);
              }}
            >
              <div
                className={styles.voiceSlot}
                aria-label={BOARD_ARIA.voiceControls}
              >
                <BoardVoiceControls
                  lockedMode="toggle"
                  hidePreview
                  compact
                  disabled={disabled || isStreaming}
                  onTranscript={onVoiceTranscript}
                  onSessionEnd={onVoiceSessionEnd}
                  className={styles.voiceControls}
                />
              </div>

              <input
                className={styles.field}
                value={input}
                onChange={(e) => setInput(e.target.value)}
                placeholder={
                  listening ? "Listening…" : "Ask about the board…"
                }
                disabled={isStreaming || !canAsk || disabled}
                aria-label={BOARD_ARIA.chatComposer}
              />
              <button
                type="submit"
                className={styles.sendBtn}
                disabled={!canSend}
                aria-label="Send"
              >
                <PaperPlaneTilt size={16} weight="fill" aria-hidden />
              </button>
            </form>
          </div>
        </div>
      </aside>
    );
  },
);

BoardChatDock.displayName = "BoardChatDock";
