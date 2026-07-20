import type { SupabaseClient } from "@supabase/supabase-js";
import { completeJson, type AiAuth } from "@/lib/ai/mistral";
import { fetchRushCounts } from "@/lib/practice/skillCounts";
import { searchYouTubeVideos } from "@/lib/courses/youtube";
import {
  ACT_SECTIONS,
  SAT_MATH_DOMAINS,
  SAT_RW_DOMAINS,
  domainForSkillId,
  flattenSkills,
  skillLabelForId,
} from "@/lib/dashboard/bankTaxonomy";
import { loadCourseUnits } from "@/lib/dashboard/courseUnits";
import { isApOrIbExam } from "@/lib/examFamily";
import {
  buildScheduledPlan,
  sectionForSkill,
  type ScheduleSkill,
  type StudyPlanData,
  type StudyTaskVideo,
} from "@/lib/dashboard/studyPlan";

export type GeneratePlanParams = {
  examType: string;
  examDate?: string | null;
  targetScore?: number | null;
  baselineScore?: number | null;
  weeklyHours: number;
  /** Free-text weak-area labels (from diagnostic, score report, or wizard). */
  weakTopics?: string[];
  /** Specific weekdays to study (from the PDF wizard). */
  studyDays?: string[];
  /** Weekdays that are "extended" (more lessons). */
  extendedDays?: string[];
  /** Weekday for the periodic full practice exam. */
  practiceTestDay?: string;
};

// Cap how many fresh YouTube searches a single generation may trigger, so the
// first plan for a brand-new account can't exhaust the daily search quota.
// Cached videos (shared across all users) are always reused for free.
const MAX_NEW_VIDEO_SEARCHES = 14;

/** Skills (with live question counts) the bank can actually drill for this exam. */
async function buildAvailableSkills(
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  supabase: SupabaseClient<any, any, any>,
  examType: string,
): Promise<ScheduleSkill[]> {
  if (examType === "ACT") {
    return flattenSkills(ACT_SECTIONS).map((s) => ({
      id: s.id,
      label: s.label,
      section: sectionForSkill(s.id),
      available: 20,
    }));
  }

  // AP/IB: course units/topics only — never fall through to SAT skill taxonomy.
  if (isApOrIbExam(examType)) {
    const units = await loadCourseUnits(supabase, examType);
    return units.map((u) => ({
      id: u.unit_code,
      label: u.title,
      section: "other" as const,
      available: 20,
    }));
  }

  const allSat = flattenSkills([...SAT_RW_DOMAINS, ...SAT_MATH_DOMAINS]);
  const counts = await fetchRushCounts(supabase, examType);
  const countFor = (id: string): number =>
    (counts.reading_writing.bySkill[id]?.total ?? 0) +
    (counts.math.bySkill[id]?.total ?? 0);

  const withCounts = allSat.map((s) => ({
    id: s.id,
    label: s.label,
    section: sectionForSkill(s.id),
    available: countFor(s.id),
  }));

  // If the RPC returned nothing (counts unavailable), still allow every skill
  // so a plan is produced — just without precise question counts.
  const anyCounts = withCounts.some((s) => s.available > 0);
  return anyCounts
    ? withCounts.filter((s) => s.available > 0)
    : withCounts.map((s) => ({ ...s, available: 20 }));
}

/** Map free-text weak topics onto canonical bank skill ids. */
function resolveWeakSkillIds(
  weakTopics: string[],
  skills: ScheduleSkill[],
): string[] {
  if (weakTopics.length === 0) return [];
  const ids = new Set<string>();
  const norm = (s: string) => s.trim().toLowerCase();

  for (const raw of weakTopics) {
    const topic = norm(raw);
    if (!topic) continue;

    // Section-level weak areas (e.g. a report that only gives "Math 520" or
    // "Reading & Writing"): treat every skill in that section as weak so the
    // plan front-loads the right half of the test.
    const sectionWeak: "math" | "reading_writing" | null = /\bmath\b/.test(topic)
      ? "math"
      : /read|writ|r&w|ebrw|verbal/.test(topic)
        ? "reading_writing"
        : null;

    for (const skill of skills) {
      const label = norm(skill.label);
      const domainLabel = norm(domainForSkillId(skill.id)?.label ?? "");
      if (
        skill.id.toLowerCase() === topic ||
        label === topic ||
        label.includes(topic) ||
        topic.includes(label) ||
        (domainLabel && (domainLabel === topic || topic.includes(domainLabel))) ||
        (sectionWeak !== null && skill.section === sectionWeak)
      ) {
        ids.add(skill.id);
      }
    }
  }
  return [...ids];
}

