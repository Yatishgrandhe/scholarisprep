"use client";

import {
  ChatsCircle,
  FilePdf,
  Microphone,
  Notebook,
  PencilLine,
} from "@phosphor-icons/react";
import Link from "next/link";
import { FreeStudyLayout } from "./FreeStudyLayout";
import styles from "./free-study-landing.module.css";

const DESTINATIONS = [
  {
    mode: "tutor",
    label: "Tutor",
    description: "Chat with Scho about any subject",
    icon: ChatsCircle,
    href: "/dashboard/free-study?dest=tutor",
  },
  {
    mode: "pdf",
    label: "PDF",
    description: "Upload a PDF, extract text, ask questions",
    icon: FilePdf,
    href: "/dashboard/free-study?dest=pdf",
  },
  {
    mode: "voice",
    label: "Voice",
    description: "Speak your question, get answers",
    icon: Microphone,
    href: "/dashboard/free-study?dest=voice",
  },
  {
    mode: "notes",
    label: "Notes",
    description: "Write notes, attach images, get help",
    icon: Notebook,
    href: "/dashboard/free-study?dest=notes",
  },
  {
    mode: "whiteboard",
    label: "Whiteboard",
    description: "Draw diagrams and equations",
    icon: PencilLine,
    href: "/dashboard/whiteboard",
    external: true,
  },
] as const;

export function FreeStudyLanding() {
  return (
    <FreeStudyLayout>
      <div className={styles.wrapper}>
        <div className={styles.heading}>
          <h1 className={styles.title}>How would you like to study?</h1>
          <p className={styles.subtitle}>
            Pick a mode to get started. You can switch anytime.
          </p>
        </div>
        <nav className={styles.grid} aria-label="Study modes">
          {DESTINATIONS.map((d) => {
            const Icon = d.icon;
            return (
              <Link
                key={d.mode}
                href={d.href}
                className={styles.card}
                {...(d.external ? { target: "_blank", rel: "noopener noreferrer" } : {})}
              >
                <div className={styles.iconWrap}>
                  <Icon size={28} weight="duotone" aria-hidden />
                </div>
                <div className={styles.cardBody}>
                  <h2 className={styles.cardTitle}>{d.label}</h2>
                  <p className={styles.cardDesc}>{d.description}</p>
                </div>
                {d.external ? (
                  <span className={styles.externalBadge}>New tab</span>
                ) : null}
              </Link>
            );
          })}
        </nav>
      </div>
    </FreeStudyLayout>
  );
}
