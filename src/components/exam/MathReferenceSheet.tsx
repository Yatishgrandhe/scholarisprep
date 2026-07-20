"use client";

import { X } from "@phosphor-icons/react";
import { getReferenceSheet } from "@/lib/exam/referenceSheets";
import styles from "./MathReferenceSheet.module.css";

type MathReferenceSheetProps = {
  open: boolean;
  onClose: () => void;
  /** When set, loads AP/IB/SAT sheet content for that exam. */
  examType?: string | null;
};

export function MathReferenceSheet({
  open,
  onClose,
  examType,
}: MathReferenceSheetProps) {
  if (!open) return null;

  const sheet = getReferenceSheet(examType);

  return (
    <div className={styles.overlay} role="dialog" aria-modal="true" aria-label="Reference sheet">
      <div className={styles.sheet}>
        <div className={styles.header}>
          <h2>{sheet.title}</h2>
          <button type="button" className={styles.close} onClick={onClose} aria-label="Close">
            <X size={18} weight="bold" />
          </button>
        </div>
        <p className={styles.note}>{sheet.note}</p>
        <ul className={styles.list}>
          {sheet.items.map((item) => (
            <li key={`${item.title}:${item.body.slice(0, 24)}`}>
              <strong>{item.title}</strong>
              <span>{item.body}</span>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}
