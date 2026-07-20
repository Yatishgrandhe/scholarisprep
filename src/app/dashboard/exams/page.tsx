"use client";

import { useEffect, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { toast } from "sonner";
import {
  Timer,
  BookOpen,
  Calculator,
  Exam,
  ArrowSquareOut,
} from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useSubjectStore } from "@/stores/subjectStore";
import {
  DIGITAL_SAT_MODULES,
  SAT_FULL_EXAM_SECTIONS,
} from "@/lib/exam/config";
import { createFullExamSession, fetchExamHistory } from "@/lib/exam/queries";
import { fetchQuestionsByIds } from "@/lib/practice/queries";
import { parseExamMetadata } from "@/lib/exam/metadata";
import { useExamStore } from "@/stores/examStore";
import {
  examFamilyLabel,
  FULL_EXAM_FORM_LETTERS,
  isApOrIbExam,
  type FullExamFormLetter,
} from "@/lib/examFamily";
import {
  defaultApIbBlueprint,
  loadExamBlueprint,
  type ExamBlueprint,
} from "@/lib/exam/blueprints";
import { tutorCtaLabel, tutorHref } from "@/lib/tutor/routes";
import styles from "./exams.module.css";

function formatDate(iso: string) {
  return new Date(iso).toLocaleDateString(undefined, {
    month: "short",
    day: "numeric",
    year: "numeric",
  });
}

function formatDuration(seconds: number | null) {
  if (!seconds) return "—";
  const h = Math.floor(seconds / 3600);
  const m = Math.floor((seconds % 3600) / 60);
  const s = seconds % 60;
  if (h > 0) return `${h}h ${m}m`;
  return `${m}m ${s}s`;
}

