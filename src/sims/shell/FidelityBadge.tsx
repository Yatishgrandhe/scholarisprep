"use client";

import { getFidelityBadge } from "@/sims/contracts";
import type { FidelityMode } from "@/sims/contracts";
import styles from "./SimShell.module.css";

type Props = {
  mode: FidelityMode;
  note?: string;
  compact?: boolean;
};

export function FidelityBadge({ mode, note, compact }: Props) {
  const badge = getFidelityBadge(mode);
  return (
    <div
      className={`${styles.fidelityBadge} ${styles[`fidelity_${mode}`]}`}
      title={note ?? badge.description}
      role="status"
    >
      <span className={styles.fidelityDot} aria-hidden />
      <span className={styles.fidelityLabel}>
        {compact ? badge.shortLabel : badge.label}
      </span>
      {note && !compact ? (
        <span className={styles.fidelityNote}>{note}</span>
      ) : null}
    </div>
  );
}
