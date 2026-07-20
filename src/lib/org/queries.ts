import { endOfDay, startOfDay, subDays, startOfWeek } from "date-fns";
import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database, UserRole } from "@/types/supabase";
import {
  buildTopicHeatmap,
  type TopicHeatmapCell,
} from "@/lib/dashboard/topicHeatmap";
import type { AttemptWithQuestion } from "@/lib/dashboard/predictedScore";

export type OrgMember = {
  id: string;
  email: string;
  full_name: string | null;
  avatar_url: string | null;
  role: UserRole;
};

export type OrgOverviewStats = {
  activeMembers: number;
  coursesAssigned: number;
  avgCompletionRate: number;
  avgScoreImprovement: number;
};

export type OrgCourseRow = {
  courseId: string;
  title: string;
  assignedCount: number;
  completionRate: number;
  avgScore: number;
};

export type OrgMemberActivityRow = {
  memberId: string;
  name: string;
  lastActive: string | null;
  questionsThisWeek: number;
  coursesCompleted: number;
};

export type OrgMemberTableRow = OrgMember & {
  coursesAssigned: number;
  progressPercent: number;
  lastActive: string | null;
};

type Supabase = SupabaseClient<Database>;

export type OrgReportDateRange = {
  from: Date;
  to: Date;
};

function reportRangeBounds(range: OrgReportDateRange) {
  return {
    fromIso: startOfDay(range.from).toISOString(),
    toIso: endOfDay(range.to).toISOString(),
  };
}

export async function fetchOrgMembers(
  supabase: Supabase,
  orgId: string,
): Promise<OrgMember[]> {
  const { data } = await supabase
    .from("profiles")
    .select("id, email, full_name, avatar_url, role")
    .eq("org_id", orgId)
    .order("full_name", { ascending: true });

  return (data ?? []) as OrgMember[];
}

