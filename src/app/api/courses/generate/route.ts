import { NextRequest, NextResponse } from "next/server";
import type { SupabaseClient } from "@supabase/supabase-js";
import { createClient } from "@/lib/supabase/server";
import { NO_KEY_MESSAGE } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import {
  CourseGenerationError,
  generateCourseFromYoutube,
  normalizeCourseOptions,
} from "@/lib/courses/generateCourse";

// LangChain + youtube-transcript need the Node runtime; generation can take a
// while, so widen the timeout.
export const runtime = "nodejs";
export const maxDuration = 60;

export async function POST(req: NextRequest) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Not signed in." }, { status: 401 });
  }

  const ai = await resolveAiClient(req, user);
  if (!ai) {
    return NextResponse.json(
      { error: NO_KEY_MESSAGE, code: "NO_AI_KEY" },
      { status: 400 },
    );
  }

  let youtubeUrl = "";
  let options;
  try {
    const body = (await req.json()) as { youtubeUrl?: string; options?: unknown };
    youtubeUrl = body.youtubeUrl?.trim() ?? "";
    options = normalizeCourseOptions(body.options);
  } catch {
    return NextResponse.json({ error: "Invalid request." }, { status: 400 });
  }
  if (!youtubeUrl) {
    return NextResponse.json(
      { error: "Paste a YouTube link to generate a course." },
      { status: 400 },
    );
  }

  try {
    const course = await generateCourseFromYoutube(youtubeUrl, ai, options);

    // generated_courses isn't in the generated Supabase types yet; use the
    // untyped client for this table.
    const db = supabase as unknown as SupabaseClient;
    const { data, error } = await db
      .from("generated_courses")
      .insert({
        user_id: user.id,
        video_id: course.videoId,
        youtube_url: youtubeUrl,
        title: course.title,
        summary: course.summary,
        content: { lessons: course.lessons, quiz: course.quiz },
        source: "mistral_youtube",
      })
      .select("id, title, summary, content, video_id, youtube_url, created_at")
      .single();

    if (error) {
      return NextResponse.json(
        { error: "Course generated but could not be saved." },
        { status: 500 },
      );
    }

    return NextResponse.json({ course: data });
  } catch (err) {
    if (err instanceof CourseGenerationError) {
      return NextResponse.json(
        { error: err.message, code: err.code },
        { status: 422 },
      );
    }
    return NextResponse.json(
      { error: "Something went wrong generating the course." },
      { status: 500 },
    );
  }
}
