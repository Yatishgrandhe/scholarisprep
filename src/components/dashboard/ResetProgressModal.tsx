"use client";

import { X } from "@phosphor-icons/react";
import styles from "./ResetProgressModal.module.css";

const SCOPES: Record<"SAT" | "ACT", string[]> = {
  SAT: [
    "Question attempts tagged SAT",
    "Practice and rush sessions (SAT)",
    "SAT study plan",
    "Saved questions (SAT)",
  ],
  ACT: [
    "Question attempts tagged ACT",
    "Practice sessions (ACT)",
    "ACT study plan",
    "Saved questions (ACT)",
  ],
};

type ResetProgressModalProps = {
  exam: "SAT" | "ACT" | null;
  loading?: boolean;
  onConfirm: () => void;
  onClose: () => void;
};

export function ResetProgressModal({
  exam,
  loading,
  onConfirm,
  onClose,
}: ResetProgressModalProps) {
  if (!exam) return null;

  return (
    <div className={styles.overlay} role="dialog" aria-modal="true">
      <div className={styles.modal}>
        <div className={styles.header}>
          <h2>Reset {exam} progress?</h2>
          <button type="button" className={styles.close} onClick={onClose} aria-label="Close">
            <X size={18} weight="bold" />
          </button>
        </div>
        <p className={styles.warning}>This cannot be undone. The following will be deleted:</p>
        <ul className={styles.list}>
          {SCOPES[exam].map((item) => (
            <li key={item}>{item}</li>
          ))}
        </ul>
        <div className={styles.footer}>
          <button type="button" className={styles.cancel} onClick={onClose}>
            Cancel
          </button>
          <button
            type="button"
            className={styles.danger}
            disabled={loading}
            onClick={onConfirm}
          >
            {loading ? "Resetting…" : `Reset ${exam}`}
          </button>
        </div>
      </div>
    </div>
  );
}
