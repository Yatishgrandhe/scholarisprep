import { NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { fetchYouTubePlaylist } from "@/lib/courses/youtube";
import { createClient } from "@/lib/supabase/server";

const schema = z.object({
  url: z.string().min(1).max(500),
});

export async function POST(request: Request) {
  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const parsed = await parseJsonBody(request, schema);
  if (!parsed.ok) return parsed.response;

  const apiKey = process.env.YOUTUBE_API_KEY;
  if (!apiKey) {
    return NextResponse.json(
      { error: "YouTube API is not configured" },
      { status: 503 },
    );
  }

  try {
    const playlist = await fetchYouTubePlaylist(parsed.data.url, apiKey);
    return NextResponse.json({
      playlistId: playlist.playlistId,
      title: playlist.title,
      videoCount: playlist.videoCount,
    });
  } catch (err) {
    console.error("[youtube/playlist]", err);
    return NextResponse.json(
      { error: "Could not validate playlist URL" },
      { status: 400 },
    );
  }
}
