"use client";

import {
  useCallback,
  useEffect,
  useMemo,
  useRef,
  useState,
  type PointerEvent as ReactPointerEvent,
} from "react";
import {
  ChatsCircle,
  FilePdf,
  Microphone,
  Notebook,
  PencilLine,
  PaperPlaneTilt,
  Trash,
  UploadSimple,
  Flask,
} from "@phosphor-icons/react";
import { toast } from "sonner";
import { createClient } from "@/lib/supabase/client";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import { useAuth } from "@/hooks/useAuth";
import { useTutorStream } from "@/hooks/useTutorStream";
import { useLocalTelemetryModels } from "@/hooks/useLocalTelemetryModels";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { extractPdfTextClient } from "@/lib/pdf/extractText";
import type { FreeStudyTelemetry } from "@/lib/ai/telemetryPayload";
import { LABS_HREF } from "@/lib/dashboard/navRoutes";
import { FreeStudySectionedReply } from "@/components/free-study/FreeStudySectionedReply";
import styles from "./free-study.module.css";
import Link from "next/link";

export type FreeStudyMode =
  | "tutor"
  | "whiteboard"
  | "pdf"
  | "voice"
  | "notes";

const MODES: { id: FreeStudyMode; label: string; icon: typeof ChatsCircle }[] = [
  { id: "tutor", label: "Tutor", icon: ChatsCircle },
  { id: "whiteboard", label: "Whiteboard", icon: PencilLine },
  { id: "pdf", label: "PDF", icon: FilePdf },
  { id: "voice", label: "Voice", icon: Microphone },
  { id: "notes", label: "Notes", icon: Notebook },
];

type ChatMsg = { role: "user" | "assistant"; content: string };

type NoteRow = {
  id: string;
  title: string;
  body: string;
  updated_at: string;
};

