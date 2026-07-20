"use client";

import { useState, useCallback, useMemo, useRef, useEffect, type ReactNode } from "react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Progress } from "@/components/ui/progress";
import { Separator } from "@/components/ui/separator";
import {
  Lightbulb,
  Flag,
  Eraser,
  ArrowRight,
  ArrowLeft,
  CheckCircle,
  XCircle,
  Sparkle,
  Timer,
  Calculator,
} from "@phosphor-icons/react";
import { cn } from "@/lib/utils";
import { stimulusLabel } from "@/lib/practice/mapQuestion";
import { StimulusText } from "./StimulusText";
import { ExplanationPanel } from "./ExplanationPanel";
import { AIExplainPanel } from "./AIExplainPanel";
import { MathRenderer } from "./MathRenderer";
import { PipeTable, isPipeTable } from "./PipeTable";
import { GridInResponse } from "./GridInResponse";
import { FrqResponse, type FrqGradeResult } from "./FrqResponse";
import { parseFrqParts, mergeFrqPartAnswers } from "@/lib/ai/frqGrading";
import {
  acceptedGridAnswers,
  gradeGridIn,
  gridMaxLength,
  isGridInOptions,
} from "@/lib/question/gridIn";
import { isFrqQuestionType } from "@/lib/ai/remixPrompts";
import { isMathSection } from "@/lib/question/isMathSection";
import { DesmosCalculator } from "@/components/calculator/DesmosCalculator";
import {
  canUseCalculator,
  DEFAULT_CALCULATOR_LAYOUT,
  resolveCalculatorType,
  type CalculatorLayout,
} from "@/lib/desmos/calculatorAccess";
import type { CalculatorPolicy } from "@/lib/subjectContext";
import { useSubjectStore } from "@/stores/subjectStore";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { DifficultyBadge } from "@/components/question/DifficultyBadge";
import type { QuestionDifficulty } from "@/lib/question/difficulty";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";
import styles from "./QuestionInterface.module.css";

export interface Option {
  id: string;
  text: string;
  is_correct: boolean;
  explanation: string;
}

export interface Question {
  id: string;
  question_text: string;
  stimulus_text?: string;
  stimulus_type?: "passage" | "data_table" | "poem" | "graph_description";
  options: Option[];
  explanation: string;
  hint: string;
  topic: string;
  /** From DB `questions.difficulty` via `mapDbQuestion` / `normalizeQuestionDifficulty`. */
  difficulty: QuestionDifficulty;
  section: string;
  /** When true, practice/exam UIs may show the Desmos calculator. */
  calculator_allowed?: boolean;
  /** Prefer Desmos graphing over scientific when calculator is allowed. */
  desmos_recommended?: boolean;
  /** DSAT challenged tier from `source_metadata.challenged_problem`. */
  challengedProblem?: boolean;
  /** From DB `questions.question_type` — drives FRQ vs MCQ UI. */
  question_type?: string;
  /** SAQ / DBQ / LEQ / paper tags when present. */
  question_subtype?: string;
  exam_type?: string;
  /** FRQ model key / rubric (remix or bank metadata). */
  model_answer?: string;
  rubric?: string;
  /** FRQ point ceiling from bank (or resolved SAQ/DBQ/LEQ default). */
  max_points?: number;
}

export type QuestionAnswerRestoreState = {
  selectedOptionId: string;
  isChecked: boolean;
  isCorrect: boolean;
  hintUsed?: boolean;
};

