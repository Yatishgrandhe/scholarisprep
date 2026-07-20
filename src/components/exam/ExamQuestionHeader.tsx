"use client";

import Link from "next/link";
import { BookmarkSimple, Flag, NotePencil, WarningCircle } from "@phosphor-icons/react";
import { DifficultyBadge } from "@/components/question/DifficultyBadge";
import styles from "./ExamQuestionHeader.module.css";

type ExamQuestionHeaderProps = {
  questionNumber: number;
  isFlagged: boolean;
  eliminateMode: boolean;
  hasNote?: boolean;
  onFlag: () => void;
  onToggleEliminate: () => void;
  onAddNote: () => void;
  questionId: string;
  /** Hide strikeout/eliminate (FRQ / short-answer). */
  showEliminate?: boolean;
  /** Bookmark / save for later review. */
  isSaved?: boolean;
  onToggleSave?: () => void;
  saveDisabled?: boolean;
  /** DB `questions.difficulty` for practice / rush chrome. */
  difficulty?: string | null;
  challenged?: boolean;
};

export function ExamQuestionHeader({
  questionNumber,
  isFlagged,
  eliminateMode,
  hasNote = false,
  onFlag,
  onToggleEliminate,
  onAddNote,
  questionId,
  showEliminate = true,
  isSaved = false,
  onToggleSave,
  saveDisabled = false,
  difficulty,
  challenged = false,
}: ExamQuestionHeaderProps) {
  return (
    <div className={styles.header}>
      <div className={styles.left}>
        <span className={styles.qNumber} aria-hidden>
          {questionNumber}
        </span>
        {difficulty ? (
          <DifficultyBadge
            difficulty={difficulty}
            challenged={challenged}
            size="sm"
            className={styles.diffBadge}
          />
        ) : null}
        <button
          type="button"
          className={`${styles.markReview} ${isFlagged ? styles.markReviewActive : ""}`}
          onClick={onFlag}
          aria-pressed={isFlagged}
          aria-label="Mark for Review"
        >
          <Flag size={16} weight={isFlagged ? "fill" : "regular"} aria-hidden />
          <span className={styles.markReviewLabel}>Mark for Review</span>
        </button>
      </div>
      <div className={styles.right}>
        {onToggleSave ? (
          <button
            type="button"
            className={`${styles.iconAction} ${isSaved ? styles.iconActionActive : ""}`}
            onClick={onToggleSave}
            disabled={saveDisabled}
            aria-label={isSaved ? "Unsave question" : "Save question"}
            aria-pressed={isSaved}
            title={isSaved ? "Saved" : "Save"}
          >
            <BookmarkSimple
              size={18}
              weight={isSaved ? "fill" : "regular"}
              aria-hidden
            />
          </button>
        ) : null}
        <button
          type="button"
          className={`${styles.iconAction} ${hasNote ? styles.iconActionActive : ""}`}
          onClick={onAddNote}
          aria-label="Notes"
          title="Notes"
        >
          <NotePencil size={18} weight={hasNote ? "fill" : "regular"} aria-hidden />
        </button>
        <Link
          href={`/dashboard/feedback?type=question&q=${questionId}`}
          className={styles.iconAction}
          aria-label="Report question"
          title="Report"
        >
          <WarningCircle size={18} aria-hidden />
        </Link>
        {showEliminate ? (
          <button
            type="button"
            className={`${styles.strikeoutBtn} ${eliminateMode ? styles.strikeoutBtnActive : ""}`}
            onClick={onToggleEliminate}
            aria-pressed={eliminateMode}
            aria-label="Strikeout mode"
            title="Strikeout"
          >
            <span className={styles.strikeLetter}>S</span>
          </button>
        ) : null}
      </div>
    </div>
  );
}
