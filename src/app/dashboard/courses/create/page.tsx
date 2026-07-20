"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import Link from "next/link";
import type { SupabaseClient } from "@supabase/supabase-js";
import { animate } from "animejs";
import {
  ArrowSquareOut,
  CaretDown,
  CaretUp,
  CheckCircle,
  CircleNotch,
  Clock,
  ClosedCaptioning,
  Gauge,
  GraduationCap,
  Key,
  Lightbulb,
  ListNumbers,
  PlayCircle,
  Sparkle,
  Target,
  TextAlignLeft,
  Trash,
  WarningCircle,
  YoutubeLogo,
} from "@phosphor-icons/react";
import { Button, buttonVariants } from "@/components/ui/button";
import { useAuth } from "@/hooks/useAuth";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import {
  aiRequest,
  canUsePlatformAiKey,
  hasStoredAiKey,
  promptForAiKey,
  AI_KEY_REQUIRED_EVENT,
} from "@/lib/ai/clientKey";
import { cn } from "@/lib/utils";
import styles from "./courseBuilder.module.css";

type Lesson = {
  title: string;
  summary: string;
  keyPoints?: string[];
  steps?: string[];
};
type QuizQ = {
  question: string;
  options: string[];
  answerIndex: number;
  explanation: string;
};
type CourseRow = {
  id: string;
  title: string;
  summary: string | null;
  video_id: string | null;
  youtube_url: string;
  content: { lessons?: Lesson[]; quiz?: QuizQ[] };
  created_at: string;
};

type Difficulty = "foundational" | "standard" | "advanced";
type Focus = "sat" | "general";

// Generation theatre — each stage mirrors a real step in the pipeline so the
// wait reads as progress, not a spinner.
const STAGES = [
  {
    icon: ClosedCaptioning,
    label: "Reading the captions",
    detail: "Pulling the transcript straight from YouTube",
    tone: "cobalt" as const,
  },
  {
    icon: TextAlignLeft,
    label: "Compressing to the key parts",
    detail: "Trimming filler, keeping the high-signal moments",
    tone: "sat" as const,
  },
  {
    icon: GraduationCap,
    label: "Building the lessons",
    detail: "Structuring clear, step-by-step explanations",
    tone: "cobalt" as const,
  },
  {
    icon: CheckCircle,
    label: "Writing the quiz",
    detail: "Drafting auto-graded questions to check recall",
    tone: "gre" as const,
  },
];

const TONE_HUE: Record<string, string> = {
  cobalt: "var(--primary)",
  sat: "var(--exam-sat)",
  gre: "var(--score-positive)",
};

const DIFFICULTIES: [Difficulty, string][] = [
  ["foundational", "Foundational"],
  ["standard", "Standard"],
  ["advanced", "Advanced"],
];
const LESSON_COUNTS = [4, 5, 6];
const FOCUSES: [Focus, string][] = [
  ["sat", "SAT-aligned"],
  ["general", "General"],
];