export interface QuestionInterfaceProps {
  question: Question;
  questionNumber: number;
  totalQuestions: number;
  timeRemaining?: number;
  elapsedSeconds?: number;
  sessionType: "practice" | "full_exam" | "diagnostic";
  variant?: "default" | "compact";
  stimulusVariant?: "plain" | "prose";
  hideStimulusLabel?: boolean;
  hideStimulus?: boolean;
  highlightMode?: boolean;
  isExamMode?: boolean;
  selectedOptionId?: string | null;
  initialAnswerState?: QuestionAnswerRestoreState | null;
  onSelectOption?: (optionId: string) => void;
  onSelectionChange?: (optionId: string) => void;
  onAttemptRecorded?: (result: {
    selectedOption: string;
    isCorrect: boolean;
    hintUsed: boolean;
  }) => void | Promise<void>;
  onNext: () => void;
  onPrevious?: () => void;
  onFlag: (questionId: string) => void;
  isFlagged?: boolean;
  calculatorOpen?: boolean;
  onCalculatorOpenChange?: (open: boolean) => void;
  calculatorLayout?: CalculatorLayout;
  onCalculatorLayoutChange?: (layout: CalculatorLayout) => void;
  showCalculatorToggle?: boolean;
  calculatorPolicy?: CalculatorPolicy;
  eliminateMode?: boolean;
  onEliminateModeChange?: (enabled: boolean) => void;
  /** When true in exam shell practice, show result + DB explanation after check. */
  showAnswerFeedback?: boolean;
  /** Rendered at top of the question column in exam mode (e.g. mark for review bar). */
  questionHeader?: ReactNode;
  /** Stack the stimulus above the question (single column) instead of a split — Rush. */
  stackStimulus?: boolean;
  /** Show the "press 1-4 then Enter" keyboard hint below the options — Rush. */
  showKeyboardHint?: boolean;
  /** FRQ AI grade result (practice shell after Check). */
  frqGrade?: FrqGradeResult | null;
  /** True while /api/ai/grade-frq is in flight. */
  frqGrading?: boolean;
}

