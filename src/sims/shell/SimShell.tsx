"use client";

import type { ReactNode } from "react";
import type { FidelityMode, SimManifest } from "@/sims/contracts";
import { FidelityBadge } from "./FidelityBadge";
import styles from "./SimShell.module.css";

type Props = {
  manifest: SimManifest;
  fidelity?: FidelityMode;
  titleAddon?: ReactNode;
  /** Framed instrument viewport (Canvas2D or VisualStage). */
  viewport: ReactNode;
  /** Docked control rail (sliders, meters). */
  controls: ReactNode;
  /** Predict → run → compare block (usually above or in rail). */
  pedagogy?: ReactNode;
  /** Optional SI readouts strip. */
  meters?: ReactNode;
  emptyFallback?: ReactNode;
};

/**
 * Shared lab chrome: fidelity badge, framed viewport, cobalt control rail.
 * Domain scenes only fill `viewport` / `controls` — staging lives in VisualStage.
 */
export function SimShell({
  manifest,
  fidelity,
  titleAddon,
  viewport,
  controls,
  pedagogy,
  meters,
  emptyFallback,
}: Props) {
  const mode = fidelity ?? manifest.fidelity;

  return (
    <div className={styles.workspace}>
      <header className={styles.workspaceHeader}>
        <div className={styles.headerText}>
          <p className={styles.eyebrow}>
            {manifest.subject} · {manifest.priority}
          </p>
          <h1 className={styles.title}>{manifest.title}</h1>
          <p className={styles.subtitle}>{manifest.shortDescription}</p>
        </div>
        <div className={styles.headerMeta}>
          <FidelityBadge mode={mode} note={manifest.fidelityNote} />
          {titleAddon}
        </div>
      </header>

      {manifest.examTags.length > 0 ? (
        <ul className={styles.tagRow} aria-label="Exam tags">
          {manifest.examTags.map((tag) => (
            <li key={`${tag.board}-${tag.course ?? ""}`} className={styles.examTag}>
              {tag.board}
              {tag.course ? ` · ${tag.course}` : ""}
            </li>
          ))}
        </ul>
      ) : null}

      <div className={styles.workspaceGrid}>
        <div className={styles.viewportFrame}>
          {viewport}
          {emptyFallback}
        </div>
        <aside className={styles.controlRail} aria-label="Lab controls">
          {pedagogy}
          {meters ? <div className={styles.metersBlock}>{meters}</div> : null}
          <div className={styles.controlsBlock}>{controls}</div>
        </aside>
      </div>
    </div>
  );
}