type VideoKind = "teaching" | "tips";

type LibraryVideo = StudyTaskVideo & { kind: VideoKind };

type VideoLibrary = {
  bySkill: Map<string, LibraryVideo[]>;
  desmos: StudyTaskVideo | null;
};

type Sequencing = {
  orderedSkillIds: string[];
  weekThemes: string[];
  tips: Record<string, string>;
  /** AI's chosen video id per skill, picked from the catalog we showed it. */
  videoBySkill: Record<string, string>;
};

/** Load the curated video catalog from the DB once, plus the Desmos clip. */
async function fetchVideoLibrary(
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  supabase: SupabaseClient<any, any, any>,
  examType: string,
): Promise<VideoLibrary> {
  const bySkill = new Map<string, LibraryVideo[]>();
  let desmos: StudyTaskVideo | null = null;

  const { data } = await supabase
    .from("lesson_video_library")
    .select("skill_id, kind, video_id, title, channel, rank")
    .eq("exam_type", examType)
    .order("rank", { ascending: true });

  for (const row of data ?? []) {
    if (!row.video_id) continue;
    const video: LibraryVideo = {
      id: row.video_id,
      title: row.title ?? undefined,
      channel: row.channel ?? undefined,
      kind: row.kind === "tips" ? "tips" : "teaching",
    };
    if (row.skill_id === "DESMOS") {
      if (!desmos) desmos = { id: video.id, title: video.title, channel: video.channel };
      continue;
    }
    const list = bySkill.get(row.skill_id) ?? [];
    list.push(video);
    bySkill.set(row.skill_id, list);
  }

  return { bySkill, desmos };
}

/**
 * Ask Mistral to order the skills, name weekly themes, give short tips, and
 * — when we have a curated catalog — pick the best lesson video per skill.
 */