export function QuestionInterface({
  question,
  questionNumber,
  totalQuestions,
  timeRemaining,
  elapsedSeconds,
  sessionType,
  variant = "default",
  stimulusVariant = "plain",
  hideStimulusLabel = false,
  hideStimulus = false,
  highlightMode = false,
  isExamMode = false,
  selectedOptionId = null,
  initialAnswerState = null,
  onSelectOption,
  onSelectionChange,
  onAttemptRecorded,
  onNext,
  onPrevious,
  onFlag,
  isFlagged = false,
  calculatorOpen: calculatorOpenProp,
  onCalculatorOpenChange,
  calculatorLayout: calculatorLayoutProp,
  onCalculatorLayoutChange,
  showCalculatorToggle = true,
  calculatorPolicy: calculatorPolicyProp,
  eliminateMode: eliminateModeProp,
  onEliminateModeChange,
  showAnswerFeedback = false,
  questionHeader,
  stackStimulus = false,
  showKeyboardHint = false,
  frqGrade = null,
  frqGrading = false,
}: QuestionInterfaceProps) {
  const isCompact = variant === "compact";
  const [selectedOption, setSelectedOption] = useState<string | null>(
    initialAnswerState?.selectedOptionId ?? null,
  );
  const [eliminatedOptions, setEliminatedOptions] = useState<Set<string>>(
    new Set(),
  );
  const [isChecked, setIsChecked] = useState(
    initialAnswerState?.isChecked ?? false,
  );
  const [showHint, setShowHint] = useState(
    initialAnswerState?.hintUsed ?? false,
  );
  const [showAIExplain, setShowAIExplain] = useState(false);
  const [internalEliminateMode, setInternalEliminateMode] = useState(false);
  const [isCorrect, setIsCorrect] = useState<boolean | null>(
    initialAnswerState?.isChecked ? initialAnswerState.isCorrect : null,
  );
  const [saving, setSaving] = useState(false);
  const [internalCalculatorOpen, setInternalCalculatorOpen] = useState(false);
  const [internalCalculatorLayout, setInternalCalculatorLayout] = useState(
    DEFAULT_CALCULATOR_LAYOUT,
  );
  const [splitPercent, setSplitPercent] = useState(50);
  const [isDragging, setIsDragging] = useState(false);
  const bodyRef = useRef<HTMLDivElement>(null);

  const eliminateMode = eliminateModeProp ?? internalEliminateMode;
  const setEliminateMode = onEliminateModeChange ?? setInternalEliminateMode;

  const activeSubject = useSubjectStore((s) => s.activeSubject);
  const subjectConfigs = useSubjectStore((s) => s.subjectConfigs);
  const calculatorPolicy =
    calculatorPolicyProp ??
    (activeSubject ? subjectConfigs[activeSubject]?.calculator_policy : undefined);

  const questionIsMath = isMathSection(question.section);

  const calculatorOpen = calculatorOpenProp ?? internalCalculatorOpen;
  const setCalculatorOpen = onCalculatorOpenChange ?? setInternalCalculatorOpen;
  const calculatorLayout = calculatorLayoutProp ?? internalCalculatorLayout;
  const setCalculatorLayout =
    onCalculatorLayoutChange ?? setInternalCalculatorLayout;

  const correctOption = question.options.find((o) => o.is_correct);
  const isFrq = isFrqQuestionType(question.question_type);
  const isGridIn = !isFrq && isGridInOptions(question.options);
  const gridAnswers = useMemo(
    () => acceptedGridAnswers(question.options),
    [question.options],
  );
  const gridAnswerDisplay = gridAnswers[0] ?? "";
  const label = hideStimulusLabel ? null : stimulusLabel(question.stimulus_type);
  const stimulusHeading =
    stimulusVariant === "prose"
      ? "Reading passage"
      : (label ?? "Passage & stimulus");
  const isDiagnosticSession = sessionType === "diagnostic";
  const activeSelection = isExamMode ? selectedOptionId : selectedOption;
  const answerRevealed = isExamMode ? showAnswerFeedback : isChecked;
  // For grid-in / FRQ, the "selection" is the typed string (stored in selectedOption
  // in practice, or selectedOptionId in exam mode).
  const gridValue = (isExamMode ? selectedOptionId : selectedOption) ?? "";

  // Multi-part FRQ detection
  const frqParts = useMemo(
    () => (isFrq ? parseFrqParts(question.question_text) : []),
    [isFrq, question.question_text],
  );
  const hasFrqParts = frqParts.length >= 2;
  const [frqPartValues, setFrqPartValues] = useState<Record<string, string>>({});
  const handleFrqPartChange = useCallback(
    (partId: string, val: string) => {
      if (isChecked && !isExamMode) return;
      setFrqPartValues((prev) => {
        const next = { ...prev, [partId]: val };
        // Merge part answers into the main gridValue for downstream consumers
        const merged = mergeFrqPartAnswers(next);
        if (isExamMode) {
          onSelectOption?.(merged);
        } else {
          setSelectedOption(merged);
          onSelectionChange?.(merged);
        }
        return next;
      });
    },
    [isChecked, isExamMode, onSelectOption, onSelectionChange],
  );

  const feedbackCorrect =
    isExamMode && showAnswerFeedback ?
      isFrq
        ? (frqGrade?.is_correct ?? false)
        : isGridIn
          ? gradeGridIn(selectedOptionId ?? "", gridAnswers)
          : (question.options.find((o) => o.id === selectedOptionId)?.is_correct ?? false)
    : isCorrect;

  const showCalculator = useMemo(
    () =>
      canUseCalculator({
        calculatorAllowed: question.calculator_allowed,
      }),
    [question.calculator_allowed],
  );

  const calculatorType = useMemo(
    () =>
      resolveCalculatorType({
        calculatorAllowed: question.calculator_allowed,
        desmosRecommended: question.desmos_recommended,
        section: question.section,
        calculatorPolicy,
      }),
    [
      question.calculator_allowed,
      question.desmos_recommended,
      question.section,
      calculatorPolicy,
    ],
  );

  const toggleCalculator = useCallback(() => {
    setCalculatorOpen(!calculatorOpen);
  }, [calculatorOpen, setCalculatorOpen]);

  const handleOptionClick = useCallback(
    (optionId: string) => {
      if (isExamMode) {
        if (eliminateMode) {
          setEliminatedOptions((prev) => {
            const next = new Set(prev);
            if (next.has(optionId)) next.delete(optionId);
            else next.add(optionId);
            return next;
          });
          return;
        }
        onSelectOption?.(optionId);
        return;
      }
      if (isChecked) return;
      if (eliminateMode) {
        setEliminatedOptions((prev) => {
          const next = new Set(prev);
          if (next.has(optionId)) next.delete(optionId);
          else next.add(optionId);
          return next;
        });
        return;
      }
      setSelectedOption(optionId);
      onSelectionChange?.(optionId);
    },
    [isChecked, eliminateMode, isExamMode, onSelectOption, onSelectionChange],
  );

  const handleGridChange = useCallback(
    (val: string) => {
      if (isChecked && !isExamMode) return;
      if (isExamMode) {
        onSelectOption?.(val);
        return;
      }
      setSelectedOption(val);
      onSelectionChange?.(val);
    },
    [isChecked, isExamMode, onSelectOption, onSelectionChange],
  );

  const handleCheckAnswer = useCallback(async () => {
    const optionId = isExamMode ? selectedOptionId : selectedOption;
    if (!optionId || !optionId.trim() || saving) return;
    const correct = isGridIn
      ? gradeGridIn(optionId, gridAnswers)
      : (question.options.find((o) => o.id === optionId)?.is_correct ?? false);
    setIsCorrect(correct);
    setIsChecked(true);
    setEliminateMode(false);
    setSaving(true);

    if (onAttemptRecorded) {
      await onAttemptRecorded({
        selectedOption: optionId,
        isCorrect: correct,
        hintUsed: showHint,
      });
    }
    setSaving(false);
  }, [
    selectedOption,
    selectedOptionId,
    isExamMode,
    isGridIn,
    gridAnswers,
    question.options,
    onAttemptRecorded,
    showHint,
    saving,
    setEliminateMode,
  ]);

  const handleNext = useCallback(() => {
    setSelectedOption(null);
    setFrqPartValues({});
    setEliminatedOptions(new Set());
    setIsChecked(false);
    setShowHint(false);
    setShowAIExplain(false);
    setEliminateMode(false);
    setIsCorrect(null);
    onNext();
  }, [onNext]);

  const formatTime = (seconds: number) => {
    const m = Math.floor(seconds / 60);
    const s = seconds % 60;
    return `${m}:${s.toString().padStart(2, "0")}`;
  };

  const hasStimulus = Boolean(question.stimulus_text?.trim()) && !hideStimulus;
  // Math figures/tables belong above the stem in one column — not a RW-style split.
  const useStackedStimulus = stackStimulus || questionIsMath;
  const showSplit = !isCompact && hasStimulus && !useStackedStimulus;
  const isChallenged = Boolean(question.challengedProblem);

  useEffect(() => {
    if (!isDragging) return;
    const onMove = (e: MouseEvent) => {
      const body = bodyRef.current;
      if (!body) return;
      const rect = body.getBoundingClientRect();
      const pct = ((e.clientX - rect.left) / rect.width) * 100;
      setSplitPercent(Math.min(70, Math.max(30, pct)));
    };
    const onUp = () => setIsDragging(false);
    document.addEventListener("mousemove", onMove);
    document.addEventListener("mouseup", onUp);
    return () => {
      document.removeEventListener("mousemove", onMove);
      document.removeEventListener("mouseup", onUp);
    };
  }, [isDragging]);

  const handleEliminateOption = useCallback(
    (optionId: string, e: React.MouseEvent) => {
      e.stopPropagation();
      setEliminatedOptions((prev) => {
        const next = new Set(prev);
        if (next.has(optionId)) next.delete(optionId);
        else next.add(optionId);
        return next;
      });
    },
    [],
  );

  return (
    <div
      className={cn(
        styles.container,
        isExamMode && styles.containerExam,
        isCompact && styles.containerCompact,
        isDiagnosticSession && styles.containerDiagnostic,
        isChallenged && styles.containerChallenged,
      )}
    >
      {!isExamMode && !isCompact ? (
      <div className={styles.header}>
        <div className={styles.headerLeft}>
          <span className={styles.sectionLabel}>{question.section}</span>
          {question.calculator_allowed ? (
            <span
              className={styles.calculatorAllowedBadge}
              aria-label="Calculator permitted for this question"
            >
              <Calculator size={11} weight="bold" aria-hidden />
              Calculator
            </span>
          ) : null}
          {question.topic ? (
            <Badge variant="outline" className={styles.topicBadge}>
              {question.topic}
            </Badge>
          ) : null}
          <DifficultyBadge
            difficulty={question.difficulty}
            challenged={isChallenged}
          />
          {isChallenged ? (
            <Badge className={styles.challengedBadge}>Challenged</Badge>
          ) : null}
        </div>
        <div className={styles.headerCenter}>
          <span className={styles.questionCount}>
            Question {questionNumber} of {totalQuestions}
          </span>
          <Progress
            value={(questionNumber / totalQuestions) * 100}
            className={styles.headerProgress}
          />
        </div>
        <div className={styles.headerRight}>
          <ThemeToggle className={styles.themeToggle} />
          {elapsedSeconds !== undefined ? (
            <div className={styles.timer}>
              <Timer size={16} aria-hidden />
              <span>{formatTime(elapsedSeconds)}</span>
            </div>
          ) : null}
          {timeRemaining !== undefined ? (
            <div
              className={cn(
                styles.timer,
                timeRemaining < 120 && styles.timerWarning,
              )}
            >
              <Timer size={16} aria-hidden />
              <span>{formatTime(timeRemaining)}</span>
              {timeRemaining < 120 ? (
                <span className="sr-only">Time running low</span>
              ) : null}
            </div>
          ) : null}
        </div>
      </div>
      ) : null}
      {isCompact ? (
        <div className={styles.compactMeta}>
          <DifficultyBadge
            difficulty={question.difficulty}
            challenged={isChallenged}
            size="sm"
          />
          {question.topic ? (
            <span className={styles.compactTopic}>{question.topic}</span>
          ) : null}
        </div>
      ) : null}

      <div
        ref={bodyRef}
        className={cn(
          styles.body,
          isCompact && styles.bodyCompact,
          !showSplit && styles.bodySingle,
        )}
      >
        {showSplit ? (
          <>
            <div className={styles.leftPanel} style={{ width: `${splitPercent}%` }}>
              <div className={styles.stimulusScroll}>
                <div
                  className={cn(
                    styles.stimulusContent,
                    highlightMode && styles.stimulusHighlightMode,
                  )}
                >
                  {label ? (
                    <p className={styles.stimulusLabel}>{label}</p>
                  ) : null}
                  <StimulusText
                    text={question.stimulus_text ?? ""}
                    variant={stimulusVariant === "plain" ? "prose" : stimulusVariant}
                    stimulusType={question.stimulus_type}
                  />
                </div>
              </div>
            </div>
            <div
              className={cn(styles.divider, isDragging && styles.dividerDragging)}
              onMouseDown={() => setIsDragging(true)}
              role="separator"
              aria-orientation="vertical"
              aria-label="Resize panels"
            />
          </>
        ) : null}

        <div className={styles.rightColumn}>
          {isExamMode && isChallenged ? (
            <div className={styles.challengedBanner} role="status">
              <Badge className={styles.challengedBadge}>Challenged</Badge>
              <span className={styles.challengedBannerText}>
                Advanced DSAT challenge item
              </span>
            </div>
          ) : null}
          {isExamMode && questionHeader ? questionHeader : null}
          <div
            className={cn(
              styles.rightPanel,
              isCompact && styles.rightPanelCompact,
            )}
          >
            <div className={cn(styles.rightScroll, isCompact && styles.rightScrollCompact)}>
              <div className={styles.questionContent}>
              {/* Collapsible passage shown ONLY under 768px (CSS-gated via
                  .stimulusAccordion). Must render in exam mode too, otherwise on
                  narrow screens the side passage panel is hidden by the media
                  query with no fallback, and the passage disappears entirely. */}
              {!isCompact && question.stimulus_text ? (
                <Accordion className={styles.stimulusAccordion}>
                  <AccordionItem value="stimulus" className={styles.stimulusAccordionItem}>
                    <AccordionTrigger className={styles.stimulusAccordionTrigger}>
                      {stimulusHeading}
                    </AccordionTrigger>
                    <AccordionContent className={styles.stimulusAccordionContent}>
                      {label ? (
                        <p className={styles.stimulusLabel}>{label}</p>
                      ) : null}
                      <StimulusText
                        text={question.stimulus_text ?? ""}
                        variant="prose"
                        stimulusType={question.stimulus_type}
                      />
                    </AccordionContent>
                  </AccordionItem>
                </Accordion>
              ) : null}
              {isCompact && question.stimulus_text ? (
                <div className={styles.compactStimulus}>
                  {label ? (
                    <p className={styles.stimulusLabel}>{label}</p>
                  ) : null}
                  <StimulusText
                    text={question.stimulus_text ?? ""}
                    variant={stimulusVariant}
                    stimulusType={question.stimulus_type}
                  />
                </div>
              ) : null}
              {useStackedStimulus && hasStimulus ? (
                <div className={styles.stackedStimulus}>
                  {label ? (
                    <p className={styles.stimulusLabel}>{label}</p>
                  ) : null}
                  <StimulusText
                    text={question.stimulus_text ?? ""}
                    variant="prose"
                    stimulusType={question.stimulus_type}
                  />
                </div>
              ) : null}
              {isCompact && showCalculator && showCalculatorToggle ? (
                <div className={styles.compactCalculatorRow}>
                  <Button
                    type="button"
                    variant="ghost"
                    size="sm"
                    onClick={toggleCalculator}
                    aria-label="Open graphing calculator"
                    title="Open calculator"
                    aria-pressed={calculatorOpen}
                    aria-expanded={calculatorOpen}
                    className={cn(
                      styles.toolButton,
                      calculatorOpen && styles.toolButtonActive,
                    )}
                  >
                    <Calculator
                      size={16}
                      weight={calculatorOpen ? "fill" : "regular"}
                      aria-hidden
                    />
                    Calculator
                  </Button>
                </div>
              ) : null}
              <div id="question-stem" className={styles.questionStem}>
                <MathRenderer text={question.question_text} />
              </div>

              {isFrq ? (
                <FrqResponse
                  value={gridValue}
                  onChange={handleGridChange}
                  disabled={answerRevealed}
                  revealed={answerRevealed}
                  grading={frqGrading}
                  grade={frqGrade}
                  parts={hasFrqParts ? frqParts : []}
                  partValues={hasFrqParts ? frqPartValues : {}}
                  onPartChange={hasFrqParts ? handleFrqPartChange : undefined}
                />
              ) : isGridIn ? (
                <GridInResponse
                  value={gridValue}
                  onChange={handleGridChange}
                  disabled={answerRevealed}
                  revealed={answerRevealed}
                  correct={feedbackCorrect ?? false}
                  acceptedDisplay={gridAnswerDisplay}
                  maxLength={gridMaxLength(gridAnswers)}
                />
              ) : (
              <div
                className={styles.optionsGroup}
                role="radiogroup"
                aria-labelledby="question-stem"
              >
                {question.options.map((option) => {
                  const isSelected = activeSelection === option.id;
                  const isEliminated = eliminatedOptions.has(option.id);
                  const showResult = answerRevealed;
                  const isThisCorrect = option.is_correct;

                  return (
                    <div key={option.id} className={styles.optionRow}>
                      <button
                        type="button"
                        role="radio"
                        aria-checked={isSelected}
                        onClick={() => handleOptionClick(option.id)}
                        disabled={answerRevealed && !isSelected && !isThisCorrect}
                        className={cn(
                          styles.option,
                          isChallenged && styles.optionChallenged,
                          isSelected && !showResult && styles.optionSelected,
                          isSelected &&
                            !showResult &&
                            isChallenged &&
                            styles.optionSelectedChallenged,
                          isEliminated && styles.optionEliminated,
                          showResult &&
                            isSelected &&
                            feedbackCorrect &&
                            styles.optionCorrect,
                          showResult &&
                            isSelected &&
                            !feedbackCorrect &&
                            styles.optionWrong,
                          showResult &&
                            !isSelected &&
                            isThisCorrect &&
                            styles.optionRevealCorrect,
                          eliminateMode &&
                            !isEliminated &&
                            styles.optionEliminateMode,
                        )}
                      >
                        <span className={styles.optionLetter}>{option.id}</span>
                        <span className={styles.optionText}>
                          {isPipeTable(option.text) ? (
                            <PipeTable text={option.text} />
                          ) : (
                            <MathRenderer text={option.text} />
                          )}
                        </span>
                        {showResult && isSelected && feedbackCorrect ? (
                          <>
                            <CheckCircle
                              size={18}
                              className={styles.resultIcon}
                              weight="fill"
                              aria-hidden
                            />
                            <span className="sr-only">Correct answer</span>
                          </>
                        ) : null}
                        {showResult && isSelected && !feedbackCorrect ? (
                          <>
                            <XCircle
                              size={18}
                              className={styles.resultIconWrong}
                              weight="fill"
                              aria-hidden
                            />
                            <span className="sr-only">Incorrect answer</span>
                          </>
                        ) : null}
                        {showResult && !isSelected && isThisCorrect ? (
                          <>
                            <CheckCircle
                              size={18}
                              className={styles.resultIconCorrect}
                              weight="fill"
                              aria-hidden
                            />
                            <span className="sr-only">Correct answer</span>
                          </>
                        ) : null}
                      </button>
                      {!answerRevealed && (eliminateMode || isEliminated) ? (
                        <button
                          type="button"
                          className={cn(
                            styles.eliminateBtn,
                            isEliminated && styles.eliminateBtnActive,
                          )}
                          onClick={(e) => handleEliminateOption(option.id, e)}
                          aria-label={`Eliminate choice ${option.id}`}
                          aria-pressed={isEliminated}
                        >
                          {option.id}
                        </button>
                      ) : null}
                    </div>
                  );
                })}
              </div>
              )}

              {showKeyboardHint && !answerRevealed && !isGridIn && !isFrq ? (
                <p className={styles.kbdHint}>
                  Tip: press{" "}
                  {question.options.map((_, i) => (
                    <kbd key={i} className={styles.kbd}>
                      {i + 1}
                    </kbd>
                  ))}{" "}
                  to pick an answer, then <kbd className={styles.kbd}>Enter</kbd>{" "}
                  to check
                </p>
              ) : null}

              {!isCompact ? (
                <>
              <Separator className={styles.toolbarSeparator} />
              <div className={styles.toolbar}>
                {showCalculator && showCalculatorToggle ? (
                  <Button
                    type="button"
                    variant="ghost"
                    size="sm"
                    onClick={toggleCalculator}
                    aria-label="Open graphing calculator"
                    title="Open calculator"
                    aria-pressed={calculatorOpen}
                    aria-expanded={calculatorOpen}
                    className={cn(
                      styles.toolButton,
                      calculatorOpen && styles.toolButtonActive,
                    )}
                  >
                    <Calculator
                      size={16}
                      weight={calculatorOpen ? "fill" : "regular"}
                      aria-hidden
                    />
                    Calculator
                  </Button>
                ) : null}
                {!isExamMode ? (
                <Button
                  type="button"
                  variant="ghost"
                  size="sm"
                  onClick={() => setShowHint(!showHint)}
                  disabled={isChecked}
                  className={cn(
                    styles.toolButton,
                    showHint && styles.toolButtonActive,
                  )}
                >
                  <Lightbulb size={16} aria-hidden />
                  Hint
                </Button>
                ) : null}
                <Button
                  type="button"
                  variant="ghost"
                  size="sm"
                  onClick={() => setEliminateMode(!eliminateMode)}
                  disabled={!isExamMode && isChecked}
                  className={cn(
                    styles.toolButton,
                    eliminateMode && styles.toolButtonActive,
                  )}
                >
                  <Eraser size={16} aria-hidden />
                  Eliminate Mode
                </Button>
                <Button
                  type="button"
                  variant="ghost"
                  size="sm"
                  onClick={() => onFlag(question.id)}
                  disabled={!isExamMode && isChecked}
                  className={cn(
                    styles.toolButton,
                    isFlagged && styles.toolButtonFlagged,
                  )}
                >
                  <Flag
                    size={16}
                    weight={isFlagged ? "fill" : "regular"}
                    aria-hidden
                  />
                  {isFlagged ? "Flagged" : "Flag"}
                </Button>
              </div>
                </>
              ) : null}

              {showHint && !isChecked && !isCompact ? (
                <div className={styles.hintBox}>
                  <Lightbulb size={16} className={styles.hintIcon} aria-hidden />
                  <p>{question.hint}</p>
                </div>
              ) : null}

              {!isExamMode && !isChecked ? (
                <Button
                  type="button"
                  onClick={() => void handleCheckAnswer()}
                  disabled={!selectedOption || saving}
                  size="lg"
                  className={styles.checkButton}
                >
                  {saving ? "Checking…" : "CHECK ANSWER"}
                </Button>
              ) : null}

              {answerRevealed ? (
                <div className={styles.resultSection}>
                  <div
                    role="status"
                    aria-live="polite"
                    className={cn(
                      styles.resultBanner,
                      feedbackCorrect
                        ? styles.resultBannerCorrect
                        : styles.resultBannerWrong,
                    )}
                  >
                    {feedbackCorrect ? (
                      <>
                        <CheckCircle size={20} weight="fill" aria-hidden />
                        <span>Correct! Well done.</span>
                      </>
                    ) : (
                      <>
                        <XCircle size={20} weight="fill" aria-hidden />
                        <span>
                          Not quite, the answer is{" "}
                          <strong>
                            {isGridIn ? (
                              <MathRenderer text={gridAnswerDisplay} />
                            ) : (
                              correctOption?.id
                            )}
                          </strong>
                        </span>
                      </>
                    )}
                  </div>

                  {/* In exam-mode screens (practice/exam shell) the explanation
                      lives in the dedicated Explanation side panel, so showing it
                      inline too would duplicate it. Only render inline on the
                      simple non-exam question view, which has no side panel. */}
                  {!isExamMode &&
                  (question.explanation?.trim() ||
                    question.options.some((o) => o.explanation)) ? (
                    <ExplanationPanel
                      question={question}
                      selectedOptionId={selectedOption}
                    />
                  ) : null}

                  {!isCompact && !isExamMode ? (
                    <>
                  <Button
                    type="button"
                    variant="outline"
                    onClick={() => setShowAIExplain(!showAIExplain)}
                    className={styles.aiExplainButton}
                  >
                    <Sparkle size={16} aria-hidden />
                    {showAIExplain ? "Hide AI Explanation" : "Explain with AI"}
                  </Button>

                  {showAIExplain && selectedOption ? (
                    <AIExplainPanel
                      question={question}
                      selectedOptionId={selectedOption}
                      isCorrect={isCorrect ?? false}
                    />
                  ) : null}
                    </>
                  ) : null}

                  {!isCompact && !isExamMode ? (
                    <div className={styles.postCheckNav}>
                      {onPrevious ? (
                        <Button
                          type="button"
                          variant="outline"
                          onClick={onPrevious}
                          className={styles.navButton}
                        >
                          <ArrowLeft size={16} aria-hidden />
                          Previous
                        </Button>
                      ) : null}
                      <Button
                        type="button"
                        onClick={handleNext}
                        className={styles.nextButton}
                      >
                        {questionNumber < totalQuestions
                          ? "Next Question"
                          : "See Results"}
                        <ArrowRight size={18} aria-hidden />
                      </Button>
                    </div>
                  ) : null}
                </div>
              ) : null}
            </div>
          </div>
          </div>
        </div>
      </div>

      {showCalculator ? (
        <DesmosCalculator
          isOpen={calculatorOpen}
          onOpenChange={setCalculatorOpen}
          calculatorType={calculatorType}
          layout={calculatorLayout}
          onLayoutChange={setCalculatorLayout}
        />
      ) : null}
    </div>
  );
}
