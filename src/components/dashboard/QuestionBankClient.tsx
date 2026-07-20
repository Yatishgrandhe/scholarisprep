"use client";

import { useCallback, useEffect, useMemo, useRef, useState, useTransition } from "react";
import dynamic from "next/dynamic";
import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import {
  BookOpen,
  CaretDown,
  CaretRight,
  DotsThree,
  Funnel,
  MathOperations,
  Shuffle,
} from "@phosphor-icons/react";
import { AsyncButton } from "@/components/shared/AsyncButton";
import { toast } from "sonner";
import { SessionLoadingOverlay } from "@/components/exam/SessionLoadingOverlay";
import type { BankFilterState } from "@/components/dashboard/BankFiltersDrawer";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useAuth } from "@/hooks/useAuth";
import { useSubjectStore } from "@/stores/subjectStore";
import {
  bootstrapPracticeSessionQuestions,
  createPracticeSessionFromQuestionIds,
  fetchQuestionCountByExamType,
  withPracticeTimeout,
  PRACTICE_START_TIMEOUT_MS,
  type PracticeFilters,
  type PracticeLoadProgress,
} from "@/lib/practice/queries";
import { countPlatformQuestionsByUnitRpc } from "@/lib/practice/platformBankRpc";
import { launchPlanSession } from "@/lib/practice/launchPlanSession";
import {
  fetchBankHierarchyStats,
  hierarchyStatsFromRecord,
  type BankHierarchyStats,
  type SkillStat,
} from "@/lib/dashboard/bankStats";
import {
  ACT_SECTIONS,
  SAT_MATH_DOMAINS,
  SAT_RW_DOMAINS,
  flattenSkills,
  type BankDomain,
} from "@/lib/dashboard/bankTaxonomy";
import {
  bankDomainsFromUnits,
  loadCourseUnits,
  type CourseUnit,
} from "@/lib/dashboard/courseUnits";
import { isApOrIbExam } from "@/lib/examFamily";
import {
  getShowPreviousAttempts,
  getShufflePracticeOrder,
  setShowPreviousAttempts,
  setShufflePracticeOrder,
} from "@/lib/dashboard/userPreferences";
import { useExamStore } from "@/stores/examStore";
import styles from "./bank.module.css";

const BankFiltersDrawer = dynamic(
  () =>
    import("@/components/dashboard/BankFiltersDrawer").then((m) => ({
      default: m.BankFiltersDrawer,
    })),
  { ssr: false },
);

function SkillDifficultyMeta({
  difficulty,
  total,
}: {
  difficulty: { easy: number; medium: number; hard: number };
  total: number;
}) {
  if (total <= 0) return null;
  return (
    <span className={styles.difficultyMeta} aria-label="Question difficulty mix">
      {difficulty.easy > 0 ? (
        <span className={styles.diffEasy}>{difficulty.easy}E</span>
      ) : null}
      {difficulty.medium > 0 ? (
        <span className={styles.diffMedium}>{difficulty.medium}M</span>
      ) : null}
      {difficulty.hard > 0 ? (
        <span className={styles.diffHard}>{difficulty.hard}H</span>
      ) : null}
    </span>
  );
}

const ACT_MODULES = [
  { id: "english", label: "English" },
  { id: "math", label: "Math" },
  { id: "reading", label: "Reading" },
  { id: "science", label: "Science" },
] as const;

export type QuestionBankInitialCounts = {
  rw: number;
  math: number;
  act?: Record<string, number>;
  units?: CourseUnit[];
  unitCounts?: Record<string, number>;
  total?: number;
  /** AP/IB Challenge: no challenge_only rows — use hard difficulty instead. */
  hardFallback?: boolean;
  hierarchyStats?: {
    domains: Record<string, SkillStat>;
    skills: Record<string, SkillStat>;
  };
};