async function mistralSequence(
  apiKey: AiAuth,
  params: GeneratePlanParams,
  skills: ScheduleSkill[],
  weakSkillIds: string[],
  library: VideoLibrary,
): Promise<Sequencing | null> {
  const skillList = skills
    .map((s) => `${s.id} = ${s.label} [${s.section === "math" ? "Math" : "R&W"}]`)
    .join("\n");
  const weakLabels = weakSkillIds
    .map((id) => skillLabelForId(id))
    .filter(Boolean)
    .join(", ");

  // Show the model the videos it may assign, so it can pick the best fit.
  const catalogLines: string[] = [];
  for (const skill of skills) {
    const candidates = library.bySkill.get(skill.id);
    if (!candidates || candidates.length === 0) continue;
    const opts = candidates
      .map((v) => `${v.id} ("${v.title ?? "lesson"}" — ${v.kind})`)
      .join(", ");
    catalogLines.push(`${skill.id}: ${opts}`);
  }
  const catalogBlock =
    catalogLines.length > 0
      ? `\n\nLesson videos available per skill (choose the best video id for each from these ONLY; prefer "teaching" for weak/low-scoring students, "tips" for strong ones):\n${catalogLines.join("\n")}`
      : "";

  const prompt = `You are an expert ${params.examType} tutor building a personalized study plan.

Student: current score ~${params.baselineScore ?? "unknown"}, target ${params.targetScore ?? "higher"}, ${params.weeklyHours} hrs/week${params.examDate ? `, exam on ${params.examDate}` : ""}.
Known weak skills: ${weakLabels || "none reported"}.

Skills you may use (use ONLY these ids):
${skillList}${catalogBlock}

Return ONLY a JSON object (no prose, no markdown) of this exact shape:
{
  "ordered_skill_ids": [ /* ALL skill ids above, ordered best learning sequence: fix weak skills first, alternate Reading/Writing and Math, build toward harder topics */ ],
  "week_themes": [ /* up to 16 short week theme titles, e.g. "Algebra foundations" */ ],
  "tips": { "<skill_id>": "<one short, specific study tip, max 14 words>" },
  "video_by_skill": { "<skill_id>": "<one video id chosen from that skill's available videos above>" }
}`;

  try {
    const raw = await completeJson<{
      ordered_skill_ids?: unknown;
      week_themes?: unknown;
      tips?: unknown;
      video_by_skill?: unknown;
    }>(apiKey, prompt, { maxTokens: 1700, temperature: 0.3 });

    const valid = new Set(skills.map((s) => s.id));
    const orderedSkillIds = Array.isArray(raw.ordered_skill_ids)
      ? raw.ordered_skill_ids.filter(
          (id): id is string => typeof id === "string" && valid.has(id),
        )
      : [];
    const weekThemes = Array.isArray(raw.week_themes)
      ? raw.week_themes
          .filter((t): t is string => typeof t === "string")
          .slice(0, 16)
      : [];
    const tips: Record<string, string> = {};
    if (raw.tips && typeof raw.tips === "object") {
      for (const [id, tip] of Object.entries(raw.tips as Record<string, unknown>)) {
        if (valid.has(id) && typeof tip === "string") tips[id] = tip;
      }
    }
    // Only accept a video the model actually had on offer for that skill.
    const videoBySkill: Record<string, string> = {};
    if (raw.video_by_skill && typeof raw.video_by_skill === "object") {
      for (const [id, vid] of Object.entries(
        raw.video_by_skill as Record<string, unknown>,
      )) {
        if (typeof vid !== "string") continue;
        const candidates = library.bySkill.get(id);
        if (candidates?.some((c) => c.id === vid)) videoBySkill[id] = vid;
      }
    }
    if (orderedSkillIds.length === 0 && weekThemes.length === 0) return null;
    return { orderedSkillIds, weekThemes, tips, videoBySkill };
  } catch {
    return null;
  }
}

/**
 * Resolve a lesson video per skill. Priority:
 *   1. The video the AI explicitly chose for the skill (from the catalog).
 *   2. The curated library — TEACHING when the student is weak/low-scoring,
 *      TIPS when they're strong — so every lesson gets a good, on-level video.
 *   3. The live-search cache (and a capped live search) for skills the library
 *      doesn't cover.
 */
