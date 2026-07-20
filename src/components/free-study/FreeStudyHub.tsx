"use client";

/**
 * Free Studying hub — destination rail + work surfaces.
 * PDF/image → extract text → Mistral via telemetry only (never file bytes).
 */

import {
  useCallback,
  useMemo,
  useState,
  type ReactNode,
} from "react";
import {
  ArrowLeft,
  ChatsCircle,
  FilePdf,
  House,
  Microphone,
  Notebook,
  PencilLine,
  PaperPlaneTilt,
} from "@phosphor-icons/react";
import { toast } from "sonner";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import { useAuth } from "@/hooks/useAuth";
import { useTutorStream } from "@/hooks/useTutorStream";
import { useLocalTelemetryModels } from "@/hooks/useLocalTelemetryModels";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import type { FreeStudyTelemetry } from "@/lib/ai/telemetryPayload";
import { FREE_STUDY_HREF, WHITEBOARD_HREF } from "@/lib/dashboard/navRoutes";
import { FreeStudySectionedReply } from "@/components/free-study/FreeStudySectionedReply";
import { FreeStudyImageAsk } from "@/components/free-study/FreeStudyImageAsk";
import { FreeStudyLanding } from "@/components/free-study/FreeStudyLanding";
import { FreeStudyPdfPane } from "@/components/free-study/FreeStudyPdfPane";
import { FreeStudyQuizPanel } from "@/components/free-study/FreeStudyQuizPanel";
import { FreeStudyFlashcards } from "@/components/free-study/FreeStudyFlashcards";
import { FreeStudyVoicePane } from "@/components/free-study/FreeStudyVoicePane";
import { FreeStudyNotesPane } from "@/components/free-study/FreeStudyNotesPane";
import {
  buildSummarizeFromExcerpt,
  promptForPdfIntent,
  type PdfIntent,
} from "@/components/free-study/PdfIntentChooser";
import {
  generateQuiz,
  GenerateQuizError,
  type GenerateQuizResult,
} from "@/lib/free-study/generateQuiz";
import styles from "./free-study.module.css";
import studio from "./free-study-studio.module.css";

export type FreeStudyMode = "tutor" | "pdf" | "voice" | "notes";

type DestinationId = FreeStudyMode | "whiteboard";

const DESTINATIONS: {
  id: DestinationId;
  label: string;
  hint: string;
  icon: typeof ChatsCircle;
  accent?: "whiteboard";
}[] = [
  {
    id: "tutor",
    label: "Tutor",
    hint: "Ask Scho anything — text, photo OCR, Kokoro voice",
    icon: ChatsCircle,
  },
  {
    id: "whiteboard",
    label: "Whiteboard",
    hint: "Full-page ink studio — write, then ask Scho",
    icon: PencilLine,
    accent: "whiteboard",
  },
  {
    id: "pdf",
    label: "PDF studio",
    hint: "Upload a passage — ask, quiz, summarize, flashcards",
    icon: FilePdf,
  },
  {
    id: "voice",
    label: "Voice",
    hint: "Talk it out — listen, transcript, then Ask Scho",
    icon: Microphone,
  },
  {
    id: "notes",
    label: "Notes",
    hint: "Write notes, OCR photos → text, then Ask Scho",
    icon: Notebook,
  },
];

const MODE_META: Record<
  FreeStudyMode,
  { label: string; meta: string; icon: typeof ChatsCircle }
> = {
  tutor: {
    label: "Tutor",
    meta: "Chat with Scho",
    icon: ChatsCircle,
  },
  pdf: {
    label: "PDF studio",
    meta: "Extract · intent · Ask Scho",
    icon: FilePdf,
  },
  voice: {
    label: "Voice",
    meta: "Listen · transcript · Ask Scho",
    icon: Microphone,
  },
  notes: {
    label: "Notes",
    meta: "Write · save · Ask Scho",
    icon: Notebook,
  },
};

