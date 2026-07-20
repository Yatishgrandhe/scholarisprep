"use client";

import Link from "next/link";
import {
  ArrowRight,
  ArrowSquareOut,
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
  PRODUCT_NEW_TAB_PROPS,
  WHITEBOARD_HREF,
} from "@/lib/dashboard/navRoutes";
import {
  FS_ARIA,
  destinationLandingLabel,
  handleDestinationRailKeyDown,
  type FreeStudyDestinationId,
} from "@/components/free-study/freeStudyA11y";
import styles from "./free-study-landing.module.css";

type Destination = {
  id: FreeStudyDestinationId;
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
    label: "PDF Studio",
    hint: "Upload, extract, quiz",
    href: `${FREE_STUDY_HREF}?dest=pdf`,
    icon: FilePdf,
  },
  {
    id: "voice",
    label: "Voice",
    hint: "Speak naturally to Scho",
    href: `${FREE_STUDY_HREF}?dest=voice`,
    icon: Microphone,
  },
  {
    id: "notes",
    label: "Notes",
    hint: "Write, OCR, ask Scho",
    href: `${FREE_STUDY_HREF}?dest=notes`,
    icon: Notebook,
  },
  {
    id: "flashcards",
    label: "Flashcards",
    hint: "Generate from any source",
    href: `${FREE_STUDY_HREF}?dest=flashcards`,
    icon: PencilLine,
  },
];

export function FreeStudyLanding() {
  return (
    <div className={styles.root} data-free-study-landing="">
      <header className={styles.hero} aria-label={FS_ARIA.hero}>
        <span className={styles.badge}>Free Studying</span>
        <h1 className={styles.title} id="fs-landing-title">
          Study your way. Scho follows.
        </h1>
        <p className={styles.subtitle} id="fs-landing-subtitle">
          Six tools. One conversation. Upload a PDF, snap a photo, draw on a
          whiteboard, speak naturally, or just chat — Scho meets you where you
          are.
        </p>
      </header>

      <nav
        className={styles.destinations}
        aria-label={FS_ARIA.destinations}
        onKeyDown={handleDestinationRailKeyDown}
      >
        {DESTINATIONS.map((dest, i) => {
          const Icon = dest.icon;
          return (
            <Link
              key={dest.id}
              href={dest.href}
              className={styles.dest}
              style={{ ["--delay" as string]: `${90 + i * 55}ms` }}
              aria-label={destinationLandingLabel(dest.id, dest.hint)}
            >
              <span className={styles.destIcon} aria-hidden="true">
                <Icon size={22} weight="duotone" />
              </span>
              <div className={styles.destCopy}>
                <span className={styles.destLabel}>{dest.label}</span>
                <span className={styles.destHint}>{dest.hint}</span>
              </div>
              <ArrowRight
                className={styles.destArrow}
                size={16}
                weight="bold"
                aria-hidden="true"
              />
            </Link>
          );
        })}
      </nav>

      <footer className={styles.foot}>
        <a
          href={LABS_HREF}
          className={styles.labsLink}
          {...PRODUCT_NEW_TAB_PROPS}
          title="Opens STEM Labs in a new tab"
        >
          <Flask size={14} weight="fill" aria-hidden="true" />
          Open STEM Labs
          <ArrowSquareOut
            className={styles.labsOpenCue}
            size={12}
            weight="bold"
            aria-hidden="true"
          />
        </a>
      </footer>
    </div>
  );
}