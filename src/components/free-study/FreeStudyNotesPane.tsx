"use client";

/**
 * Free Studying Notes pane — typed notes + image attach.
 * Flow: attach image → client OCR → editable text → Ask Scho (OCR text to Mistral).
 * R2 upload is best-effort when the note is saved and R2 is configured.
 */

import { useCallback, useEffect, useMemo, useState } from "react";
import {
  FloppyDisk,
  Image as ImageIcon,
  Notebook,
  Plus,
  Sparkle,
} from "@phosphor-icons/react";
import { toast } from "sonner";
import { createClient } from "@/lib/supabase/client";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import { useAuth } from "@/hooks/useAuth";
import type { LocalModelStatus } from "@/hooks/useLocalTelemetryModels";
import type { FreeStudyTelemetry } from "@/lib/ai/telemetryPayload";
import styles from "./free-study-notes.module.css";

export type NoteRow = {
  id: string;
  title: string;
  body: string;
  updated_at: string;
};

type NoteAssetPreview = {
  id: string;
  url: string | null;
};

export type NotesAskPayload = {
  message: string;
  telemetry: Pick<FreeStudyTelemetry, "note_excerpt" | "ocr_text" | "source">;
};

type Props = {
  examType: string;
  askDisabled?: boolean;
  runOcr: (image: File) => Promise<string>;
  ocrStatus: LocalModelStatus;
  ocrProgress: number;
  ocrMessage?: string;
  onAskScho: (payload: NotesAskPayload) => void | Promise<void>;
};

