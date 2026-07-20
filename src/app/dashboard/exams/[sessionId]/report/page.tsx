"use client";

import { useEffect, useMemo, useState } from "react";
import { useParams } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import {
  RadialBar,
  RadialBarChart,
  PolarAngleAxis,
  ResponsiveContainer,
} from "recharts";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/app-button";
import { Card, CardContent } from "@/components/ui/card";
import { Skeleton } from "@/components/ui/skeleton";
import { AIExplainPanel } from "@/components/question/AIExplainPanel";
import { StepByStepExplanation } from "@/components/question/StepByStepExplanation";
import { MathRenderer } from "@/components/question/MathRenderer";
import { StimulusText } from "@/components/question/StimulusText";
import { formatDifficultyLabel } from "@/lib/question/difficulty";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { parseExamMetadata } from "@/lib/exam/metadata";
import { isApExam, isIbExam } from "@/lib/examFamily";
import { scoreBoundsForExam } from "@/lib/onboarding/examPrograms";
import { tutorCtaLabel, tutorHref } from "@/lib/tutor/routes";
import {
  buildSessionAttemptRows,
  type SessionAttemptRow,
} from "@/lib/practice/sessionReport";
import styles from "@/app/dashboard/practice/[sessionId]/report/report.module.css";

type AttemptRow = SessionAttemptRow & { sectionLabel: string };

type SectionStat = {
  label: string;
  correct: number;
  total: number;
  accuracy: number;
};

function predictedScoreLabel(examType: string, score: number): string {
  if (isApExam(examType)) return `Predicted AP score: ${score}`;
  if (isIbExam(examType)) return `Predicted IB score: ${score}`;
  if (examType === "ACT") return `Predicted ACT score: ${score}`;
  return `Predicted SAT score: ${score}`;
}

function scoringEncouragement(examType: string): string {
  if (isApExam(examType)) {
    const { min, max } = scoreBoundsForExam(examType);
    return `Weighted scoring favors harder questions. Accuracy maps to the AP ${min}–${max} scale.`;
  }
  if (isIbExam(examType)) {
    const { min, max } = scoreBoundsForExam(examType);
    return `Weighted scoring favors harder questions. Accuracy maps to the IB ${min}–${max} scale.`;
  }
  if (examType === "ACT") {
    return `Weighted scoring favors harder questions. Accuracy maps to the ACT 1–36 scale.`;
  }
  return `Weighted scoring favors harder questions (easy 1.0×, medium 1.2×, hard 1.5×). 40% weighted accuracy maps to ~800; 95% maps to ~1550.`;
}