async function getLessonVideos(
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  supabase: SupabaseClient<any, any, any>,
  examType: string,
  skills: ScheduleSkill[],
  library: VideoLibrary,
  opts: {
    weakSkillIds: Set<string>;
    baselineScore: number | null;
    aiChoice: Record<string, string>;
  },
): Promise<Record<string, StudyTaskVideo>> {
  const videos: Record<string, StudyTaskVideo> = {};
  if (skills.length === 0) return videos;

  const lowOverall = opts.baselineScore != null && opts.baselineScore < 1200;
  const preferredKind = (skillId: string): VideoKind =>
    opts.weakSkillIds.has(skillId) || lowOverall ? "teaching" : "tips";

  // 1) AI's pick, then 2) curated library by score-appropriate kind.
  for (const skill of skills) {
    const candidates = library.bySkill.get(skill.id);
    if (!candidates || candidates.length === 0) continue;

    const aiId = opts.aiChoice[skill.id];
    const picked =
      candidates.find((c) => c.id === aiId) ??
      candidates.find((c) => c.kind === preferredKind(skill.id)) ??
      candidates[0];
    if (picked) {
      videos[skill.id] = {
        id: picked.id,
        title: picked.title,
        channel: picked.channel,
      };
    }
  }

  // 3) Live-search cache fallback for any skill the library missed.
  const missing = skills.filter((s) => !videos[s.id]);
  if (missing.length === 0) return videos;

  const missingIds = missing.map((s) => s.id);
  const { data: cached } = await supabase
    .from("study_plan_videos")
    .select("skill_id, video_id, title, channel")
    .eq("exam_type", examType)
    .in("skill_id", missingIds);

  const cachedIds = new Set<string>();
  for (const row of cached ?? []) {
    if (!row.video_id) continue;
    cachedIds.add(row.skill_id);
    videos[row.skill_id] = {
      id: row.video_id,
      title: row.title ?? undefined,
      channel: row.channel ?? undefined,
    };
  }

  const ytKey = process.env.YOUTUBE_API_KEY?.trim();
  if (!ytKey) return videos;

  const examLabel = examType === "ACT" ? "ACT" : "SAT";
  let searches = 0;
  const newRows: Array<{
    exam_type: string;
    skill_id: string;
    video_id: string;
    title: string;
    channel: string;
  }> = [];

  // Spread videos across different creators instead of pulling every lesson from
  // the same channel. Seed with channels already in the cache so we keep variety
  // across regenerations too.
  const usedChannels = new Set<string>();
  for (const v of Object.values(videos)) {
    if (v.channel) usedChannels.add(v.channel.toLowerCase());
  }

  for (const skill of missing) {
    if (cachedIds.has(skill.id)) continue;
    if (searches >= MAX_NEW_VIDEO_SEARCHES) break;
    searches += 1;
    const results = await searchYouTubeVideos(
      `${examLabel} ${skill.label} explained`,
      ytKey,
      5,
    );
    if (results.length === 0) continue;
    // Prefer the top result whose channel we haven't used yet; fall back to the
    // most relevant one if every candidate repeats a channel.
    const fresh =
      results.find((r) => !usedChannels.has((r.channel || "").toLowerCase())) ??
      results[0];
    if (fresh.channel) usedChannels.add(fresh.channel.toLowerCase());
    videos[skill.id] = {
      id: fresh.videoId,
      title: fresh.title,
      channel: fresh.channel,
    };
    newRows.push({
      exam_type: examType,
      skill_id: skill.id,
      video_id: fresh.videoId,
      title: fresh.title,
      channel: fresh.channel,
    });
  }

  if (newRows.length > 0) {
    await supabase
      .from("study_plan_videos")
      .upsert(newRows, { onConflict: "exam_type,skill_id" });
  }

  return videos;
}

/**
 * Produce a complete, dated, OnePrep-style study plan: real skills with live
 * question counts, Mistral-personalized ordering/themes/tips, and a YouTube
 * teaching video attached to each lesson. Always returns a usable plan — every
 * AI/network step degrades gracefully to deterministic defaults.
 */
export async function generateStudyPlan(
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  supabase: SupabaseClient<any, any, any>,
  apiKey: AiAuth | null,
  params: GeneratePlanParams,
): Promise<StudyPlanData> {
  const skills = await buildAvailableSkills(supabase, params.examType);
  const weakSkillIds = resolveWeakSkillIds(params.weakTopics ?? [], skills);

  // Load the curated video catalog up front so the AI can pick from it.
  const library = await fetchVideoLibrary(supabase, params.examType);

  const sequencing = apiKey
    ? await mistralSequence(apiKey, params, skills, weakSkillIds, library)
    : null;

  // Resolve the final skill order so we fetch videos for the ones we'll show.
  const orderedSkillIds = sequencing?.orderedSkillIds ?? [];
  const ordered = [
    ...weakSkillIds,
    ...orderedSkillIds,
    ...skills.map((s) => s.id),
  ].filter((id, i, arr) => arr.indexOf(id) === i);
  const byId = new Map(skills.map((s) => [s.id, s]));
  const skillsForVideos = ordered
    .map((id) => byId.get(id))
    .filter((s): s is ScheduleSkill => Boolean(s));

  const videosBySkill = await getLessonVideos(
    supabase,
    params.examType,
    skillsForVideos,
    library,
    {
      weakSkillIds: new Set(weakSkillIds),
      baselineScore: params.baselineScore ?? null,
      aiChoice: sequencing?.videoBySkill ?? {},
    },
  );

  return buildScheduledPlan({
    examType: params.examType,
    examDate: params.examDate,
    weeklyHours: params.weeklyHours,
    weakSkillIds,
    skills,
    studyDays: params.studyDays,
    extendedDays: params.extendedDays,
    practiceTestDay: params.practiceTestDay,
    weekThemes: sequencing?.weekThemes,
    orderedSkillIds,
    tips: sequencing?.tips,
    videosBySkill,
    desmosVideo: library.desmos ?? undefined,
  });
}
