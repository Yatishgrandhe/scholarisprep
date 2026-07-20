"use client";

import { useEffect, useState } from "react";
import { X } from "@phosphor-icons/react";
import styles from "./QuestionNoteDialog.module.css";

const STORAGE_KEY = "scholaris_question_notes";

function loadNotes(): Record<string, string> {
  if (typeof window === "undefined") return {};
  try {
    return JSON.parse(localStorage.getItem(STORAGE_KEY) ?? "{}") as Record<string, string>;
  } catch {
    return {};
  }
}

type QuestionNoteDialogProps = {
  open: boolean;
  questionId: string;
  onClose: () => void;
};

export function QuestionNoteDialog({ open, questionId, onClose }: QuestionNoteDialogProps) {
  const [note, setNote] = useState("");

  useEffect(() => {
    if (open) {
      const notes = loadNotes();
      setNote(notes[questionId] ?? "");
    }
  }, [open, questionId]);

  if (!open) return null;

  const save = () => {
    const notes = loadNotes();
    if (note.trim()) notes[questionId] = note.trim();
    else delete notes[questionId];
    localStorage.setItem(STORAGE_KEY, JSON.stringify(notes));
    onClose();
  };

  return (
    <div className={styles.overlay} role="dialog" aria-modal="true">
      <div className={styles.modal}>
        <div className={styles.header}>
          <h2>Add note</h2>
          <button type="button" className={styles.close} onClick={onClose} aria-label="Close">
            <X size={18} weight="bold" />
          </button>
        </div>
        <textarea
          className={styles.textarea}
          rows={4}
          value={note}
          onChange={(e) => setNote(e.target.value)}
          placeholder="Jot down a reminder for this question…"
        />
        <div className={styles.footer}>
          <button type="button" className={styles.cancel} onClick={onClose}>
            Cancel
          </button>
          <button type="button" className={styles.save} onClick={save}>
            Save note
          </button>
        </div>
      </div>
    </div>
  );
}