export function FreeStudyNotesPane({
  examType,
  askDisabled = false,
  runOcr,
  ocrStatus,
  ocrProgress,
  ocrMessage,
  onAskScho,
}: Props) {
  const { user } = useAuth();
  const supabase = useMemo(() => createClient(), []);
  const [notes, setNotes] = useState<NoteRow[]>([]);
  const [activeNoteId, setActiveNoteId] = useState<string | null>(null);
  const [noteTitle, setNoteTitle] = useState("");
  const [noteBody, setNoteBody] = useState("");
  const [ocrText, setOcrText] = useState("");
  const [noteAssets, setNoteAssets] = useState<NoteAssetPreview[]>([]);
  const [uploadingImage, setUploadingImage] = useState(false);
  const [ocrBusy, setOcrBusy] = useState(false);
  const [r2Hint, setR2Hint] = useState<string | null>(null);

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
      console.warn("[free-study notes]", error.message);
      return;
    }
    setNotes((data as NoteRow[]) ?? []);
  }, [supabase, user]);

  useEffect(() => {
    void loadNotes();
  }, [loadNotes]);

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
    if (activeNoteId) {
      void loadNoteAssets(activeNoteId);
    } else {
      setNoteAssets([]);
    }
  }, [activeNoteId, loadNoteAssets]);

  const resetEditor = () => {
    setActiveNoteId(null);
    setNoteTitle("");
    setNoteBody("");
    setOcrText("");
    setR2Hint(null);
    setNoteAssets([]);
  };

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

  /** Best-effort R2; never blocks OCR → Ask path. */
  const tryR2Upload = async (file: File, noteId: string) => {
    const form = new FormData();
    form.set("note_id", noteId);
    form.set("file", file);
    form.set("handwriting", "true");
    try {
      const res = await fetch("/api/notes/images", {
        method: "POST",
        body: form,
        credentials: "same-origin",
      });
      const data = (await res.json()) as {
        error?: string;
        configured?: boolean;
      };
      if (!res.ok) {
        const msg = data.error ?? "Upload failed";
        setR2Hint(
          data.configured === false
            ? "Image OCR kept locally — R2 not configured for cloud save."
            : msg,
        );
        return false;
      }
      setR2Hint(null);
      await loadNoteAssets(noteId);
      return true;
    } catch (err) {
      setR2Hint(err instanceof Error ? err.message : "Upload failed");
      return false;
    }
  };

  const onAttachImage = async (file: File | null) => {
    if (!file) return;
    setOcrBusy(true);
    setUploadingImage(true);
    try {
      // 1) OCR first — this is what Mistral receives.
      let text = "";
      try {
        text = await runOcr(file);
        setOcrText(text);
        if (text.trim()) {
          toast.success("Image text read (OCR)");
        } else {
          toast.message(
            "No text detected — try a clearer photo, then edit the OCR box.",
          );
        }
      } catch (err) {
        toast.error(err instanceof Error ? err.message : "OCR failed");
      }

      // 2) Optional R2 when note already saved.
      if (activeNoteId) {
        const ok = await tryR2Upload(file, activeNoteId);
        if (ok) toast.success("Image saved to note storage");
      } else if (text.trim()) {
        setR2Hint(
          "OCR ready for Ask Scho. Save the note to also store the image (R2).",
        );
      }
    } finally {
      setOcrBusy(false);
      setUploadingImage(false);
    }
  };

  const handleAsk = () => {
    const body = noteBody.trim();
    const ocr = ocrText.trim();
    if (!body && !ocr) {
      toast.message("Write a note or attach an image (OCR) first.");
      return;
    }
    const parts: string[] = [];
    if (body) parts.push(body.slice(0, 1500));
    if (ocr) parts.push(`Handwriting / image OCR:\n${ocr.slice(0, 2000)}`);
    const message = `Help me study from my notes:\n${parts.join("\n\n")}`;
    void onAskScho({
      message,
      telemetry: {
        source: "notes",
        note_excerpt: body ? body.slice(0, 4000) : undefined,
        ocr_text: ocr ? ocr.slice(0, 4000) : undefined,
      },
    });
  };

  const busy = ocrBusy || uploadingImage;
  const canAsk = Boolean(noteBody.trim() || ocrText.trim()) && !askDisabled;

  return (
    <div className={styles.pane}>
      <p className={styles.intro}>
        Capture ideas, then <strong>Ask Scho</strong>. Attached images are read
        with OCR — that text (not the pixels) is what the tutor sees.
      </p>

      <div className={styles.layout}>
        <aside className={styles.rail} aria-label="Saved notes">
          <p className={styles.railLabel}>Library</p>
          <button type="button" className={styles.newBtn} onClick={resetEditor}>
            <Plus size={14} weight="bold" aria-hidden />
            New note
          </button>
          <ul className={styles.noteList}>
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
                    setOcrText("");
                    setR2Hint(null);
                  }}
                >
                  {n.title || "Untitled"}
                </button>
              </li>
            ))}
          </ul>
        </aside>

        <div className={styles.editor}>
          <input
            className={styles.titleInput}
            value={noteTitle}
            onChange={(e) => setNoteTitle(e.target.value)}
            placeholder="Note title"
            aria-label="Note title"
          />
          <textarea
            className={styles.bodyArea}
            value={noteBody}
            onChange={(e) => setNoteBody(e.target.value)}
            rows={10}
            placeholder="Write your notes…"
            aria-label="Note body"
          />

          <div className={styles.attachCard}>
            <div className={styles.attachHead}>
              <p className={styles.attachTitle}>
                <ImageIcon size={14} weight="fill" aria-hidden /> Image → OCR
              </p>
            </div>
            <p className={styles.attachHint}>
              Photo of handwriting or a worksheet. We extract text locally, then
              optionally upload to R2 if the note is saved.
            </p>
            <div className={styles.attachActions}>
              <label
                className={styles.uploadLabel}
                data-disabled={busy ? "true" : "false"}
              >
                <ImageIcon size={16} aria-hidden />
                {busy ? "Reading…" : "Attach image"}
                <input
                  type="file"
                  accept="image/*"
                  className={styles.fileInput}
                  disabled={busy}
                  onChange={(e) => {
                    void onAttachImage(e.target.files?.[0] ?? null);
                    e.target.value = "";
                  }}
                />
              </label>
            </div>

            {ocrStatus === "downloading" || ocrBusy ? (
              <div className={styles.progressBlock} aria-live="polite">
                <div className={styles.progressLabel}>
                  <span>OCR</span>
                  <span>{Math.round(ocrProgress * 100)}%</span>
                </div>
                <div className={styles.progressTrack}>
                  <div
                    className={styles.progressFill}
                    style={{ width: `${Math.round(ocrProgress * 100)}%` }}
                  />
                </div>
                {ocrMessage ? (
                  <p className={styles.hint}>{ocrMessage}</p>
                ) : null}
              </div>
            ) : null}
            {ocrStatus === "error" ? (
              <p className={styles.ocrError} role="alert">
                OCR failed{ocrMessage ? `: ${ocrMessage}` : ""}
              </p>
            ) : null}

            {ocrText || ocrBusy ? (
              <div className={styles.ocrBox}>
                <p className={styles.ocrLabel}>
                  OCR text (edit before Ask Scho)
                </p>
                <textarea
                  className={styles.ocrArea}
                  value={ocrText}
                  onChange={(e) => setOcrText(e.target.value)}
                  rows={5}
                  placeholder="OCR output appears here — fix misreads, then Ask Scho."
                  aria-label="Note image OCR text"
                />
              </div>
            ) : null}

            {noteAssets.length > 0 ? (
              <ul className={styles.assetGrid} aria-label="Saved note images">
                {noteAssets.map((asset) => (
                  <li key={asset.id} className={styles.assetThumb}>
                    {asset.url ? (
                      // eslint-disable-next-line @next/next/no-img-element
                      <img src={asset.url} alt="" />
                    ) : (
                      <span className={styles.assetFallback}>Saved</span>
                    )}
                  </li>
                ))}
              </ul>
            ) : null}

            {r2Hint ? <p className={styles.warn}>{r2Hint}</p> : null}
          </div>

          <div className={styles.toolbar}>
            <button
              type="button"
              className={styles.secondaryBtn}
              onClick={() => void saveNote()}
            >
              <FloppyDisk size={15} weight="bold" aria-hidden />
              Save
            </button>
            <button
              type="button"
              className={styles.primaryBtn}
              disabled={!canAsk}
              onClick={handleAsk}
            >
              <Sparkle size={15} weight="fill" aria-hidden />
              Ask Scho
            </button>
            <span className={styles.hint}>
              <Notebook size={12} weight="fill" aria-hidden />{" "}
              {activeNoteId ? "Saved note" : "Unsaved draft"}
            </span>
          </div>
        </div>
      </div>
    </div>
  );
}
