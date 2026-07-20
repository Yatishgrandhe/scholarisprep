"use client";

import { useEffect, useRef, useState } from "react";
import { useRouter } from "next/navigation";
import { DotsThree, Info, PushPin } from "@phosphor-icons/react";
import { toast } from "sonner";
import { SessionLoadingOverlay } from "@/components/exam/SessionLoadingOverlay";
import { useAuth } from "@/hooks/useAuth";
import { createSimulatorExamSession } from "@/lib/exam/queries";
import {
  DIGITAL_SAT_BREAK_MINUTES,
  DIGITAL_SAT_TOTAL_MINUTES,
  DIGITAL_SAT_TOTAL_QUESTIONS,
} from "@/lib/exam/digitalSat";
import styles from "@/app/dashboard/predicted-papers/page.module.css";

type PaperDifficulty = "standard" | "hard" | "expert";

const PAPER_DESCRIPTIONS = [
  "The gentlest of the ten forms, a clean baseline before you push the difficulty up.",
  "A touch tougher, with a denser Module 2. Real-test rules: no check, no AI, no explanations until you finish.",
  "Balanced Reading/Writing and Math with a harder Module 2 mix.",
  "Mid-pack difficulty with trap-engineered Module 2 items.",
  "Harder Module 2 across both sections, calibrated above official practice materials.",
  "Advanced form, dense passages and multi-step math that mirror recent hard administrations.",
  "Advanced+ form. Module 2 leans on the hardest item types in the bank.",
  "Near-ceiling difficulty for students targeting 1500+.",
  "One of the two hardest forms, built to expose the last weaknesses before test day.",
  "The hardest of the ten. Calibrated to the toughest real Module 2.",
];

function paperDifficulty(i: number): PaperDifficulty {
  if (i <= 2) return "standard";
  if (i <= 6) return "hard";
  return "expert";
}

const PAPERS = Array.from({ length: 10 }, (_, i) => ({
  id: `predicted-${i + 1}`,
  index: i,
  title: `Practice Exam ${i + 1}`,
  description: PAPER_DESCRIPTIONS[i],
  difficulty: paperDifficulty(i),
}));

const DIFFICULTY_LABELS: Record<PaperDifficulty, string> = {
  standard: "Standard",
  hard: "Hard",
  expert: "1500+",
};

type ResumableExam = { id: string; form: number };
type CompletedExam = {
  id: string;
  form: number;
  total: number | null;
  rw: number | null;
  math: number | null;
  date: string | null;
};

function formatDate(iso: string | null): string {
  if (!iso) return "";
  return new Date(iso).toLocaleDateString(undefined, {
    month: "long",
    day: "numeric",
    year: "numeric",
  });
}

