"use client";

import { useMemo, useState } from "react";
import Link from "next/link";
import { buttonVariants } from "@/components/ui/button";
import { cn } from "@/lib/utils";
import styles from "./calculator.module.css";

type ModuleKey = "rw1" | "rw2" | "math1" | "math2";

const MODULES: {
  key: ModuleKey;
  label: string;
  max: number;
}[] = [
  { key: "rw1", label: "Reading and Writing Module 1", max: 27 },
  { key: "rw2", label: "Reading and Writing Module 2", max: 27 },
  { key: "math1", label: "Math Module 1", max: 22 },
  { key: "math2", label: "Math Module 2", max: 22 },
];

const RW_TOTAL = 54;
const MATH_TOTAL = 44;

/**
 * Approximate Digital SAT curve: 200 to 800 per section, slightly convex so
 * the last few questions are worth more. Mirrors published conversion
 * tables without claiming official accuracy.
 */
function scaleSection(correct: number, total: number): number {
  const ratio = Math.min(1, Math.max(0, correct / total));
  const scaled = 200 + 600 * Math.pow(ratio, 0.92);
  return Math.round(scaled / 10) * 10;
}

export function ScoreCalculator() {
  const [values, setValues] = useState<Record<ModuleKey, number>>({
    rw1: 25,
    rw2: 11,
    math1: 22,
    math2: 21,
  });

  const setModule = (key: ModuleKey, max: number, next: number) => {
    const safe = Number.isFinite(next) ? Math.round(next) : 0;
    const clamped = Math.min(max, Math.max(0, safe));
    setValues((v) => ({ ...v, [key]: clamped }));
  };

  const rwScore = useMemo(
    () => scaleSection(values.rw1 + values.rw2, RW_TOTAL),
    [values.rw1, values.rw2],
  );
  const mathScore = useMemo(
    () => scaleSection(values.math1 + values.math2, MATH_TOTAL),
    [values.math1, values.math2],
  );
  const total = rwScore + mathScore;

  return (
    <div className={styles.calculator}>
      <div className={styles.inputs}>
        {MODULES.map(({ key, label, max }) => {
          const value = values[key];
          const pct = (value / max) * 100;
          return (
            <div key={key} className={styles.field}>
              <label htmlFor={`mod-${key}`} className={styles.fieldLabel}>
                {label}
              </label>
              <div className={styles.sliderRow}>
                <input
                  id={`mod-${key}`}
                  type="range"
                  className={styles.range}
                  style={{ "--pct": `${pct}%` } as React.CSSProperties}
                  min={0}
                  max={max}
                  value={value}
                  onChange={(e) => setModule(key, max, Number(e.target.value))}
                  aria-label={label}
                />
                <div className={styles.counter}>
                  <input
                    type="number"
                    className={styles.numberBox}
                    min={0}
                    max={max}
                    value={value}
                    onChange={(e) =>
                      setModule(key, max, Number(e.target.value))
                    }
                    aria-label={`${label} correct answers`}
                  />
                  <span className={styles.counterMax}>/{max}</span>
                </div>
              </div>
            </div>
          );
        })}
      </div>

      <div className={styles.result} aria-live="polite">
        <p className={styles.resultsHeading}>Results</p>

        <p className={styles.totalLabel}>Total Score</p>
        <p className={styles.totalScore}>{total}</p>
        <p className={styles.totalRange}>400 to 1600</p>

        <div className={styles.divider} />

        <div className={styles.sectionRow}>
          <div className={styles.sectionInfo}>
            <p className={styles.sectionName}>Reading &amp; Writing Score</p>
            <p className={styles.sectionRange}>200 to 800</p>
          </div>
          <p className={styles.sectionScore}>{rwScore}</p>
        </div>

        <div className={styles.sectionRow}>
          <div className={styles.sectionInfo}>
            <p className={styles.sectionName}>Math Score</p>
            <p className={styles.sectionRange}>200 to 800</p>
          </div>
          <p className={styles.sectionScore}>{mathScore}</p>
        </div>

        <Link
          href="/auth/signup"
          className={cn(buttonVariants({ size: "lg" }), styles.cta)}
        >
          Get your real predicted score
        </Link>

        <p className={styles.disclaimer}>
          Estimates use a typical conversion curve. Actual scores vary by test
          form. SAT® is a trademark of the College Board, which is not
          affiliated with Scholaris.
        </p>
      </div>
    </div>
  );
}