type NoteAssetPreview = {
  id: string;
  url: string | null;
};

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
      <p className={styles.hint}>{label}: {message ?? "Unsupported"}</p>
    ) : null;
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
  initialMode = "tutor",
}: {
  initialMode?: FreeStudyMode;
}) {
  const { user } = useAuth();
  const examType = useActiveExamType();
  const supabase = useMemo(() => createClient(), []);
  const [mode, setMode] = useState<FreeStudyMode>(initialMode);
  const [input, setInput] = useState("");
  const [messages, setMessages] = useState<ChatMsg[]>([]);
  const [conversationId, setConversationId] = useState<string | null>(null);
  const [ocrText, setOcrText] = useState("");
  const [pdfText, setPdfText] = useState("");
  const [transcript, setTranscript] = useState("");
  const [listening, setListening] = useState(false);
  const [notes, setNotes] = useState<NoteRow[]>([]);
  const [activeNoteId, setActiveNoteId] = useState<string | null>(null);
  const [noteTitle, setNoteTitle] = useState("");
  const [noteBody, setNoteBody] = useState("");
  const [r2Hint, setR2Hint] = useState<string | null>(null);
  const [noteAssets, setNoteAssets] = useState<NoteAssetPreview[]>([]);
  const [uploadingImage, setUploadingImage] = useState(false);
  const canvasRef = useRef<HTMLCanvasElement | null>(null);
  const drawingRef = useRef(false);
  const lastPt = useRef<{ x: number; y: number } | null>(null);

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
    const base: FreeStudyTelemetry = { source: mode };
    if (ocrText.trim()) base.ocr_text = ocrText.trim();
    if (pdfText.trim()) base.pdf_excerpt = pdfText.trim().slice(0, 6000);
    if (transcript.trim()) base.transcript = transcript.trim();
    if (noteBody.trim() && mode === "notes") {
      base.note_excerpt = noteBody.trim().slice(0, 4000);
    }
    return base;
  }, [mode, noteBody, ocrText, pdfText, transcript]);

  const askScho = useCallback(
    async (message: string) => {
      const text = message.trim();
      if (!text || isStreaming || !user) return;
      setMessages((m) => [...m, { role: "user", content: text }]);
      setStreamedText("");
      const id = await ensureConversation();
      if (!id) return;
      try {
        const result = await startStream({
          conversationId: id,
          message: text,
          context: { exam_type: examType },
          telemetry: buildTelemetry(),
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

  const clearCanvas = useCallback(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;
    const ctx = canvas.getContext("2d");
    if (!ctx) return;
    ctx.fillStyle = "#f8fafc";
    ctx.fillRect(0, 0, canvas.width, canvas.height);
  }, []);

  useEffect(() => {
    if (mode !== "whiteboard") return;
    const canvas = canvasRef.current;
    if (!canvas) return;
    const dpr = window.devicePixelRatio || 1;
    const rect = canvas.getBoundingClientRect();
    canvas.width = Math.floor(rect.width * dpr);
    canvas.height = Math.floor(rect.height * dpr);
    const ctx = canvas.getContext("2d");
    if (!ctx) return;
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    ctx.lineCap = "round";
    ctx.lineJoin = "round";
    ctx.strokeStyle = "#0f172a";
    ctx.lineWidth = 2.5;
    ctx.fillStyle = "#f8fafc";
    ctx.fillRect(0, 0, rect.width, rect.height);
  }, [mode]);

  const pointerPos = (e: ReactPointerEvent<HTMLCanvasElement>) => {
    const canvas = canvasRef.current!;
    const rect = canvas.getBoundingClientRect();
    return { x: e.clientX - rect.left, y: e.clientY - rect.top };
  };

  const onPointerDown = (e: ReactPointerEvent<HTMLCanvasElement>) => {
    drawingRef.current = true;
    lastPt.current = pointerPos(e);
    e.currentTarget.setPointerCapture(e.pointerId);
  };

  const onPointerMove = (e: ReactPointerEvent<HTMLCanvasElement>) => {
    if (!drawingRef.current || !lastPt.current) return;
    const ctx = canvasRef.current?.getContext("2d");
    if (!ctx) return;
    const next = pointerPos(e);
    ctx.beginPath();
    ctx.moveTo(lastPt.current.x, lastPt.current.y);
    ctx.lineTo(next.x, next.y);
    ctx.stroke();
    lastPt.current = next;
  };

  const onPointerUp = () => {
    drawingRef.current = false;
    lastPt.current = null;
  };

  const runWhiteboardOcr = async () => {
    const canvas = canvasRef.current;
    if (!canvas) return;
    try {
      const blob = await new Promise<Blob | null>((resolve) =>
        canvas.toBlob(resolve, "image/png"),
      );
      if (!blob) return;
      const text = await runOcr(blob);
      setOcrText(text);
      if (!text) toast.message("No text detected — try darker strokes.");
    } catch (err) {
      toast.error(err instanceof Error ? err.message : "OCR failed");
    }
  };

  const onPdfUpload = async (file: File | null) => {
    if (!file) return;
    try {
      const text = await extractPdfTextClient(file);
      setPdfText(text);
      toast.success("PDF text extracted");
    } catch (err) {
      toast.error(err instanceof Error ? err.message : "PDF extract failed");
    }
  };

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

  const loadNotes = useCallback(async () => {
    if (!user) return;
    await ensureFreshSession(supabase);
    const { data, error } = await supabase
      .from("free_study_notes")
      .select("id, title, body, updated_at")
      .eq("user_id", user.id)
      .order("updated_at", { ascending: false })
      .limit(40);
    if (error) {
      // Table may not be migrated yet on remote — degrade gracefully.
      console.warn("[free-study notes]", error.message);
      return;
    }
    setNotes((data as NoteRow[]) ?? []);
  }, [supabase, user]);

  useEffect(() => {
    if (mode === "notes") void loadNotes();
  }, [loadNotes, mode]);

  const saveNote = async () => {
    if (!user) return;
    await ensureFreshSession(supabase);
    const title = noteTitle.trim() || "Untitled note";
    const body = noteBody;
    if (activeNoteId) {
      const { error } = await supabase
        .from("free_study_notes")
        .update({
          title,
          body,
          exam_type: examType,
          updated_at: new Date().toISOString(),
        })
        .eq("id", activeNoteId)
        .eq("user_id", user.id);
      if (error) {
        toast.error(error.message);
        return;
      }
    } else {
      const { data, error } = await supabase
        .from("free_study_notes")
        .insert({
          user_id: user.id,
          title,
          body,
          exam_type: examType,
        })
        .select("id, title, body, updated_at")
        .single();
      if (error) {
        toast.error(
          error.message.includes("free_study_notes")
            ? "Notes table missing — apply migration 20260720120000_free_study_notes.sql"
            : error.message,
        );
        return;
      }
      setActiveNoteId(data.id);
    }
    toast.success("Note saved");
    void loadNotes();
  };

  const loadNoteAssets = useCallback(
    async (noteId: string) => {
      if (!user) return;
      await ensureFreshSession(supabase);
      const { data, error } = await supabase
        .from("free_study_note_assets")
        .select("id")
        .eq("note_id", noteId)
        .eq("user_id", user.id)
        .order("created_at", { ascending: false })
        .limit(12);
      if (error || !data) {
        setNoteAssets([]);
        return;
      }
      const previews: NoteAssetPreview[] = await Promise.all(
        data.map(async (row) => {
          try {
            const res = await fetch(
              `/api/notes/images/${row.id}/url?variant=thumb`,
              { credentials: "same-origin" },
            );
            if (!res.ok) return { id: row.id, url: null };
            const json = (await res.json()) as { url?: string };
            return { id: row.id, url: json.url ?? null };
          } catch {
            return { id: row.id, url: null };
          }
        }),
      );
      setNoteAssets(previews);
    },
    [supabase, user],
  );

  useEffect(() => {
    if (mode === "notes" && activeNoteId) {
      void loadNoteAssets(activeNoteId);
    } else if (!activeNoteId) {
      setNoteAssets([]);
    }
  }, [activeNoteId, loadNoteAssets, mode]);

  const onNoteImage = async (file: File | null) => {
    if (!file || !activeNoteId) {
      toast.message("Save the note first, then attach an image.");
      return;
    }
    const form = new FormData();
    form.set("note_id", activeNoteId);
    form.set("file", file);
    form.set("handwriting", "true");
    setUploadingImage(true);
    try {
      const res = await fetch("/api/notes/images", {
        method: "POST",
        body: form,
        credentials: "same-origin",
      });
      const data = (await res.json()) as {
        error?: string;
        configured?: boolean;
        asset?: { id: string };
      };
      if (!res.ok) {
        setR2Hint(data.error ?? "Upload failed");
        toast.error(data.error ?? "Upload failed");
        return;
      }
      setR2Hint(null);
      toast.success("Image uploaded");
      await loadNoteAssets(activeNoteId);
    } catch (err) {
      toast.error(err instanceof Error ? err.message : "Upload failed");
    } finally {
      setUploadingImage(false);
    }
  };

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <div>
          <h1 className={styles.title}>Free Studying</h1>
          <p className={styles.subtitle}>
            Multimodal Scho — whiteboard, PDF, voice, and notes — with neural
            Kokoro voice.{" "}
            <Link href={LABS_HREF} className={styles.inlineLink}>
              <Flask size={14} weight="fill" aria-hidden /> Open STEM Labs →
            </Link>
          </p>
        </div>
      </header>

      <nav className={styles.tabs} aria-label="Free Studying modes">
        {MODES.map(({ id, label, icon: Icon }) => (
          <button
            key={id}
            type="button"
            className={`${styles.tab} ${mode === id ? styles.tabActive : ""}`}
            onClick={() => setMode(id)}
          >
            <Icon size={16} weight={mode === id ? "fill" : "regular"} aria-hidden />
            {label}
          </button>
        ))}
      </nav>

      <div className={styles.layout}>
        <section className={styles.pane} aria-label={`${mode} tools`}>
          {mode === "tutor" ? (
            <div className={styles.paneBody}>
              <p className={styles.hint}>
                Ask anything for {examType}. Replies use Conceptual Insight,
                Test-Hacker Strategy, and Socratic Pivot when multimodal context
                is attached.
              </p>
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

          {mode === "whiteboard" ? (
            <div className={styles.paneBody}>
              <canvas
                ref={canvasRef}
                className={styles.whiteboard}
                onPointerDown={onPointerDown}
                onPointerMove={onPointerMove}
                onPointerUp={onPointerUp}
                onPointerLeave={onPointerUp}
              />
              <div className={styles.row}>
                <button type="button" className={styles.secondaryBtn} onClick={clearCanvas}>
                  <Trash size={14} aria-hidden /> Clear
                </button>
                <button
                  type="button"
                  className={styles.primaryBtn}
                  onClick={() => void runWhiteboardOcr()}
                >
                  Run OCR
                </button>
                <button
                  type="button"
                  className={styles.primaryBtn}
                  disabled={!ocrText.trim()}
                  onClick={() =>
                    void askScho(
                      ocrText.trim()
                        ? `Help me with this whiteboard work:\n${ocrText}`
                        : "Help me with my whiteboard work.",
                    )
                  }
                >
                  Ask Scho
                </button>
              </div>
              <ModelProgressBar
                label="OCR"
                progress={models.ocr.progress}
                message={models.ocr.message}
                status={models.ocr.status}
              />
              {ocrText ? (
                <textarea
                  className={styles.textarea}
                  value={ocrText}
                  onChange={(e) => setOcrText(e.target.value)}
                  rows={5}
                  aria-label="OCR text"
                />
              ) : null}
            </div>
          ) : null}

          {mode === "pdf" ? (
            <div className={styles.paneBody}>
              <label className={styles.uploadLabel}>
                <UploadSimple size={18} aria-hidden />
                Upload PDF
                <input
                  type="file"
                  accept="application/pdf"
                  className={styles.fileInput}
                  onChange={(e) => void onPdfUpload(e.target.files?.[0] ?? null)}
                />
              </label>
              {pdfText ? (
                <>
                  <textarea
                    className={styles.textarea}
                    value={pdfText.slice(0, 8000)}
                    onChange={(e) => setPdfText(e.target.value)}
                    rows={10}
                    aria-label="PDF excerpt"
                  />
                  <button
                    type="button"
                    className={styles.primaryBtn}
                    onClick={() =>
                      void askScho(
                        `Help me understand this PDF excerpt:\n${pdfText.slice(0, 2000)}`,
                      )
                    }
                  >
                    Ask Scho about PDF
                  </button>
                </>
              ) : (
                <p className={styles.hint}>Extracts text client-side with pdf.js.</p>
              )}
            </div>
          ) : null}

          {mode === "voice" ? (
            <div className={styles.paneBody}>
              <div className={styles.row}>
                <button
                  type="button"
                  className={listening ? styles.dangerBtn : styles.primaryBtn}
                  onClick={toggleListen}
                >
                  <Microphone size={16} weight="fill" aria-hidden />
                  {listening ? "Stop" : "Start listening"}
                </button>
                <button
                  type="button"
                  className={styles.primaryBtn}
                  disabled={!transcript.trim()}
                  onClick={() => void askScho(transcript)}
                >
                  Ask Scho
                </button>
              </div>
              <ModelProgressBar
                label="STT"
                progress={listening ? 0.5 : models.stt.status === "ready" ? 1 : 0}
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
              <textarea
                className={styles.textarea}
                value={transcript}
                onChange={(e) => setTranscript(e.target.value)}
                rows={6}
                placeholder="Transcript appears here…"
                aria-label="Voice transcript"
              />
            </div>
          ) : null}

          {mode === "notes" ? (
            <div className={styles.paneBody}>
              <div className={styles.notesLayout}>
                <ul className={styles.noteList}>
                  <li>
                    <button
                      type="button"
                      className={styles.secondaryBtn}
                      onClick={() => {
                        setActiveNoteId(null);
                        setNoteTitle("");
                        setNoteBody("");
                      }}
                    >
                      New note
                    </button>
                  </li>
                  {notes.map((n) => (
                    <li key={n.id}>
                      <button
                        type="button"
                        className={`${styles.noteItem} ${
                          activeNoteId === n.id ? styles.noteItemActive : ""
                        }`}
                        onClick={() => {
                          setActiveNoteId(n.id);
                          setNoteTitle(n.title);
                          setNoteBody(n.body);
                        }}
                      >
                        {n.title || "Untitled"}
                      </button>
                    </li>
                  ))}
                </ul>
                <div className={styles.noteEditor}>
                  <input
                    className={styles.input}
                    value={noteTitle}
                    onChange={(e) => setNoteTitle(e.target.value)}
                    placeholder="Title"
                    aria-label="Note title"
                  />
                  <textarea
                    className={styles.textarea}
                    value={noteBody}
                    onChange={(e) => setNoteBody(e.target.value)}
                    rows={12}
                    placeholder="Write your notes…"
                    aria-label="Note body"
                  />
                  {noteAssets.length > 0 ? (
                    <ul className={styles.assetGrid} aria-label="Note images">
                      {noteAssets.map((asset) => (
                        <li key={asset.id} className={styles.assetThumb}>
                          {asset.url ? (
                            // eslint-disable-next-line @next/next/no-img-element
                            <img src={asset.url} alt="" />
                          ) : (
                            <span className={styles.hint}>Image saved</span>
                          )}
                        </li>
                      ))}
                    </ul>
                  ) : null}
                  <div className={styles.row}>
                    <button
                      type="button"
                      className={styles.primaryBtn}
                      onClick={() => void saveNote()}
                    >
                      Save
                    </button>
                    <label className={styles.uploadLabel}>
                      {uploadingImage ? "Uploading…" : "Attach image"}
                      <input
                        type="file"
                        accept="image/*"
                        className={styles.fileInput}
                        disabled={uploadingImage || !activeNoteId}
                        onChange={(e) => {
                          void onNoteImage(e.target.files?.[0] ?? null);
                          e.target.value = "";
                        }}
                      />
                    </label>
                    <button
                      type="button"
                      className={styles.secondaryBtn}
                      disabled={!noteBody.trim()}
                      onClick={() =>
                        void askScho(
                          `Help me study from my notes:\n${noteBody.slice(0, 1500)}`,
                        )
                      }
                    >
                      Ask Scho
                    </button>
                  </div>
                  {!activeNoteId ? (
                    <p className={styles.hint}>
                      Save the note once before attaching images (R2).
                    </p>
                  ) : null}
                  {r2Hint ? <p className={styles.hint}>{r2Hint}</p> : null}
                </div>
              </div>
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
                  m.role === "user" ? styles.userBubble : styles.assistantBubble
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
                          err instanceof Error ? err.message : "Kokoro failed",
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
            {statusNote ? <p className={styles.hint}>{statusNote}</p> : null}
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
  );
}