export function PredictedPapersClient() {
  const router = useRouter();
  const { user, supabase } = useAuth();
  const [starting, setStarting] = useState<string | null>(null);
  const [resumable, setResumable] = useState<ResumableExam[]>([]);
  const [completed, setCompleted] = useState<CompletedExam[]>([]);
  const [openMenu, setOpenMenu] = useState<string | null>(null);
  const menuRef = useRef<HTMLDivElement | null>(null);

  useEffect(() => {
    if (!user || !supabase) return;
    let cancelled = false;
    void (async () => {
      const [{ data: inProgress }, { data: done }] = await Promise.all([
        supabase
          .from("exam_sessions")
          .select("id, metadata")
          .eq("user_id", user.id)
          .eq("session_type", "full_exam")
          .eq("exam_type", "SAT")
          .is("completed_at", null)
          .order("created_at", { ascending: false })
          .limit(20),
        supabase
          .from("exam_sessions")
          .select("id, metadata, completed_at, score_predicted")
          .eq("user_id", user.id)
          .eq("session_type", "full_exam")
          .eq("exam_type", "SAT")
          .not("completed_at", "is", null)
          .order("completed_at", { ascending: false })
          .limit(12),
      ]);
      if (cancelled) return;

      const isSim = (m: unknown) =>
        (m as { exam_mode?: string } | null)?.exam_mode === "simulator";
      const formOf = (m: unknown) =>
        typeof (m as { simulator_form?: number } | null)?.simulator_form === "number"
          ? (m as { simulator_form: number }).simulator_form
          : 0;

      setResumable(
        (inProgress ?? [])
          .filter((s) => isSim(s.metadata))
          .map((s) => ({ id: s.id as string, form: formOf(s.metadata) })),
      );
      setCompleted(
        (done ?? [])
          .filter((s) => isSim(s.metadata))
          .map((s) => {
            const m = s.metadata as { score_rw?: number; score_math?: number };
            return {
              id: s.id as string,
              form: formOf(s.metadata),
              total: typeof s.score_predicted === "number" ? s.score_predicted : null,
              rw: typeof m?.score_rw === "number" ? m.score_rw : null,
              math: typeof m?.score_math === "number" ? m.score_math : null,
              date: s.completed_at as string | null,
            };
          }),
      );
    })();
    return () => {
      cancelled = true;
    };
  }, [user, supabase]);

  useEffect(() => {
    if (!openMenu) return;
    const onClick = (e: MouseEvent) => {
      if (!menuRef.current?.contains(e.target as Node)) setOpenMenu(null);
    };
    document.addEventListener("mousedown", onClick);
    return () => document.removeEventListener("mousedown", onClick);
  }, [openMenu]);

  const startPaper = async (paper: (typeof PAPERS)[number]) => {
    if (!user) {
      router.push("/auth/login");
      return;
    }
    setStarting(paper.id);
    try {
      const sessionId = await createSimulatorExamSession(
        supabase,
        user.id,
        "SAT",
        paper.index,
        paper.id,
      );
      if (sessionId) {
        router.push(`/dashboard/exams/${sessionId}`);
        return;
      }
      toast.error("Could not start this practice exam. Please try again in a moment.");
    } catch (err) {
      console.error("startPaper failed:", err);
      toast.error("Could not start this practice exam. Please try again.");
    }
    setStarting(null);
  };

  const deleteAttempt = async (session: ResumableExam) => {
    setOpenMenu(null);
    try {
      await supabase.from("question_attempts").delete().eq("session_id", session.id);
      await supabase.from("exam_sessions").delete().eq("id", session.id);
      setResumable((prev) => prev.filter((r) => r.id !== session.id));
      toast.success("Attempt deleted, you can start this exam fresh.");
    } catch (err) {
      console.error("deleteAttempt failed:", err);
      toast.error("Could not delete this attempt. Please try again.");
    }
  };

  if (starting) {
    return <SessionLoadingOverlay message="Setting up your practice exam…" />;
  }

  return (
    <div className={styles.wrap}>
      <div className={styles.disclaimer}>
        <span className={styles.disclaimerIcon} aria-hidden>
          <Info size={18} weight="duotone" />
        </span>
        <div>
          <p className={styles.disclaimerTitle}>About these practice exams</p>
          <p className={styles.disclaimerText}>
            Each exam uses unseen questions from a dedicated pool, calibrated above
            official practice difficulty and ramping from Exam 1 to Exam 10. Module 2
            adapts to your Module 1 score, scores here may run slightly lower than
            other practice tests, which is normal.
          </p>
        </div>
      </div>

      <div className={styles.examList}>
        {PAPERS.map((paper, i) => {
          const session = resumable.find((r) => r.form === i + 1);
          return (
            <article
              key={paper.id}
              className={styles.examRow}
              data-tint={i % 6}
              data-menuopen={
                session && openMenu === session.id ? "true" : undefined
              }
            >
              <span className={styles.examClip} aria-hidden>
                <span className={styles.examBlob} />
              </span>
              <div className={styles.examInfo}>
                <div className={styles.examTitleRow}>
                  <h2 className={styles.examName}>{paper.title}</h2>
                  <span
                    className={styles.diffPill}
                    data-diff={paper.difficulty}
                  >
                    <PushPin size={12} weight="fill" aria-hidden />
                    {DIFFICULTY_LABELS[paper.difficulty]}
                  </span>
                </div>
                <p className={styles.examSub}>
                  Timed full-length practice exam · {DIGITAL_SAT_TOTAL_QUESTIONS}{" "}
                  questions · {DIGITAL_SAT_TOTAL_MINUTES} min +{" "}
                  {DIGITAL_SAT_BREAK_MINUTES} min break
                </p>
                <div className={styles.examActions}>
                  {session ? (
                    <>
                      <button
                        type="button"
                        className={styles.resumeCta}
                        onClick={() =>
                          router.push(`/dashboard/exams/${session.id}`)
                        }
                      >
                        Resume
                      </button>
                      <div
                        className={styles.menuWrap}
                        ref={openMenu === session.id ? menuRef : null}
                      >
                        <button
                          type="button"
                          className={styles.menuDots}
                          aria-label="More options"
                          aria-expanded={openMenu === session.id}
                          onClick={() =>
                            setOpenMenu(
                              openMenu === session.id ? null : session.id,
                            )
                          }
                        >
                          <DotsThree size={20} weight="bold" />
                        </button>
                        {openMenu === session.id ? (
                          <div className={styles.menuPop} role="menu">
                            <button
                              type="button"
                              className={styles.menuDanger}
                              onClick={() => void deleteAttempt(session)}
                            >
                              Delete attempt
                            </button>
                          </div>
                        ) : null}
                      </div>
                    </>
                  ) : (
                    <button
                      type="button"
                      className={styles.startCta}
                      onClick={() => void startPaper(paper)}
                    >
                      Start
                    </button>
                  )}
                </div>
              </div>
            </article>
          );
        })}
      </div>

      {completed.length > 0 ? (
        <section className={styles.results} aria-label="Test results">
          <h2 className={styles.resultsTitle}>Test results</h2>
          <div className={styles.resultsGrid}>
            {completed.map((c) => (
              <article key={c.id} className={styles.resultCard}>
                <h3 className={styles.resultName}>
                  Practice Exam {c.form || "?"}
                </h3>
                <p className={styles.resultDate}>{formatDate(c.date)}</p>
                <div className={styles.resultTotalWrap}>
                  <span className={styles.resultTotalLabel}>Total Score</span>
                  <span className={styles.resultTotal}>{c.total ?? "—"}</span>
                  <span className={styles.resultRange}>400–1600</span>
                </div>
                <div className={styles.resultSubs}>
                  <div className={styles.resultSub}>
                    <span>Reading and Writing</span>
                    <strong>{c.rw ?? "—"}</strong>
                  </div>
                  <div className={styles.resultSub}>
                    <span>Math</span>
                    <strong>{c.math ?? "—"}</strong>
                  </div>
                </div>
                <button
                  type="button"
                  className={styles.scoreDetails}
                  onClick={() => router.push(`/dashboard/exams/${c.id}/report`)}
                >
                  Score Details
                </button>
              </article>
            ))}
          </div>
        </section>
      ) : null}
    </div>
  );
}
