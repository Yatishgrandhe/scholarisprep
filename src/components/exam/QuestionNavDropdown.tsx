"use client";

import { useState, useRef, useEffect } from "react";
import { CaretDown } from "@phosphor-icons/react";
import styles from "./QuestionNavDropdown.module.css";

type QuestionNavDropdownProps = {
  total: number;
  current: number;
  answered: Set<number>;
  flagged: Set<number>;
  onJump: (index: number) => void;
};

export function QuestionNavDropdown({
  total,
  current,
  answered,
  flagged,
  onJump,
}: QuestionNavDropdownProps) {
  const [open, setOpen] = useState(false);
  const wrapRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (!open) return;
    const onPointerDown = (e: MouseEvent) => {
      if (!wrapRef.current?.contains(e.target as Node)) setOpen(false);
    };
    document.addEventListener("mousedown", onPointerDown);
    return () => document.removeEventListener("mousedown", onPointerDown);
  }, [open]);

  return (
    <div className={styles.wrap} ref={wrapRef}>
      <button
        type="button"
        className={styles.trigger}
        onClick={() => setOpen((v) => !v)}
        aria-expanded={open}
        aria-haspopup="listbox"
      >
        Question {current} of {total}
        <CaretDown size={14} weight="bold" aria-hidden />
      </button>
      {open ? (
        <div className={styles.menu} role="listbox" aria-label="Jump to question">
          {Array.from({ length: total }, (_, i) => {
            const num = i + 1;
            const active = num === current;
            const done = answered.has(num);
            const flag = flagged.has(num);
            return (
              <button
                key={num}
                type="button"
                role="option"
                aria-selected={active}
                className={`${styles.item} ${active ? styles.itemActive : ""} ${done ? styles.itemDone : ""} ${flag ? styles.itemFlagged : ""}`}
                onClick={() => {
                  onJump(i);
                  setOpen(false);
                }}
              >
                {num}
              </button>
            );
          })}
        </div>
      ) : null}
    </div>
  );
}
