import { createClient } from "@/lib/supabase/server";
import { defaultStudyPlanData } from "@/lib/dashboard/studyPlan";
import type { ExamType, Json } from "@/types/supabase";

export type CalculatorPolicy = "none" | "scientific" | "graphing" | "always";

export type SubjectScoreRange = {
  min: number;
  max: number;
  section_min?: number;
  section_max?: number;
  composite?: boolean;
  verbal_min?: number;
  verbal_max?: number;
  quant_min?: number;
  quant_max?: number;
};

export type SubjectConfig = {
  id: string;
  exam_type: ExamType;
  display_name: string;
  short_code: string;
  description: string | null;
  sections: string[];
  topics: string[];
  score_range: SubjectScoreRange;
  time_limits: Record<string, number>;
  question_formats: string[];
  calculator_policy: CalculatorPolicy;
  has_stimulus: boolean;
  stimulus_types: string[];
  passing_score: number | null;
  total_questions_full_exam: number | null;
  exam_duration_minutes: number | null;
};

export type UserActiveSubject = {
  id: string;
  user_id: string;
  exam_type: ExamType;
  exam_date: string | null;
  target_score: number | null;
  baseline_score: number | null;
  is_primary: boolean;
  priority: number;
  created_at: string;
  updated_at: string;
};

export type MultiSubjectStudyPlan = {
  id: string;
  user_id: string;
  course_id: ExamType;
  exam_type: ExamType;
  exam_date: string | null;
  target_score: number | null;
  baseline_score: number | null;
  weekly_hours_allocated: number | null;
  plan_data: Json;
  generated_at: string | null;
  last_updated: string;
};

export type QuestionAttemptForScoring = {
  is_correct: boolean | null;
  subject_section?: string | null;
  time_spent_seconds?: number | null;
};

function parseStringArray(value: Json | null | undefined): string[] {
  if (!value || !Array.isArray(value)) return [];
  return value.filter((item): item is string => typeof item === "string");
}

function parseScoreRange(value: Json | null | undefined): SubjectScoreRange {
  if (!value || typeof value !== "object" || Array.isArray(value)) {
    return { min: 0, max: 100 };
  }
  const row = value as Record<string, unknown>;
  return {
    min: typeof row.min === "number" ? row.min : 0,
    max: typeof row.max === "number" ? row.max : 100,
    section_min: typeof row.section_min === "number" ? row.section_min : undefined,
    section_max: typeof row.section_max === "number" ? row.section_max : undefined,
    composite: row.composite === true,
    verbal_min: typeof row.verbal_min === "number" ? row.verbal_min : undefined,
    verbal_max: typeof row.verbal_max === "number" ? row.verbal_max : undefined,
    quant_min: typeof row.quant_min === "number" ? row.quant_min : undefined,
    quant_max: typeof row.quant_max === "number" ? row.quant_max : undefined,
  };
}

function parseTimeLimits(value: Json | null | undefined): Record<string, number> {
  if (!value || typeof value !== "object" || Array.isArray(value)) return {};
  const out: Record<string, number> = {};
  for (const [key, raw] of Object.entries(value)) {
    if (typeof raw === "number") out[key] = raw;
  }
  return out;
}

function mapRegistryRow(row: {
  id: string;
  exam_type: ExamType;
  display_name: string;
  short_code: string;
  description: string | null;
  sections: Json;
  topics: Json;
  score_range: Json;
  time_limits: Json;
  question_formats: Json;
  calculator_policy: string;
  has_stimulus: boolean;
  stimulus_types: string[] | null;
  passing_score: number | null;
  total_questions_full_exam: number | null;
  exam_duration_minutes: number | null;
}): SubjectConfig {
  const policy = row.calculator_policy as CalculatorPolicy;
  return {
    id: row.id,
    exam_type: row.exam_type,
    display_name: row.display_name,
    short_code: row.short_code,
    description: row.description,
    sections: parseStringArray(row.sections),
    topics: parseStringArray(row.topics),
    score_range: parseScoreRange(row.score_range),
    time_limits: parseTimeLimits(row.time_limits),
    question_formats: parseStringArray(row.question_formats),
    calculator_policy:
      policy === "scientific" ||
      policy === "graphing" ||
      policy === "always" ||
      policy === "none"
        ? policy
        : "none",
    has_stimulus: row.has_stimulus,
    stimulus_types: row.stimulus_types ?? [],
    passing_score: row.passing_score,
    total_questions_full_exam: row.total_questions_full_exam,
    exam_duration_minutes: row.exam_duration_minutes,
  };
}

