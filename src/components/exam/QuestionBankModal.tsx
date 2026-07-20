"use client";

import {
  useCallback,
  useEffect,
  useLayoutEffect,
  useMemo,
  useRef,
  useState,
} from "react";
import { createPortal } from "react-dom";
import {
  BookmarkSimple,
  CaretDown,
  Check,
  ListBullets,
  X,
} from "@phosphor-icons/react";
import type { Question } from "@/components/question/QuestionInterface";
import type { AttemptRecord } from "@/stores/examStore";
import {
  groupAnsweredIndices,
  resolveQuestionBankDifficulty,
  resolveQuestionBankStatus,
  type QuestionBankStatus,
} from "@/lib/practice/questionBankGrid";
import styles from "./QuestionBankModal.module.css";

type DifficultyMeta = {
  difficulty?: string | null;
  challengedProblem?: boolean;
};

type QuestionBankModalProps = {
  questions: Question[];
  /** When session has more ids than loaded question bodies. */
  totalCount?: number;
  /**
   * Full session id order (aligned with cell indices). Used with
   * `difficultyById` so unhydrated cells still get DB difficulty colors.
   */
  questionOrder?: string[];
  /** Lightweight difficulty map keyed by question id (from DB). */
  difficultyById?: Record<string, DifficultyMeta>;
  currentIndex: number;
  attempts: Record<string, AttemptRecord>;
  flaggedIds: string[];
  priorIncorrectIds?: ReadonlySet<string>;
  pastIncorrectIds?: ReadonlySet<string>;
  onJump: (index: number) => void;
  /** When true, render only the opener button (dropdown-style). */
  compactTrigger?: boolean;
};

function StatusBadge({ status }: { status: QuestionBankStatus }) {
  if (status === "unanswered") return null;
  if (status === "correct") {
    return (
      <span className={`${styles.statusBadge} ${styles.statusCorrect}`} aria-hidden>
        <Check size={12} weight="bold" />
      </span>
    );
  }
  if (status === "incorrect") {
    return (
      <span className={`${styles.statusBadge} ${styles.statusIncorrect}`} aria-hidden>
        <X size={12} weight="bold" />
      </span>
    );
  }
  if (status === "review") {
    return (
      <span className={`${styles.statusBadge} ${styles.statusReview}`} aria-hidden>
        <BookmarkSimple size={11} weight="fill" />
      </span>
    );
  }
  return (
    <span className={`${styles.statusBadge} ${styles.statusCorrectAfter}`} aria-hidden>
      <span style={{ width: 6, height: 6, borderRadius: "50%", background: "currentColor" }} />
    </span>
  );
}

function difficultyClass(
  difficulty: ReturnType<typeof resolveQuestionBankDifficulty>,
): string {
  if (difficulty === "easy") return styles.diffEasy;
  if (difficulty === "hard") return styles.diffHard;
  if (difficulty === "challenge") return styles.diffChallenge;
  return styles.diffMedium;
}

const MOBILE_SHEET_BREAKPOINT = 520;
const PANEL_GAP = 8;
const PANEL_MAX_WIDTH = 420;

type PanelPlacement =
  | { mode: "anchored"; bottom: number; left: number; width: number }
  | { mode: "sheet" };

function computePanelPlacement(
  trigger: HTMLElement,
  panelWidth: number,
): PanelPlacement {
  if (window.innerWidth <= MOBILE_SHEET_BREAKPOINT) {
    return { mode: "sheet" };
  }

  const rect = trigger.getBoundingClientRect();
  const width = Math.min(panelWidth, window.innerWidth - 24);
  let left = rect.left;
  if (left + width > window.innerWidth - 12) {
    left = window.innerWidth - width - 12;
  }
  left = Math.max(12, left);

  const bottom = window.innerHeight - rect.top + PANEL_GAP;
  return { mode: "anchored", bottom, left, width };
}

