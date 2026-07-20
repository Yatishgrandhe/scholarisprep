import { NextRequest, NextResponse } from "next/server";
import { resolveCourseTutorContext } from "@/lib/courseTutorContext.server";
import { getSubjectConfig } from "@/lib/subjectContext";
import { createClient } from "@/lib/supabase/server";
import { isExamType } from "@/lib/examTypes";
import { isApOrIbExam } from "@/lib/apIbCatalog";

/**
 * GET /api/ai/tutor/context?exam_type=AP_BIOLOGY
 * Returns per-course greeting, suggested starters, and metadata for the tutor UI.
 */
export async function GET(req: NextRequest) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const examTypeRaw = req.nextUrl.searchParams.get("exam_type")?.trim();
  if (!examTypeRaw) {
    return NextResponse.json(
      { error: "exam_type query parameter is required" },
      { status: 400 },
    );
  }

  const resolvedExamType =
    isExamType(examTypeRaw) ? examTypeRaw : null;
  const preloadExam =
    resolvedExamType ??
    (isApOrIbExam(examTypeRaw) ? examTypeRaw : null);

  if (!preloadExam) {
    return NextResponse.json(
      { error: "Unsupported or unknown exam_type" },
      { status: 400 },
    );
  }

  const subjectConfig = resolvedExamType
    ? await getSubjectConfig(resolvedExamType)
    : null;
  const ctx = await resolveCourseTutorContext(preloadExam, subjectConfig);

  return NextResponse.json({
    exam_type: ctx.examType,
    canonical_exam_type: ctx.canonicalExamType,
    display_name: ctx.displayName,
    family: ctx.family,
    greeting: ctx.greeting,
    empty_lead: ctx.emptyLead,
    suggestions: ctx.suggestions,
    has_preload_file: ctx.hasPreloadFile,
  });
}
