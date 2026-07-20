"use client";

import { Suspense, useState } from "react";
import { useSearchParams } from "next/navigation";
import {
  Gauge,
  Timer,
  ChartLineUp,
  Sparkle,
} from "@phosphor-icons/react";
import { DiagnosticRunner } from "@/components/diagnostic/DiagnosticRunner";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { isApOrIbExam, examFamilyLabel } from "@/lib/examFamily";
import { DIAGNOSTIC_QUESTION_COUNT } from "@/lib/onboarding/diagnostic";
import type { ExamType } from "@/types/supabase";
import styles from "./diagnostic.module.css";

const QUICK_QUESTION_COUNT = 20;
const QUICK_MINUTES = 25;
const FULL_MINUTES = 45;

type DiagnosticMode = "quick" | "full";

function DiagnosticPageContent() {
  const searchParams = useSearchParams();
  const programParam = searchParams.get("program") as ExamType | null;
  const activeExam = useActiveExamType();
  const examType = programParam ?? activeExam;
  const apIb = isApOrIbExam(examType);
  const examLabel = examFamilyLabel(examType);
  const autoStart = Boolean(programParam) || searchParams.get("start") === "1";
  const [mode, setMode] = useState<DiagnosticMode | null>(
    autoStart ? "full" : null,
  );

  if (mode) {
    return (
      <DiagnosticRunner
        programParam={programParam}
        questionCount={
          mode === "quick" ? QUICK_QUESTION_COUNT : DIAGNOSTIC_QUESTION_COUNT
        }
      />
    );
  }

  const quickDesc = apIb
    ? `A fast estimate of your predicted ${examLabel} score across course units — ideal when you want a snapshot without a long session.`
    : examType === "ACT"
      ? "A fast estimate of your predicted ACT score across sections — ideal when you want a snapshot without a long session."
      : "A fast estimate of your predicted score across Reading & Writing and Math, ideal when you want a snapshot without a long session.";

  const deepDesc = apIb
    ? `Detailed skill breakdown that maps your strengths to ${examLabel} units and powers your personalized study plan.`
    : examType === "ACT"
      ? "Detailed skill breakdown that maps your strengths to ACT sections and powers your personalized study plan."
      : "Detailed skill breakdown that maps your strengths to College Board domains and powers your personalized study plan.";

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <Gauge
          size={22}
          weight="duotone"
          className={styles.headerIcon}
          aria-hidden
        />
        <div>
          <h1 className={styles.title}>Approximate your score</h1>
          <p className={styles.subtitle}>
            Optional — take a diagnostic anytime to estimate your{" "}
            {examLabel} score and personalize your study plan. You can practice
            without it.
          </p>
        </div>
      </header>

      <div className={styles.list}>
        <article className={styles.row}>
          <span className={styles.rowIcon} aria-hidden>
            <Timer size={20} weight="duotone" />
          </span>
          <div className={styles.rowMain}>
            <h2 className={styles.rowTitle}>Quick predictor</h2>
            <p className={styles.rowDesc}>{quickDesc}</p>
            <div className={styles.metaRow}>
              <span className={styles.metaChip}>
                <ChartLineUp size={14} weight="bold" />
                {QUICK_QUESTION_COUNT} questions
              </span>
              <span className={styles.metaChip}>
                <Timer size={14} weight="bold" />~{QUICK_MINUTES} min
              </span>
            </div>
          </div>
          <div className={styles.rowActions}>
            <button
              type="button"
              className={styles.primaryBtn}
              onClick={() => setMode("quick")}
            >
              Start quick predictor
            </button>
          </div>
        </article>

        <article className={styles.row}>
          <span className={styles.rowIcon} aria-hidden>
            <Gauge size={20} weight="duotone" />
          </span>
          <div className={styles.rowMain}>
            <h2 className={styles.rowTitle}>Deep diagnostic</h2>
            <p className={styles.rowDesc}>{deepDesc}</p>
            <div className={styles.metaRow}>
              <span className={styles.metaChip}>
                <Sparkle size={14} weight="fill" />
                {DIAGNOSTIC_QUESTION_COUNT} questions
              </span>
              <span className={styles.metaChip}>
                <Timer size={14} weight="bold" />~{FULL_MINUTES} min
              </span>
            </div>
          </div>
          <div className={styles.rowActions}>
            <button
              type="button"
              className={styles.outlineBtn}
              onClick={() => setMode("full")}
            >
              Start deep diagnostic
            </button>
          </div>
        </article>
      </div>

      <p className={styles.note}>
        <strong>Tip:</strong> Your predicted score updates after either mode.
        Start with the quick predictor if you&apos;re short on time, then run the
        deep diagnostic when you want domain-level insights.
      </p>
    </div>
  );
}

export default function DashboardDiagnosticPage() {
  return (
    <Suspense fallback={<p className={styles.subtitle}>Loading…</p>}>
      <DiagnosticPageContent />
    </Suspense>
  );
}
