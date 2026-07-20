"use client";

import { useEffect, useState } from "react";
import { createClient } from "@/lib/supabase/client";
import type { CalculatorPolicy } from "@/lib/subjectContext";
import { useSubjectStore } from "@/stores/subjectStore";
import type { ExamType } from "@/types/supabase";

const DEFAULT_POLICIES: Partial<Record<ExamType, CalculatorPolicy>> = {
  SAT: "graphing",
  ACT: "scientific",
  GRE: "scientific",
};

function normalizePolicy(raw: string | null | undefined): CalculatorPolicy | undefined {
  if (
    raw === "none" ||
    raw === "scientific" ||
    raw === "graphing" ||
    raw === "always"
  ) {
    return raw;
  }
  return undefined;
}

type FetchedPolicyState = {
  examType: ExamType;
  policy: CalculatorPolicy | undefined;
};

/** Resolves calculator_policy for an exam, loading subject_registry when the store is empty. */
export function useExamCalculatorPolicy(examType: ExamType): CalculatorPolicy | undefined {
  const subjectConfigs = useSubjectStore((s) => s.subjectConfigs);
  const addSubject = useSubjectStore((s) => s.addSubject);
  const setActiveSubject = useSubjectStore((s) => s.setActiveSubject);
  const storePolicy = subjectConfigs[examType]?.calculator_policy;
  const [fetchedState, setFetchedState] = useState<FetchedPolicyState | null>(null);

  const fetchedPolicy =
    fetchedState?.examType === examType ? fetchedState.policy : undefined;

  useEffect(() => {
    if (storePolicy) {
      return;
    }

    let cancelled = false;
    const supabase = createClient();

    void (async () => {
      const { data } = await supabase
        .from("subject_registry")
        .select(
          "id, exam_type, display_name, short_code, description, sections, topics, score_range, time_limits, question_formats, calculator_policy, has_stimulus, stimulus_types, passing_score, total_questions_full_exam, exam_duration_minutes",
        )
        .eq("exam_type", examType)
        .maybeSingle();

      if (cancelled) return;

      const policy =
        normalizePolicy(data?.calculator_policy) ?? DEFAULT_POLICIES[examType];

      if (data && policy) {
        const parseArray = (value: unknown): string[] =>
          Array.isArray(value)
            ? value.filter((v): v is string => typeof v === "string")
            : [];

        const scoreRaw = data.score_range;
        const scoreRange =
          scoreRaw && typeof scoreRaw === "object" && !Array.isArray(scoreRaw)
            ? (scoreRaw as {
                min: number;
                max: number;
              })
            : { min: 0, max: 100 };

        addSubject(
          {
            id: "diagnostic",
            user_id: "",
            exam_type: examType,
            exam_date: null,
            target_score: null,
            baseline_score: null,
            is_primary: true,
            priority: 1,
            created_at: "",
            updated_at: "",
          },
          {
            id: String(data.id),
            exam_type: examType,
            display_name: String(data.display_name),
            short_code: String(data.short_code),
            description: (data.description as string | null) ?? null,
            sections: parseArray(data.sections),
            topics: parseArray(data.topics),
            score_range: scoreRange,
            time_limits: {},
            question_formats: parseArray(data.question_formats),
            calculator_policy: policy,
            has_stimulus: Boolean(data.has_stimulus),
            stimulus_types: Array.isArray(data.stimulus_types)
              ? data.stimulus_types.filter(
                  (v): v is string => typeof v === "string",
                )
              : [],
            passing_score:
              typeof data.passing_score === "number" ? data.passing_score : null,
            total_questions_full_exam:
              typeof data.total_questions_full_exam === "number"
                ? data.total_questions_full_exam
                : null,
            exam_duration_minutes:
              typeof data.exam_duration_minutes === "number"
                ? data.exam_duration_minutes
                : null,
          },
        );
        setActiveSubject(examType);
      }

      setFetchedState({ examType, policy });
    })().catch(() => {
      if (!cancelled) {
        setFetchedState({ examType, policy: DEFAULT_POLICIES[examType] });
      }
    });

    return () => {
      cancelled = true;
    };
  }, [examType, storePolicy, addSubject, setActiveSubject]);

  return storePolicy ?? fetchedPolicy ?? DEFAULT_POLICIES[examType];
}
