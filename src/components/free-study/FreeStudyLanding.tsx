"use client";

import Link from "next/link";
import {
  ArrowRight,
  ChatsCircle,
  FilePdf,
  Flask,
  Microphone,
  Notebook,
  PencilLine,
} from "@phosphor-icons/react";
import {
  FREE_STUDY_HREF,
  LABS_HREF,
  WHITEBOARD_HREF,
} from "@/lib/dashboard/navRoutes";
import styles from "./free-study-landing.module.css";

type Destination = {
  id: "tutor" | "whiteboard" | "pdf" | "voice" | "notes";
  label: string;
  hint: string;
  href: string;
  icon: typeof ChatsCircle;
};

const DESTINATIONS: Destination[] = [
  {
    id: "tutor",
    label: "Tutor",
    hint: "Ask Scho anything",
    href: `${FREE_STUDY_HREF}?dest=tutor`,
    icon: ChatsCircle,
  },
  {
    id: "whiteboard",
    label: "Whiteboard",
    hint: "Draw, then talk to Scho",
    href: WHITEBOARD_HREF,
    icon: PencilLine,
  },
  {
    id: "pdf",
    label: "PDF studio",
    hint: "Upload → extract → quiz or ask",
    href: `${FREE_STUDY_HREF}?dest=pdf`,
    icon: FilePdf,
  },
  {
    id: "voice",
    label: "Voice",
    hint: "Speak · hear Kokoro reply",
    href: `${FREE_STUDY_HREF}?dest=voice`,
    icon: Microphone,
  },
  {
    id: "notes",
    label: "Notes",
    hint: "Capture ideas with Scho",
    href: `${FREE_STUDY_HREF}?dest=notes`,
    icon: Notebook,
  },
];

/**
 * Brand-forward Free Studying first paint.
 * Destinations replace the mode pill strip — Tutor / Whiteboard / PDF / Voice / Notes.
 */
export function FreeStudyLanding() {
  return (
    <div className={styles.root}>
      <div className={styles.atmosphere} aria-hidden>
        <div className={styles.lamp} />
        <div className={styles.grain} />
        <div className={styles.deskLine} />
      </div>

      <div className={styles.stage}>
        <header className={styles.hero}>
          <h1 className={styles.brand}>
            Scholaris
            <span className={styles.brandEm}>Free Studying</span>
          </h1>
          <p className={styles.headline}>Study with Scho — your way.</p>
          <p className={styles.lede}>
            Multimodal Scho for open study — talk, draw, read, speak, or write.
          </p>
        </header>

        <nav className={styles.destinations} aria-label="Free Studying destinations">
          {DESTINATIONS.map((dest, i) => {
            const Icon = dest.icon;
            return (
              <Link
                key={dest.id}
                href={dest.href}
                className={styles.dest}
                style={{ ["--delay" as string]: `${90 + i * 55}ms` }}
              >
                <span className={styles.destIcon} aria-hidden>
                  <Icon size={22} weight="duotone" />
                </span>
                <span className={styles.destCopy}>
                  <span className={styles.destLabel}>{dest.label}</span>
                  <span className={styles.destHint}>{dest.hint}</span>
                </span>
                <ArrowRight
                  className={styles.destArrow}
                  size={18}
                  weight="bold"
                  aria-hidden
                />
              </Link>
            );
          })}
        </nav>
      </div>

      <footer className={styles.foot}>
        <Link href={LABS_HREF} className={styles.labsLink}>
          <Flask size={14} weight="fill" aria-hidden />
          Open STEM Labs
        </Link>
      </footer>
    </div>
  );
}