export async function getSubjectConfig(
  examType: ExamType,
): Promise<SubjectConfig | null> {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("subject_registry")
    .select("*")
    .eq("exam_type", examType)
    .maybeSingle();

  if (error || !data) return null;
  return mapRegistryRow(data as Parameters<typeof mapRegistryRow>[0]);
}

export async function getAllSubjectConfigs(): Promise<SubjectConfig[]> {
  const supabase = await createClient();
  const { data, error } = await supabase.from("subject_registry").select("*");
  if (error || !data) return [];
  return data.map((row) =>
    mapRegistryRow(row as Parameters<typeof mapRegistryRow>[0]),
  );
}

export async function getUserActiveSubjects(
  userId: string,
): Promise<UserActiveSubject[]> {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("user_active_subjects")
    .select("*")
    .eq("user_id", userId)
    .order("is_primary", { ascending: false })
    .order("priority", { ascending: true });

  if (error || !data) return [];
  return data as UserActiveSubject[];
}

export async function getPrimarySubject(
  userId: string,
): Promise<UserActiveSubject | null> {
  const subjects = await getUserActiveSubjects(userId);
  return subjects.find((s) => s.is_primary) ?? subjects[0] ?? null;
}

export async function switchActiveSubject(
  userId: string,
  examType: ExamType,
): Promise<void> {
  const supabase = await createClient();
  await supabase
    .from("user_active_subjects")
    .update({ is_primary: false })
    .eq("user_id", userId);

  await supabase
    .from("user_active_subjects")
    .update({ is_primary: true, updated_at: new Date().toISOString() })
    .eq("user_id", userId)
    .eq("exam_type", examType);

  await supabase
    .from("profiles")
    .update({ exam_goal: examType })
    .eq("id", userId);
}

export async function getSubjectStudyPlan(
  userId: string,
  examType: ExamType,
): Promise<MultiSubjectStudyPlan | null> {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("multi_subject_study_plans")
    .select("*")
    .eq("user_id", userId)
    .eq("course_id", examType)
    .maybeSingle();

  if (error || !data) return null;
  return data as MultiSubjectStudyPlan;
}

export async function upsertUserActiveSubjects(
  userId: string,
  entries: {
    exam_type: ExamType;
    exam_date: string | null;
    target_score: number;
    baseline_score?: number | null;
    is_primary: boolean;
    priority: number;
    weekly_hours?: number;
  }[],
): Promise<void> {
  const supabase = await createClient();

  for (const entry of entries) {
    await supabase.from("user_active_subjects").upsert(
      {
        user_id: userId,
        exam_type: entry.exam_type,
        exam_date: entry.exam_date,
        target_score: entry.target_score,
        baseline_score: entry.baseline_score ?? null,
        is_primary: entry.is_primary,
        priority: entry.priority,
        updated_at: new Date().toISOString(),
      },
      { onConflict: "user_id,exam_type" },
    );

    await supabase.from("multi_subject_study_plans").upsert(
      {
        user_id: userId,
        course_id: entry.exam_type,
        exam_type: entry.exam_type,
        exam_date: entry.exam_date,
        target_score: entry.target_score,
        baseline_score: entry.baseline_score ?? null,
        weekly_hours_allocated: entry.weekly_hours ?? 5,
        plan_data: defaultStudyPlanData() as Json,
        generated_at: new Date().toISOString(),
        last_updated: new Date().toISOString(),
      },
      { onConflict: "user_id,course_id" },
    );

    await supabase.from("study_plans").upsert(
      {
        user_id: userId,
        course_id: entry.exam_type,
        exam_type: entry.exam_type,
        exam_date: entry.exam_date,
        target_score: entry.target_score,
        weekly_hours: entry.weekly_hours ?? 10,
        plan_data: defaultStudyPlanData() as Json,
      },
      { onConflict: "user_id,course_id" },
    );
  }

  const primary = entries.find((e) => e.is_primary) ?? entries[0];
  if (primary) {
    await supabase
      .from("profiles")
      .update({
        exam_goal: primary.exam_type,
        exam_goals: entries.map((e) => e.exam_type),
        exam_date: primary.exam_date,
      })
      .eq("id", userId);
  }
}

export function calculateSubjectScore(
  attempts: QuestionAttemptForScoring[],
  subjectConfig: SubjectConfig,
): number {
  if (attempts.length === 0) {
    const mid =
      (subjectConfig.score_range.min + subjectConfig.score_range.max) / 2;
    return Math.round(mid);
  }

  const correct = attempts.filter((a) => a.is_correct).length;
  const accuracy = correct / attempts.length;
  const { min, max } = subjectConfig.score_range;
  return Math.round(min + accuracy * (max - min));
}