export default function CreateCoursePage() {
  const { user, supabase } = useAuth();
  const reduced = useReducedMotion();

  const [hasKey, setHasKey] = useState(true);
  const [url, setUrl] = useState("");
  const [busy, setBusy] = useState(false);
  const [stage, setStage] = useState(0);
  const [elapsed, setElapsed] = useState(0);
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [courses, setCourses] = useState<CourseRow[]>([]);
  const [expandedId, setExpandedId] = useState<string | null>(null);
  const [justAddedId, setJustAddedId] = useState<string | null>(null);

  // Composer options.
  const [difficulty, setDifficulty] = useState<Difficulty>("standard");
  const [lessons, setLessons] = useState(5);
  const [focus, setFocus] = useState<Focus>("sat");
  const [includeQuiz, setIncludeQuiz] = useState(true);

  const listRef = useRef<HTMLDivElement>(null);
  const timers = useRef<ReturnType<typeof setInterval>[]>([]);

  useEffect(() => {
    const sync = () => {
      void (async () => {
        if (hasStoredAiKey()) {
          setHasKey(true);
          return;
        }
        // global / platform_only: server can supply the key — don't nag for BYO.
        setHasKey(await canUsePlatformAiKey());
      })();
    };
    sync();
    window.addEventListener(AI_KEY_REQUIRED_EVENT, sync);
    window.addEventListener("focus", sync);
    return () => {
      window.removeEventListener(AI_KEY_REQUIRED_EVENT, sync);
      window.removeEventListener("focus", sync);
    };
  }, []);

  useEffect(() => () => timers.current.forEach(clearInterval), []);

  const loadCourses = useCallback(async () => {
    if (!user) return;
    const db = supabase as unknown as SupabaseClient;
    const { data } = await db
      .from("generated_courses")
      .select("id, title, summary, video_id, youtube_url, content, created_at")
      .order("created_at", { ascending: false });
    const rows = (data as CourseRow[] | null) ?? [];
    setCourses(rows);
    setExpandedId((prev) =>
      prev && rows.some((r) => r.id === prev) ? prev : (rows[0]?.id ?? null),
    );
    setLoading(false);
  }, [user, supabase]);

  useEffect(() => {
    void loadCourses();
  }, [loadCourses]);

  const generate = async () => {
    setError(null);
    if (!url.trim()) {
      setError("Paste a YouTube link to begin.");
      return;
    }
    if (!hasStoredAiKey() && !(await canUsePlatformAiKey())) {
      promptForAiKey();
      setHasKey(false);
      return;
    }
    setBusy(true);
    setStage(0);
    setElapsed(0);
    const t0 = Date.now();
    const et = setInterval(() => setElapsed(Date.now() - t0), 100);
    const stg = setInterval(
      () => setStage((s) => Math.min(s + 1, STAGES.length - 1)),
      2400,
    );
    timers.current.push(et, stg);

    try {
      const res = await aiRequest("/api/courses/generate", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          youtubeUrl: url.trim(),
          options: { difficulty, lessons, focus, includeQuiz },
        }),
      });
      const json = await res.json();
      if (!res.ok) {
        setError(json.error ?? "Could not generate the course.");
        return;
      }
      setStage(STAGES.length);
      setUrl("");
      const newId: string | undefined = json.course?.id;
      await loadCourses();
      if (newId) {
        setExpandedId(newId);
        setJustAddedId(newId);
        const clr = setTimeout(() => setJustAddedId(null), 2200);
        timers.current.push(clr as unknown as ReturnType<typeof setInterval>);
      }
      if (!reduced && listRef.current) {
        animate(listRef.current.querySelectorAll("[data-course]"), {
          opacity: [0, 1],
          translateY: [16, 0],
          delay: (_el, i) => (i ?? 0) * 70,
          duration: 520,
          ease: "outExpo",
        });
      }
    } catch {
      setError("Network error. Please try again.");
    } finally {
      clearInterval(et);
      clearInterval(stg);
      timers.current = timers.current.filter((t) => t !== et && t !== stg);
      setBusy(false);
    }
  };

  const remove = async (id: string) => {
    const db = supabase as unknown as SupabaseClient;
    await db.from("generated_courses").delete().eq("id", id);
    setCourses((c) => c.filter((x) => x.id !== id));
    setExpandedId((prev) => (prev === id ? null : prev));
  };

  const progressPct = (stage / STAGES.length) * 100;
  const hasCourses = !loading && courses.length > 0;

  return (
    <div className={styles.page}>
      {/* Ambient cobalt glow behind the header. */}
      <div aria-hidden className={styles.glow} />

      {/* ---------- Page header ---------- */}
      <header className={styles.header}>
        <span className={styles.badge}>
          <Sparkle size={13} weight="fill" className={styles.badgeIcon} />
          AI Courses · powered by Mistral
        </span>
        <h1 className={styles.h1}>Turn any video into a course</h1>
        <p className={styles.lead}>
          Paste a YouTube link. Scho reads the captions, keeps only what matters,
          and builds step-by-step lessons and a quiz, on your own free Mistral
          key.
        </p>
      </header>

      {/* ---------- Two columns ---------- */}
      <div className={styles.columns}>
        {/* ===== LEFT: composer ===== */}
        <section className={styles.left}>
          <div className={styles.composer}>
            <div aria-hidden className={styles.composerTopLine} />

            {/* composer header */}
            <div className={styles.composerHead}>
              <span className={styles.composerIcon}>
                <Sparkle size={18} weight="fill" />
              </span>
              <div className={styles.composerHeadText}>
                <p className={styles.composerTitle}>New course</p>
                <p className={styles.composerSub}>Drop a link, Scho does the rest</p>
              </div>
            </div>

            {/* input + CTA */}
            <div className={styles.inputRow}>
              <div className={styles.inputWrap}>
                <YoutubeLogo size={22} weight="fill" className={styles.inputIcon} />
                <input
                  className={styles.input}
                  placeholder="https://www.youtube.com/watch?v=…"
                  value={url}
                  disabled={busy}
                  onChange={(e) => setUrl(e.target.value)}
                  onKeyDown={(e) => e.key === "Enter" && !busy && void generate()}
                />
              </div>
              <button
                type="button"
                onClick={() => void generate()}
                disabled={busy}
                className={styles.cta}
              >
                {busy ? (
                  <>
                    <CircleNotch size={17} weight="bold" className={styles.spin} />
                    Generating…
                  </>
                ) : (
                  <>
                    <Sparkle size={17} weight="fill" />
                    Generate course
                  </>
                )}
              </button>
            </div>

            {error ? (
              <div className={styles.error}>
                <WarningCircle size={15} weight="fill" /> {error}
              </div>
            ) : null}

            {/* IDLE: options */}
            {!busy ? (
              <div className={styles.options}>
                <OptionGroup icon={Gauge} label="Difficulty">
                  <Segmented>
                    {DIFFICULTIES.map(([key, label]) => (
                      <SegButton
                        key={key}
                        active={difficulty === key}
                        onClick={() => setDifficulty(key)}
                      >
                        {label}
                      </SegButton>
                    ))}
                  </Segmented>
                </OptionGroup>

                <OptionGroup icon={ListNumbers} label="Lessons">
                  <Segmented>
                    {LESSON_COUNTS.map((n) => (
                      <SegButton
                        key={n}
                        active={lessons === n}
                        onClick={() => setLessons(n)}
                      >
                        {n}
                      </SegButton>
                    ))}
                  </Segmented>
                </OptionGroup>

                <OptionGroup icon={Target} label="Focus">
                  <div className={styles.chips}>
                    {FOCUSES.map(([key, label]) => (
                      <Chip
                        key={key}
                        active={focus === key}
                        onClick={() => setFocus(key)}
                      >
                        {label}
                      </Chip>
                    ))}
                  </div>
                </OptionGroup>

                {/* quiz toggle */}
                <div className={styles.quizToggleRow}>
                  <div className={styles.quizToggleInfo}>
                    <CheckCircle
                      size={19}
                      weight="duotone"
                      className={styles.quizToggleIcon}
                    />
                    <div className={styles.quizToggleText}>
                      <p className={styles.quizToggleTitle}>Include a quiz</p>
                      <p className={styles.quizToggleSub}>
                        Auto-graded questions after the lessons
                      </p>
                    </div>
                  </div>
                  <button
                    type="button"
                    role="switch"
                    aria-checked={includeQuiz}
                    aria-label="Include a quiz"
                    onClick={() => setIncludeQuiz((q) => !q)}
                    className={cn(styles.toggle, includeQuiz && styles.toggleOn)}
                  >
                    <span
                      className={cn(styles.knob, includeQuiz && styles.knobOn)}
                    />
                  </button>
                </div>

                {/* pipeline chips */}
                <div className={styles.pipeline}>
                  <PipelineChip icon={ClosedCaptioning} label="Reads captions" />
                  <span className={styles.dot}>·</span>
                  <PipelineChip icon={TextAlignLeft} label="Compresses" />
                  <span className={styles.dot}>·</span>
                  <PipelineChip icon={GraduationCap} label="Lessons + quiz" />
                </div>
              </div>
            ) : (
              /* BUSY: generation theatre */
              <div className={styles.busy}>
                <div className={styles.busyHead}>
                  <span className={styles.busyTitle}>
                    <Sparkle
                      size={15}
                      weight="fill"
                      className={cn(styles.pulse, styles.badgeIcon)}
                    />
                    Building your course
                  </span>
                  <span className={styles.busyTimer}>
                    {(elapsed / 1000).toFixed(1)}s
                  </span>
                </div>
                <div className={styles.stages}>
                  {STAGES.map((s, i) => {
                    const status =
                      i < stage ? "done" : i === stage ? "active" : "pending";
                    const hue = TONE_HUE[s.tone];
                    const Icon = s.icon;
                    return (
                      <div
                        key={s.label}
                        className={cn(
                          styles.stageRow,
                          status === "active" && styles.stageRowActive,
                          status === "pending" && styles.stageRowPending,
                        )}
                      >
                        <span
                          className={styles.stageIcon}
                          style={
                            status === "done"
                              ? {
                                  background:
                                    "hsl(var(--score-positive) / 0.12)",
                                  color: "hsl(var(--score-positive))",
                                }
                              : status === "active"
                                ? {
                                    background: `hsl(${hue} / 0.14)`,
                                    color: `hsl(${hue})`,
                                  }
                                : {
                                    background: "hsl(var(--muted))",
                                    color: "hsl(var(--muted-foreground))",
                                  }
                          }
                        >
                          <Icon weight="duotone" />
                        </span>
                        <div className={styles.stageBody}>
                          <p className={styles.stageLabel}>{s.label}</p>
                          <p className={styles.stageDetail}>{s.detail}</p>
                        </div>
                        {status === "done" ? (
                          <CheckCircle
                            size={18}
                            weight="fill"
                            style={{ color: "hsl(var(--score-positive))" }}
                          />
                        ) : status === "active" ? (
                          <CircleNotch
                            size={18}
                            weight="bold"
                            className={cn(styles.spin, styles.badgeIcon)}
                          />
                        ) : (
                          <span className={styles.stageDot} />
                        )}
                      </div>
                    );
                  })}
                </div>
                <div className={styles.progress}>
                  <div
                    className={styles.progressBar}
                    style={{ width: `${progressPct}%` }}
                  />
                </div>
              </div>
            )}
          </div>

          {/* Key-missing prompt */}
          {!hasKey ? (
            <div className={styles.keyPrompt}>
              <div className={styles.keyPromptInfo}>
                <span className={styles.keyPromptIcon}>
                  <Key size={18} weight="duotone" />
                </span>
                <div>
                  <p className={styles.keyPromptTitle}>Add your free Mistral key</p>
                  <p className={styles.keyPromptSub}>
                    Same key used across Scholaris. Stays in your browser only.
                  </p>
                </div>
              </div>
              <div className={styles.keyPromptActions}>
                <Button
                  variant="outline"
                  size="sm"
                  className="rounded-full"
                  onClick={() => promptForAiKey()}
                >
                  Add key
                </Button>
                <Link
                  href="/dashboard/settings"
                  className={cn(
                    buttonVariants({ size: "sm", variant: "ghost" }),
                    "rounded-full",
                  )}
                >
                  Settings
                </Link>
              </div>
            </div>
          ) : null}
        </section>

        {/* ===== RIGHT: library / onboarding ===== */}
        <section className={styles.right} ref={listRef}>
          {loading ? (
            <div className={styles.skelWrap}>
              <span className={cn(styles.skel, styles.skelTitle)} />
              <span className={cn(styles.skel, styles.skelCard)} />
              <span className={cn(styles.skel, styles.skelCard)} />
            </div>
          ) : hasCourses ? (
            <>
              <div className={styles.libHead}>
                <div className={styles.libTitleWrap}>
                  <h2 className={styles.libTitle}>Your courses</h2>
                  <span className={styles.count}>{courses.length}</span>
                </div>
                <span className={styles.sort}>
                  <Clock size={14} /> Newest first
                </span>
              </div>
              <div className={styles.courseList}>
                {courses.map((c) => (
                  <CourseCard
                    key={c.id}
                    course={c}
                    expanded={expandedId === c.id}
                    justAdded={justAddedId === c.id}
                    onToggle={() =>
                      setExpandedId((prev) => (prev === c.id ? null : c.id))
                    }
                    onDelete={() => void remove(c.id)}
                  />
                ))}
              </div>
            </>
          ) : (
            <Onboarding />
          )}
        </section>
      </div>
    </div>
  );
}

