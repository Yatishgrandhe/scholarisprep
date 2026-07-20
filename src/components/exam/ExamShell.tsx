"use client";

import { useState, useRef, useEffect } from "react";
import { useTheme } from "next-themes";
import {
  ArrowLeft,
  CaretDown,
  Pause,
  Play,
  Highlighter,
  Calculator,
  FileText,
  Flame,
  Circle,
} from "@phosphor-icons/react";
import { DesmosCalculator } from "@/components/calculator/DesmosCalculator";
import { ExamShellMoreMenu } from "@/components/exam/ExamShellMoreMenu";
import { MathReferenceSheet } from "@/components/exam/MathReferenceSheet";
import { PauseDialog } from "@/components/exam/PauseDialog";
import { getShowPauseDialog } from "@/lib/dashboard/userPreferences";
import {
  DEFAULT_CALCULATOR_LAYOUT,
  type CalculatorLayout,
} from "@/lib/desmos/calculatorAccess";
import type { DesmosCalculatorType } from "@/lib/desmos/loadDesmos";
import { showExamStemTools } from "@/lib/exam/referenceSheets";
import styles from "./ExamShell.module.css";

export type ExamShellProps = {
  section: "reading_writing" | "math";
  /** Drives formula / command-term reference sheet content (SAT vs AP/IB STEM). */
  examType?: string | null;
  timerLabel: string;
  questionNumber: number;
  totalQuestions: number;
  children: React.ReactNode;
  bottomBar: React.ReactNode;
  /** Optional left HUD rail (used by Question Rush sessions). */
  leftRail?: React.ReactNode;
  /** Optional stats cluster shown in the top bar (used by Question Rush). */
  headerExtras?: React.ReactNode;
  paused?: boolean;
  onPauseChange?: (paused: boolean) => void;
  onEndSession?: () => void;
  onGoBack?: () => void;
  onBugReport?: () => void;
  hideStimulus?: boolean;
  onHideStimulusChange?: (hidden: boolean) => void;
  highlighterEnabled?: boolean;
  onHighlighterChange?: (enabled: boolean) => void;
  timerHidden?: boolean;
  onTimerHiddenChange?: (hidden: boolean) => void;
  streakCount?: number;
  orbCount?: number;
  /** When false, hide Calculator even if stem tools / reference are shown. */
  canUseCalculator?: boolean;
  calculatorType?: DesmosCalculatorType;
};

