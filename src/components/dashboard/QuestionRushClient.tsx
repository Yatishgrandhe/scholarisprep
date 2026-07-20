"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import {
  BookOpenText,
  CaretDown,
  CaretRight,
  Check,
  Clock,
  Coffee,
  Fire,
  Lightning,
  RocketLaunch,
  Ruler,
  Star,
  Umbrella,
  X,
} from "@phosphor-icons/react";
import { SessionLoadingOverlay } from "@/components/exam/SessionLoadingOverlay";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useAuth } from "@/hooks/useAuth";
import { useSubjectStore } from "@/stores/subjectStore";
import {
  createPracticeSession,
  fetchCompletedQuestionIds,
  fetchPracticeQuestions,
  fetchRushSessions,
  withPracticeTimeout,
  PRACTICE_START_TIMEOUT_MS,
  type PracticeFilters,
  type SessionMetadata,
} from "@/lib/practice/queries";
import { toast } from "sonner";
import { launchPlanSession } from "@/lib/practice/launchPlanSession";
import {
  fetchRushCounts,
  type RushCounts,
  type SectionCounts,
} from "@/lib/practice/skillCounts";
import {
  SAT_MATH_DOMAINS,
  SAT_RW_DOMAINS,
  flattenSkills,
  type BankDomain,
} from "@/lib/dashboard/bankTaxonomy";
import styles from "@/app/dashboard/question-rush/page.module.css";

type Section = "reading_writing" | "math";
type PaceId = "relaxed" | "steady" | "standard" | "blitz";
type Difficulty = "easy" | "medium" | "hard";

const PACE_OPTIONS: {
  id: PaceId;
  label: string;
  sub: string;
  mult: number;
  Icon: typeof Umbrella;
  recommended?: boolean;
}[] = [
  { id: "relaxed", label: "Relaxed", sub: "1.5× time per question", mult: 1.5, Icon: Umbrella },
  { id: "steady", label: "Steady", sub: "1.25× time per question", mult: 1.25, Icon: Coffee },
  { id: "standard", label: "Standard", sub: "Baseline times", mult: 1, Icon: RocketLaunch, recommended: true },
  { id: "blitz", label: "Blitz", sub: "0.8× time per question", mult: 0.8, Icon: Lightning },
];

const DIFFICULTY_OPTIONS: { id: Difficulty; label: string; sub: string }[] = [
  { id: "easy", label: "Easy", sub: "Build speed on fundamentals" },
  { id: "medium", label: "Medium", sub: "Practice standard test-level questions" },
  { id: "hard", label: "Hard", sub: "Push into the most advanced questions" },
];

const COUNT_OPTIONS: {
  count: number;
  sub: string;
  recommended?: boolean;
}[] = [
  { count: 10, sub: "Quick session" },
  { count: 20, sub: "Balanced practice", recommended: true },
  { count: 30, sub: "Focused sprint" },
];

function rushTimeLimit(count: number, pace: PaceId): number {
  const base = count * 45;
  const mult = PACE_OPTIONS.find((p) => p.id === pace)?.mult ?? 1;
  return Math.round(base * mult);
}

function timeAgo(iso: string | null): string {
  if (!iso) return "";
  const diff = Date.now() - new Date(iso).getTime();
  const mins = Math.floor(diff / 60000);
  if (mins < 1) return "just now";
  if (mins < 60) return `${mins} min ago`;
  const hours = Math.floor(mins / 60);
  if (hours < 24) return `${hours} hr${hours === 1 ? "" : "s"} ago`;
  const days = Math.floor(hours / 24);
  return `${days} day${days === 1 ? "" : "s"} ago`;
}

function toggleInSet<T>(set: Set<T>, value: T): Set<T> {
  const next = new Set(set);
  if (next.has(value)) next.delete(value);
  else next.add(value);
  return next;
}

