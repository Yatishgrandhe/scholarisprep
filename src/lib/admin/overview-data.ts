import type { SupabaseClient } from "@supabase/supabase-js";
import {
  endOfDay,
  endOfMonth,
  format,
  startOfDay,
  startOfMonth,
  subDays,
} from "date-fns";
import { planMrrCents } from "@/lib/admin/planAmounts";
import { subscriptionContributesToMrr } from "@/lib/admin/subscriptionMrr";
import type { Database, SubscriptionPlan, UserRole } from "@/types/supabase";

type Db = SupabaseClient<Database>;

export type PlatformOverviewData = {
  usersByRole: Record<UserRole, number>;
  coursesByStatus: Record<string, number>;
  totalUsers: number;
  totalCourses: number;
  revenueTodayCents: number;
  revenueMonthCents: number;
  newSignupsToday: number;
  userGrowth: { label: string; total: number; signups: number }[];
  revenueByDay: { label: string; revenueCents: number }[];
  recentSignups: {
    id: string;
    name: string;
    email: string;
    role: UserRole;
    plan: string;
    createdAt: string | null;
  }[];
};

export type PlatformOverviewResult =
  | { ok: true; data: PlatformOverviewData }
  | { ok: false; error: string };

/**
 * Load overview metrics with the **caller’s** Supabase client.
 *
 * Prefer the authenticated session client: `platform_admin` has RLS
 * "Platform admins read all" on profiles/courses/subscriptions, so Overview
 * still works when `SUPABASE_SERVICE_ROLE_KEY` is missing or stale (the usual
 * cause of a blank `/admin` Overview).
 */
