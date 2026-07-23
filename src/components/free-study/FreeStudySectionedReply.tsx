"use client";

import { SpeakerHigh, StopCircle } from "@phosphor-icons/react";
import { TutorMarkdown } from "@/components/tutor/TutorMarkdown";
import styles from "./free-study.module.css";

const SECTION_KEYS = [
  "Conceptual Insight",
  "Test-Hacker Strategy",
  "Socratic Pivot",
] as const;

type SectionKey = (typeof SECTION_KEYS)[number];

export type ParsedTutorSection = {
  key: SectionKey | "other";
  title: string;
  body: string;
};

/** Split Scho replies on ### Conceptual Insight / Test-Hacker / Socratic Pivot. */
export function parseFreeStudySections(content: string): ParsedTutorSection[] {
  const text = content.trim();
  if (!text) return [];

  const headingRe =
    /^#{1,3}\s*(Conceptual Insight|Test-Hacker Strategy|Socratic Pivot)\s*$/gim;
  const matches = [...text.matchAll(headingRe)];
  if (matches.length === 0) {
    return [{ key: "other", title: "Reply", body: text }];
  }

  const sections: ParsedTutorSection[] = [];
  const preamble = text.slice(0, matches[0]!.index).trim();
  if (preamble) {
    sections.push({ key: "other", title: "Reply", body: preamble });
  }

  for (let i = 0; i < matches.length; i += 1) {
    const m = matches[i]!;
    const title = m[1] as SectionKey;
    const start = (m.index ?? 0) + m[0].length;
    const end = i + 1 < matches.length ? matches[i + 1]!.index! : text.length;
    const body = text.slice(start, end).trim();
    sections.push({ key: title, title, body });
  }
  return sections;
}

export function FreeStudySectionedReply({
  content,
  onPlay,
  onStop,
  playing,
}: {
  content: string;
  onPlay?: (text: string) => void;
  onStop?: () => void;
  playing?: boolean;
}) {
  const sections = parseFreeStudySections(content);
  const speakText = sections
    .filter((s) => s.key !== "other" || sections.length === 1)
    .map((s) => s.body)
    .join(" ");

  return (
    <div className={styles.sectionedReply}>
      {onPlay || onStop ? (
        <div className={styles.replyToolbar}>
          {playing && onStop ? (
            <button
              type="button"
              className={styles.stopBtn}
              onClick={onStop}
            >
              <StopCircle size={16} weight="fill" aria-hidden />
              Stop
            </button>
          ) : onPlay ? (
            <button
              type="button"
              className={styles.playBtn}
              onClick={() => onPlay(speakText || content)}
              disabled={playing}
            >
              <SpeakerHigh size={16} weight="fill" aria-hidden />
              {playing ? "Playing…" : "Play with Kokoro"}
            </button>
          ) : null}
        </div>
      ) : null}
      {sections.map((section, idx) => (
        <article
          key={`${section.key}-${idx}`}
          className={`${styles.sectionCard} ${
            section.key === "Conceptual Insight"
              ? styles.sectionInsight
              : section.key === "Test-Hacker Strategy"
                ? styles.sectionStrategy
                : section.key === "Socratic Pivot"
                  ? styles.sectionPivot
                  : styles.sectionOther
          }`}
        >
          <h3 className={styles.sectionTitle}>{section.title}</h3>
          <div className={styles.sectionBody}>
            <TutorMarkdown content={section.body} />
          </div>
        </article>
      ))}
    </div>
  );
}
