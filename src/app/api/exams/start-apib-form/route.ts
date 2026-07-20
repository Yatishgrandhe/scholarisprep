import { NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { isApOrIbExam } from "@/lib/examFamily";
import { createApIbFormExamSession } from "@/lib/exam/queries";
import {
  createAdminClient,
  isSupabaseAdminConfigured,
} from "@/lib/supabase/admin";
import { createClient } from "@/lib/supabase/server";

const bodySchema = z.object({
  examType: z.string().min(1),
  formLetter: z.enum(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]),
});

/**
 * Start an AP/IB Form A–J exam.
 * Form pool reads use the service-role client so RLS + JSONB filters do not
 * hit the anon 3s statement_timeout (same class of bug as platform bank RPCs).
 */
export async function POST(request: Request) {
  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const parsed = await parseJsonBody(request, bodySchema);
  if (!parsed.ok) return parsed.response;

  const examType = parsed.data.examType;
  const formLetter = parsed.data.formLetter;

  if (!isApOrIbExam(examType)) {
    return NextResponse.json(
      { error: "Only AP/IB courses use full-length forms." },
      { status: 400 },
    );
  }

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Not authenticated" }, { status: 401 });
  }

  if (!isSupabaseAdminConfigured()) {
    return NextResponse.json(
      {
        error:
          "Exam start is not configured (missing Supabase service role key).",
      },
      { status: 503 },
    );
  }

  try {
    const admin = createAdminClient();
    const sessionId = await createApIbFormExamSession(
      admin,
      user.id,
      examType,
      formLetter,
    );

    if (!sessionId) {
      return NextResponse.json(
        {
          empty: true,
          error: "Form pool is not ready yet for this course.",
        },
        { status: 404 },
      );
    }

    return NextResponse.json({ sessionId });
  } catch (err) {
    console.error("[start-apib-form]", err);
    return NextResponse.json(
      { error: "Could not start exam. Please try again." },
      { status: 500 },
    );
  }
}
