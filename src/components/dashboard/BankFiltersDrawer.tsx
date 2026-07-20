"use client";

import { useEffect, useState } from "react";
import { X } from "@phosphor-icons/react";
import styles from "./BankFiltersDrawer.module.css";

export type BankFilterState = {
  difficulty: "all" | "easy" | "medium" | "hard";
  questionSet: "all" | "official" | "platform";
  completed: "all" | "done" | "not_done";
  result: "all" | "correct" | "incorrect";
  saved: "all" | "saved_only";
  timeSpent: "all" | "under_30" | "30_60" | "over_60";
};

type BankFiltersDrawerProps = {
  open: boolean;
  onClose: () => void;
  filters: BankFilterState;
  onChange: (next: BankFilterState) => void;
};

export function BankFiltersDrawer({
  open,
  onClose,
  filters,
  onChange,
}: BankFiltersDrawerProps) {
  const [local, setLocal] = useState(filters);

  useEffect(() => {
    if (open) setLocal(filters);
  }, [open, filters]);

  if (!open) return null;

  return (
    <div className={styles.overlay} role="dialog" aria-modal="true">
      <div className={styles.drawer}>
        <div className={styles.header}>
          <h2>Filters</h2>
          <button type="button" className={styles.close} onClick={onClose} aria-label="Close">
            <X size={18} weight="bold" />
          </button>
        </div>
        <div className={styles.body}>
          <label className={styles.field}>
            <span>Difficulty</span>
            <select
              value={local.difficulty}
              onChange={(e) =>
                setLocal((f) => ({
                  ...f,
                  difficulty: e.target.value as BankFilterState["difficulty"],
                }))
              }
            >
              <option value="all">All</option>
              <option value="easy">Easy</option>
              <option value="medium">Medium</option>
              <option value="hard">Hard</option>
            </select>
          </label>
          <label className={styles.field}>
            <span>Question set</span>
            <select
              value={local.questionSet}
              onChange={(e) =>
                setLocal((f) => ({
                  ...f,
                  questionSet: e.target.value as BankFilterState["questionSet"],
                }))
              }
            >
              <option value="all">All questions</option>
              <option value="platform">Platform bank</option>
              <option value="official">Official style</option>
            </select>
          </label>
          <label className={styles.field}>
            <span>Completed</span>
            <select
              value={local.completed}
              onChange={(e) =>
                setLocal((f) => ({
                  ...f,
                  completed: e.target.value as BankFilterState["completed"],
                }))
              }
            >
              <option value="all">All</option>
              <option value="done">Completed</option>
              <option value="not_done">Not completed</option>
            </select>
          </label>
          <label className={styles.field}>
            <span>Result</span>
            <select
              value={local.result}
              onChange={(e) =>
                setLocal((f) => ({
                  ...f,
                  result: e.target.value as BankFilterState["result"],
                }))
              }
            >
              <option value="all">All</option>
              <option value="correct">Correct only</option>
              <option value="incorrect">Incorrect only</option>
            </select>
          </label>
          <label className={styles.field}>
            <span>Saved</span>
            <select
              value={local.saved}
              onChange={(e) =>
                setLocal((f) => ({
                  ...f,
                  saved: e.target.value as BankFilterState["saved"],
                }))
              }
            >
              <option value="all">All questions</option>
              <option value="saved_only">Saved only</option>
            </select>
          </label>
          <label className={styles.field}>
            <span>Time spent (previous attempts)</span>
            <select
              value={local.timeSpent}
              onChange={(e) =>
                setLocal((f) => ({
                  ...f,
                  timeSpent: e.target.value as BankFilterState["timeSpent"],
                }))
              }
            >
              <option value="all">Any time</option>
              <option value="under_30">Under 30s</option>
              <option value="30_60">30–60s</option>
              <option value="over_60">Over 60s</option>
            </select>
          </label>
        </div>
        <div className={styles.footer}>
          <button
            type="button"
            className={styles.reset}
            onClick={() =>
              setLocal({
                difficulty: "all",
                questionSet: "all",
                completed: "all",
                result: "all",
                saved: "all",
                timeSpent: "all",
              })
            }
          >
            Reset
          </button>
          <button
            type="button"
            className={styles.apply}
            onClick={() => {
              onChange(local);
              onClose();
            }}
          >
            Apply filters
          </button>
        </div>
      </div>
    </div>
  );
}