export async function loadPlatformOverview(
  db: Db,
): Promise<PlatformOverviewResult> {
  try {
    const now = new Date();
    const todayStart = startOfDay(now).toISOString();
    const todayEnd = endOfDay(now).toISOString();
    const monthStart = startOfMonth(now).toISOString();
    const monthEnd = endOfMonth(now).toISOString();

    const [profilesRes, coursesRes, subscriptionsRes, recentProfilesRes] =
      await Promise.all([
        db.from("profiles").select("id, role, created_at"),
        db.from("courses").select("id, status"),
        db.from("subscriptions").select("plan, status, created_at"),
        db
          .from("profiles")
          .select("id, full_name, email, role, created_at")
          .order("created_at", { ascending: false })
          .limit(10),
      ]);

    if (profilesRes.error) {
      console.error("[admin/overview] profiles", profilesRes.error);
      return { ok: false, error: messageForDbError(profilesRes.error) };
    }
    if (coursesRes.error) {
      console.error("[admin/overview] courses", coursesRes.error);
      return { ok: false, error: messageForDbError(coursesRes.error) };
    }
    if (subscriptionsRes.error) {
      console.error("[admin/overview] subscriptions", subscriptionsRes.error);
      return { ok: false, error: messageForDbError(subscriptionsRes.error) };
    }
    if (recentProfilesRes.error) {
      console.error(
        "[admin/overview] recent profiles",
        recentProfilesRes.error,
      );
      return { ok: false, error: messageForDbError(recentProfilesRes.error) };
    }

    const profiles = profilesRes.data ?? [];
    const courses = coursesRes.data ?? [];
    const subscriptions = subscriptionsRes.data ?? [];

    const usersByRole: Record<UserRole, number> = {
      student: 0,
      creator: 0,
      org_admin: 0,
      platform_admin: 0,
    };

    for (const p of profiles) {
      const role = (p.role ?? "student") as UserRole;
      if (role in usersByRole) {
        usersByRole[role] += 1;
      } else {
        usersByRole.student += 1;
      }
    }

    const coursesByStatus: Record<string, number> = {};
    for (const c of courses) {
      const status = c.status ?? "draft";
      coursesByStatus[status] = (coursesByStatus[status] ?? 0) + 1;
    }

    let revenueTodayCents = 0;
    let revenueMonthCents = 0;

    for (const sub of subscriptions) {
      if (!subscriptionContributesToMrr(sub.status)) continue;
      const plan = (sub.plan ?? "free") as SubscriptionPlan;
      const mrr = planMrrCents(plan) || 0;
      const created = sub.created_at ? new Date(sub.created_at) : null;
      if (
        created &&
        created >= new Date(todayStart) &&
        created <= new Date(todayEnd)
      ) {
        revenueTodayCents += mrr;
      }
      if (
        created &&
        created >= new Date(monthStart) &&
        created <= new Date(monthEnd)
      ) {
        revenueMonthCents += mrr;
      }
    }

    const newSignupsToday = profiles.filter((p) => {
      if (!p.created_at) return false;
      const created = new Date(p.created_at);
      return (
        created >= new Date(todayStart) && created <= new Date(todayEnd)
      );
    }).length;

    const growthBuckets = new Map<string, number>();
    for (let i = 0; i < 90; i++) {
      const d = subDays(now, 89 - i);
      growthBuckets.set(format(d, "yyyy-MM-dd"), 0);
    }

    for (const p of profiles) {
      if (!p.created_at) continue;
      const key = format(new Date(p.created_at), "yyyy-MM-dd");
      if (growthBuckets.has(key)) {
        growthBuckets.set(key, (growthBuckets.get(key) ?? 0) + 1);
      }
    }

    // Users created before the window so the line reflects platform size.
    let cumulative = profiles.filter((p) => {
      if (!p.created_at) return false;
      const key = format(new Date(p.created_at), "yyyy-MM-dd");
      return !growthBuckets.has(key);
    }).length;

    const userGrowth = [...growthBuckets.entries()].map(([date, count]) => {
      cumulative += count;
      return {
        date,
        label: format(new Date(date), "MMM d"),
        signups: count,
        total: cumulative,
      };
    });

    const revenueBuckets = new Map<string, number>();
    for (let i = 0; i < 30; i++) {
      const d = subDays(now, 29 - i);
      revenueBuckets.set(format(d, "yyyy-MM-dd"), 0);
    }

    for (const sub of subscriptions) {
      if (!sub.created_at || !subscriptionContributesToMrr(sub.status)) continue;
      const key = format(new Date(sub.created_at), "yyyy-MM-dd");
      if (!revenueBuckets.has(key)) continue;
      const plan = (sub.plan ?? "free") as SubscriptionPlan;
      revenueBuckets.set(
        key,
        (revenueBuckets.get(key) ?? 0) + (planMrrCents(plan) || 0),
      );
    }

    const revenueByDay = [...revenueBuckets.entries()].map(([date, cents]) => ({
      date,
      label: format(new Date(date), "MMM d"),
      revenueCents: cents,
    }));

    const recentIds = (recentProfilesRes.data ?? []).map((p) => p.id);
    const { data: recentSubs, error: recentSubsError } =
      recentIds.length > 0
        ? await db
            .from("subscriptions")
            .select("user_id, plan")
            .in("user_id", recentIds)
            .in("status", ["active", "trialing", "past_due"])
        : {
            data: [] as { user_id: string | null; plan: string | null }[],
            error: null,
          };

    if (recentSubsError) {
      console.error("[admin/overview] recent subscriptions", recentSubsError);
      // Non-fatal — default plans to free below.
    }

    const planByUser = new Map<string, string>();
    for (const s of recentSubs ?? []) {
      if (s.user_id) planByUser.set(s.user_id, s.plan ?? "free");
    }

    const recentSignups = (recentProfilesRes.data ?? []).map((p) => ({
      id: p.id,
      name: p.full_name ?? "—",
      email: p.email ?? "—",
      role: (p.role ?? "student") as UserRole,
      plan: planByUser.get(p.id) ?? "free",
      createdAt: p.created_at,
    }));

    return {
      ok: true,
      data: {
        usersByRole,
        coursesByStatus,
        totalUsers: profiles.length,
        totalCourses: courses.length,
        revenueTodayCents,
        revenueMonthCents,
        newSignupsToday,
        userGrowth,
        revenueByDay,
        recentSignups,
      },
    };
  } catch (err) {
    console.error("[admin/overview] unexpected", err);
    return { ok: false, error: "Could not load platform overview" };
  }
}

function messageForDbError(error: { message?: string }): string {
  const message = error.message ?? "";
  // Overview uses the session/anon client — do not blame service_role.
  if (/invalid api key/i.test(message)) {
    return "Admin data access is misconfigured (invalid Supabase API key).";
  }
  return "A database error occurred. Please try again.";
}