type ChatMsg = { role: "user" | "assistant"; content: string };

type PdfArtifact =
  | { kind: "quiz"; quiz: GenerateQuizResult }
  | { kind: "flashcards"; text: string }
  | null;

function ModelProgressBar({
  label,
  progress,
  message,
  status,
}: {
  label: string;
  progress: number;
  message?: string;
  status: string;
}) {
  if (status === "idle" || status === "ready" || status === "unsupported") {
    return status === "unsupported" ? (
      <p className={styles.hint}>
        {label}: {message ?? "Unsupported"}
      </p>
    ) : null;
  }
  if (status === "error") {
    return (
      <p className={styles.ocrError} role="alert">
        {label} failed{message ? `: ${message}` : ""}
      </p>
    );
  }
  return (
    <div className={styles.progressBlock} aria-live="polite">
      <div className={styles.progressLabel}>
        <span>{label}</span>
        <span>{Math.round(progress * 100)}%</span>
      </div>
      <div className={styles.progressTrack}>
        <div
          className={styles.progressFill}
          style={{ width: `${Math.round(progress * 100)}%` }}
        />
      </div>
      {message ? <p className={styles.hint}>{message}</p> : null}
    </div>
  );
}

export function FreeStudyHub({
  initialMode,
}: {
  /** When set, skip the destination landing and open this mode. */
  initialMode?: FreeStudyMode;
}) {
  const router = useRouter();
  const { user } = useAuth();
  const examType = useActiveExamType();
  const supabase = useMemo(() => createClient(), []);
  const [mode, setMode] = useState<FreeStudyMode | null>(initialMode ?? null);
  const [input, setInput] = useState("");
  const [messages, setMessages] = useState<ChatMsg[]>([]);
  const [conversationId, setConversationId] = useState<string | null>(null);
  const [pdfText, setPdfText] = useState("");
  const [transcript, setTranscript] = useState("");
  const [listening, setListening] = useState(false);
  /** Tutor-mode image OCR — telemetry `ocr_text` only (never image bytes). */
  const [ocrText, setOcrText] = useState("");
  const [pdfBusy, setPdfBusy] = useState(false);
  const [pdfArtifact, setPdfArtifact] = useState<PdfArtifact>(null);

  const {
    isStreaming,
    streamedText,
    statusNote,
    startStream,
    setStreamedText,
  } = useTutorStream();
  const {
    models,
    runOcr,
    startListening,
    stopListening,
    speakWithKokoro,
    ttsProgress,
    preloadTts,
  } = useLocalTelemetryModels();

  const ensureConversation = useCallback(async (): Promise<string | null> => {
    if (conversationId) return conversationId;
    if (!user) return null;
    await ensureFreshSession(supabase);
    const { data, error } = await supabase
      .from("tutor_conversations")
      .insert({
        user_id: user.id,
        title: "Free Studying",
        exam_type: examType,
        context_type: "free_study",
      })
      .select("id")
      .single();
    if (error || !data) {
      toast.error("Could not start a Free Studying chat.");
      return null;
    }
    setConversationId(data.id);
    return data.id;
  }, [conversationId, examType, supabase, user]);

  const buildTelemetry = useCallback((): FreeStudyTelemetry => {
    const source = mode ?? "tutor";
    const base: FreeStudyTelemetry = { source };
    if (ocrText.trim() && mode !== "notes") {
      base.ocr_text = ocrText.trim().slice(0, 4000);
    }
    if (pdfText.trim()) base.pdf_excerpt = pdfText.trim().slice(0, 6000);
    if (transcript.trim()) base.transcript = transcript.trim();
    return base;
  }, [mode, ocrText, pdfText, transcript]);

  const askScho = useCallback(
    async (
      message: string,
      telemetryPatch?: Partial<FreeStudyTelemetry> | null,
    ) => {
      const text = message.trim();
      if (!text || isStreaming || !user) return;
      setMessages((m) => [...m, { role: "user", content: text }]);
      setStreamedText("");
      const id = await ensureConversation();
      if (!id) return;
      try {
        const telemetry: FreeStudyTelemetry = {
          ...buildTelemetry(),
          ...telemetryPatch,
        };
        // Voice STT → Mistral as plain-text telemetry (never drop transcript).
        if (telemetryPatch?.transcript?.trim()) {
          telemetry.transcript = telemetryPatch.transcript.trim();
          telemetry.source = telemetryPatch.source ?? telemetry.source ?? "voice";
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

  const onPdfIntent = useCallback(
    async (intent: PdfIntent, excerpt: string) => {
      const clipped = excerpt.trim();
      if (!clipped) {
        toast.error("Extract or paste PDF text first.");
        return;
      }
      setPdfText(clipped);

      if (intent === "summarize") {
        try {
          const turn = buildSummarizeFromExcerpt(clipped);
          setPdfArtifact(null);
          void askScho(turn.message, turn.telemetry);
        } catch (err) {
          toast.error(
            err instanceof Error ? err.message : "Nothing to summarize",
          );
        }
        return;
      }

      if (intent === "ask") {
        setPdfArtifact(null);
        void askScho(promptForPdfIntent("ask", clipped), {
          source: "pdf",
          intent: "ask",
          pdf_excerpt: clipped.slice(0, 6000),
        });
        return;
      }

      if (intent === "quiz") {
        setPdfBusy(true);
        setPdfArtifact(null);
        try {
          // Text only — never File/Blob to the quiz API.
          const quiz = await generateQuiz({
            text: clipped,
            exam_type: examType,
            count: 5,
          });
          setPdfArtifact({ kind: "quiz", quiz });
          toast.success("Quiz ready");
        } catch (err) {
          const msg =
            err instanceof GenerateQuizError
              ? err.message
              : err instanceof Error
                ? err.message
                : "Quiz generation failed";
          toast.error(msg);
        } finally {
          setPdfBusy(false);
        }
        return;
      }

      if (intent === "flashcards") {
        setPdfArtifact({ kind: "flashcards", text: clipped });
        return;
      }
    },
    [askScho, examType],
  );

  const toggleListen = () => {
    if (listening) {
      stopListening();
      setListening(false);
      return;
    }
    const session = startListening((full, interim) => {
      setTranscript(`${full}${interim ? ` ${interim}` : ""}`.trim());
    });
    if (!session) {
      toast.error("Speech recognition needs Chrome or Edge.");
      return;
    }
    setListening(true);
  };

  const openDestination = (id: DestinationId) => {
    if (id === "whiteboard") {
      router.push(WHITEBOARD_HREF);
      return;
    }
    setMode(id);
    setPdfArtifact(null);
    router.replace(`${FREE_STUDY_HREF}?dest=${id}`);
  };

  const backToLanding = () => {
    setMode(null);
    setPdfArtifact(null);
    router.replace(FREE_STUDY_HREF);
  };

  /* Prefer FreeStudyLanding (page) — hub fallback if mounted without dest */
  if (mode === null) {
    return <FreeStudyLanding />;
  }

  const active = MODE_META[mode];

  let artifactSlot: ReactNode = null;
  if (pdfArtifact?.kind === "quiz") {
    artifactSlot = (
      <FreeStudyQuizPanel
        quiz={pdfArtifact.quiz}
        onClose={() => setPdfArtifact(null)}
      />
    );
  } else if (pdfArtifact?.kind === "flashcards") {
    artifactSlot = (
      <FreeStudyFlashcards
        sourceText={pdfArtifact.text}
        examType={examType}
        onGenerated={() => toast.success("Flashcards ready")}
      />
    );
  }

  return (
    <div className={studio.studio}>
      <div className={studio.focused}>
        <nav className={studio.rail} aria-label="Study destinations">
          <button
            type="button"
            className={studio.railHome}
            onClick={backToLanding}
            aria-label="All destinations"
            title="All destinations"
          >
            <House size={18} weight="duotone" aria-hidden />
          </button>
          <hr className={studio.railSep} />
          {DESTINATIONS.map(({ id, label, icon: Icon }) => {
            if (id === "whiteboard") {
              return (
                <button
                  key={id}
                  type="button"
                  className={studio.railBtn}
                  onClick={() => router.push(WHITEBOARD_HREF)}
                  aria-label={label}
                  title={label}
                >
                  <Icon size={18} weight="regular" aria-hidden />
                </button>
              );
            }
            const isActive = mode === id;
            return (
              <button
                key={id}
                type="button"
                className={`${studio.railBtn} ${isActive ? studio.railBtnActive : ""}`}
                onClick={() => openDestination(id)}
                aria-label={label}
                aria-current={isActive ? "page" : undefined}
                title={label}
              >
                <Icon
                  size={18}
                  weight={isActive ? "fill" : "regular"}
                  aria-hidden
                />
              </button>
            );
          })}
        </nav>

        <div className={studio.workspace}>
          <header className={studio.workspaceHead}>
            <div>
              <button
                type="button"
                className={styles.backLink}
                onClick={backToLanding}
              >
                <ArrowLeft size={14} aria-hidden />
                Destinations
              </button>
              <h2 className={studio.workspaceTitle}>{active.label}</h2>
            </div>
            <p className={studio.workspaceMeta}>{active.meta}</p>
          </header>

          <div className={`${styles.layout} ${studio.workspaceBody}`}>
            <section className={styles.pane} aria-label={`${mode} tools`}>
              {mode === "tutor" ? (
                <div className={styles.paneBody}>
                  <p className={styles.hint}>
                    Ask anything for {examType}. Photo OCR runs on-device —
                    only recognized text goes to Scho.
                  </p>
                  <FreeStudyImageAsk
                    ocrText={ocrText}
                    onOcrTextChange={setOcrText}
                    askDisabled={isStreaming || !user}
                    onAsk={(message, text) => {
                      void askScho(message, {
                        source: "tutor",
                        ocr_text: text.slice(0, 4000),
                      });
                    }}
                  />
                  <button
                    type="button"
                    className={styles.secondaryBtn}
                    onClick={() => void preloadTts()}
                  >
                    Preload Kokoro voice (~90 MB once)
                  </button>
                  <ModelProgressBar
                    label="Kokoro"
                    progress={ttsProgress.progress}
                    message={ttsProgress.message}
                    status={ttsProgress.status}
                  />
                </div>
              ) : null}

              {mode === "pdf" ? (
                <div className={styles.paneBody}>
                  <FreeStudyPdfPane
                    value={pdfText}
                    onChange={(next) => {
                      setPdfText(next);
                      if (!next.trim()) setPdfArtifact(null);
                    }}
                    disabled={isStreaming || pdfBusy || !user}
                    onIntent={(intent, excerpt) => {
                      void onPdfIntent(intent, excerpt);
                    }}
                  />
                  {pdfBusy ? (
                    <p className={styles.hint} aria-live="polite">
                      Generating quiz from extracted text…
                    </p>
                  ) : null}
                  {artifactSlot}
                </div>
              ) : null}

              {mode === "voice" ? (
                <div className={styles.paneBody}>
                  <FreeStudyVoicePane
                    transcript={transcript}
                    onTranscriptChange={setTranscript}
                    listening={listening}
                    onToggleListen={toggleListen}
                    askDisabled={isStreaming || !user}
                    sttError={
                      models.stt.status === "error"
                        ? (models.stt.message ?? null)
                        : null
                    }
                    onAsk={({ message, transcript: voiceText }) => {
                      if (listening) {
                        stopListening();
                        setListening(false);
                      }
                      void askScho(message, {
                        source: "voice",
                        transcript: voiceText,
                      });
                    }}
                    progressSlot={
                      <>
                        <ModelProgressBar
                          label="STT"
                          progress={
                            listening
                              ? 0.5
                              : models.stt.status === "ready"
                                ? 1
                                : 0
                          }
                          message={models.stt.message}
                          status={
                            models.stt.status === "unsupported"
                              ? "unsupported"
                              : listening
                                ? "downloading"
                                : models.stt.status
                          }
                        />
                        <ModelProgressBar
                          label="Kokoro"
                          progress={ttsProgress.progress}
                          message={ttsProgress.message}
                          status={ttsProgress.status}
                        />
                      </>
                    }
                  />
                </div>
              ) : null}

              {mode === "notes" ? (
                <div className={styles.paneBody}>
                  <FreeStudyNotesPane
                    examType={examType}
                    askDisabled={isStreaming || !user}
                    runOcr={async (image) => runOcr(image)}
                    ocrStatus={models.ocr.status}
                    ocrProgress={models.ocr.progress}
                    ocrMessage={models.ocr.message}
                    onAskScho={({ message, telemetry }) => {
                      void askScho(message, {
                        source: "notes",
                        ...telemetry,
                      });
                    }}
                  />
                </div>
              ) : null}
            </section>

            <section className={styles.chat} aria-label="Scho conversation">
              <div className={styles.messages}>
                {messages.length === 0 && !streamedText ? (
                  <p className={styles.empty}>
                    Your Free Studying thread with Scho appears here.
                  </p>
                ) : null}
                {messages.map((m, i) => (
                  <div
                    key={`${m.role}-${i}`}
                    className={
                      m.role === "user"
                        ? styles.userBubble
                        : styles.assistantBubble
                    }
                  >
                    {m.role === "assistant" ? (
                      <FreeStudySectionedReply
                        content={m.content}
                        playing={
                          ttsProgress.status === "speaking" ||
                          ttsProgress.status === "downloading"
                        }
                        onPlay={(text) => {
                          void speakWithKokoro(text).catch((err) =>
                            toast.error(
                              err instanceof Error
                                ? err.message
                                : "Kokoro failed",
                            ),
                          );
                        }}
                      />
                    ) : (
                      <p className={styles.userText}>{m.content}</p>
                    )}
                  </div>
                ))}
                {streamedText ? (
                  <div className={styles.assistantBubble}>
                    <FreeStudySectionedReply content={streamedText} />
                  </div>
                ) : null}
                {(ttsProgress.status === "downloading" ||
                  ttsProgress.status === "speaking") &&
                mode !== "tutor" &&
                mode !== "voice" ? (
                  <ModelProgressBar
                    label="Kokoro"
                    progress={ttsProgress.progress}
                    message={ttsProgress.message}
                    status={ttsProgress.status}
                  />
                ) : null}
                {statusNote ? (
                  <p className={styles.hint}>{statusNote}</p>
                ) : null}
                {isStreaming && !streamedText ? (
                  <p className={styles.hint}>Scho is thinking…</p>
                ) : null}
              </div>

              <form
                className={styles.composer}
                onSubmit={(e) => {
                  e.preventDefault();
                  const text = input.trim();
                  if (!text) return;
                  setInput("");
                  void askScho(text);
                }}
              >
                <input
                  className={styles.composerInput}
                  value={input}
                  onChange={(e) => setInput(e.target.value)}
                  placeholder="Ask Scho…"
                  disabled={isStreaming || !user}
                  aria-label="Message Scho"
                />
                <button
                  type="submit"
                  className={styles.sendBtn}
                  disabled={isStreaming || !input.trim() || !user}
                  aria-label="Send"
                >
                  <PaperPlaneTilt size={18} weight="fill" aria-hidden />
                </button>
              </form>
            </section>
          </div>
        </div>
      </div>
    </div>
  );
}
