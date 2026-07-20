import { NextResponse } from "next/server";
import { z } from "zod";
import { dbError, parseJsonBodyOrEmpty } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { examTypeSchema } from "@/lib/examTypes";
import { defaultStudyPlanData } from "@/lib/dashboard/studyPlan";
import { createClient } from "@/lib/supabase/server";
import type { Json } from "@/types/supabase";

const bodySchema = z.object({
  exam_type: examTypeSchema.optional(),
});

export async function POST(request: Request) {
  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const parsed = await parseJsonBodyOrEmpty(request, bodySchema);
  if (!parsed.ok) return parsed.response;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { data: profile } = await supabase
    .from("profiles")
    .select("exam_goal")
    .eq("id", user.id)
    .maybeSingle();

  const examType = parsed.data.exam_type ?? profile?.exam_goal ?? "SAT";
  const plan_data = defaultStudyPlanData();
  const now = new Date().toISOString();

  const { error: multiError } = await supabase
    .from("multi_subject_study_plans")
    .upsert(
      {
        user_id: user.id,
        course_id: examType,
        exam_type: examType,
        plan_data: plan_data as unknown as Json,
        generated_at: now,
        last_updated: now,
      },
      { onConflict: "user_id,course_id" },
    );

  if (multiError) {
    return dbError("[dashboard/regenerate-study-plan] multi_subject", multiError);
  }

  const { error: legacyError } = await supabase
    .from("study_plans")
    .upsert(
      {
        user_id: user.id,
        course_id: examType,
        exam_type: examType,
        plan_data: plan_data as unknown as Json,
        generated_at: now,
      },
      { onConflict: "user_id,course_id" },
    );

  if (legacyError) {
    return dbError("[dashboard/regenerate-study-plan] study_plans", legacyError);
  }

  return NextResponse.json({ plan_data, exam_type: examType, course_id: examType });
}