/* -------------------------------------------------------------------------- */
/*  Composer bits                                                             */
/* -------------------------------------------------------------------------- */

function OptionGroup({
  icon: Icon,
  label,
  children,
}: {
  icon: typeof Gauge;
  label: string;
  children: React.ReactNode;
}) {
  return (
    <div>
      <p className={styles.optLabel}>
        <Icon size={14} weight="duotone" className={styles.optLabelIcon} />
        {label}
      </p>
      {children}
    </div>
  );
}

function Segmented({ children }: { children: React.ReactNode }) {
  return <div className={styles.segment}>{children}</div>;
}

function SegButton({
  active,
  onClick,
  children,
}: {
  active: boolean;
  onClick: () => void;
  children: React.ReactNode;
}) {
  return (
    <button
      type="button"
      onClick={onClick}
      className={cn(styles.seg, active && styles.segActive)}
    >
      {children}
    </button>
  );
}

function Chip({
  active,
  onClick,
  children,
}: {
  active: boolean;
  onClick: () => void;
  children: React.ReactNode;
}) {
  return (
    <button
      type="button"
      onClick={onClick}
      className={cn(styles.chip, active && styles.chipActive)}
    >
      {children}
    </button>
  );
}

function PipelineChip({
  icon: Icon,
  label,
}: {
  icon: typeof YoutubeLogo;
  label: string;
}) {
  return (
    <span className={styles.pipeItem}>
      <Icon size={14} weight="duotone" className={styles.pipeIcon} />
      {label}
    </span>
  );
}