export default function ExamReportPage() {
  const params = useParams();
  const sessionId = params.sessionId as string;

  const [attempts, setAttempts] = useState<AttemptRow[]>([]);
  const [predictedScore, setPredictedScore] = useState<number | null>(null);
  const [timeSpentSeconds, setTimeSpentSeconds] = useState(0);
  const [loading, setLoading] = useState(true);
  const [expandedAi, setExpandedAi] = useState<string | null>(null);
  const [sessionExamType, setSessionExamType] = useState<string>("SAT");

  useEffect(() => {
    void (async () => {
      const supabase = createClient();

      const { data: session } = await supabase
        .from("exam_sessions")
        .select(
          "total_questions, time_spent_seconds, score_predicted, metadata, question_order, exam_type",
        )
        .eq("id", sessionId)
        .eq("session_type", "full_exam")
        .single();

      if (!session) {
        setLoading(false);
        return;
      }

      setSessionExamType(session.exam_type ?? "SAT");
      setPredictedScore(session.score_predicted);
      if (session.time_spent_seconds) {
        setTimeSpentSeconds(session.time_spent_seconds);
      }

      const metadata = parseExamMetadata(session.metadata);
      const flaggedIds = new Set(metadata?.flagged_question_ids ?? []);
      const sectionByQuestion = new Map<string, string>();
      for (const section of metadata?.sections ?? []) {
        for (const qid of section.question_ids) {
          sectionByQuestion.set(qid, section.label);
        }
      }

      const questionOrder = session.question_order ?? [];
      const order =
        questionOrder.length > 0
          ? questionOrder
          : (metadata?.sections ?? []).flatMap((s) => s.question_ids);

      const rows = await buildSessionAttemptRows(
        supabase,
        sessionId,
        order,
        [...flaggedIds],
        { sectionByQuestionId: sectionByQuestion },
      );

      const mapped: AttemptRow[] = rows.map((row) => ({
        ...row,
        sectionLabel: row.sectionLabel ?? "Section",
      }));

      setAttempts(mapped);
      setLoading(false);
    })();
  }, [sessionId]);

  const correct = attempts.filter((a) => a.isCorrect).length;
  const total = attempts.length;
  const accuracy = total > 0 ? Math.round((correct / total) * 100) : 0;

  const sectionStats = useMemo((): SectionStat[] => {
    const map = new Map<string, { correct: number; total: number }>();
    for (const a of attempts) {
      const row = map.get(a.sectionLabel) ?? { correct: 0, total: 0 };
      row.total += 1;
      if (a.isCorrect) row.correct += 1;
      map.set(a.sectionLabel, row);
    }
    return [...map.entries()].map(([label, stats]) => ({
      label,
      ...stats,
      accuracy:
        stats.total > 0
          ? Math.round((stats.correct / stats.total) * 100)
          : 0,
    }));
  }, [attempts]);

  const difficultyBreakdown = useMemo(() => {
    const levels = ["easy", "medium", "hard"] as const;
    return levels.map((level) => {
      const subset = attempts.filter((a) => a.difficulty === level);
      const correctCount = subset.filter((a) => a.isCorrect).length;
      return {
        level,
        correct: correctCount,
        total: subset.length,
      };
    });
  }, [attempts]);

  const chartData = [
    { name: "accuracy", value: accuracy, fill: "hsl(var(--primary))" },
  ];

  const formatTime = (seconds: number) => {
    const m = Math.floor(seconds / 60);
    const s = seconds % 60;
    return `${m}m ${s}s`;
  };

  if (loading) {
    return (
      <div className={styles.page}>
        <Skeleton className="h-12 w-64" />
        <Skeleton className="mt-6 h-40 w-full rounded-xl" />
      </div>
    );
  }

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <div>
          <p className={styles.kicker}>Exam report</p>
          <h1 className={styles.scoreTitle}>
            {predictedScore != null
              ? predictedScoreLabel(sessionExamType, predictedScore)
              : `${correct} of ${total} correct`}
          </h1>
          <p className={styles.metaLine}>
            {accuracy}% raw accuracy · {formatTime(timeSpentSeconds)}
          </p>
          <p className={styles.encouragement}>
            {scoringEncouragement(sessionExamType)}
          </p>
        </div>
        <div className={styles.headerAside}>
          <ThemeToggle />
          <div className={styles.chartWrap}>
            <ResponsiveContainer width={160} height={160}>
              <RadialBarChart
                data={chartData}
                innerRadius={54}
                outerRadius={72}
                startAngle={90}
                endAngle={-270}
              >
                <PolarAngleAxis type="number" domain={[0, 100]} tick={false} />
                <RadialBar
                  dataKey="value"
                  cornerRadius={8}
                  background={{ fill: "hsl(var(--border))" }}
                />
              </RadialBarChart>
            </ResponsiveContainer>
            <span className={styles.chartLabel}>{accuracy}%</span>
          </div>
        </div>
      </header>

      <section className={styles.section}>
        <h2>Section breakdown</h2>
        <div className={styles.diffGrid}>
          {sectionStats.map((row) => (
            <Card key={row.label}>
              <CardContent className="pt-5">
                <p className={styles.diffLabel}>{row.label}</p>
                <p className={styles.diffValue}>
                  {row.correct}/{row.total} correct · {row.accuracy}%
                </p>
              </CardContent>
            </Card>
          ))}
        </div>
      </section>

      <section className={styles.section}>
        <h2>Difficulty breakdown</h2>
        <div className={styles.diffGrid}>
          {difficultyBreakdown.map((row) => (
            <Card key={row.level}>
              <CardContent className="pt-5">
                <p className={styles.diffLabel}>
                  {formatDifficultyLabel(row.level)}
                </p>
                <p className={styles.diffValue}>
                  {row.correct}/{row.total} correct
                </p>
              </CardContent>
            </Card>
          ))}
        </div>
      </section>

      <section className={styles.section}>
        <h2>Answer review</h2>
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
      </section>

      <section className={styles.section}>
        <h2>Question breakdown</h2>
        <Accordion multiple className={styles.accordion}>
          {attempts.map((a) => (
            <AccordionItem key={a.id} value={a.id} id={`q-${a.id}`}>
              <AccordionTrigger>
                <span>
                  Q{a.questionNumber} · {a.sectionLabel} · {a.topic} ·{" "}
                  {formatDifficultyLabel(a.difficulty)}
                </span>
                <Badge variant={a.isCorrect ? "default" : "destructive"}>
                  {a.isCorrect
                    ? "Correct"
                    : `You: ${a.selected} · Answer: ${a.correct}`}
                </Badge>
              </AccordionTrigger>
              <AccordionContent>
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
                <p
                  className={
                    a.isCorrect ? styles.answerCorrect : styles.answerWrong
                  }
                >
                  Your answer: {a.selected} · Correct: {a.correct}
                </p>
                <StepByStepExplanation
                  question={{
                    id: a.questionId,
                    explanation: a.explanation,
                    options: a.options,
                    stimulus_text: a.stimulus,
                    stimulus_type: a.stimulusType,
                    section: a.section ?? a.sectionLabel ?? "",
                  }}
                  selectedOptionId={a.selected}
                  variant="inline"
                />
                <Button
                  type="button"
                  variant="outline"
                  size="sm"
                  onClick={() =>
                    setExpandedAi(expandedAi === a.id ? null : a.id)
                  }
                >
                  Explain with AI
                </Button>
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
              </AccordionContent>
            </AccordionItem>
          ))}
        </Accordion>
      </section>

      <footer className={styles.stickyBar}>
        <div className={styles.stickyInner}>
          <Button href="/dashboard/exams">Back to Exams</Button>
          <Button href="/dashboard/practice/bank" variant="outline">
            Practice Weak Areas
          </Button>
          <Button href={tutorHref(sessionExamType)} variant="ghost">
            {tutorCtaLabel(sessionExamType)}
          </Button>
        </div>
      </footer>
    </div>
  );
}
