import { Suspense } from "react";
import dynamic from "next/dynamic";
import { Books, Database } from "@phosphor-icons/react/dist/ssr";
import { createClient } from "@/lib/supabase/server";
import {
  fetchBankHierarchyStats,
  hierarchyStatsToRecord,
} from "@/lib/dashboard/bankStats";
import { fetchQuestionCountByExamType } from "@/lib/practice/queries";
import {
  countPlatformQuestionsByUnitRpc,
  countPlatformQuestionsRpc,
} from "@/lib/practice/platformBankRpc";
import { loadCourseUnits } from "@/lib/dashboard/courseUnits";
import { apIbDisplayName } from "@/lib/apIbCatalog";
import { isApOrIbExam } from "@/lib/examFamily";
import type { ExamType } from "@/types/supabase";
import { QuestionBankDisclaimer } from "@/components/dashboard/QuestionBankDisclaimer";
import {
  QuestionBankSkeleton,
  QuestionBankTableSkeleton,
} from "@/components/shared/skeletons/QuestionBankSkeleton";
import styles from "../practice.module.css";

const QuestionBankClient = dynamic(
  () =>
    import("@/components/dashboard/QuestionBankClient").then((m) => ({
      default: m.QuestionBankClient,
    })),
  { loading: () => <QuestionBankSkeleton /> },
);

const ACT_MODULES = ["english", "math", "reading", "science"] as const;

async function loadInitialCounts(
  examType: ExamType,
  options?: { userId?: string; module?: string },
) {
  const supabase = await createClient();
  const apIb = isApOrIbExam(examType);

  if (apIb) {
    const [units, unitCounts, total] = await Promise.all([
      loadCourseUnits(supabase, examType),
      countPlatformQuestionsByUnitRpc(supabase, {
        examType,
        challengeOnly: false,
      }),
      countPlatformQuestionsRpc(supabase, {
        examType,
        challengeOnly: false,
      }),
    ]);

    // Ensure every catalog unit appears even when the bank has 0 rows yet.
    const mergedCounts = { ...unitCounts };
    for (const u of units) {
      if (mergedCounts[u.unit_code] === undefined) {
        mergedCounts[u.unit_code] = 0;
      }
    }

    let hierarchyStats: ReturnType<typeof hierarchyStatsToRecord> | undefined;
    if (options?.module) {
      const stats = await fetchBankHierarchyStats(supabase, examType, {
        userId: options.userId,
        module: options.module,
      });
      hierarchyStats = hierarchyStatsToRecord(stats);
    }

    return {
      rw: 0,
      math: 0,
      units,
      unitCounts: mergedCounts,
      total,
      hierarchyStats,
    };
  }

  const [rw, math] = await Promise.all([
    fetchQuestionCountByExamType(supabase, examType, "reading_writing"),
    fetchQuestionCountByExamType(supabase, examType, "math"),
  ]);

  let act: Record<string, number> | undefined;
  if (examType === "ACT") {
    const entries = await Promise.all(
      ACT_MODULES.map(async (id) => {
        const count = await fetchQuestionCountByExamType(
          supabase,
          examType,
          undefined,
          id,
        );
        return [id, count] as const;
      }),
    );
    act = Object.fromEntries(entries);
  }

  let hierarchyStats: ReturnType<typeof hierarchyStatsToRecord> | undefined;
  if (options?.module) {
    // Skip user attempt joins on SSR — they dominate English/Math open latency.
    // Client hydrates attempt stats after first paint.
    const stats = await fetchBankHierarchyStats(supabase, examType, {
      module: options.module,
    });
    hierarchyStats = hierarchyStatsToRecord(stats);
  }

  return { rw, math, act, hierarchyStats };
}

async function BankPageInner({
  searchParams,
}: {
  searchParams: Promise<{ module?: string }>;
}) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  let examType: ExamType = "SAT";
  if (user) {
    const { data: active } = await supabase
      .from("user_active_subjects")
      .select("exam_type")
      .eq("user_id", user.id)
      .eq("is_primary", true)
      .maybeSingle();
    examType = active?.exam_type ?? "SAT";
  }

  const params = await searchParams;
  const initialCounts = await loadInitialCounts(examType, {
    userId: user?.id,
    module: params.module,
  });
  const apIb = isApOrIbExam(examType);
  const totalQuestions = apIb
    ? (initialCounts.total ?? 0)
    : examType === "ACT"
      ? Object.values(initialCounts.act ?? {}).reduce((a, b) => a + b, 0)
      : initialCounts.rw + initialCounts.math;

  const displayName = apIb ? apIbDisplayName(examType) : examType;
  const moduleLabel = apIb
    ? initialCounts.units?.find((u) => u.unit_code === params.module)?.title ??
      params.module
    : params.module;

  return (
    <div className={styles.shell}>
      <header className={styles.header}>
        <span className={styles.headerIcon} aria-hidden>
          <Books size={22} weight="duotone" />
        </span>
        <div>
          <h1 className={styles.title}>Question Bank</h1>
          <p className={styles.subtitle}>
            {apIb
              ? `Browse ${displayName} course units with live question counts and progress, then launch a custom practice session.`
              : "Browse College Board domains with live question counts, skill progress bars, and filters, then launch a custom practice session."}
          </p>
          <div className={styles.headerMeta}>
            <span className={styles.metaChip}>
              <Database size={14} aria-hidden />
              <strong>{totalQuestions.toLocaleString()}</strong> questions
            </span>
            <span className={styles.metaChip}>
              {displayName} ·{" "}
              {moduleLabel
                ? moduleLabel
                : apIb
                  ? "all units"
                  : "all sections"}
            </span>
          </div>
        </div>
      </header>

      <div className={styles.bankContent}>
        <QuestionBankClient
          initialCounts={initialCounts}
          key={`${examType}-${params.module ?? "root"}`}
        />
        <QuestionBankDisclaimer examType={examType} />
      </div>
    </div>
  );
}

export default function QuestionBankPage({
  searchParams,
}: {
  searchParams: Promise<{ module?: string }>;
}) {
  return (
    <Suspense fallback={<QuestionBankTableSkeleton />}>
      <BankPageInner searchParams={searchParams} />
    </Suspense>
  );
}
