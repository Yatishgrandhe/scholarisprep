import { NextResponse } from "next/server";
import { z } from "zod";
import { dbError, parseJsonBody, parseRouteParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { verifyCsrf } from "@/lib/csrf";
import { courseIdParamsSchema } from "@/lib/validations/api";

const patchSchema = z.object({
  action: z.enum(["feature", "unfeature", "delete"]),
});

type RouteContext = { params: Promise<{ courseId: string }> };

export async function PATCH(request: Request, context: RouteContext) {
  // Auth before CSRF so unsigned-in clients get 401 (not CSRF 403).
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const paramsParsed = await parseRouteParams(context.params, courseIdParamsSchema);
  if (!paramsParsed.ok) return paramsParsed.response;

  const { courseId } = paramsParsed.data;

  const bodyParsed = await parseJsonBody(request, patchSchema);
  if (!bodyParsed.ok) return bodyParsed.response;

  const { admin } = auth.ctx;

  if (bodyParsed.data.action === "delete") {
    const { error } = await admin.from("courses").delete().eq("id", courseId);
    if (error) {
      return dbError("[admin/courses] delete", error);
    }
    return NextResponse.json({ success: true });
  }

  const featured = bodyParsed.data.action === "feature";
  const { error } = await admin
    .from("courses")
    .update({
      featured_on_home: featured,
      updated_at: new Date().toISOString(),
    })
    .eq("id", courseId);

  if (error) {
    return dbError("[admin/courses] patch", error);
  }

  return NextResponse.json({ success: true });
}