/* -------------------------------------------------------------------------- */
/*  Course card (collapsible)                                                 */
/* -------------------------------------------------------------------------- */

function CourseCard({
  course,
  expanded,
  justAdded,
  onToggle,
  onDelete,
}: {
  course: CourseRow;
  expanded: boolean;
  justAdded: boolean;
  onToggle: () => void;
  onDelete: () => void;
}) {
  const lessons = course.content?.lessons ?? [];
  const quiz = course.content?.quiz ?? [];

  return (
    <div data-course className={cn(styles.card, justAdded && styles.cardNew)}>
      {/* header */}
      <div className={styles.cardHead}>
        <div className={styles.cardHeadMain}>
          <h3 className={styles.cardTitle}>{course.title}</h3>
          {course.summary ? (
            <p className={styles.cardSummary}>{course.summary}</p>
          ) : null}
          <div className={styles.cardMeta}>
            <span className={styles.metaItem}>
              <GraduationCap size={13} weight="fill" className={styles.metaIcon} />
              {lessons.length} lessons
            </span>
            {quiz.length ? (
              <span className={styles.metaItem}>
                <CheckCircle size={13} weight="fill" className={styles.metaIcon} />
                {quiz.length}-question quiz
              </span>
            ) : null}
            {course.youtube_url ? (
              <a
                href={course.youtube_url}
                target="_blank"
                rel="noopener noreferrer"
                className={styles.metaLink}
              >
                <PlayCircle size={13} weight="fill" /> Watch
                <ArrowSquareOut size={10} weight="bold" />
              </a>
            ) : null}
          </div>
        </div>
        <div className={styles.cardActions}>
          <button
            type="button"
            onClick={onToggle}
            title="Toggle lessons"
            aria-label={expanded ? "Collapse lessons" : "Expand lessons"}
            className={styles.iconBtn}
          >
            {expanded ? (
              <CaretUp size={15} weight="bold" />
            ) : (
              <CaretDown size={15} weight="bold" />
            )}
          </button>
          <button
            type="button"
            onClick={onDelete}
            title="Delete course"
            aria-label="Delete course"
            className={cn(styles.iconBtn, styles.iconBtnGhost)}
          >
            <Trash size={15} />
          </button>
        </div>
      </div>

      {expanded ? (
        <>
          <div className={styles.divider} />
          <ol className={styles.lessonList}>
            {lessons.map((l, i) => {
              const steps = l.steps ?? [];
              const points = l.keyPoints ?? [];
              return (
                <li key={i} className={styles.lesson}>
                  <p className={styles.lessonTitle}>
                    <span className={styles.lessonNo}>
                      {String(i + 1).padStart(2, "0")}
                    </span>
                    {l.title}
                  </p>
                  {l.summary ? (
                    <p className={styles.lessonSummary}>{l.summary}</p>
                  ) : null}
                  {steps.length ? (
                    <ol className={styles.steps}>
                      {steps.map((s, j) => (
                        <li key={j} className={styles.step}>
                          <span className={styles.stepNo}>{j + 1}</span>
                          <span>{s}</span>
                        </li>
                      ))}
                    </ol>
                  ) : points.length ? (
                    <ul className={styles.points}>
                      {points.map((k, j) => (
                        <li key={j} className={styles.point}>
                          <span className={styles.pointDot} />
                          <span className={styles.pointText}>{k}</span>
                        </li>
                      ))}
                    </ul>
                  ) : null}
                </li>
              );
            })}
          </ol>

          {quiz.length ? (
            <>
              <div className={styles.divider} />
              <div className={styles.quizSection}>
                <p className={styles.quizHead}>
                  <CheckCircle
                    size={16}
                    weight="fill"
                    className={styles.quizHeadIcon}
                  />
                  Check yourself
                  <span className={styles.quizHeadCount}>
                    · {quiz.length} questions
                  </span>
                </p>
                <ol className={styles.quizList}>
                  {quiz.map((q, i) => (
                    <li key={i}>
                      <p className={styles.quizQ}>
                        {i + 1}. {q.question}
                      </p>
                      <ul className={styles.quizOptions}>
                        {q.options.map((opt, j) => {
                          const correct = j === q.answerIndex;
                          return (
                            <li
                              key={j}
                              className={cn(styles.opt, correct && styles.optCorrect)}
                            >
                              <span className={styles.optLetter}>
                                {String.fromCharCode(65 + j)}
                              </span>
                              <span className={styles.optText}>{opt}</span>
                              {correct ? (
                                <CheckCircle
                                  size={15}
                                  weight="fill"
                                  className={styles.optCheck}
                                />
                              ) : null}
                            </li>
                          );
                        })}
                      </ul>
                      {q.explanation ? (
                        <p className={styles.explanation}>
                          <Lightbulb
                            size={14}
                            weight="duotone"
                            className={styles.explanationIcon}
                          />
                          {q.explanation}
                        </p>
                      ) : null}
                    </li>
                  ))}
                </ol>
              </div>
            </>
          ) : null}
        </>
      ) : null}
    </div>
  );
}

