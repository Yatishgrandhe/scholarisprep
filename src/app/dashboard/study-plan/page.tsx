import dynamic from "next/dynamic";
import { createClient } from "@/lib/supabase/server";
import { courseIdForExam } from "@/lib/dashboard/courseScope";
import type { ExamType } from "@/types/supabase";
import StudyPlanLoading from "./loading";

const StudyPlannerClient = dynamic(
  () =>
    import("@/components/dashboard/StudyPlannerClient").then((m) => ({
      default: m.StudyPlannerClient,
    })),
  { loading: () => <StudyPlanLoading /> },
);

export default async function StudyPlanPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  let hasPlan = false;
  if (user) {
    const [{ data: profile }, { data: primary }] = await Promise.all([
      supabase.from("profiles").select("exam_goal").eq("id", user.id).maybeSingle(),
      supabase
        .from("user_active_subjects")
        .select("exam_type")
        .eq("user_id", user.id)
        .eq("is_primary", true)
        .maybeSingle(),
    ]);

    const activeExam =
      (primary?.exam_type as ExamType | undefined) ??
      (profile?.exam_goal as ExamType | undefined) ??
      "SAT";
    const courseId = courseIdForExam(activeExam);

    const { data } = await supabase
      .from("multi_subject_study_plans")
      .select("id")
      .eq("user_id", user.id)
      .eq("course_id", courseId)
      .maybeSingle();
    hasPlan = Boolean(data);
  }

  return <StudyPlannerClient hasPlan={hasPlan} />;
}
