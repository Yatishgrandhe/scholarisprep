import { NextResponse } from "next/server";
import { dbError, parseJsonBodyOrEmpty, parseRouteParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { sendCourseReviewEmail } from "@/lib/email/send";
import { verifyCsrf } from "@/lib/csrf";
import { courseIdParamsSchema, emptyBodySchema } from "@/lib/validations/api";

type RouteContext = { params: Promise<{ courseId: string }> };

export async function POST(request: Request, context: RouteContext) {
  // Auth before CSRF so unsigned-in clients get 401 (not CSRF 403).
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const bodyParsed = await parseJsonBodyOrEmpty(request, emptyBodySchema);
  if (!bodyParsed.ok) return bodyParsed.response;

  const paramsParsed = await parseRouteParams(context.params, courseIdParamsSchema);
  if (!paramsParsed.ok) return paramsParsed.response;

  const { courseId } = paramsParsed.data;
  const { admin } = auth.ctx;

  const { data: course, error: fetchError } = await admin
    .from("courses")
    .select("id, title, creator_id, status")
    .eq("id", courseId)
    .single();

  if (fetchError || !course) {
    return NextResponse.json({ error: "Course not found" }, { status: 404 });
  }

  if (course.status !== "pending_review") {
    return NextResponse.json(
      { error: "Only courses pending review can be approved" },
      { status: 409 },
    );
  }

  const { data: updated, error: updateError } = await admin
    .from("courses")
    .update({
      status: "published",
      updated_at: new Date().toISOString(),
    })
    .eq("id", courseId)
    .eq("status", "pending_review")
    .select("id, title, status")
    .maybeSingle();

  if (updateError) {
    return dbError("[admin/courses/approve]", updateError);
  }

  if (!updated) {
    return NextResponse.json(
      { error: "Only courses pending review can be approved" },
      { status: 409 },
    );
  }

  let emailSent = false;
  if (course.creator_id) {
    const { data: creator } = await admin
      .from("profiles")
      .select("email, full_name")
      .eq("id", course.creator_id)
      .single();

    if (creator?.email) {
      try {
        const result = await sendCourseReviewEmail({
          to: creator.email,
          courseTitle: course.title,
          courseId: course.id,
          approved: true,
          creatorName: creator.full_name,
        });
        emailSent = !result.skipped;
      } catch (err) {
        console.error("[admin/courses/approve] email failed", err);
      }
    }
  }

  return NextResponse.json({
    success: true,
    course: updated,
    emailSent,
  });
}
