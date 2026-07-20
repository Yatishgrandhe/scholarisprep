"use client";

import Link from "next/link";
import { Flask } from "@phosphor-icons/react";
import { LABS_HREF } from "@/lib/dashboard/navRoutes";
import { getFidelityBadge, type SimManifestMeta } from "@/sims/contracts";
import styles from "./sims-hub.module.css";

type Props = {
  sims: SimManifestMeta[];
};

/** Catalog grid — back / categories live in LabsShell sidebar. */
export function SimsCatalog({ sims }: Props) {
  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <div className={styles.headerRow}>
          <span className={styles.headerIcon} aria-hidden>
            <Flask size={22} weight="fill" />
          </span>
          <div>
            <h1 className={styles.title}>STEM Labs</h1>
            <p className={styles.sub}>
              Exam-aligned model labs with predict → run → compare. Honest fidelity
              badges — not a 40-demo gallery.
            </p>
          </div>
        </div>
      </header>

      {sims.length === 0 ? (
        <div className={styles.empty} role="status">
          <p className={styles.emptyTitle}>No labs registered yet</p>
          <p className={styles.emptyBody}>
            Packs self-register under <code>src/sims/&lt;subject&gt;/**</code>.
          </p>
        </div>
      ) : (
        <ul className={styles.grid}>
          {sims.map((sim) => {
            const badge = getFidelityBadge(sim.fidelity);
            return (
              <li key={sim.id}>
                <Link
                  href={`${LABS_HREF}/${sim.id}`}
                  className={styles.card}
                >
                  <div className={styles.cardTop}>
                    <span className={styles.subject}>{sim.subject}</span>
                    <span className={styles.priority}>{sim.priority}</span>
                  </div>
                  <h2 className={styles.cardTitle}>{sim.title}</h2>
                  <p className={styles.cardDesc}>{sim.shortDescription}</p>
                  <div className={styles.cardMeta}>
                    <span
                      className={`${styles.fidelity} ${styles[`fidelity_${sim.fidelity}`]}`}
                    >
                      {badge.shortLabel}
                    </span>
                    <span className={styles.renderMode}>{sim.renderMode}</span>
                  </div>
                  {sim.examTags.length > 0 ? (
                    <ul className={styles.tags}>
                      {sim.examTags.map((t) => (
                        <li key={`${sim.id}-${t.board}-${t.course ?? ""}`}>
                          {t.board}
                          {t.course ? ` · ${t.course}` : ""}
                        </li>
                      ))}
                    </ul>
                  ) : null}
                </Link>
              </li>
            );
          })}
        </ul>
      )}
    </div>
  );
}