export async function fetchOrgOverview(
  supabase: Supabase,
  orgId: string,
  memberIds: string[],
): Promise<{
  stats: OrgOverviewStats;
  topCourses: OrgCourseRow[];
  memberActivity: OrgMemberActivityRow[];
}> {
  if (memberIds.length === 0) {
    return {
      stats: {
        activeMembers: 0,
        coursesAssigned: 0,
        avgCompletionRate: 0,
        avgScoreImprovement: 0,
      },
      topCourses: [],
      memberActivity: [],
    };
  }

  const weekStart = startOfWeek(new Date(), { weekStartsOn: 1 }).toISOString();
  const thirtyDaysAgo = subDays(new Date(), 30).toISOString();

  const [
    { data: enrollments },
    { data: members },
    { data: attempts },
    { data: examSessions },
    { data: streaks },
  ] = await Promise.all([
    supabase
      .from("enrollments")
      .select("user_id, course_id, progress_percent")
      .in("user_id", memberIds),
    supabase
      .from("profiles")
      .select("id, full_name, email")
      .in("id", memberIds),
    supabase
      .from("question_attempts")
      .select("user_id, created_at")
      .in("user_id", memberIds)
      .gte("created_at", thirtyDaysAgo),
    supabase
      .from("exam_sessions")
      .select("user_id, score_predicted, completed_at")
      .in("user_id", memberIds)
      .not("completed_at", "is", null)
      .not("score_predicted", "is", null)
      .order("completed_at", { ascending: true }),
    supabase
      .from("user_streaks")
      .select("user_id, last_activity_date")
      .in("user_id", memberIds),
  ]);

  const enrollmentRows = enrollments ?? [];
  const courseIds = [
    ...new Set(
      enrollmentRows
        .map((e) => e.course_id)
        .filter((id): id is string => id != null),
    ),
  ];

  const { data: courses } =
    courseIds.length > 0
      ? await supabase
          .from("courses")
          .select("id, title")
          .in("id", courseIds)
      : { data: [] };

  const courseTitleById = new Map(
    (courses ?? []).map((c) => [c.id, c.title]),
  );

  const activeUserIds = new Set<string>();
  for (const attempt of attempts ?? []) {
    if (attempt.user_id) activeUserIds.add(attempt.user_id);
  }
  for (const streak of streaks ?? []) {
    if (streak.last_activity_date && streak.user_id) {
      activeUserIds.add(streak.user_id);
    }
  }

  const progressValues = enrollmentRows
    .map((e) => e.progress_percent ?? 0)
    .filter((p) => p >= 0);
  const avgCompletionRate =
    progressValues.length > 0
      ? Math.round(
          progressValues.reduce((sum, p) => sum + p, 0) / progressValues.length,
        )
      : 0;

  const improvements: number[] = [];
  const sessionsByUser = new Map<string, number[]>();
  for (const session of examSessions ?? []) {
    if (!session.user_id) continue;
    const scores = sessionsByUser.get(session.user_id) ?? [];
    scores.push(session.score_predicted ?? 0);
    sessionsByUser.set(session.user_id, scores);
  }
  for (const scores of sessionsByUser.values()) {
    if (scores.length >= 2) {
      improvements.push(scores[scores.length - 1]! - scores[0]!);
    }
  }
  const avgScoreImprovement =
    improvements.length > 0
      ? Math.round(
          improvements.reduce((sum, v) => sum + v, 0) / improvements.length,
        )
      : 0;

  const enrollmentsByCourse = new Map<
    string,
    { count: number; progressSum: number }
  >();
  for (const row of enrollmentRows) {
    if (!row.course_id) continue;
    const bucket = enrollmentsByCourse.get(row.course_id) ?? {
      count: 0,
      progressSum: 0,
    };
    bucket.count += 1;
    bucket.progressSum += row.progress_percent ?? 0;
    enrollmentsByCourse.set(row.course_id, bucket);
  }

  const topCourses: OrgCourseRow[] = [...enrollmentsByCourse.entries()]
    .map(([courseId, stats]) => ({
      courseId,
      title: courseTitleById.get(courseId) ?? "Untitled course",
      assignedCount: stats.count,
      completionRate:
        stats.count > 0 ? Math.round(stats.progressSum / stats.count) : 0,
      avgScore: 0,
    }))
    .sort((a, b) => b.assignedCount - a.assignedCount)
    .slice(0, 8);

  const lastActiveByUser = new Map<string, string>();
  for (const streak of streaks ?? []) {
    if (streak.last_activity_date && streak.user_id) {
      lastActiveByUser.set(streak.user_id, streak.last_activity_date);
    }
  }
  for (const attempt of attempts ?? []) {
    if (!attempt.created_at || !attempt.user_id) continue;
    const prev = lastActiveByUser.get(attempt.user_id);
    if (!prev || attempt.created_at > prev) {
      lastActiveByUser.set(attempt.user_id, attempt.created_at);
    }
  }

  const questionsThisWeekByUser = new Map<string, number>();
  for (const attempt of attempts ?? []) {
    if (!attempt.created_at || !attempt.user_id || attempt.created_at < weekStart) {
      continue;
    }
    questionsThisWeekByUser.set(
      attempt.user_id,
      (questionsThisWeekByUser.get(attempt.user_id) ?? 0) + 1,
    );
  }

  const completedCoursesByUser = new Map<string, number>();
  for (const row of enrollmentRows) {
    if (!row.user_id || (row.progress_percent ?? 0) < 100) continue;
    completedCoursesByUser.set(
      row.user_id,
      (completedCoursesByUser.get(row.user_id) ?? 0) + 1,
    );
  }

  const memberActivity: OrgMemberActivityRow[] = (members ?? []).map((m) => ({
    memberId: m.id,
    name: m.full_name ?? m.email,
    lastActive: lastActiveByUser.get(m.id) ?? null,
    questionsThisWeek: questionsThisWeekByUser.get(m.id) ?? 0,
    coursesCompleted: completedCoursesByUser.get(m.id) ?? 0,
  }));

  return {
    stats: {
      activeMembers: activeUserIds.size,
      coursesAssigned: enrollmentRows.length,
      avgCompletionRate,
      avgScoreImprovement,
    },
    topCourses,
    memberActivity,
  };
}

export async function fetchOrgMemberTable(
  supabase: Supabase,
  orgId: string,
): Promise<OrgMemberTableRow[]> {
  const members = await fetchOrgMembers(supabase, orgId);
  if (members.length === 0) return [];

  const memberIds = members.map((m) => m.id);
  const thirtyDaysAgo = subDays(new Date(), 30).toISOString();

  const [{ data: enrollments }, { data: attempts }, { data: streaks }] =
    await Promise.all([
      supabase
        .from("enrollments")
        .select("user_id, progress_percent")
        .in("user_id", memberIds),
      supabase
        .from("question_attempts")
        .select("user_id, created_at")
        .in("user_id", memberIds)
        .gte("created_at", thirtyDaysAgo),
      supabase
        .from("user_streaks")
        .select("user_id, last_activity_date")
        .in("user_id", memberIds),
    ]);

  const coursesByUser = new Map<string, number>();
  const progressByUser = new Map<string, { sum: number; count: number }>();
  for (const row of enrollments ?? []) {
    if (!row.user_id) continue;
    coursesByUser.set(row.user_id, (coursesByUser.get(row.user_id) ?? 0) + 1);
    const bucket = progressByUser.get(row.user_id) ?? { sum: 0, count: 0 };
    bucket.sum += row.progress_percent ?? 0;
    bucket.count += 1;
    progressByUser.set(row.user_id, bucket);
  }

  const lastActiveByUser = new Map<string, string>();
  for (const streak of streaks ?? []) {
    if (streak.last_activity_date && streak.user_id) {
      lastActiveByUser.set(streak.user_id, streak.last_activity_date);
    }
  }
  for (const attempt of attempts ?? []) {
    if (!attempt.created_at || !attempt.user_id) continue;
    const prev = lastActiveByUser.get(attempt.user_id);
    if (!prev || attempt.created_at > prev) {
      lastActiveByUser.set(attempt.user_id, attempt.created_at);
    }
  }

  return members.map((member) => {
    const progress = progressByUser.get(member.id);
    const progressPercent =
      progress && progress.count > 0
        ? Math.round(progress.sum / progress.count)
        : 0;
    return {
      ...member,
      coursesAssigned: coursesByUser.get(member.id) ?? 0,
      progressPercent,
      lastActive: lastActiveByUser.get(member.id) ?? null,
    };
  });
}