export function ExamShell({
  section,
  examType = null,
  timerLabel,
  children,
  bottomBar,
  leftRail,
  headerExtras,
  paused = false,
  onPauseChange,
  onEndSession,
  onGoBack,
  onBugReport,
  hideStimulus = false,
  onHideStimulusChange,
  highlighterEnabled = false,
  onHighlighterChange,
  timerHidden = false,
  onTimerHiddenChange,
  streakCount = 0,
  orbCount = 0,
  canUseCalculator = true,
  calculatorType = "graphing",
}: ExamShellProps) {
  const { setTheme, resolvedTheme } = useTheme();
  const showStemTools = showExamStemTools(section, examType);
  const showCalculator = showStemTools && canUseCalculator;
  const [calculatorOpen, setCalculatorOpen] = useState(false);
  const [referenceOpen, setReferenceOpen] = useState(false);
  const [directionsOpen, setDirectionsOpen] = useState(false);
  const [calcLayout, setCalcLayout] = useState<CalculatorLayout>(
    DEFAULT_CALCULATOR_LAYOUT,
  );
  const directionsRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (!directionsOpen) return;
    const onPointerDown = (e: MouseEvent) => {
      if (!directionsRef.current?.contains(e.target as Node)) {
        setDirectionsOpen(false);
      }
    };
    document.addEventListener("mousedown", onPointerDown);
    return () => document.removeEventListener("mousedown", onPointerDown);
  }, [directionsOpen]);

  useEffect(() => {
    if (!showCalculator && calculatorOpen) {
      setCalculatorOpen(false);
    }
  }, [showCalculator, calculatorOpen]);

  const handlePause = () => {
    if (getShowPauseDialog()) onPauseChange?.(true);
    else onPauseChange?.(!paused);
  };

  const directionsText = showStemTools
    ? "Solve each problem and select the best answer. You may use the calculator and reference sheet where permitted."
    : "Read each passage and question carefully, then select the best answer to each question.";

  return (
    <div className={styles.shell}>
      <header className={styles.topBar}>
        <div className={styles.topLeft}>
          {onGoBack ? (
            <button
              type="button"
              className={styles.goBackBtn}
              onClick={onGoBack}
              aria-label="Go back"
            >
              <ArrowLeft size={16} weight="bold" aria-hidden />
              <span className={styles.goBackLabel}>Go back</span>
            </button>
          ) : null}
          <div className={styles.directionsWrap} ref={directionsRef}>
            <button
              type="button"
              className={styles.directionsBtn}
              onClick={() => setDirectionsOpen((v) => !v)}
              aria-expanded={directionsOpen}
            >
              Directions
              <CaretDown size={12} weight="bold" aria-hidden />
            </button>
            {directionsOpen ? (
              <div className={styles.directionsMenu} role="dialog" aria-label="Directions">
                <p>{directionsText}</p>
              </div>
            ) : null}
          </div>
          {headerExtras}
        </div>

        <div className={styles.topCenter}>
          {!timerHidden ? (
            <span className={styles.timer} aria-live="polite">
              {timerLabel}
            </span>
          ) : (
            <span className={styles.timerHidden} aria-hidden>
              ••:••
            </span>
          )}
          <button
            type="button"
            className={styles.iconBtn}
            onClick={handlePause}
            aria-label={paused ? "Resume timer" : "Pause timer"}
          >
            {paused ? (
              <Play size={16} weight="fill" aria-hidden />
            ) : (
              <Pause size={16} weight="fill" aria-hidden />
            )}
          </button>
          {onTimerHiddenChange ? (
            <button
              type="button"
              className={styles.textBtn}
              onClick={() => onTimerHiddenChange(!timerHidden)}
            >
              {timerHidden ? "Show" : "Hide"}
            </button>
          ) : null}
        </div>

        <div className={styles.topRight}>
          {showStemTools ? (
            <>
              {showCalculator ? (
                <button
                  type="button"
                  className={`${styles.textBtn} ${calculatorOpen ? styles.textBtnActive : ""}`}
                  onClick={() => setCalculatorOpen((v) => !v)}
                  aria-label="Calculator"
                  title="Calculator"
                >
                  <Calculator size={16} aria-hidden />
                  <span className={styles.btnLabel}>Calculator</span>
                </button>
              ) : null}
              <button
                type="button"
                className={`${styles.textBtn} ${referenceOpen ? styles.textBtnActive : ""}`}
                onClick={() => setReferenceOpen((v) => !v)}
                aria-label="Reference"
                title="Reference"
              >
                <FileText size={16} aria-hidden />
                <span className={styles.btnLabel}>Reference</span>
              </button>
            </>
          ) : (
            <>
              <button
                type="button"
                className={`${styles.highlightBtn} ${highlighterEnabled ? styles.highlightBtnActive : ""}`}
                onClick={() => onHighlighterChange?.(!highlighterEnabled)}
                aria-pressed={highlighterEnabled}
                aria-label="Highlight"
                title="Highlight"
              >
                <Highlighter size={16} weight="fill" aria-hidden />
                <span className={styles.btnLabel}>Highlight</span>
              </button>
              {onHideStimulusChange ? (
                <button
                  type="button"
                  className={`${styles.textBtn} ${styles.passageBtn} ${hideStimulus ? styles.textBtnActive : ""}`}
                  onClick={() => onHideStimulusChange(!hideStimulus)}
                  aria-label={hideStimulus ? "Show passage" : "Hide passage"}
                >
                  <span className={styles.passageBtnFull}>
                    {hideStimulus ? "Show passage" : "Hide passage"}
                  </span>
                  <span className={styles.passageBtnShort} aria-hidden>
                    {hideStimulus ? "Show" : "Hide"}
                  </span>
                </button>
              ) : null}
            </>
          )}
          <ExamShellMoreMenu
            onToggleTheme={() => setTheme(resolvedTheme === "dark" ? "light" : "dark")}
            onBugReport={() => onBugReport?.()}
            isDark={resolvedTheme === "dark"}
          />
          <div className={styles.stats}>
            <span className={styles.stat} title="Study streak">
              <Flame size={18} weight="fill" className={styles.statFlame} aria-hidden />
              {streakCount}
            </span>
            <span className={styles.stat} title="Practice orbs">
              <Circle size={18} weight="fill" className={styles.statOrb} aria-hidden />
              {orbCount}
            </span>
          </div>
        </div>
      </header>

      <div className={styles.body}>
        {leftRail ? <aside className={styles.leftRail}>{leftRail}</aside> : null}
        <main className={styles.main}>{children}</main>
      </div>

      <footer className={styles.bottomBar}>
        <div className={styles.bottomInner}>{bottomBar}</div>
      </footer>

      {paused ? (
        <PauseDialog
          onResume={() => onPauseChange?.(false)}
          onExit={() => onEndSession?.()}
        />
      ) : null}

      {showCalculator ? (
        <DesmosCalculator
          isOpen={calculatorOpen}
          onOpenChange={setCalculatorOpen}
          calculatorType={calculatorType}
          layout={calcLayout}
          onLayoutChange={setCalcLayout}
        />
      ) : null}
      {showStemTools ? (
        <MathReferenceSheet
          open={referenceOpen}
          onClose={() => setReferenceOpen(false)}
          examType={examType}
        />
      ) : null}
    </div>
  );
}
