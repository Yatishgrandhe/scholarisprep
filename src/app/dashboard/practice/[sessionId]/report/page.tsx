"use client";

import { aiRequest } from "@/lib/ai/clientKey";

import { useEffect, useMemo, useState } from "react";
import Link from "next/link";
import { useParams } from "next/navigation";
import { ClipboardText, CaretDown } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import {
  RadialBarChart,
  RadialBar,
  ResponsiveContainer,
  PolarAngleAxis,
} from "recharts";
import { AIExplainPanel } from "@/components/question/AIExplainPanel";
import { StepByStepExplanation } from "@/components/question/StepByStepExplanation";
import { MathRenderer } from "@/components/question/MathRenderer";
import { StimulusText } from "@/components/question/StimulusText";
import { formatDifficultyLabel } from "@/lib/question/difficulty";
import { isApOrIbExam } from "@/lib/examFamily";
import {
  buildSessionAttemptRows,
  type SessionAttemptRow,
} from "@/lib/practice/sessionReport";
import { tutorCtaLabel, tutorHref } from "@/lib/tutor/routes";
import type { SessionMetadata } from "@/lib/practice/queries";
import styles from "./report.module.css";

const FILTER_LABELS = {
  all: "All",
  correct: "Correct",
  wrong: "Incorrect",
  flagged: "Flagged",
} as const;