export async function fetchOrgTopicHeatmap(
  supabase: Supabase,
  memberIds: string[],
  range?: OrgReportDateRange,
): Promise<TopicHeatmapCell[]> {
  if (memberIds.length === 0) return [];

  let query = supabase
    .from("question_attempts")
    .select(
      "is_correct, session_id, created_at, questions(topic, difficulty)",
    )
    .in("user_id", memberIds);

  if (range) {
    const { fromIso, toIso } = reportRangeBounds(range);
    query = query.gte("created_at", fromIso).lte("created_at", toIso);
  }

  const { data } = await query;

  return buildTopicHeatmap((data ?? []) as AttemptWithQuestion[]);
}

export type MemberProgressSeries = {
  memberId: string;
  name: string;
  data: { date: string; progress: number }[];
};

export async function fetchOrgMemberProgressSeries(
  supabase: Supabase,
  members: OrgMember[],
  range?: OrgReportDateRange,
): Promise<MemberProgressSeries[]> {
  if (members.length === 0) return [];

  const memberIds = members.map((m) => m.id);
  const bounds = range
    ? reportRangeBounds(range)
    : {
        fromIso: subDays(new Date(), 30).toISOString(),
        toIso: endOfDay(new Date()).toISOString(),
      };

  const { data: enrollments } = await supabase
    .from("enrollments")
    .select("user_id, enrolled_at, progress_percent")
    .in("user_id", memberIds)
    .gte("enrolled_at", bounds.fromIso)
    .lte("enrolled_at", bounds.toIso);

  const byUser = new Map<string, { date: string; progress: number }[]>();
  for (const row of enrollments ?? []) {
    if (!row.user_id || !row.enrolled_at) continue;
    const date = row.enrolled_at.slice(0, 10);
    const list = byUser.get(row.user_id) ?? [];
    list.push({ date, progress: row.progress_percent ?? 0 });
    byUser.set(row.user_id, list);
  }

  return members.map((member) => ({
    memberId: member.id,
    name: member.full_name?.split(" ")[0] ?? member.email.split("@")[0] ?? "Member",
    data: (byUser.get(member.id) ?? []).sort((a, b) =>
      a.date.localeCompare(b.date),
    ),
  }));
}

export type CourseFunnelRow = {
  stage: string;
  count: number;
};

export async function fetchOrgCourseFunnel(
  supabase: Supabase,
  memberIds: string[],
  range?: OrgReportDateRange,
): Promise<CourseFunnelRow[]> {
  if (memberIds.length === 0) {
    return [
      { stage: "Enrolled", count: 0 },
      { stage: "Started", count: 0 },
      { stage: "Completed", count: 0 },
    ];
  }

  let enrollmentQuery = supabase
    .from("enrollments")
    .select("id, progress_percent, user_id")
    .in("user_id", memberIds);

  if (range) {
    const { fromIso, toIso } = reportRangeBounds(range);
    enrollmentQuery = enrollmentQuery
      .gte("enrolled_at", fromIso)
      .lte("enrolled_at", toIso);
  }

  const { data: enrollments } = await enrollmentQuery;

  const rows = enrollments ?? [];
  const enrolled = rows.length;
  const started = rows.filter((r) => (r.progress_percent ?? 0) > 0).length;
  const completed = rows.filter((r) => (r.progress_percent ?? 0) >= 100).length;

  return [
    { stage: "Enrolled", count: enrolled },
    { stage: "Started", count: started },
    { stage: "Completed", count: completed },
  ];
}
