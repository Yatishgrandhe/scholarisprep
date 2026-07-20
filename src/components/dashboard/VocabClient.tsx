"use client";

import { useMemo, useState } from "react";
import Link from "next/link";
import { BookBookmark, MagnifyingGlass } from "@phosphor-icons/react";
import styles from "./vocab.module.css";

const WORDS = [
  { word: "Ambiguous", def: "Open to more than one interpretation", example: "The prompt was ambiguous." },
  { word: "Concise", def: "Giving much information in few words", example: "Write a concise summary." },
  { word: "Diligent", def: "Showing care in one's work", example: "She was diligent in her prep." },
  { word: "Ephemeral", def: "Lasting for a very short time", example: "Fame can be ephemeral." },
  { word: "Fortuitous", def: "Happening by chance in a lucky way", example: "A fortuitous discovery." },
  { word: "Gregarious", def: "Fond of company; sociable", example: "A gregarious student." },
  { word: "Hypothesis", def: "A proposed explanation to be tested", example: "Test your hypothesis." },
  { word: "Impartial", def: "Treating all rivals equally; fair", example: "An impartial judge." },
];

export function VocabClient() {
  const [query, setQuery] = useState("");
  const [saved, setSaved] = useState<Set<string>>(new Set());

  const filtered = useMemo(() => {
    const q = query.trim().toLowerCase();
    if (!q) return WORDS;
    return WORDS.filter(
      (w) => w.word.toLowerCase().includes(q) || w.def.toLowerCase().includes(q),
    );
  }, [query]);

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <span className={styles.headerIcon} aria-hidden>
          <BookBookmark size={22} weight="fill" />
        </span>
        <div className={styles.headerText}>
          <h1 className={styles.title}>Word Bank</h1>
          <p className={styles.sub}>
            High-frequency words for Reading &amp; Writing, flashcards coming
            soon.
          </p>
        </div>
        <Link
          href="/dashboard/practice/bank?module=en"
          className={styles.headerAction}
        >
          Practice RW
        </Link>
      </header>
      <div className={styles.searchWrap}>
        <MagnifyingGlass
          className={styles.searchIcon}
          size={18}
          weight="bold"
          aria-hidden
        />
        <input
          className={styles.search}
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder="Search words…"
          aria-label="Search vocabulary"
        />
      </div>
      <ul className={styles.listCard}>
        {filtered.map((item) => (
          <li key={item.word} className={styles.row}>
            <div className={styles.rowTop}>
              <h2 className={styles.word}>{item.word}</h2>
              <button
                type="button"
                className={saved.has(item.word) ? styles.savedBtn : styles.saveBtn}
                onClick={() =>
                  setSaved((prev) => {
                    const next = new Set(prev);
                    if (next.has(item.word)) next.delete(item.word);
                    else next.add(item.word);
                    return next;
                  })
                }
              >
                {saved.has(item.word) ? "Saved" : "Save"}
              </button>
            </div>
            <p className={styles.def}>{item.def}</p>
            <p className={styles.example}>{item.example}</p>
          </li>
        ))}
      </ul>
    </div>
  );
}