export default function ExamsPage() {
  const router = useRouter();
  const { user, profile } = useAuth();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const supabase = createClient();
  const initFullExamSession = useExamStore((s) => s.initFullExamSession);
  const apIb = isApOrIbExam(examType);
  const examLabel = examFamilyLabel(examType);

  const [starting, setStarting] = useState<string | null>(null);
  const [history, setHistory] = useState<
    Awaited<ReturnType<typeof fetchExamHistory>>
  >([]);
  const [blueprint, setBlueprint] = useState<ExamBlueprint | null>(null);

  useEffect(() => {
    if (!subjectHydrated || !apIb) {
      setBlueprint(null);
      return;
    }
    let cancelled = false;
    void loadExamBlueprint(examType, supabase).then((bp) => {
      if (!cancelled) setBlueprint(bp ?? defaultApIbBlueprint(examType));
    });
    return () => {
      cancelled = true;
    };
  }, [subjectHydrated, apIb, examType, supabase]);

  useEffect(() => {
    if (!user || !subjectHydrated) return;
    void fetchExamHistory(supabase, user.id, examType).then(setHistory);
  }, [user, subjectHydrated, supabase, examType]);

  const bootSession = async (
    sessionId: string,
    sessionExamType: string = examType,
  ) => {
    const { data: session } = await supabase
      .from("exam_sessions")
      .select("question_order, metadata, exam_type")
      .eq("id", sessionId)
      .single();

    const metadata = parseExamMetadata(session?.metadata);
    if (!metadata) {
      toast.error("Session setup failed.");
      setStarting(null);
      return;
    }

    const resolvedExamType =
      session?.exam_type ?? sessionExamType ?? examType ?? "SAT";

    const allQuestions = await fetchQuestionsByIds(
      supabase,
      session?.question_order ?? [],
      resolvedExamType as Parameters<typeof fetchQuestionsByIds>[2],
    );

    if (!allQuestions.length) {
      toast.error("Could not load exam questions. Please try again.");
      setStarting(null);
      return;
    }

    const sectionQuestions = metadata.sections.map((section) =>
      allQuestions.filter((q) => section.question_ids.includes(q.id)),
    );

    initFullExamSession({
      sessionId,
      examType: resolvedExamType,
      metadata,
      allQuestions,
      sectionQuestions,
      currentSectionIndex: metadata.current_section_index,
      currentIndex: 0,
      answers: {},
      flaggedIds: metadata.flagged_question_ids,
      attempts: {},
      sectionStartedAtMs: Date.now(),
      examStartedAtMs: Date.now(),
      twoMinuteWarned: false,
    });

    router.push(`/dashboard/exams/${sessionId}`);
  };

  const launchExam = async (
    mode: "full" | "section",
    sectionKey?: "reading_writing" | "math",
  ) => {
    if (!user) {
      router.push("/auth/login");
      return;
    }

    const key = mode === "full" ? "full" : (sectionKey ?? "reading_writing");
    setStarting(key);

    const sessionId = await createFullExamSession(
      supabase,
      user.id,
      profile?.exam_goal ?? examType ?? "SAT",
      mode,
      sectionKey,
    );

    if (!sessionId) {
      toast.error("Could not start exam. Try again or check your connection.");
      setStarting(null);
      return;
    }

    await bootSession(sessionId, profile?.exam_goal ?? examType ?? "SAT");
  };

  const launchApIbForm = async (letter: FullExamFormLetter) => {
    if (!user) {
      router.push("/auth/login");
      return;
    }
    setStarting(`form-${letter}`);
    // Server route uses service-role for form pool reads — client PostgREST
    // times out under RLS on source_metadata->>form_letter filters.
    try {
      const res = await fetch("/api/exams/start-apib-form", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ examType, formLetter: letter }),
      });
      const payload = (await res.json().catch(() => null)) as {
        sessionId?: string;
        empty?: boolean;
        error?: string;
      } | null;
      if (res.status === 404 || payload?.empty) {
        toast.message(`Form ${letter} is not ready yet`, {
          description:
            "Full-length question pools for this course are still being built. Forms stay listed so you can see the structure.",
        });
        setStarting(null);
        return;
      }
      if (!res.ok || !payload?.sessionId) {
        toast.error(
          payload?.error ??
            "Could not start exam. Try again or check your connection.",
        );
        setStarting(null);
        return;
      }
      await bootSession(payload.sessionId, examType);
    } catch {
      toast.error("Could not start exam. Try again or check your connection.");
      setStarting(null);
    }
  };

  const rw = SAT_FULL_EXAM_SECTIONS[0]!;
  const math = SAT_FULL_EXAM_SECTIONS[1]!;
  const totalMinutes = rw.durationMinutes + math.durationMinutes;
  const totalQuestions = rw.questionCount + math.questionCount;

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <Timer
          size={22}
          weight="duotone"
          className={styles.headerIcon}
          aria-hidden
        />
        <div className={styles.headerCopy}>
          <h1 className={styles.title}>Practice Exams</h1>
          <p className={styles.subtitle}>
            {apIb
              ? `Timed ${examLabel} full-length Forms A–J that mirror the real exam structure.`
              : "Timed Digital SAT practice that mirrors the real test format."}
          </p>
        </div>
        {apIb ? (
          <Link href={tutorHref(examType)} className={styles.outlineBtn}>
            {tutorCtaLabel(examType)}
          </Link>
        ) : null}
      </header>

      {apIb ? (
        <section className={styles.section} aria-labelledby="exams-forms">
          <h2 id="exams-forms" className={styles.sectionLabel}>
            Full-length forms
          </h2>
          {blueprint ? (
            <p className={styles.formHint}>
              {blueprint.modules.length} sections · {blueprint.totalMinutes} min
              · ~{blueprint.totalQuestions} questions
              {blueprint.notes ? ` · ${blueprint.notes}` : ""}
            </p>
          ) : null}
          <div className={styles.formGrid}>
            {FULL_EXAM_FORM_LETTERS.map((letter) => {
              const isStarting = starting === `form-${letter}`;
              return (
                <div
                  key={letter}
                  className={`${styles.formCard}${isStarting ? ` ${styles.formCardStarting}` : ""}`}
                >
                  <div className={styles.formCardMain}>
                    <span className={styles.formLetter}>Form {letter}</span>
                    <span className={styles.formMeta}>
                      {blueprint
                        ? `${blueprint.totalMinutes} min · ~${blueprint.totalQuestions} Qs`
                        : examLabel}
                    </span>
                  </div>
                  <button
                    type="button"
                    className={styles.primaryBtn}
                    disabled={starting !== null}
                    onClick={() => void launchApIbForm(letter)}
                    aria-label={`Start Form ${letter}`}
                  >
                    {isStarting ? "Starting…" : "Start"}
                  </button>
                </div>
              );
            })}
          </div>
        </section>
      ) : (
        <section className={styles.section} aria-labelledby="exams-start">
          <h2 id="exams-start" className={styles.sectionLabel}>
            Start a test
          </h2>
          <div className={styles.list}>
            <div className={styles.row}>
              <span className={styles.rowIcon} aria-hidden>
                <Exam size={20} weight="duotone" />
              </span>
              <div className={styles.rowMain}>
                <h3 className={styles.rowTitle}>Full Practice Test</h3>
                <p className={styles.rowMeta}>
                  {DIGITAL_SAT_MODULES.length} modules · {totalMinutes} min ·{" "}
                  {totalQuestions} questions, College Board items with
                  explanations in your report
                </p>
              </div>
              <div className={styles.rowActions}>
                <button
                  type="button"
                  className={styles.primaryBtn}
                  disabled={starting !== null}
                  onClick={() => void launchExam("full")}
                >
                  {starting === "full" ? "Starting…" : "Start Full Test"}
                </button>
              </div>
            </div>

            <div className={styles.row}>
              <span className={styles.rowIcon} aria-hidden>
                <BookOpen size={20} weight="duotone" />
              </span>
              <div className={styles.rowMain}>
                <h3 className={styles.rowTitle}>Reading and Writing</h3>
                <p className={styles.rowMeta}>
                  1 section · {rw.durationMinutes} min · {rw.questionCount}{" "}
                  questions
                </p>
              </div>
              <div className={styles.rowActions}>
                <button
                  type="button"
                  className={styles.outlineBtn}
                  disabled={starting !== null}
                  onClick={() => void launchExam("section", "reading_writing")}
                  aria-label="Start Reading and Writing section"
                >
                  {starting === "reading_writing" ? "Starting…" : "Start"}
                </button>
              </div>
            </div>

            <div className={styles.row}>
              <span className={styles.rowIcon} aria-hidden>
                <Calculator size={20} weight="duotone" />
              </span>
              <div className={styles.rowMain}>
                <h3 className={styles.rowTitle}>Math</h3>
                <p className={styles.rowMeta}>
                  1 section · {math.durationMinutes} min · {math.questionCount}{" "}
                  questions
                </p>
              </div>
              <div className={styles.rowActions}>
                <button
                  type="button"
                  className={styles.outlineBtn}
                  disabled={starting !== null}
                  onClick={() => void launchExam("section", "math")}
                  aria-label="Start Math section"
                >
                  {starting === "math" ? "Starting…" : "Start"}
                </button>
              </div>
            </div>
          </div>
        </section>
      )}

      <section className={styles.section} aria-labelledby="exams-history">
        <h2 id="exams-history" className={styles.sectionLabel}>
          Exam history
        </h2>
        {history.length === 0 ? (
          <div className={styles.emptyCard}>
            <span className={styles.emptyIcon} aria-hidden>
              <Exam size={28} weight="duotone" />
            </span>
            <h3 className={styles.emptyTitle}>No exam history yet</h3>
            <p className={styles.emptyDesc}>
              {apIb
                ? `Start a ${examLabel} form above to see completed attempts and reports here.`
                : "Start a practice test above to see your completed results here."}
            </p>
          </div>
        ) : (
          <div className={styles.list}>
            {history.map((row) => {
              const meta = parseExamMetadata(row.metadata);
              const sectionsLabel =
                meta?.form_letter != null
                  ? `Form ${meta.form_letter}`
                  : meta?.exam_mode === "section"
                    ? (row.section ?? "Section")
                    : `${meta?.sections.length ?? 2} sections`;
              const scoreLabel =
                row.score_predicted != null
                  ? String(row.score_predicted)
                  : row.correct_count != null && row.total_questions
                    ? `${row.correct_count}/${row.total_questions}`
                    : null;
              return (
                <div key={row.id} className={styles.row}>
                  <div className={styles.rowMain}>
                    <h3 className={styles.rowTitle}>
                      {row.completed_at ? formatDate(row.completed_at) : "—"}
                    </h3>
                    <p className={styles.rowMeta}>
                      {sectionsLabel} · {formatDuration(row.time_spent_seconds)}
                    </p>
                  </div>
                  <div className={styles.rowActions}>
                    <span className={styles.pillDone}>
                      Completed{scoreLabel ? ` · ${scoreLabel}` : ""}
                    </span>
                    <Link
                      href={`/dashboard/exams/${row.id}/report`}
                      className={styles.outlineBtn}
                    >
                      View report
                      <ArrowSquareOut size={14} weight="bold" aria-hidden />
                    </Link>
                  </div>
                </div>
              );
            })}
          </div>
        )}
      </section>
    </div>
  );
}