type QuestionBankClientProps = {
  initialCounts?: QuestionBankInitialCounts;
  /** Restrict every count, stat, and practice run to challenge-only items. */
  challengeOnly?: boolean;
  /** Base route for section navigation + back link (defaults to the bank). */
  basePath?: string;
  /** Label shown on the in-module back link. */
  backLabel?: string;
};

export function QuestionBankClient({
  initialCounts,
  challengeOnly = false,
  basePath = "/dashboard/practice/bank",
  backLabel = "Bank",
}: QuestionBankClientProps) {
  const router = useRouter();
  const searchParams = useSearchParams();
  const module = searchParams.get("module");
  const { user, supabase } = useAuth();
  const initPracticeSession = useExamStore((s) => s.initPracticeSession);
  const examType = useActiveExamType();
  const subjectHydrated = useSubjectStore((s) => s.hydrated);
  const apIb = isApOrIbExam(examType);
  const hardFallback = Boolean(initialCounts?.hardFallback);
  const effectiveChallengeOnly = challengeOnly && !hardFallback;
  const [rwCount, setRwCount] = useState(initialCounts?.rw ?? 0);
  const [mathCount, setMathCount] = useState(initialCounts?.math ?? 0);
  const [actCounts, setActCounts] = useState<Record<string, number>>(initialCounts?.act ?? {});
  const [units, setUnits] = useState<CourseUnit[]>(initialCounts?.units ?? []);
  const [unitCounts, setUnitCounts] = useState<Record<string, number>>(
    initialCounts?.unitCounts ?? {},
  );
  const [unitsLoading, setUnitsLoading] = useState(
    () => apIb && !initialCounts?.units?.length,
  );
  const [unitsError, setUnitsError] = useState<string | null>(null);
  const [selected, setSelected] = useState<Set<string>>(new Set());
  const [expanded, setExpanded] = useState<Set<string>>(new Set());
  const [starting, setStarting] = useState(false);
  const [loadProgress, setLoadProgress] = useState<PracticeLoadProgress | undefined>();
  const [showMore, setShowMore] = useState(false);
  const [showAttempts, setShowAttempts] = useState(true);
  const [shuffleOrder, setShuffleOrder] = useState(true);
  const [filtersOpen, setFiltersOpen] = useState(false);
  const [filters, setFilters] = useState<BankFilterState>({
    difficulty: hardFallback ? "hard" : "all",
    questionSet: "all",
    completed: "all",
    result: "all",
    saved: "all",
    timeSpent: "all",
  });
  const [hierarchyStats, setHierarchyStats] = useState<BankHierarchyStats>(() => {
    if (initialCounts?.hierarchyStats) {
      return hierarchyStatsFromRecord(initialCounts.hierarchyStats);
    }
    return { domains: new Map(), skills: new Map() };
  });
  const [hierarchyLoading, setHierarchyLoading] = useState(() => Boolean(module));
  const [navigatingTo, setNavigatingTo] = useState<string | null>(null);
  const [, startTransition] = useTransition();

  useEffect(() => {
    if (!subjectHydrated) return;
    setSelected(new Set());
    setExpanded(new Set());
    setFilters({
      difficulty: hardFallback ? "hard" : "all",
      questionSet: "all",
      completed: "all",
      result: "all",
      saved: "all",
      timeSpent: "all",
    });
  }, [subjectHydrated, examType, hardFallback]);

  useEffect(() => {
    if (!subjectHydrated) return;
    if (initialCounts) {
      setRwCount(initialCounts.rw);
      setMathCount(initialCounts.math);
      if (initialCounts.act) setActCounts(initialCounts.act);
      if (initialCounts.units) setUnits(initialCounts.units);
      if (initialCounts.unitCounts) setUnitCounts(initialCounts.unitCounts);
    } else if (!apIb) {
      void fetchQuestionCountByExamType(
        supabase,
        examType,
        "reading_writing",
        undefined,
        effectiveChallengeOnly,
      ).then(setRwCount);
      void fetchQuestionCountByExamType(
        supabase,
        examType,
        "math",
        undefined,
        effectiveChallengeOnly,
      ).then(setMathCount);
    }
    setShowAttempts(getShowPreviousAttempts());
    setShuffleOrder(getShufflePracticeOrder());
    if (module) {
      if (initialCounts?.hierarchyStats) {
        setHierarchyStats(hierarchyStatsFromRecord(initialCounts.hierarchyStats));
      } else {
        // Totals first (no attempt join) so English/Math opens quickly.
        void fetchBankHierarchyStats(supabase, examType, {
          module,
          challengeOnly: effectiveChallengeOnly,
          hardFallback,
        }).then(setHierarchyStats);
      }
      if (user?.id) {
        setHierarchyLoading(true);
        void fetchBankHierarchyStats(supabase, examType, {
          userId: user.id,
          module,
          challengeOnly: effectiveChallengeOnly,
          hardFallback,
        })
          .then(setHierarchyStats)
          .finally(() => setHierarchyLoading(false));
      } else {
        setHierarchyLoading(false);
      }
    } else {
      setHierarchyStats({ domains: new Map(), skills: new Map() });
    }
    if (examType === "ACT" && !initialCounts?.act) {
      void Promise.all(
        ACT_MODULES.map(async (m) => {
          const count = await fetchQuestionCountByExamType(
            supabase,
            examType,
            undefined,
            m.id,
            effectiveChallengeOnly,
          );
          return [m.id, count] as const;
        }),
      ).then((entries) => setActCounts(Object.fromEntries(entries)));
    }
    if (apIb && !initialCounts?.units) {
      setUnitsLoading(true);
      setUnitsError(null);
      void loadCourseUnits(supabase, examType)
        .then(async (list) => {
          setUnits(list);
          const counts = await countPlatformQuestionsByUnitRpc(supabase, {
            examType,
            challengeOnly: effectiveChallengeOnly,
            difficulty: hardFallback ? "hard" : null,
          });
          const merged = { ...counts };
          for (const u of list) {
            if (merged[u.unit_code] === undefined) merged[u.unit_code] = 0;
          }
          setUnitCounts(merged);
          if (list.length === 0) {
            setUnitsError("No course units found for this exam yet.");
          }
        })
        .catch((err) => {
          console.error("AP/IB unit load failed:", err);
          setUnitsError("Could not load course units. Check your connection and try again.");
        })
        .finally(() => setUnitsLoading(false));
    } else if (apIb && initialCounts?.units) {
      setUnitsLoading(false);
      setUnitsError(null);
    } else if (!apIb) {
      setUnits([]);
      setUnitCounts({});
    }
  }, [
    supabase,
    examType,
    subjectHydrated,
    user,
    initialCounts,
    module,
    effectiveChallengeOnly,
    hardFallback,
    apIb,
  ]);

  const domains: BankDomain[] = useMemo(() => {
    if (apIb) {
      return bankDomainsFromUnits(units, module);
    }
    if (examType === "ACT" && module) {
      return ACT_SECTIONS.filter((d) => d.id === module);
    }
    if (examType === "ACT") return ACT_SECTIONS;
    if (module === "math") return SAT_MATH_DOMAINS;
    if (module === "en") return SAT_RW_DOMAINS;
    return [];
  }, [examType, module, apIb, units]);

  const allSkillIds = useMemo(
    () => flattenSkills(domains).map((s) => s.id),
    [domains],
  );

  const toggleSkill = (id: string) => {
    setSelected((prev) => {
      const next = new Set(prev);
      if (next.has(id)) next.delete(id);
      else next.add(id);
      return next;
    });
  };

  const toggleDomain = (domain: BankDomain) => {
    setExpanded((prev) => {
      const next = new Set(prev);
      if (next.has(domain.id)) next.delete(domain.id);
      else next.add(domain.id);
      return next;
    });
  };

  const navigateTo = useCallback(
    (url: string) => {
      setNavigatingTo(url);
      startTransition(() => {
        router.push(url);
      });
    },
    [router],
  );

  const selectAll = () => {
    if (selected.size === allSkillIds.length) setSelected(new Set());
    else setSelected(new Set(allSkillIds));
  };

  const startPractice = useCallback(
    async (useSelection: boolean, skillIdsOverride?: string[]) => {
      if (!user) {
        router.push("/auth/login");
        return;
      }
      setStarting(true);
      setLoadProgress(undefined);
      try {
        let section: PracticeFilters["section"] = "all";
        let unit_code: string | undefined;

        if (apIb) {
          section = "all";
          unit_code = module ?? undefined;
        } else if (examType === "ACT" && module) {
          section =
            module === "math"
              ? "math"
              : module === "english"
                ? "reading_writing"
                : "all";
        } else if (module === "math") section = "math";
        else if (module === "en") section = "reading_writing";

        const activeSkillIds =
          skillIdsOverride ??
          (useSelection && selected.size > 0 ? [...selected] : undefined);

        const practiceFilters: PracticeFilters = {
          section,
          topic: "all",
          difficulty: hardFallback ? "hard" : filters.difficulty,
          challengeOnly: effectiveChallengeOnly,
          examType,
          skillIds: apIb ? undefined : activeSkillIds,
          unit_code: apIb
            ? (activeSkillIds?.[0] ?? unit_code)
            : undefined,
          completed: filters.completed,
          result: filters.result,
          savedOnly: filters.saved === "saved_only",
          timeSpent: filters.timeSpent,
          questionSet: filters.questionSet,
        };
        // Fail fast: race the whole Start path (bootstrap + session insert).
        // Previously only bootstrap was raced; createPracticeSession could hang
        // forever, and `navigated` skipped clearing `starting` so the overlay
        // stuck even after a successful insert if navigation lagged.
        const sessionId = await withPracticeTimeout(
          (async () => {
            const bootstrap = await bootstrapPracticeSessionQuestions(
              supabase,
              practiceFilters,
              user.id,
              {
                shuffle: shuffleOrder,
                onProgress: setLoadProgress,
              },
            );
            const { questionIds, initialQuestions, emptyReason, dbMatchCount } =
              bootstrap;
            if (!questionIds.length || !initialQuestions.length) {
              if (emptyReason === "user_filter") {
                toast.error(
                  "No questions match your filters. Try clearing completed, saved, or time filters.",
                );
              } else if (emptyReason === "db_zero") {
                toast.error(
                  "No questions in the bank for this topic yet. Try another skill or check back soon.",
                );
              } else if (emptyReason === "quality_filter") {
                toast.error(
                  `Found ${dbMatchCount ?? 0} questions but none passed quality checks. Try a broader filter.`,
                );
              } else if (emptyReason === "hydrate_failed") {
                toast.error(
                  "Could not load question content. Please try again in a moment.",
                );
              } else {
                toast.error("No questions available for this selection.");
              }
              return null;
            }
            const id = await createPracticeSessionFromQuestionIds(
              supabase,
              user.id,
              examType,
              questionIds,
              practiceFilters,
            );
            if (!id) {
              toast.error("Could not start session. Please try again.");
              return null;
            }
            initPracticeSession({
              sessionId: id,
              questionOrder: questionIds,
              questions: initialQuestions,
              currentIndex: 0,
              answers: {},
              flaggedIds: [],
              attempts: {},
              correctCount: 0,
              startedAtMs: Date.now(),
            });
            return id;
          })(),
          PRACTICE_START_TIMEOUT_MS,
        );
        if (sessionId) {
          router.push(`/dashboard/practice/${sessionId}`);
        }
      } catch (err) {
        console.error("startPractice failed:", err);
        const timedOut =
          err instanceof Error && err.message.includes("timed out");
        toast.error(
          timedOut
            ? "Loading questions took too long. Check your connection and try again."
            : "Could not load questions. Check your connection and try again.",
        );
      } finally {
        // Always clear — practice page has its own SessionLoadingOverlay.
        setStarting(false);
        setLoadProgress(undefined);
      }
    },
    [
      user,
      module,
      examType,
      supabase,
      router,
      filters,
      selected,
      initPracticeSession,
      shuffleOrder,
      effectiveChallengeOnly,
      hardFallback,
      apIb,
    ],
  );

  // Deep link from the study planner: ?module=…&skill=…[&autostart=1].
  // Pre-select the skill, and when autostart is set, launch its session straight
  // away so "Continue" in the study-mode chooser loads questions immediately.
  const skillParam = searchParams.get("skill");
  const autostartParam = searchParams.get("autostart");
  const autoStartedRef = useRef(false);

  useEffect(() => {
    if (!skillParam || !allSkillIds.includes(skillParam)) return;
    setSelected(new Set([skillParam]));
    const owningDomain = domains.find((d) =>
      d.skills.some((s) => s.id === skillParam),
    );
    if (owningDomain) {
      setExpanded((prev) => new Set(prev).add(owningDomain.id));
    }
  }, [skillParam, allSkillIds, domains]);

  const countParam = Number(searchParams.get("count"));
  const planCount =
    Number.isFinite(countParam) && countParam > 0
      ? Math.min(50, Math.floor(countParam))
      : 0;

  useEffect(() => {
    if (autoStartedRef.current) return;
    if (autostartParam !== "1" || !skillParam || !user) return;
    if (!allSkillIds.includes(skillParam)) return;
    autoStartedRef.current = true;

    // From the study planner with a task's assigned count → load EXACTLY that
    // many AI-curated questions, not the whole skill pool.
    if (planCount > 0 && !apIb) {
      const section = module === "math" ? "math" : "reading_writing";
      setStarting(true);
      void withPracticeTimeout(
        launchPlanSession({
          supabase,
          userId: user.id,
          examType,
          skillId: skillParam,
          section,
          count: planCount,
          mode: "bank",
        }),
        PRACTICE_START_TIMEOUT_MS,
        "Study session timed out",
      )
        .then((sessionId) => {
          if (sessionId) {
            router.push(`/dashboard/practice/${sessionId}`);
          } else {
            toast.error("No questions available for this skill yet.");
          }
        })
        .catch(() => {
          toast.error("Could not load your study session.");
        })
        .finally(() => {
          setStarting(false);
        });
      return;
    }

    void startPractice(false, [skillParam]);
  }, [
    autostartParam,
    skillParam,
    user,
    allSkillIds,
    planCount,
    module,
    examType,
    supabase,
    router,
    startPractice,
    apIb,
  ]);

  if (starting) {
    return (
      <SessionLoadingOverlay
        message="Getting your questions ready…"
        progress={loadProgress}
      />
    );
  }

  if (!module && apIb) {
    return (
      <div className={styles.root}>
        <h2 className={styles.sectionLabel}>Choose a unit</h2>
        {unitsLoading ? (
          <p className={styles.emptyUnits}>Loading course units…</p>
        ) : unitsError ? (
          <p className={styles.emptyUnits} role="alert">
            {unitsError}
          </p>
        ) : units.length === 0 ? (
          <p className={styles.emptyUnits}>
            No units are available for this course yet. Try another subject or check back soon.
          </p>
        ) : (
          <div className={`${styles.sectionCards} ${styles.sectionCardsUnits}`}>
            {units.map((unit) => (
              <button
                key={unit.unit_code}
                type="button"
                className={`${styles.sectionCard} ${styles.sectionCardUnit}`}
                disabled={navigatingTo !== null}
                onClick={() =>
                  navigateTo(
                    `${basePath}?module=${encodeURIComponent(unit.unit_code)}`,
                  )
                }
              >
                <span className={styles.sectionName}>{unit.title}</span>
                <span className={styles.sectionCount}>
                  {(unitCounts[unit.unit_code] ?? 0).toLocaleString()} questions
                </span>
                <span className={styles.sectionCta}>
                  {navigatingTo === `${basePath}?module=${encodeURIComponent(unit.unit_code)}` ? (
                    <span className={styles.cardSpinner} />
                  ) : (
                    <>Open <CaretRight size={14} weight="bold" /></>
                  )}
                </span>
              </button>
            ))}
          </div>
        )}
      </div>
    );
  }

  if (!module && examType === "ACT") {
    return (
      <div className={styles.root}>
        <h2 className={styles.sectionLabel}>Choose a section</h2>
        <div className={styles.sectionCards}>
          {ACT_MODULES.map((sec) => (
            <button
              key={sec.id}
              type="button"
              className={styles.sectionCard}
              disabled={navigatingTo !== null}
              onClick={() => navigateTo(`${basePath}?module=${sec.id}`)}
            >
              <span className={styles.sectionName}>{sec.label}</span>
              <span className={styles.sectionCount}>
                {(actCounts[sec.id] ?? 0).toLocaleString()} questions
              </span>
              <span className={styles.sectionCta}>
                {navigatingTo === `${basePath}?module=${sec.id}` ? (
                  <span className={styles.cardSpinner} />
                ) : (
                  "Open"
                )}
              </span>
            </button>
          ))}
        </div>
      </div>
    );
  }

  if (!module) {
    return (
      <div className={styles.root}>
        <h2 className={styles.sectionLabel}>Choose a section</h2>
        <div className={styles.sectionCards}>
          <button
            type="button"
            className={`${styles.sectionCard} ${styles.sectionCardRw}`}
            disabled={navigatingTo !== null}
            onClick={() => navigateTo(`${basePath}?module=en`)}
          >
            <BookOpen size={104} weight="fill" className={styles.sectionIcon} aria-hidden />
            <span className={styles.sectionName}>Reading &amp; Writing</span>
            <span className={styles.sectionCount}>{rwCount.toLocaleString()} questions</span>
            <span className={styles.sectionCta}>
              {navigatingTo === `${basePath}?module=en` ? (
                <span className={styles.cardSpinner} />
              ) : (
                <>Open <CaretRight size={14} weight="bold" /></>
              )}
            </span>
          </button>
          <button
            type="button"
            className={`${styles.sectionCard} ${styles.sectionCardMath}`}
            disabled={navigatingTo !== null}
            onClick={() => navigateTo(`${basePath}?module=math`)}
          >
            <MathOperations size={104} weight="fill" className={styles.sectionIcon} aria-hidden />
            <span className={styles.sectionName}>Math</span>
            <span className={styles.sectionCount}>{mathCount.toLocaleString()} questions</span>
            <span className={styles.sectionCta}>
              {navigatingTo === `${basePath}?module=math` ? (
                <span className={styles.cardSpinner} />
              ) : (
                <>Open <CaretRight size={14} weight="bold" /></>
              )}
            </span>
          </button>
        </div>
      </div>
    );
  }

  const moduleLabel = apIb
    ? units.find((u) => u.unit_code === module)?.title ?? module
    : examType === "ACT"
      ? ACT_MODULES.find((m) => m.id === module)?.label ?? module
      : module === "math"
        ? "Math"
        : "Reading & Writing";

  return (
    <div className={styles.root}>
      <BankFiltersDrawer
        open={filtersOpen}
        onClose={() => setFiltersOpen(false)}
        filters={filters}
        onChange={setFilters}
      />
      <div className={styles.toolbar}>
        <Link href={basePath} className={styles.backLink}>
          ← {backLabel}
        </Link>
        <h2 className={styles.title}>{moduleLabel}</h2>
        <div className={styles.toolbarActions}>
          <button
            type="button"
            className={styles.toolBtn}
            onClick={() => setFiltersOpen(true)}
          >
            <Funnel size={16} /> Filters
          </button>
          <div className={styles.moreWrap}>
            <button
              type="button"
              className={styles.toolBtn}
              onClick={() => setShowMore((v) => !v)}
            >
              <DotsThree size={18} weight="bold" /> More options
            </button>
            {showMore ? (
              <div className={styles.moreMenu}>
                <label className={styles.moreRow}>
                  <span>Show previous attempts</span>
                  <input
                    type="checkbox"
                    checked={showAttempts}
                    onChange={(e) => {
                      setShowAttempts(e.target.checked);
                      setShowPreviousAttempts(e.target.checked);
                    }}
                  />
                </label>
                <label className={styles.moreRow}>
                  <span>
                    <Shuffle size={14} weight="bold" aria-hidden /> Shuffle question order
                  </span>
                  <input
                    type="checkbox"
                    checked={shuffleOrder}
                    onChange={(e) => {
                      setShuffleOrder(e.target.checked);
                      setShufflePracticeOrder(e.target.checked);
                    }}
                  />
                </label>
              </div>
            ) : null}
          </div>
          {selected.size > 0 ? (
            <AsyncButton
              className={styles.startBtn}
              loading={starting}
              loadingLabel="Checking..."
              onClick={() => void startPractice(true)}
            >
              Practice selected ({selected.size})
            </AsyncButton>
          ) : null}
          <AsyncButton
            className={styles.startBtn}
            loading={starting}
            loadingLabel="Checking..."
            onClick={() => void startPractice(false)}
          >
            {apIb ? "Practice this unit" : "Practice all topics"}
          </AsyncButton>
        </div>
      </div>

      <div className={styles.tableHeader}>
        <button type="button" className={styles.selectAll} onClick={selectAll}>
          {selected.size === allSkillIds.length ? "Deselect All" : "Select All"}
        </button>
      </div>

      {domains.map((domain) => {
        const domainStat = hierarchyStats.domains.get(domain.id);
        return (
          <div key={domain.id} className={styles.domainBlock}>
            <button
              type="button"
              className={styles.domainHeader}
              onClick={() => toggleDomain(domain)}
            >
              <CaretDown
                size={16}
                className={expanded.has(domain.id) ? styles.caretOpen : ""}
              />
              <span>{domain.label}</span>
              <span className={styles.domainMeta}>
                {hierarchyLoading ? (
                  <span className={styles.hierarchySpinner} />
                ) : (
                  <>{domainStat?.attempted ?? 0}/{domainStat?.total ?? 0}</>
                )}
              </span>
              <span className={styles.domainAccuracy}>
                {domainStat?.accuracy != null ? `${domainStat.accuracy}%` : "—"}
              </span>
            </button>
            {expanded.has(domain.id) || domains.length <= 4 ? (
              <ul className={styles.skillList}>
                {domain.skills.map((skill) => {
                  const stat = hierarchyStats.skills.get(skill.id);
                  return (
                    <li key={skill.id} className={styles.skillRow}>
                      <input
                        type="checkbox"
                        checked={selected.has(skill.id)}
                        onChange={() => toggleSkill(skill.id)}
                        aria-label={`Select ${skill.label}`}
                      />
                      <button
                        type="button"
                        className={styles.skillLabelBtn}
                        onClick={() => void startPractice(true, [skill.id])}
                        title={`Practice ${skill.label}`}
                      >
                        {skill.label}
                      </button>
                      <span className={styles.progressBar}>
                        <span
                          className={styles.progressFill}
                          style={{
                            width:
                              stat?.accuracy != null ? `${stat.accuracy}%` : "0%",
                          }}
                        />
                      </span>
                      <SkillDifficultyMeta
                        difficulty={stat?.difficulty ?? { easy: 0, medium: 0, hard: 0 }}
                        total={stat?.total ?? 0}
                      />
                      <span className={styles.progress}>
                        {hierarchyLoading ? (
                          <span className={styles.hierarchySpinner} />
                        ) : (
                          <>{stat?.attempted ?? 0}/{stat?.total ?? 0}</>
                        )}
                      </span>
                      <span className={styles.accuracy}>
                        {stat?.accuracy != null ? `${stat.accuracy}%` : "—"}
                      </span>
                    </li>
                  );
                })}
              </ul>
            ) : null}
          </div>
        );
      })}
    </div>
  );
}
