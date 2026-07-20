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
  ChatsCircle,
  PaperPlaneTilt,
  Stop,
} from "@phosphor-icons/react";
import { toast } from "sonner";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useBoardTutor } from "@/hooks/useBoardTutor";
import { useKokoroTts } from "@/hooks/useKokoroTts";
import { FreeStudySectionedReply } from "@/components/free-study/FreeStudySectionedReply";
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
  /** Optional PDF peek excerpt for telemetry. */
  pdfExcerpt?: string;
  placement?: BoardChatDockPlacement;
  defaultCollapsed?: boolean;
  className?: string;
  /** Optional external TTS; defaults to in-dock Kokoro. */
  onPlay?: (text: string) => void;
  playing?: boolean;
  disabled?: boolean;
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
      pdfExcerpt = "",
      placement = "auto",
      defaultCollapsed = false,
      className,
      onPlay,
      playing,
      disabled,
    },
    ref,
  ) {
    const examType = useActiveExamType();
    const { dockClassName } = useBoardMotion();

    const [collapsed, setCollapsed] = useState(defaultCollapsed);
    const [input, setInput] = useState("");
    const [listening, setListening] = useState(false);
    const [autoEdge, setAutoEdge] = useState<BoardDockEdge>("side");

    const ocrLiveRef = useRef(ocrText);
    const transcriptRef = useRef("");
    const pdfLiveRef = useRef(pdfExcerpt);
    const feedRef = useRef<HTMLDivElement | null>(null);

    useEffect(() => {
      ocrLiveRef.current = ocrText;
    }, [ocrText]);

    useEffect(() => {
      pdfLiveRef.current = pdfExcerpt;
    }, [pdfExcerpt]);

    useEffect(() => {
      if (typeof window === "undefined") return;
      const mq = window.matchMedia("(max-width: 860px)");
      const sync = () => setAutoEdge(mq.matches ? "bottom" : "side");
      sync();
      mq.addEventListener("change", sync);
      return () => mq.removeEventListener("change", sync);
    }, []);

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
      getPdfExcerpt: () => pdfLiveRef.current,
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
        setCollapsed(false);
        await askScho(text, {
          ocrText: options?.ocrText,
          transcript: transcriptRef.current || undefined,
        });
      },
      [askScho, canAsk, disabled],
    );

    useImperativeHandle(
      ref,
      () => ({
        ask: (message: string, options?: BoardChatAskOptions) => {
          void sendAsk(message, options);
        },
        expand: () => setCollapsed(false),
        collapse: () => setCollapsed(true),
        setOcrText: (text: string) => {
          ocrLiveRef.current = text;
          setOcrText(text);
        },
      }),
      [sendAsk, setOcrText],
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

    if (collapsed) {
      return (
        <aside
          className={`${styles.dock} ${styles.collapsed} ${className ?? ""}`}
          aria-label={BOARD_ARIA.chatDock}
        >
          <button
            type="button"
            className={styles.tab}
            onClick={() => setCollapsed(false)}
            aria-expanded={false}
          >
            <span
              className={`${styles.tabDot} ${listening || isStreaming ? styles.tabDotLive : ""}`}
              aria-hidden
            />
            Talk with Scho
            {messages.length > 0 ? (
              <span aria-hidden>· {messages.length}</span>
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
          dockClassName(true, edge),
          className,
        ]
          .filter(Boolean)
          .join(" ")}
        aria-label={BOARD_ARIA.chatDock}
      >
        <div className={styles.shell}>
          <div className={styles.rail} aria-hidden />

          <header className={styles.head}>
            <span className={styles.brandMark} aria-hidden>
              <ChatsCircle size={15} weight="fill" />
            </span>
            <div className={styles.brandCopy}>
              <p className={styles.brandTitle}>Scho on the board</p>
              <p className={styles.brandSub}>
                Ask while you draw · {examType}
              </p>
            </div>
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
              <CaretDown size={16} weight="bold" />
            </button>
          </header>

          <div
            ref={feedRef}
            className={styles.feed}
            {...chatLogLiveRegionProps()}
          >
            {messages.length === 0 && !streamedText ? (
              <p className={styles.empty}>
                <strong>Board stays primary</strong>
                Talk here — OCR from your ink is attached automatically when you
                ask.
              </p>
            ) : null}

            {messages.map((m, i) =>
              m.role === "user" ? (
                <div
                  key={`u-${i}`}
                  className={`${styles.turn} ${styles.turnUser}`}
                >
                  <span className={styles.turnMeta}>You</span>
                  <p className={styles.userText}>{m.content}</p>
                </div>
              ) : (
                <div
                  key={`a-${i}`}
                  className={`${styles.turn} ${styles.turnAssistant}`}
                >
                  <span className={styles.turnMeta}>Scho</span>
                  <FreeStudySectionedReply
                    content={m.content}
                    playing={isPlaying}
                    onPlay={handlePlay}
                  />
                </div>
              ),
            )}

            {streamedText ? (
              <div className={`${styles.turn} ${styles.turnAssistant}`}>
                <span className={styles.turnMeta}>Scho</span>
                <FreeStudySectionedReply content={streamedText} />
              </div>
            ) : null}

            {statusNote ? <p className={styles.status}>{statusNote}</p> : null}
            {isStreaming && !streamedText ? (
              <p className={styles.status}>Scho is thinking…</p>
            ) : null}
          </div>

          {ocrPreview ? (
            <div className={styles.ocrChip} title={ocrPreview}>
              OCR attached · {ocrPreview.slice(0, 72)}
              {ocrPreview.length > 72 ? "…" : ""}
            </div>
          ) : null}

          <div className={styles.voiceSlot} aria-label={BOARD_ARIA.voiceControls}>
            <BoardVoiceControls
              lockedMode="toggle"
              hidePreview
              disabled={disabled || isStreaming}
              onTranscript={onVoiceTranscript}
              onSessionEnd={onVoiceSessionEnd}
              className={styles.voiceControls}
            />
          </div>

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
      </aside>
    );
  },
);

BoardChatDock.displayName = "BoardChatDock";