/* -------------------------------------------------------------------------- */
/*  Onboarding (empty state)                                                  */
/* -------------------------------------------------------------------------- */

const HOW_STEPS = [
  {
    no: "01",
    icon: YoutubeLogo,
    tone: "var(--primary)",
    title: "Paste a link",
    body: "Any lecture, tutorial, or worked example on YouTube.",
  },
  {
    no: "02",
    icon: TextAlignLeft,
    tone: "var(--exam-sat)",
    title: "Scho compresses it",
    body: "The transcript is trimmed to its highest-signal moments.",
  },
  {
    no: "03",
    icon: GraduationCap,
    tone: "var(--score-positive)",
    title: "Learn & test",
    body: "Step-by-step lessons plus a quiz to check what stuck.",
  },
];

function Onboarding() {
  return (
    <div className={styles.onboard}>
      <div>
        <p className={styles.sectionLabel}>How it works</p>
        <div className={styles.howGrid}>
          {HOW_STEPS.map((s) => {
            const Icon = s.icon;
            return (
              <div key={s.no} className={styles.howCard}>
                <div className={styles.howCardTop}>
                  <span
                    className={styles.iconTile}
                    style={{
                      background: `hsl(${s.tone} / 0.12)`,
                      color: `hsl(${s.tone})`,
                    }}
                  >
                    <Icon weight="duotone" />
                  </span>
                  <span className={styles.howNo}>{s.no}</span>
                </div>
                <p className={styles.howTitle}>{s.title}</p>
                <p className={styles.howBody}>{s.body}</p>
              </div>
            );
          })}
        </div>
      </div>

      <div>
        <p className={styles.sectionLabel}>What Scho builds</p>
        <PreviewCourse />
      </div>
    </div>
  );
}