export function QuestionBankModal({
  questions,
  totalCount,
  questionOrder,
  difficultyById,
  currentIndex,
  attempts,
  flaggedIds,
  priorIncorrectIds = new Set(),
  pastIncorrectIds,
  onJump,
  compactTrigger = true,
}: QuestionBankModalProps) {
  const [open, setOpen] = useState(false);
  const [groupAnswered, setGroupAnswered] = useState(false);
  const [placement, setPlacement] = useState<PanelPlacement | null>(null);
  const triggerRef = useRef<HTMLButtonElement>(null);
  const panelRef = useRef<HTMLDivElement>(null);

  const close = useCallback(() => setOpen(false), []);

  const openPanel = useCallback(() => {
    const trigger = triggerRef.current;
    if (trigger) {
      setPlacement(computePanelPlacement(trigger, PANEL_MAX_WIDTH));
    }
    setOpen(true);
  }, []);

  const togglePanel = useCallback(() => {
    if (open) {
      close();
      return;
    }
    openPanel();
  }, [open, close, openPanel]);

  const updatePlacement = useCallback(() => {
    const trigger = triggerRef.current;
    if (!trigger) return;
    setPlacement(computePanelPlacement(trigger, PANEL_MAX_WIDTH));
  }, []);

  useLayoutEffect(() => {
    if (!open) {
      setPlacement(null);
      return;
    }
    updatePlacement();
    window.addEventListener("resize", updatePlacement);
    window.addEventListener("scroll", updatePlacement, true);
    return () => {
      window.removeEventListener("resize", updatePlacement);
      window.removeEventListener("scroll", updatePlacement, true);
    };
  }, [open, updatePlacement]);

  useEffect(() => {
    if (!open) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") close();
    };
    document.addEventListener("keydown", onKey);
    return () => document.removeEventListener("keydown", onKey);
  }, [open, close]);

  const count = totalCount ?? questions.length;

  const displayIndices = useMemo(
    () =>
      groupAnsweredIndices(
        count,
        attempts,
        questions,
        groupAnswered,
      ),
    [count, questions, attempts, groupAnswered],
  );

  const triggerLabel = `Question ${currentIndex + 1} of ${count}`;

  const panelStyle =
    placement?.mode === "anchored"
      ? {
          bottom: placement.bottom,
          left: placement.left,
          width: placement.width,
        }
      : undefined;

  const panel = open ? (
    <>
      <div
        className={styles.overlay}
        role="presentation"
        onMouseDown={(e) => {
          if (e.target === e.currentTarget) close();
        }}
      />
      <div
        ref={panelRef}
        className={`${styles.modal} ${placement?.mode === "sheet" ? styles.modalSheet : ""}`}
        style={panelStyle}
        role="dialog"
        aria-modal="true"
        aria-label="Question Bank"
      >
        <div className={styles.header}>
          <h2 className={styles.title}>Question Bank</h2>
          <div className={styles.headerActions}>
            <button
              type="button"
              className={`${styles.groupBtn} ${groupAnswered ? styles.groupBtnActive : ""}`}
              onClick={() => setGroupAnswered((v) => !v)}
              aria-pressed={groupAnswered}
            >
              <ListBullets size={14} aria-hidden />
              Group Answered
            </button>
            <button
              type="button"
              className={styles.closeBtn}
              onClick={close}
              aria-label="Close question bank"
            >
              <X size={18} weight="bold" />
            </button>
          </div>
        </div>

        <div className={styles.legend} aria-label="Answer status legend">
          <span className={styles.legendItem}>
            <span className={`${styles.legendIcon} ${styles.legendCorrect}`}>
              <Check size={11} weight="bold" />
            </span>
            Correct
          </span>
          <span className={styles.legendItem}>
            <span className={`${styles.legendIcon} ${styles.legendIncorrect}`}>
              <X size={11} weight="bold" />
            </span>
            Incorrect
          </span>
          <span className={styles.legendItem}>
            <span className={`${styles.legendIcon} ${styles.legendReview}`}>
              <BookmarkSimple size={10} weight="fill" />
            </span>
            For Review
          </span>
          <span className={styles.legendItem}>
            <span className={`${styles.legendIcon} ${styles.legendCorrectAfter}`}>
              <span
                style={{
                  width: 5,
                  height: 5,
                  borderRadius: "50%",
                  background: "currentColor",
                }}
              />
            </span>
            Correct (incorrect attempts)
          </span>
        </div>

        <div className={styles.body}>
          <div className={styles.grid} role="listbox" aria-label="Jump to question">
            {displayIndices.map((index) => {
              const q = questions[index];
              const orderId = questionOrder?.[index] ?? q?.id;
              const meta =
                (orderId ? difficultyById?.[orderId] : undefined) ?? undefined;
              const num = index + 1;
              const isCurrent = index === currentIndex;
              // Prefer hydrated body; fall back to lightweight DB difficulty
              // meta so cells past the loaded prefix still show real colors.
              const diff = resolveQuestionBankDifficulty(q ?? meta ?? {});
              // Questions past the loaded prefix aren't hydrated yet — still
              // render a clickable cell so every question in the set can be
              // jumped to; the page hydrates the gap on navigation.
              if (!q) {
                return (
                  <button
                    key={orderId ?? `pending-${index}`}
                    type="button"
                    role="option"
                    aria-selected={isCurrent}
                    aria-label={`Question ${num}, ${diff}${meta ? "" : ", loading"}${isCurrent ? ", current" : ""}`}
                    className={`${styles.cell} ${difficultyClass(diff)} ${isCurrent ? styles.cellCurrent : ""}`}
                    style={meta ? undefined : { opacity: 0.5 }}
                    onClick={() => {
                      onJump(index);
                      close();
                    }}
                  >
                    {num}
                  </button>
                );
              }
              const status = resolveQuestionBankStatus(
                q.id,
                attempts,
                flaggedIds,
                priorIncorrectIds,
                pastIncorrectIds,
              );
              return (
                <button
                  key={q.id}
                  type="button"
                  role="option"
                  aria-selected={isCurrent}
                  aria-label={`Question ${num}, ${diff}${isCurrent ? ", current" : ""}`}
                  className={`${styles.cell} ${difficultyClass(diff)} ${isCurrent ? styles.cellCurrent : ""}`}
                  onClick={() => {
                    onJump(index);
                    close();
                  }}
                >
                  {num}
                  <StatusBadge status={status} />
                </button>
              );
            })}
          </div>
        </div>
      </div>
    </>
  ) : null;

  return (
    <div className={styles.wrap}>
      <button
        ref={triggerRef}
        type="button"
        className={styles.trigger}
        onClick={togglePanel}
        aria-haspopup="dialog"
        aria-expanded={open}
      >
        {compactTrigger ? (
          <>
            {triggerLabel}
            <CaretDown size={14} weight="bold" aria-hidden />
          </>
        ) : (
          <>
            <ListBullets size={16} aria-hidden />
            Question Bank
          </>
        )}
      </button>

      {open && typeof document !== "undefined"
        ? createPortal(panel, document.body)
        : null}
    </div>
  );
}