export default function SessionReportPage() {
  const params = useParams();
  const sessionId = params.sessionId as string;
  const [filter, setFilter] = useState<"all" | "correct" | "wrong" | "flagged">(
    "all",
  );
  const [expandedAi, setExpandedAi] = useState<string | null>(null);
  const [openItems, setOpenItems] = useState<Set<string>>(new Set());

  const toggleItem = (id: string) =>
    setOpenItems((prev) => {
      const next = new Set(prev);
      if (next.has(id)) next.delete(id);
      else next.add(id);
      return next;
    });
  const [recommendations, setRecommendations] = useState<{
    weak_areas: string[];
    study_tip: string;
    encouragement: string;
    recommended_sessions: Array<{
      title: string;
      topic: string;
      difficulty: string;
      estimated_minutes: number;
      reason: string;
    }>;
  } | null>(null);
  const [loadingRecs, setLoadingRecs] = useState(true);
  const [attempts, setAttempts] = useState<SessionAttemptRow[]>([]);
  const [loadingAttempts, setLoadingAttempts] = useState(true);
  const [sessionExamType, setSessionExamType] = useState<string>("SAT");

  useEffect(() => {
    void (async () => {
      const supabase = createClient();

      const { data: session } = await supabase
        .from("exam_sessions")
        .select("question_order, metadata, exam_type")
        .eq("id", sessionId)
        .single();

      if (!session) {
        setLoadingAttempts(false);
        return;
      }

      setSessionExamType(session.exam_type ?? "SAT");
      const metadata = (session.metadata ?? {}) as SessionMetadata;
      const rows = await buildSessionAttemptRows(
        supabase,
        sessionId,
        session.question_order ?? [],
        metadata.flagged_question_ids ?? [],
      );
      setAttempts(rows);
      setLoadingAttempts(false);
    })();
  }, [sessionId]);

  const correct = attempts.filter((a) => a.isCorrect).length;
  const total = attempts.length;
  const accuracy = total > 0 ? Math.round((correct / total) * 100) : 0;

  const filtered = useMemo(() => {
    if (filter === "correct") return attempts.filter((a) => a.isCorrect);
    if (filter === "wrong") return attempts.filter((a) => !a.isCorrect);
    if (filter === "flagged") return attempts.filter((a) => a.flagged);
    return attempts;
  }, [attempts, filter]);

  const topicRows = useMemo(() => {
    const map = new Map<string, { correct: number; total: number }>();
    for (const a of attempts) {
      const row = map.get(a.topic) ?? { correct: 0, total: 0 };
      row.total += 1;
      if (a.isCorrect) row.correct += 1;
      map.set(a.topic, row);
    }
    return [...map.entries()].map(([topic, stats]) => ({
      topic,
      ...stats,
      accuracy: Math.round((stats.correct / stats.total) * 100),
    }));
  }, [attempts]);

  useEffect(() => {
    if (!attempts.length) {
      setLoadingRecs(false);
      return;
    }

    void (async () => {
      try {
        const res = await aiRequest("/api/ai/generate-recommendations", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            session_id: sessionId,
            wrong_question_ids: attempts
              .filter((a) => !a.isCorrect)
              .map((a) => a.questionId),
            topic_scores: Object.fromEntries(
              topicRows.map((r) => [
                r.topic,
                { correct: r.correct, total: r.total },
              ]),
            ),
            exam_type: sessionExamType,
          }),
        });
        const data = await res.json();
        setRecommendations(data.recommendations);
      } catch {
        setRecommendations(null);
      } finally {
        setLoadingRecs(false);
      }
    })();
  }, [sessionId, attempts, topicRows, sessionExamType]);

  const encouragement =
    accuracy >= 80
      ? "Excellent session. You're in the top range for these topics."
      : accuracy < 40
        ? "Tough session, but that's exactly how you find what to work on. Let's fix this together."
        : "Solid effort. A few targeted drills will move your score noticeably.";

  const chartData = [{ name: "accuracy", value: accuracy, fill: "hsl(var(--primary))" }];

  if (loadingAttempts) {
    return (
      <div className={styles.page}>
        <p className={styles.encouragement}>Loading session report…</p>
      </div>
    );
  }

  if (total === 0) {
    return (
      <div className={styles.page}>
        <section className={styles.emptyCard}>
          <span className={styles.emptyIcon} aria-hidden>
            <ClipboardText size={30} weight="duotone" />
          </span>
          <h1 className={styles.emptyTitle}>No answers to review</h1>
          <p className={styles.emptyText}>
            This session was closed before you answered anything, so there's
            nothing to grade yet. Jump back in and give it a run.
          </p>
          <div className={styles.emptyActions}>
            <Link
              href="/dashboard/practice/bank"
              className={`${styles.stickyBtn} ${styles.stickyBtnPrimary}`}
            >
              Start practicing
            </Link>
            <Link
              href="/dashboard"
              className={`${styles.stickyBtn} ${styles.stickyBtnOutline}`}
            >
              Back to dashboard
            </Link>
          </div>
        </section>
      </div>
    );
  }

  return (
    <div className={styles.page}>
      <section className={styles.summaryCard}>
        <div>
          <p className={styles.kicker}>Session report</p>
          <h1 className={styles.scoreTitle}>
            {correct} / {total} correct
          </h1>
          <p className={styles.encouragement}>{encouragement}</p>
        </div>
        <div className={styles.chartWrap}>
          <ResponsiveContainer width={140} height={140}>
            <RadialBarChart
              data={chartData}
              innerRadius={48}
              outerRadius={68}
              startAngle={90}
              endAngle={-270}
            >
              <PolarAngleAxis type="number" domain={[0, 100]} tick={false} />
              <RadialBar dataKey="value" cornerRadius={8} background />
            </RadialBarChart>
          </ResponsiveContainer>
          <span className={styles.chartLabel}>{accuracy}%</span>
        </div>
      </section>

      {!isApOrIbExam(sessionExamType) ? (
        <p className={styles.impact}>
          This session moved your predicted score{" "}
          <strong>+{accuracy >= 70 ? 20 : 8} points</strong>
        </p>
      ) : null}

      <section className={styles.panel}>
        <h2 className={styles.panelTitle}>Answer grid</h2>
        <div className={styles.filters} role="group" aria-label="Filter questions">
          {(["all", "correct", "wrong", "flagged"] as const).map((f) => (
            <button
              key={f}
              type="button"
              className={
                filter === f
                  ? `${styles.filterBtn} ${styles.filterBtnActive}`
                  : styles.filterBtn
              }
              aria-pressed={filter === f}
              onClick={() => setFilter(f)}
            >
              {FILTER_LABELS[f]}
            </button>
          ))}
        </div>
        <div className={styles.gridPanel}>
          <div className={styles.grid}>
            {attempts.map((a) => (
              <a
                key={a.id}
                href={`#q-${a.id}`}
                className={`${styles.dot} ${a.isCorrect ? styles.dotCorrect : styles.dotWrong} ${a.flagged ? styles.dotFlagged : ""}`}
                title={`Question ${a.questionNumber}`}
              >
                {a.questionNumber}
              </a>
            ))}
          </div>
        </div>
      </section>

      <section className={styles.panel}>
        <h2 className={styles.panelTitle}>Question breakdown</h2>
        <div className={styles.breakdown}>
          {filtered.map((a) => {
            const open = openItems.has(a.id);
            return (
              <div
                key={a.id}
                id={`q-${a.id}`}
                className={`${styles.qItem} ${a.isCorrect ? styles.qItemCorrect : styles.qItemWrong} ${open ? styles.qItemOpen : ""}`}
              >
                <button
                  type="button"
                  className={styles.qHeader}
                  aria-expanded={open}
                  onClick={() => toggleItem(a.id)}
                >
                  <span className={styles.qLabel}>
                    <span className={styles.qNum}>Q{a.questionNumber}</span>
                    <span className={styles.qTopic}>{a.topic}</span>
                  </span>
                  <span className={styles.qMetaRight}>
                    <span
                      className={
                        a.isCorrect ? styles.statusCorrect : styles.statusWrong
                      }
                    >
                      {a.isCorrect
                        ? "Correct"
                        : `You ${a.selected} · Ans ${a.correct}`}
                    </span>
                    <CaretDown
                      size={16}
                      weight="bold"
                      aria-hidden
                      className={styles.qCaret}
                    />
                  </span>
                </button>
                {open ? (
                  <div className={styles.qBody}>
                    {a.stimulus ? (
                      <div className={styles.stimulus}>
                        <StimulusText
                          text={a.stimulus}
                          stimulusType={a.stimulusType}
                          variant="prose"
                        />
                      </div>
                    ) : null}
                    <p className={styles.question}>
                      <MathRenderer text={a.questionText} />
                    </p>
                    <StepByStepExplanation
                      question={{
                        id: a.questionId,
                        explanation: a.explanation,
                        options: a.options,
                        stimulus_text: a.stimulus,
                        stimulus_type: a.stimulusType,
                        section: a.section ?? "",
                      }}
                      selectedOptionId={a.selected}
                      variant="inline"
                    />
                    <div className={styles.qFooter}>
                      <span className={styles.meta}>
                        {formatDifficultyLabel(a.difficulty)} · {a.timeSeconds}s
                      </span>
                      <button
                        type="button"
                        className={styles.aiBtn}
                        onClick={() =>
                          setExpandedAi(expandedAi === a.id ? null : a.id)
                        }
                      >
                        {expandedAi === a.id ? "Hide AI" : "Explain with AI"}
                      </button>
                    </div>
                    {expandedAi === a.id ? (
                      <AIExplainPanel
                        question={{
                          id: a.questionId,
                          question_text: a.questionText,
                          explanation: a.explanation,
                          topic: a.topic,
                          exam_type: sessionExamType,
                          section: a.section,
                          stimulus_text: a.stimulus,
                        }}
                        selectedOptionId={a.selected}
                        isCorrect={a.isCorrect}
                      />
                    ) : null}
                  </div>
                ) : null}
              </div>
            );
          })}
        </div>
      </section>

      <section className={styles.panel}>
        <h2 className={styles.panelTitle}>Topic performance</h2>
        <div className={styles.topicList}>
          <div className={`${styles.topicRow} ${styles.topicHead}`}>
            <span>Topic</span>
            <span>Questions</span>
            <span>Correct</span>
            <span>Accuracy</span>
          </div>
          {topicRows.map((row) => (
            <div key={row.topic} className={styles.topicRow}>
              <span className={styles.topicName}>{row.topic}</span>
              <span className={styles.topicNum}>{row.total}</span>
              <span className={styles.topicNum}>{row.correct}</span>
              <span
                className={`${styles.topicAcc} ${
                  row.accuracy >= 70
                    ? styles.accGood
                    : row.accuracy >= 50
                      ? styles.accMid
                      : styles.accLow
                }`}
              >
                {row.accuracy}%
              </span>
            </div>
          ))}
        </div>
      </section>

      <section className={styles.panel}>
        <h2 className={styles.panelTitle}>Recommended next steps</h2>
        {loadingRecs ? (
          <div className={styles.recSkeletons}>
            <span className={styles.skeleton} />
            <span className={styles.skeleton} />
          </div>
        ) : recommendations?.recommended_sessions?.length ||
          recommendations?.study_tip ||
          recommendations?.encouragement ? (
          <div className={styles.recGrid}>
            {recommendations?.recommended_sessions?.map((rec) => (
              <article key={rec.title} className={styles.recCard}>
                <h3 className={styles.recTitle}>{rec.title}</h3>
                <p className={styles.recReason}>{rec.reason}</p>
                <p className={styles.recMeta}>
                  ~{rec.estimated_minutes} min · {rec.difficulty}
                </p>
                <Link
                  href="/dashboard/practice/bank"
                  className={`${styles.stickyBtn} ${styles.stickyBtnOutline}`}
                >
                  Practice now
                </Link>
              </article>
            ))}
            {recommendations?.study_tip ? (
              <p className={styles.studyTip}>{recommendations.study_tip}</p>
            ) : null}
            {recommendations?.encouragement ? (
              <p className={styles.warmNote}>{recommendations.encouragement}</p>
            ) : null}
          </div>
        ) : (
          <div className={styles.recGrid}>
            <p className={styles.studyTip}>
              Keep the momentum going: review the topics above, then drill your
              weakest one in the Question Bank.
            </p>
            <Link
              href="/dashboard/practice/bank"
              className={`${styles.stickyBtn} ${styles.stickyBtnOutline}`}
            >
              Open Question Bank
            </Link>
          </div>
        )}
      </section>

      <footer className={styles.stickyBar}>
        <div className={styles.stickyInner}>
          <Link
            href="/dashboard/practice/bank"
            className={`${styles.stickyBtn} ${styles.stickyBtnPrimary}`}
          >
            Practice weak areas
          </Link>
          <Link
            href="/dashboard/practice/bank"
            className={`${styles.stickyBtn} ${styles.stickyBtnOutline}`}
          >
            Try similar questions
          </Link>
          <Link
            href={tutorHref(sessionExamType)}
            className={`${styles.stickyBtn} ${styles.stickyBtnGhost}`}
          >
            {tutorCtaLabel(sessionExamType)}
          </Link>
          <Link
            href="/dashboard"
            className={`${styles.stickyBtn} ${styles.stickyBtnGhost}`}
          >
            Back to dashboard
          </Link>
        </div>
      </footer>
    </div>
  );
}