function PreviewCourse() {
  return (
    <div className={styles.previewWrap}>
      <div aria-hidden className={styles.previewGlow} />
      <div className={styles.previewCard}>
        {/* faux chrome */}
        <div className={styles.previewChrome}>
          <span className={styles.chromeDot} />
          <span className={styles.chromeDot} />
          <span className={styles.chromeDot} />
          <span className={styles.chromeLabel}>
            <Sparkle size={11} weight="fill" className={styles.chromeLabelIcon} />
            Generated by Scho
          </span>
          <span className={styles.chromeBadge}>Preview</span>
        </div>
        {/* source row */}
        <div className={styles.previewSource}>
          <YoutubeLogo size={15} weight="fill" className={styles.inputIcon} />
          <span className={styles.previewSourceTitle}>
            Systems of equations: worked example
          </span>
          <span className={styles.previewDuration}>
            <PlayCircle size={13} weight="fill" /> 12:04
          </span>
        </div>
        {/* body */}
        <div className={styles.previewBody}>
          <h3 className={styles.previewH3}>Solving systems of equations</h3>
          <div className={styles.previewMeta}>
            <span className={styles.metaItem}>
              <GraduationCap size={13} weight="fill" className={styles.metaIcon} />4
              lessons
            </span>
            <span className={styles.metaItem}>
              <CheckCircle size={13} weight="fill" className={styles.metaIcon} />
              5-question quiz
            </span>
            <span className={cn(styles.metaItem, styles.previewMetaAccent)}>
              <ListNumbers size={13} weight="fill" /> Step-by-step
            </span>
          </div>
          <div className={styles.previewDivider} />
          <div className={styles.previewLesson}>
            <p className={styles.lessonTitle}>
              <span className={styles.lessonNo}>01</span>
              Set up the two equations
            </p>
            <ol className={styles.previewSteps}>
              {[
                "Name your unknowns and write one equation per condition.",
                "Line the variables up so the same letter sits in one column.",
              ].map((s, j) => (
                <li key={j} className={styles.step}>
                  <span className={styles.stepNo}>{j + 1}</span>
                  <span>{s}</span>
                </li>
              ))}
            </ol>
          </div>
          <div className={styles.previewCollapsedList}>
            {["Eliminate one variable", "Back-substitute and check"].map(
              (t, i) => (
                <div key={t} className={styles.previewCollapsedRow}>
                  <span className={styles.previewNo}>
                    {String(i + 2).padStart(2, "0")}
                  </span>
                  {t}
                </div>
              ),
            )}
          </div>
          <div className={styles.previewCheck}>
            <CheckCircle size={16} weight="fill" className={styles.previewCheckIcon} />
            Check yourself · 5 questions
            <span className={styles.previewCheckAuto}>auto-graded</span>
          </div>
        </div>
      </div>
    </div>
  );
}
