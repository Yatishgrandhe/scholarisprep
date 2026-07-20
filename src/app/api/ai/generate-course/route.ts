import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";
import { NO_KEY_MESSAGE } from "@/lib/ai/mistral";
import { resolveAiClient } from "@/lib/ai/keyPolicy";
import {
  generateCourseFromPlaylist,
  type GenerateCourseProgressEvent,
} from "@/lib/courses/generate-course";

const schema = z.object({
  course_id: z.string().uuid(),
  youtube_playlist_url: z.string().min(1).max(500),
  stream: z.boolean().optional(),
});

function wantsStream(req: NextRequest, body: { stream?: boolean }) {
  if (body.stream) return true;
  const accept = req.headers.get("accept") ?? "";
  return accept.includes("text/event-stream");
}

function encodeSse(event: GenerateCourseProgressEvent): Uint8Array {
  return new TextEncoder().encode(`data: ${JSON.stringify(event)}\n\n`);
}

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

  const ai = await resolveAiClient(req, user);
  if (!ai) {
    return NextResponse.json(
      { error: NO_KEY_MESSAGE, code: "NO_AI_KEY" },
      { status: 400 },
    );
  }

  const limited = rateLimit("generate-course", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const parsed = await parseJsonBody(req, schema);
  if (!parsed.ok) return parsed.response;

  const { course_id, youtube_playlist_url, stream: streamFlag } = parsed.data;

  const { data: course } = await supabase
    .from("courses")
    .select("id, creator_id, exam_type, subject, title")
    .eq("id", course_id)
    .single();

  if (!course || course.creator_id !== user.id) {
    return NextResponse.json({ error: "Forbidden" }, { status: 403 });
  }

  const youtubeApiKey = process.env.YOUTUBE_API_KEY;
  if (!youtubeApiKey) {
    return NextResponse.json(
      { error: "YouTube API is not configured" },
      { status: 503 },
    );
  }

  const input = {
    courseId: course_id,
    youtubePlaylistUrl: youtube_playlist_url,
    youtubeApiKey,
    apiKey: ai,
    examType: course.exam_type ?? "SAT",
    subject: course.subject ?? "General",
    userId: user.id,
  };

  if (!wantsStream(req, { stream: streamFlag })) {
    const events: GenerateCourseProgressEvent[] = [];
    const result = await generateCourseFromPlaylist(supabase, input, (event) => {
      events.push(event);
    });

    if (!result.ok) {
      return NextResponse.json({ error: result.message }, { status: 500 });
    }

    return NextResponse.json({
      success: true,
      lessonCount: result.lessons.length,
      lessons: result.lessons,
    });
  }

  const stream = new ReadableStream({
    async start(controller) {
      const emit = (event: GenerateCourseProgressEvent) => {
        controller.enqueue(encodeSse(event));
      };

      const result = await generateCourseFromPlaylist(supabase, input, emit);

      if (!result.ok) {
        controller.enqueue(
          encodeSse({ type: "error", message: result.message }),
        );
      }

      controller.close();
    },
  });

  return new Response(stream, {
    headers: {
      "Content-Type": "text/event-stream; charset=utf-8",
      "Cache-Control": "no-cache, no-transform",
      Connection: "keep-alive",
    },
  });
}
