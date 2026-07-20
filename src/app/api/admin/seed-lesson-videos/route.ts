import { NextRequest, NextResponse } from "next/server";
import type { SupabaseClient } from "@supabase/supabase-js";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { verifyCronAuth } from "@/lib/cronAuth";
import { createAdminClient, isSupabaseAdminConfigured } from "@/lib/supabase/admin";
import { searchYouTubeVideos } from "@/lib/courses/youtube";
import {
  SAT_MATH_DOMAINS,
  SAT_RW_DOMAINS,
  flattenSkills,
} from "@/lib/dashboard/bankTaxonomy";

export const maxDuration = 60;

// How many videos to keep per (skill, kind). ~29 SAT skills × 2 kinds × 3 ≈ 175.
const PER_SKILL_KIND = 3;

type Kind = "teaching" | "tips";

const QUERIES: Record<Kind, (label: string) => string> = {
  teaching: (label) => `SAT ${label} explained full lesson`,
  tips: (label) => `SAT ${label} tips strategies tricks`,
};

/**
 * Populate `lesson_video_library` with curated SAT teaching + tips videos using
 * the YouTube Data API. Idempotent (upsert). Trigger once (and whenever you want
 * to refresh): platform_admin session, or with the CRON secret.
 *
 *   GET /api/admin/seed-lesson-videos
 */
export async function GET(req: NextRequest) {
  // Cron secret or platform_admin only — never any signed-in user.
  let authorized = verifyCronAuth(req);
  if (!authorized) {
    const auth = await requirePlatformAdmin();
    if (!auth.ok) {
      return auth.response;
    }
    authorized = true;
  }
  if (!authorized) {
    return NextResponse.json({ error: "Forbidden" }, { status: 403 });
  }

  const ytKey = process.env.YOUTUBE_API_KEY?.trim();
  if (!ytKey) {
    return NextResponse.json(
      { error: "YOUTUBE_API_KEY is not configured" },
      { status: 503 },
    );
  }
  if (!isSupabaseAdminConfigured()) {
    return NextResponse.json(
      { error: "Supabase admin is not configured" },
      { status: 503 },
    );
  }

  const examType = "SAT";
  const skills = flattenSkills([...SAT_RW_DOMAINS, ...SAT_MATH_DOMAINS]);

  const rows: Array<{
    exam_type: string;
    skill_id: string;
    kind: Kind;
    video_id: string;
    title: string;
    channel: string;
    rank: number;
  }> = [];

  for (const kind of ["teaching", "tips"] as Kind[]) {
    // Spread videos across creators within each kind.
    const usedChannels = new Set<string>();
    for (const skill of skills) {
      const results = await searchYouTubeVideos(
        QUERIES[kind](skill.label),
        ytKey,
        6,
      );
      if (results.length === 0) continue;

      // Prefer fresh channels first, then fill from the rest.
      const fresh = results.filter(
        (r) => !usedChannels.has((r.channel || "").toLowerCase()),
      );
      const ordered = [...fresh, ...results.filter((r) => !fresh.includes(r))];
      const picked = ordered.slice(0, PER_SKILL_KIND);

      picked.forEach((v, i) => {
        if (v.channel) usedChannels.add(v.channel.toLowerCase());
        rows.push({
          exam_type: examType,
          skill_id: skill.id,
          kind,
          video_id: v.videoId,
          title: v.title,
          channel: v.channel,
          rank: i,
        });
      });
    }
  }

  if (rows.length === 0) {
    return NextResponse.json(
      { error: "No videos found", inserted: 0 },
      { status: 502 },
    );
  }

  const admin = createAdminClient() as unknown as SupabaseClient<
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    any,
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    any,
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    any
  >;
  const { error } = await admin
    .from("lesson_video_library")
    .upsert(rows, { onConflict: "exam_type,skill_id,kind,video_id" });

  if (error) {
    console.error("[seed-lesson-videos] upsert failed:", error.message);
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({
    ok: true,
    inserted: rows.length,
    skills: skills.length,
  });
}
