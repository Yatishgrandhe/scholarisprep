"use client";

import { useEffect, useMemo, useRef, useState } from "react";
import Link from "next/link";
import { animate } from "animejs";
import { AnimatedNumber } from "@/components/shared/AnimatedNumber";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import { buttonVariants } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Progress } from "@/components/ui/progress";
import { cn } from "@/lib/utils";
import styles from "./calculator.module.css";

// Approximate ACT national percentile ranks by composite (published ACT norms,
// used only to give the estimate context).
const PERCENTILES: Record<number, number> = {
  36: 100, 35: 99, 34: 99, 33: 98, 32: 97, 31: 95, 30: 93, 29: 90, 28: 88,
  27: 85, 26: 81, 25: 77, 24: 73, 23: 68, 22: 62, 21: 56, 20: 49, 19: 43,
  18: 37, 17: 31, 16: 25, 15: 18, 14: 11, 13: 6, 12: 2, 11: 1,
};

function percentileFor(score: number): number {
  if (score >= 36) return 100;
  if (score <= 10) return 1;
  return PERCENTILES[score] ?? 1;
}

function ordinal(n: number): string {
  const v = n % 100;
  const suffix =
    v >= 11 && v <= 13
      ? "th"
      : ["th", "st", "nd", "rd"][n % 10] ?? "th";
  return `${n}${suffix}`;
}

function bandFor(score: number): string {
  if (score >= 33) return "Top 1% — elite";
  if (score >= 30) return "Highly competitive";
  if (score >= 26) return "Above average";
  if (score >= 21) return "Around the national average";
  return "Building toward your goal";
}

type SectionKey = "english" | "math" | "reading" | "science";

const CORE_SECTIONS: {
  key: Exclude<SectionKey, "science">;
  label: string;
  max: number;
}[] = [
  { key: "english", label: "English", max: 75 },
  { key: "math", label: "Math", max: 60 },
  { key: "reading", label: "Reading", max: 40 },
];

const SCIENCE_SECTION = { key: "science" as const, label: "Science", max: 40 };

/**
 * Representative ACT raw-score → scale-score (1–36) conversion tables.
 *
 * Each ACT form is equated differently, so there is no single official chart.
 * These tables are a typical "averaged" conversion (aligned with published
 * PrepScholar / Princeton Review sample grids) and are used only to produce an
 * estimate. Values map a scale score to the MINIMUM number correct that earns
 * it; we pick the highest scale a raw score qualifies for.
 */
const SCALE_TABLES: Record<SectionKey, Record<number, number>> = {
  english: {
    36: 75, 35: 73, 34: 71, 33: 70, 32: 69, 31: 68, 30: 67, 29: 66, 28: 65,
    27: 63, 26: 61, 25: 59, 24: 57, 23: 54, 22: 51, 21: 48, 20: 45, 19: 42,
    18: 40, 17: 38, 16: 35, 15: 33, 14: 30, 13: 28, 12: 26, 11: 24, 10: 21,
    9: 18, 8: 16, 7: 14, 6: 12, 5: 9, 4: 7, 3: 5, 2: 3, 1: 0,
  },
  math: {
    36: 60, 35: 58, 34: 57, 33: 56, 32: 55, 31: 54, 30: 52, 29: 51, 28: 49,
    27: 47, 26: 44, 25: 41, 24: 38, 23: 36, 22: 34, 21: 33, 20: 31, 19: 30,
    18: 28, 17: 26, 16: 23, 15: 20, 14: 16, 13: 13, 12: 11, 11: 9, 10: 7,
    9: 6, 8: 5, 7: 4, 6: 3, 5: 2, 4: 1, 3: 1, 2: 1, 1: 0,
  },
  reading: {
    36: 40, 35: 39, 34: 38, 33: 37, 32: 36, 31: 35, 30: 34, 29: 33, 28: 32,
    27: 31, 26: 30, 25: 29, 24: 28, 23: 27, 22: 26, 21: 25, 20: 23, 19: 22,
    18: 20, 17: 19, 16: 17, 15: 15, 14: 13, 13: 11, 12: 9, 11: 8, 10: 7,
    9: 6, 8: 5, 7: 4, 6: 3, 5: 2, 4: 2, 3: 1, 2: 1, 1: 0,
  },
  science: {
    36: 40, 35: 39, 34: 38, 33: 37, 32: 36, 31: 35, 30: 34, 29: 33, 28: 32,
    27: 31, 26: 30, 25: 28, 24: 26, 23: 24, 22: 23, 21: 22, 20: 21, 19: 19,
    18: 17, 17: 16, 16: 14, 15: 13, 14: 12, 13: 11, 12: 10, 11: 9, 10: 8,
    9: 7, 8: 6, 7: 5, 6: 4, 5: 3, 4: 2, 3: 1, 2: 1, 1: 0,
  },
};

