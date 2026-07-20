import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { dbError, parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { examTypeSchema } from "@/lib/examTypes";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import { generateStudyPlan } from "@/lib/dashboard/generatePlan";
import { isApOrIbExam } from "@/lib/examFamily";
import {
  defaultTargetForExam,
  scoreBoundsForExam,
} from "@/lib/onboarding/examPrograms";

export const maxDuration = 60;

const diagnosticSchema = z.object({
  mode: z.literal("diagnostic").optional(),
  exam_type: examTypeSchema,
  topic_scores: z.record(
    z.string(),
    z.object({ correct: z.number(), total: z.number() }),
  ),
  answers: z.array(
    z.object({
      question_id: z.string().uuid(),
      topic: z.string(),
      section: z.string(),
      is_correct: z.boolean(),
      selected_option: z.string(),
    }),
  ),
  target_score: z.number().optional(),
  weekly_hours: z.number().optional(),
  baseline_score: z.number().optional(),
});

const plannerSchema = z.object({
  mode: z.literal("planner").optional(),
  exam_type: examTypeSchema,
  exam_date: z.string().optional(),
  target_score: z.number().min(1).max(9999),
  baseline_score: z.number().min(1).max(9999).optional(),
  weak_topics: z.array(z.string()).default([]),
  weekly_hours: z.number().min(1).max(40),
  study_days: z.array(z.string()).optional(),
  extended_days: z.array(z.string()).optional(),
  practice_test_day: z.string().optional(),
  preview: z.boolean().optional(),
});

const bodySchema = z.union([diagnosticSchema, plannerSchema]);

export async function POST(req: NextRequest) {
  const csrfFailure = verifyCsrf(req);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const limited = rateLimit("generate-study-plan", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const parsed = await parseJsonBody(req, bodySchema);
  if (!parsed.ok) return parsed.response;

  const data = parsed.data;
  const isPlanner = "weak_topics" in data;

  // AI runs on the user's own Mistral key. No key → generateStudyPlan still
  // produces a full deterministic plan, so this never hard-fails.
  const ai = await resolveAiClient(req, user);

  if (isPlanner) {
    const {
      exam_type,
      exam_date,
      target_score,
      baseline_score,
      weak_topics,
      weekly_hours,
      study_days,
      extended_days,
      practice_test_day,
      preview,
    } = data;

    const bounds = scoreBoundsForExam(exam_type);
    const clampScore = (n: number) =>
      Math.min(bounds.max, Math.max(bounds.min, Math.round(n)));
    const targetClamped = clampScore(target_score);
    const baseline =
      baseline_score != null
        ? clampScore(baseline_score)
        : isApOrIbExam(exam_type)
          ? defaultTargetForExam(exam_type)
          : 1000;
    const planData = await generateStudyPlan(supabase, ai, {
      examType: exam_type,
      examDate: exam_date,
      targetScore: targetClamped,
      baselineScore: baseline,
      weeklyHours: weekly_hours,
      weakTopics: weak_topics,
      studyDays: study_days,
      extendedDays: extended_days,
      practiceTestDay: practice_test_day,
    });

    if (preview) {
      return NextResponse.json({ plan: planData, preview: true });
    }

    const now = new Date().toISOString();
    const { error } = await supabase.from("study_plans").upsert(
      {
        user_id: user.id,
        course_id: exam_type,
        exam_type,
        exam_date: exam_date ?? null,
        target_score: targetClamped,
        baseline_score: baseline,
        weekly_hours,
        plan_data: planData,
        generated_at: now,
      },
      { onConflict: "user_id,course_id" },
    );

    if (error) {
      return dbError("[ai/generate-study-plan] upsert", error);
    }

    await supabase.from("multi_subject_study_plans").upsert(
      {
        user_id: user.id,
        course_id: exam_type,
        exam_type,
        exam_date: exam_date ?? null,
        target_score: targetClamped,
        baseline_score: baseline,
        weekly_hours_allocated: weekly_hours,
        plan_data: planData,
        generated_at: now,
        last_updated: now,
      },
      { onConflict: "user_id,course_id" },
    );

    await supabase.from("user_active_subjects").upsert(
      {
        user_id: user.id,
        exam_type,
        exam_date: exam_date ?? null,
        target_score: targetClamped,
        updated_at: now,
      },
      { onConflict: "user_id,exam_type" },
    );

    return NextResponse.json({ plan: planData });
  }

  const {
    exam_type,
    topic_scores,
    answers,
    target_score,
    weekly_hours,
    baseline_score,
  } = data;

  const weakAreas = Object.entries(topic_scores)
    .filter(([, s]) => s.total > 0 && s.correct / s.total < 0.6)
    .map(([topic]) => topic);

  const overall = baseline_score ?? 1200;
  const predicted = target_score ?? overall + 80;

  const planData = await generateStudyPlan(supabase, ai, {
    examType: exam_type,
    targetScore: target_score,
    baselineScore: overall,
    weeklyHours: weekly_hours ?? 10,
    weakTopics: weakAreas,
  });

  // answers are accepted for parity with the diagnostic client but not yet
  // persisted per-row here.
  void answers;

  const { data: diagnostic, error: diagError } = await supabase
    .from("diagnostic_results")
    .insert({
      user_id: user.id,
      exam_type,
      topic_scores,
      overall_score: overall,
      predicted_score: predicted,
      recommended_focus: weakAreas,
    })
    .select("id")
    .single();

  if (diagError) {
    return dbError("[ai/generate-study-plan] diagnostic", diagError);
  }

  const now = new Date().toISOString();
  await supabase.from("study_plans").upsert(
    {
      user_id: user.id,
      course_id: exam_type,
      exam_type,
      target_score: target_score ?? null,
      weekly_hours: weekly_hours ?? null,
      baseline_score: overall,
      plan_data: planData,
      generated_at: now,
    },
    { onConflict: "user_id,course_id" },
  );

  await supabase.from("multi_subject_study_plans").upsert(
    {
      user_id: user.id,
      course_id: exam_type,
      exam_type,
      target_score: target_score ?? null,
      baseline_score: overall,
      weekly_hours_allocated: weekly_hours ?? 10,
      plan_data: planData,
      generated_at: now,
      last_updated: now,
    },
    { onConflict: "user_id,course_id" },
  );

  await supabase
    .from("profiles")
    .update({ onboarding_completed: true })
    .eq("id", user.id);

  return NextResponse.json({
    plan: planData,
    diagnostic_id: diagnostic?.id,
    weak_areas: weakAreas,
  });
}
