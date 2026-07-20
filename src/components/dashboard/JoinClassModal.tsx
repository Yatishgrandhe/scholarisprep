"use client";

import { useState } from "react";
import { X } from "@phosphor-icons/react";
import { toast } from "sonner";
import styles from "./JoinClassModal.module.css";

type JoinClassModalProps = {
  open: boolean;
  onClose: () => void;
};

export function JoinClassModal({ open, onClose }: JoinClassModalProps) {
  const [code, setCode] = useState("");
  const [submitting, setSubmitting] = useState(false);

  if (!open) return null;

  const handleSubmit = async () => {
    if (!code.trim()) {
      toast.error("Enter a class code.");
      return;
    }
    setSubmitting(true);
    try {
      await fetch("/api/dashboard/feedback", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ type: "join-class", message: `Class code: ${code.trim()}` }),
      });
      toast.success("Class join request received. We'll confirm by email.");
      setCode("");
      onClose();
    } catch {
      toast.error("Could not submit. Try again later.");
    } finally {
      setSubmitting(false);
    }
  };

  return (
    <div className={styles.overlay} role="dialog" aria-modal="true">
      <div className={styles.modal}>
        <div className={styles.header}>
          <h2>Join a class</h2>
          <button type="button" className={styles.close} onClick={onClose} aria-label="Close">
            <X size={18} weight="bold" />
          </button>
        </div>
        <p className={styles.hint}>Enter the class code from your teacher or tutor.</p>
        <input
          className={styles.input}
          value={code}
          onChange={(e) => setCode(e.target.value.toUpperCase())}
          placeholder="e.g. PREP-2026"
          maxLength={24}
        />
        <div className={styles.footer}>
          <button type="button" className={styles.cancel} onClick={onClose}>
            Cancel
          </button>
          <button
            type="button"
            className={styles.submit}
            disabled={submitting}
            onClick={() => void handleSubmit()}
          >
            {submitting ? "Joining…" : "Join class"}
          </button>
        </div>
      </div>
    </div>
  );
}