export function QuestionRushClient() {
  const router = useRouter();
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const { user, supabase } = useAuth();

  const [counts, setCounts] = useState<RushCounts | null>(null);
  const [wizardOpen, setWizardOpen] = useState(false);
  const [step, setStep] = useState(1);
  const [section, setSection] = useState<Section>("reading_writing");
  const [selectedSkills, setSelectedSkills] = useState<Set<string>>(new Set());
  const [expanded, setExpanded] = useState<Set<string>>(new Set());
  const [difficulties, setDifficulties] = useState<Set<Difficulty>>(new Set());
  const [challenge, setChallenge] = useState(false);
  const [questionCount, setQuestionCount] = useState<number>(20);
  const [skipCompleted, setSkipCompleted] = useState(true);
  const [pace, setPace] = useState<PaceId>("standard");
  const [loading, setLoading] = useState(false);
  const [noQuestions, setNoQuestions] = useState(false);
  const [inProgress, setInProgress] = useState<
    Awaited<ReturnType<typeof fetchRushSessions>>
  >([]);
  const [recent, setRecent] = useState<Awaited<ReturnType<typeof fetchRushSessions>>>([]);

  const domains: BankDomain[] = useMemo(
    () => (section === "math" ? SAT_MATH_DOMAINS : SAT_RW_DOMAINS),
    [section],
  );
  const allSkillIds = useMemo(() => flattenSkills(domains).map((s) => s.id), [domains]);
  const sectionCounts: SectionCounts | null = counts
    ? counts[section]
    : null;

  const loadSessions = useCallback(async () => {
    if (!user) return;
    const [active, done] = await Promise.all([
      fetchRushSessions(supabase, user.id, false, 5),
      fetchRushSessions(supabase, user.id, true, 6),
    ]);
    setInProgress(active);
    setRecent(done);
  }, [user, supabase]);

  useEffect(() => {
    void loadSessions();
  }, [loadSessions]);

  useEffect(() => {
    if (!subjectHydrated) return;
    let cancelled = false;
    void (async () => {
      const data = await fetchRushCounts(supabase, examType);
      if (!cancelled) setCounts(data);
    })();
    return () => {
      cancelled = true;
    };
  }, [supabase, subjectHydrated, examType]);

  // Lock body scroll + Esc-to-close while the wizard is open.
  useEffect(() => {
    if (!wizardOpen) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") setWizardOpen(false);
    };
    document.addEventListener("keydown", onKey);
    return () => document.removeEventListener("keydown", onKey);
  }, [wizardOpen]);

  const skillCount = (skillId: string): number =>
    sectionCounts?.bySkill[skillId]?.total ?? 0;

  const domainQuestionCount = (domain: BankDomain): number =>
    domain.skills.reduce((sum, s) => sum + skillCount(s.id), 0);

  const resetWizard = () => {
    setStep(1);
    setSelectedSkills(new Set());
    setExpanded(new Set());
    setDifficulties(new Set());
    setChallenge(false);
    setQuestionCount(20);
    setSkipCompleted(true);
    setPace("standard");
    setLoading(false);
    setNoQuestions(false);
  };

  const openWizard = (sub: Section) => {
    setSection(sub);
    resetWizard();
    setWizardOpen(true);
  };

  const toggleDomainSkills = (domain: BankDomain) => {
    const ids = domain.skills.map((s) => s.id);
    const allOn = ids.every((id) => selectedSkills.has(id));
    setSelectedSkills((prev) => {
      const next = new Set(prev);
      for (const id of ids) {
        if (allOn) next.delete(id);
        else next.add(id);
      }
      return next;
    });
  };

  const canContinue = (): boolean => {
    if (step === 1) return selectedSkills.size > 0;
    if (step === 2) return difficulties.size > 0 || challenge;
    if (step === 3) return questionCount > 0;
    return Boolean(pace);
  };

  const startRush = async (override?: {
    section?: Section;
    skillIds?: string[];
  }) => {
    if (!user) return;
    setLoading(true);
    setNoQuestions(false);
    let emptyPool = false;
    try {
      const sessionId = await withPracticeTimeout(
        (async () => {
          const useSection = override?.section ?? section;
          const useSkillIds = override?.skillIds ?? [...selectedSkills];
          const skipIds = skipCompleted
            ? await fetchCompletedQuestionIds(supabase, user.id, "SAT")
            : [];
          const diffArray = [...difficulties];
          const filters: PracticeFilters = {
            section: useSection,
            topic: "all",
            difficulty: "all",
            difficulties: diffArray.length ? diffArray : undefined,
            includeChallenge: challenge || undefined,
            examType: "SAT",
            skillIds: useSkillIds,
          };
          const questions = await fetchPracticeQuestions(
            supabase,
            filters,
            questionCount,
            skipIds,
          );
          if (!questions.length) {
            emptyPool = true;
            setNoQuestions(true);
            return null;
          }
          const rushConfig: SessionMetadata["rush"] = {
            skills: useSkillIds,
            pace,
            streak: 0,
            starScores: [],
            currentIndex: 0,
            challenge,
          };
          return createPracticeSession(
            supabase,
            user.id,
            "SAT",
            questions,
            filters,
            {
              mode: "rush",
              timeLimitSeconds: rushTimeLimit(questionCount, pace),
              rushConfig,
            },
          );
        })(),
        PRACTICE_START_TIMEOUT_MS,
      );
      if (sessionId) {
        router.push(`/dashboard/practice/${sessionId}`);
      } else if (!emptyPool) {
        toast.error("Could not start rush. Please try again.");
      }
    } catch (err) {
      console.error("startRush failed:", err);
      const timedOut =
        err instanceof Error && err.message.includes("timed out");
      toast.error(
        timedOut
          ? "Starting rush took too long. Check your connection and try again."
          : "Could not start rush. Check your connection and try again.",
      );
    } finally {
      setLoading(false);
    }
  };

  const handleContinue = () => {
    if (step < 4) setStep(step + 1);
    else void startRush();
  };

  // Deep link from the study planner: ?section=…&skill=…&autostart=1 — launch a
  // rush for that skill immediately so the study-mode chooser's "Continue" works.
  const searchParams = useSearchParams();
  const rushAutoStartedRef = useRef(false);
  useEffect(() => {
    if (rushAutoStartedRef.current) return;
    if (searchParams.get("autostart") !== "1" || !user) return;
    const skill = searchParams.get("skill");
    if (!skill) return;
    const sec: Section =
      searchParams.get("section") === "math" ? "math" : "reading_writing";
    const countParam = Number(searchParams.get("count"));
    const count =
      Number.isFinite(countParam) && countParam > 0
        ? Math.min(50, Math.floor(countParam))
        : 0;
    rushAutoStartedRef.current = true;

    // Study planner sends the task's assigned count → run a rush of EXACTLY that
    // many AI-curated questions for the skill.
    if (count > 0) {
      setLoading(true);
      void withPracticeTimeout(
        launchPlanSession({
          supabase,
          userId: user.id,
          examType: "SAT",
          skillId: skill,
          section: sec,
          count,
          mode: "rush",
        }),
        PRACTICE_START_TIMEOUT_MS,
        "Study rush timed out",
      )
        .then((sessionId) => {
          if (sessionId) router.push(`/dashboard/practice/${sessionId}`);
          else toast.error("No questions available for this skill yet.");
        })
        .catch(() => {
          toast.error("Could not start your study rush.");
        })
        .finally(() => {
          setLoading(false);
        });
      return;
    }

    setSection(sec);
    setSelectedSkills(new Set([skill]));
    void startRush({ section: sec, skillIds: [skill] });
  }, [searchParams, user, supabase, router]);

  if (examType === "ACT") {
    return (
      <div className={styles.callout}>
        <div>
          <h2 className={styles.calloutTitle}>Question Rush is SAT-only for now</h2>
          <p className={styles.calloutText}>
            Speed drills are available for Digital SAT prep. Switch your active
            exam to SAT, or browse the ACT question bank.
          </p>
        </div>
        <Link href="/dashboard/practice/bank" className={styles.resumeBtn}>
          Open question bank
        </Link>
      </div>
    );
  }

  if (loading) {
    return <SessionLoadingOverlay message="Warming up your drill…" />;
  }

  const sectionLabel = section === "math" ? "Math" : "Reading & Writing";
  const stepLabel = section === "math" ? "Math" : "English";

  const STEP_COPY: Record<number, { title: string; desc: string }> = {
    1: {
      title: `Pick your ${sectionLabel} topics`,
      desc: "Choose the skills you want to drill. Use Select All to pick every skill at once.",
    },
    2: {
      title: "Choose difficulty",
      desc: "Mix difficulties for realistic practice, or focus on the levels you want to improve.",
    },
    3: {
      title: "How many questions?",
      desc: "Pick a length for this rush. Unlimited runs until you've answered every available question.",
    },
    4: {
      title: "Set your pace",
      desc: "Pick how much time you get per question. Higher numbers mean less time and tighter stars.",
    },
  };

  return (
    <>
      {/* What is Question Rush? */}
      <section className={styles.callout}>
        <span className={styles.calloutIcon} aria-hidden>
          <Lightning size={20} weight="fill" />
        </span>
        <div>
          <h2 className={styles.calloutTitle}>What is Question Rush?</h2>
          <p className={styles.calloutText}>
            Question Rush is a fast practice mode for Digital SAT skills. Pick a
            subject, topics, difficulty, question count, and pace, then answer
            one question at a time against the clock. Quick, accurate answers
            earn more stars, and your results show what to drill next.
          </p>
        </div>
      </section>

      {/* Subject cards */}
      <div className={styles.subjectGrid}>
        <button
          type="button"
          className={`${styles.subjectCard} ${styles.subjectRw}`}
          onClick={() => openWizard("reading_writing")}
        >
          <span className={styles.subjectInfo}>
            <span className={styles.subjectName}>Reading &amp; Writing</span>
            <span className={styles.subjectCount}>
              {counts ? `${counts.reading_writing.total.toLocaleString()} questions` : "…"}
            </span>
          </span>
          <span className={styles.subjectCta}>
            Continue <CaretRight size={14} weight="bold" aria-hidden />
          </span>
          <BookOpenText size={120} weight="fill" className={styles.subjectArt} aria-hidden />
        </button>
        <button
          type="button"
          className={`${styles.subjectCard} ${styles.subjectMath}`}
          onClick={() => openWizard("math")}
        >
          <span className={styles.subjectInfo}>
            <span className={styles.subjectName}>Math</span>
            <span className={styles.subjectCount}>
              {counts ? `${counts.math.total.toLocaleString()} questions` : "…"}
            </span>
          </span>
          <span className={styles.subjectCta}>
            Continue <CaretRight size={14} weight="bold" aria-hidden />
          </span>
          <Ruler size={120} weight="fill" className={styles.subjectArt} aria-hidden />
        </button>
      </div>

      {/* In Progress */}
      <section className={styles.section}>
        <h2 className={styles.sectionTitle}>
          <Clock size={20} weight="fill" className={styles.sectionTitleIcon} aria-hidden />
          In Progress
        </h2>
        {inProgress.length === 0 ? (
          <p className={styles.emptyLine}>No active rush sessions.</p>
        ) : (
          <ul className={styles.rowsList}>
            {inProgress.map((s) => {
              const meta = (s.metadata ?? {}) as SessionMetadata;
              const answered = meta.rush?.currentIndex ?? 0;
              const skills = meta.rush?.skills?.length ?? 0;
              return (
                <li key={s.id} className={styles.progressRow}>
                  <div className={styles.progressMain}>
                    <div className={styles.progressTop}>
                      <span className={styles.progressTitle}>Resume session</span>
                      <span className={styles.progressBadge}>In progress</span>
                      <span className={styles.progressTime}>
                        {timeAgo(s.started_at)}
                      </span>
                    </div>
                    <div className={styles.progressMeta}>
                      <span className={styles.progressMetaItem}>
                        <Clock size={14} aria-hidden />
                        {answered}/{s.total_questions ?? 0} answered
                      </span>
                      <span className={styles.progressMetaItem}>
                        <Fire size={14} weight="fill" aria-hidden />
                        {skills} skill{skills === 1 ? "" : "s"} selected
                        {meta.rush?.challenge ? " + Challenge" : ""}
                      </span>
                    </div>
                  </div>
                  <Link
                    href={`/dashboard/practice/${s.id}`}
                    className={styles.resumeBtn}
                  >
                    Resume <CaretRight size={14} weight="bold" aria-hidden />
                  </Link>
                </li>
              );
            })}
          </ul>
        )}
      </section>

      {/* Recent Sessions */}
      <section className={styles.section}>
        <h2 className={styles.sectionTitle}>
          <Star size={20} weight="fill" className={styles.sectionTitleIcon} aria-hidden />
          Recent Sessions
        </h2>
        {recent.length === 0 ? (
          <p className={styles.emptyLine}>
            Complete a rush to see streak and star stats here.
          </p>
        ) : (
          <ul className={styles.rowsList}>
            {recent.map((s) => {
              const meta = (s.metadata ?? {}) as SessionMetadata;
              const total = s.total_questions ?? 1;
              const accuracy = Math.round(((s.correct_count ?? 0) / total) * 100);
              const stars = meta.rush?.starScores?.length
                ? (
                    meta.rush.starScores.reduce((a, b) => a + b, 0) /
                    meta.rush.starScores.length
                  ).toFixed(1)
                : "—";
              return (
                <li key={s.id} className={styles.recentRow}>
                  <div className={styles.progressMain}>
                    <div className={styles.progressTop}>
                      <span className={styles.progressTitle}>{s.section}</span>
                      <span className={styles.progressTime}>
                        {timeAgo(s.completed_at ?? s.started_at)}
                      </span>
                    </div>
                    <div className={styles.progressMeta}>
                      <span className={styles.progressMetaItem}>{accuracy}% accuracy</span>
                      <span className={styles.progressMetaItem}>{stars}★ avg</span>
                      <span className={styles.progressMetaItem}>
                        {s.time_spent_seconds
                          ? `${Math.round(s.time_spent_seconds / 60)}m`
                          : "—"}
                      </span>
                    </div>
                  </div>
                </li>
              );
            })}
          </ul>
        )}
      </section>

      {/* Wizard modal */}
      {wizardOpen ? (
        <div
          className={styles.overlay}
          role="dialog"
          aria-modal="true"
          onMouseDown={(e) => {
            if (e.target === e.currentTarget) setWizardOpen(false);
          }}
        >
          <div className={styles.modal}>
            <button
              type="button"
              className={styles.modalClose}
              onClick={() => setWizardOpen(false)}
              aria-label="Close"
            >
              <X size={18} weight="bold" />
            </button>

            <div className={styles.modalBody}>
              <div className={styles.modalLeft}>
                <p className={styles.stepLabel}>
                  Step {step} of 4 · {stepLabel}
                </p>
                <h2 className={styles.modalTitle}>{STEP_COPY[step]!.title}</h2>
                <p className={styles.modalDesc}>{STEP_COPY[step]!.desc}</p>
                {noQuestions ? (
                  <p className={styles.modalWarn}>
                    No questions match those filters yet. Try more topics or
                    difficulties.
                  </p>
                ) : null}
              </div>

              <div className={styles.modalRight}>
                {step === 1 ? (
                  <>
                    <div className={styles.topicsHead}>
                      <span className={styles.topicsHeadLabel}>All Topics</span>
                      <button
                        type="button"
                        className={styles.selectAllBtn}
                        onClick={() =>
                          setSelectedSkills(
                            selectedSkills.size === allSkillIds.length
                              ? new Set()
                              : new Set(allSkillIds),
                          )
                        }
                      >
                        {selectedSkills.size === allSkillIds.length
                          ? "Deselect All"
                          : "Select All"}
                      </button>
                    </div>
                    <ul className={styles.domainList}>
                      {domains.map((domain) => {
                        const ids = domain.skills.map((s) => s.id);
                        const allOn = ids.every((id) => selectedSkills.has(id));
                        const someOn = ids.some((id) => selectedSkills.has(id));
                        const open = expanded.has(domain.id);
                        return (
                          <li key={domain.id} className={styles.domainItem}>
                            <div className={styles.domainRow}>
                              <button
                                type="button"
                                className={styles.checkCircle}
                                data-state={allOn ? "on" : someOn ? "part" : "off"}
                                onClick={() => toggleDomainSkills(domain)}
                                aria-label={`Select all ${domain.label}`}
                              >
                                {allOn ? (
                                  <Check size={12} weight="bold" />
                                ) : someOn ? (
                                  <span className={styles.dash} />
                                ) : null}
                              </button>
                              <button
                                type="button"
                                className={styles.domainExpand}
                                onClick={() =>
                                  setExpanded((prev) => toggleInSet(prev, domain.id))
                                }
                                aria-expanded={open}
                              >
                                <span className={styles.domainName}>
                                  {domain.label}
                                </span>
                                <span className={styles.domainMeta}>
                                  {domain.skills.length} skills ·{" "}
                                  {domainQuestionCount(domain).toLocaleString()}{" "}
                                  questions
                                </span>
                              </button>
                              <CaretDown
                                size={16}
                                className={`${styles.domainCaret} ${open ? styles.caretOpen : ""}`}
                                aria-hidden
                              />
                            </div>
                            {open ? (
                              <ul className={styles.skillList}>
                                {domain.skills.map((skill) => {
                                  const on = selectedSkills.has(skill.id);
                                  return (
                                    <li key={skill.id}>
                                      <button
                                        type="button"
                                        className={styles.skillRow}
                                        onClick={() =>
                                          setSelectedSkills((prev) =>
                                            toggleInSet(prev, skill.id),
                                          )
                                        }
                                      >
                                        <span
                                          className={styles.checkBox}
                                          data-on={on}
                                        >
                                          {on ? <Check size={11} weight="bold" /> : null}
                                        </span>
                                        <span className={styles.skillName}>
                                          {skill.label}
                                        </span>
                                        <span className={styles.skillCount}>
                                          {skillCount(skill.id).toLocaleString()}
                                        </span>
                                      </button>
                                    </li>
                                  );
                                })}
                              </ul>
                            ) : null}
                          </li>
                        );
                      })}
                    </ul>
                  </>
                ) : null}

                {step === 2 ? (
                  <div className={styles.optionStack}>
                    {DIFFICULTY_OPTIONS.map((opt) => {
                      const on = difficulties.has(opt.id);
                      return (
                        <button
                          key={opt.id}
                          type="button"
                          className={`${styles.optionCard} ${on ? styles.optionCardOn : ""}`}
                          onClick={() =>
                            setDifficulties((prev) => toggleInSet(prev, opt.id))
                          }
                        >
                          <span className={styles.checkBox} data-on={on}>
                            {on ? <Check size={12} weight="bold" /> : null}
                          </span>
                          <span className={styles.optionInfo}>
                            <span className={styles.optionTitle}>{opt.label}</span>
                            <span className={styles.optionSub}>{opt.sub}</span>
                          </span>
                        </button>
                      );
                    })}
                    <button
                      type="button"
                      className={`${styles.optionCard} ${challenge ? styles.optionCardOn : ""}`}
                      onClick={() => setChallenge((c) => !c)}
                    >
                      <span className={styles.checkBox} data-on={challenge}>
                        {challenge ? <Check size={12} weight="bold" /> : null}
                      </span>
                      <span className={styles.optionInfo}>
                        <span className={styles.optionTitle}>Challenge Questions</span>
                        <span className={styles.optionSub}>
                          Add the toughest Challenge Questions for this subject.
                        </span>
                      </span>
                    </button>
                  </div>
                ) : null}

                {step === 3 ? (
                  <div className={styles.optionStack}>
                    {COUNT_OPTIONS.map((opt) => (
                      <button
                        key={opt.count}
                        type="button"
                        className={`${styles.radioCard} ${questionCount === opt.count ? styles.radioCardOn : ""}`}
                        onClick={() => setQuestionCount(opt.count)}
                      >
                        <span className={styles.optionInfo}>
                          <span className={styles.optionTitle}>
                            {opt.count} questions
                            {opt.recommended ? (
                              <span className={styles.recPill}>Recommended</span>
                            ) : null}
                          </span>
                          <span className={styles.optionSub}>{opt.sub}</span>
                        </span>
                      </button>
                    ))}
                    <div className={styles.toggleRow}>
                      <span className={styles.optionInfo}>
                        <span className={styles.optionTitle}>
                          Skip completed questions
                        </span>
                        <span className={styles.optionSub}>
                          Only include questions you have not answered before.
                        </span>
                      </span>
                      <button
                        type="button"
                        role="switch"
                        aria-checked={skipCompleted}
                        className={`${styles.switch} ${skipCompleted ? styles.switchOn : ""}`}
                        onClick={() => setSkipCompleted((v) => !v)}
                      >
                        <span className={styles.switchThumb} />
                      </button>
                    </div>
                  </div>
                ) : null}

                {step === 4 ? (
                  <div className={styles.optionStack}>
                    {PACE_OPTIONS.map((opt) => {
                      const Icon = opt.Icon;
                      return (
                        <button
                          key={opt.id}
                          type="button"
                          className={`${styles.radioCard} ${pace === opt.id ? styles.radioCardOn : ""}`}
                          onClick={() => setPace(opt.id)}
                        >
                          <span className={styles.optionInfo}>
                            <span className={styles.optionTitle}>
                              {opt.label}
                              {opt.recommended ? (
                                <span className={styles.recPill}>Recommended</span>
                              ) : null}
                            </span>
                            <span className={styles.optionSub}>{opt.sub}</span>
                          </span>
                          <Icon
                            size={40}
                            weight="fill"
                            className={styles.paceArt}
                            aria-hidden
                          />
                        </button>
                      );
                    })}
                  </div>
                ) : null}
              </div>
            </div>

            <div className={styles.modalFooter}>
              {step > 1 ? (
                <button
                  type="button"
                  className={styles.backBtn}
                  onClick={() => setStep(step - 1)}
                >
                  Back
                </button>
              ) : (
                <span />
              )}
              <button
                type="button"
                className={styles.continueBtn}
                disabled={!canContinue()}
                onClick={handleContinue}
              >
                {step < 4 ? "Continue" : "Start rush"}
                <CaretRight size={14} weight="bold" aria-hidden />
              </button>
            </div>
          </div>
        </div>
      ) : null}
    </>
  );
}