function scaleSection(key: SectionKey, correct: number): number {
  const table = SCALE_TABLES[key];
  for (let scale = 36; scale >= 1; scale -= 1) {
    if (correct >= table[scale]) return scale;
  }
  return 1;
}

export function ActScoreCalculator() {
  const [values, setValues] = useState<Record<SectionKey, number>>({
    english: 60,
    math: 45,
    reading: 30,
    science: 30,
  });
  // Science is optional on the enhanced ACT — off by default. It never affects
  // the Composite; it produces a separate Science score and a STEM score.
  const [includeScience, setIncludeScience] = useState(false);

  const reduced = useReducedMotion();
  const resultRef = useRef<HTMLDivElement>(null);

  // One-time entrance reveal of the results panel.
  useEffect(() => {
    if (reduced || !resultRef.current) return;
    animate(resultRef.current, {
      opacity: [0, 1],
      translateY: [16, 0],
      duration: 600,
      ease: "outExpo",
    });
  }, [reduced]);

  const setSection = (key: SectionKey, max: number, next: number) => {
    const safe = Number.isFinite(next) ? Math.round(next) : 0;
    const clamped = Math.min(max, Math.max(0, safe));
    setValues((v) => ({ ...v, [key]: clamped }));
  };

  const sectionScores = useMemo(
    () => ({
      english: scaleSection("english", values.english),
      math: scaleSection("math", values.math),
      reading: scaleSection("reading", values.reading),
      science: scaleSection("science", values.science),
    }),
    [values],
  );

  // Composite = average of English, Math, Reading only (rounded, halves up).
  const composite = useMemo(() => {
    const sum =
      sectionScores.english + sectionScores.math + sectionScores.reading;
    return Math.round(sum / 3);
  }, [sectionScores]);

  // STEM = average of Math and Science, shown only when Science is included.
  const stem = useMemo(
    () => Math.round((sectionScores.math + sectionScores.science) / 2),
    [sectionScores],
  );

  const renderField = (
    key: SectionKey,
    label: string,
    max: number,
  ) => {
    const value = values[key];
    const pct = (value / max) * 100;
    return (
      <div key={key} className={styles.field}>
        <label htmlFor={`act-${key}`} className={styles.fieldLabel}>
          {label}
        </label>
        <div className={styles.sliderRow}>
          <input
            id={`act-${key}`}
            type="range"
            className={styles.range}
            style={{ "--pct": `${pct}%` } as React.CSSProperties}
            min={0}
            max={max}
            value={value}
            onChange={(e) => setSection(key, max, Number(e.target.value))}
            aria-label={label}
          />
          <div className={styles.counter}>
            <input
              type="number"
              className={styles.numberBox}
              min={0}
              max={max}
              value={value}
              onChange={(e) => setSection(key, max, Number(e.target.value))}
              aria-label={`${label} correct answers`}
            />
            <span className={styles.counterMax}>/{max}</span>
          </div>
        </div>
      </div>
    );
  };

  return (
    <div className={styles.calculator}>
      <div className={styles.inputs}>
        {CORE_SECTIONS.map((s) => renderField(s.key, s.label, s.max))}

        <label className={styles.scienceToggle}>
          <input
            type="checkbox"
            className={styles.scienceCheckbox}
            checked={includeScience}
            onChange={(e) => setIncludeScience(e.target.checked)}
          />
          <span className={styles.scienceToggleText}>
            <span className={styles.scienceToggleTitle}>
              Include the optional Science section
            </span>
            <span className={styles.scienceToggleHint}>
              On the enhanced ACT, Science is optional and does not change your
              Composite — it adds a separate Science score and a STEM score.
            </span>
          </span>
        </label>

        {includeScience
          ? renderField(
              SCIENCE_SECTION.key,
              SCIENCE_SECTION.label,
              SCIENCE_SECTION.max,
            )
          : null}
      </div>

      <div className={styles.result} aria-live="polite" ref={resultRef}>
        <p className={styles.resultsHeading}>Results</p>

        <p className={styles.totalLabel}>Composite Score</p>
        <p className={styles.totalScore}>
          <AnimatedNumber value={composite} duration={600} />
        </p>
        <p className={styles.totalRange}>1 to 36 · average of English, Math &amp; Reading</p>

        <div className={styles.compositeMeta}>
          <Progress
            value={(composite / 36) * 100}
            className={styles.compositeBar}
            aria-label="Composite score out of 36"
          />
          <div className={styles.compositeBadges}>
            <Badge variant="secondary">
              ≈ {ordinal(percentileFor(composite))} percentile
            </Badge>
            <span className={styles.compositeBand}>{bandFor(composite)}</span>
          </div>
        </div>

        <div className={styles.divider} />

        <div className={styles.sectionRow}>
          <div className={styles.sectionInfo}>
            <p className={styles.sectionName}>English</p>
            <p className={styles.sectionRange}>1 to 36</p>
          </div>
          <p className={styles.sectionScore}>
            <AnimatedNumber value={sectionScores.english} />
          </p>
        </div>

        <div className={styles.sectionRow}>
          <div className={styles.sectionInfo}>
            <p className={styles.sectionName}>Math</p>
            <p className={styles.sectionRange}>1 to 36</p>
          </div>
          <p className={styles.sectionScore}>
            <AnimatedNumber value={sectionScores.math} />
          </p>
        </div>

        <div className={styles.sectionRow}>
          <div className={styles.sectionInfo}>
            <p className={styles.sectionName}>Reading</p>
            <p className={styles.sectionRange}>1 to 36</p>
          </div>
          <p className={styles.sectionScore}>
            <AnimatedNumber value={sectionScores.reading} />
          </p>
        </div>

        {includeScience ? (
          <>
            <div className={styles.sectionRow}>
              <div className={styles.sectionInfo}>
                <p className={styles.sectionName}>Science</p>
                <p className={styles.sectionRange}>1 to 36 · optional</p>
              </div>
              <p className={styles.sectionScore}>
                <AnimatedNumber value={sectionScores.science} />
              </p>
            </div>

            <div className={styles.sectionRow}>
              <div className={styles.sectionInfo}>
                <p className={styles.sectionName}>STEM</p>
                <p className={styles.sectionRange}>Math &amp; Science average</p>
              </div>
              <p className={styles.sectionScore}>
                <AnimatedNumber value={stem} />
              </p>
            </div>
          </>
        ) : null}

        <Link
          href="/auth/signup"
          className={cn(buttonVariants({ size: "lg" }), styles.cta)}
        >
          Get your real predicted score
        </Link>

        <p className={styles.disclaimer}>
          Estimates use a typical averaged conversion. Actual scores vary by test
          form. ACT® is a trademark of ACT, Inc., which is not affiliated with
          Scholaris.
        </p>
      </div>
    </div>
  );
}
