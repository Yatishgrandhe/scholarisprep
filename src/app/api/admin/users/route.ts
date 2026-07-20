import { NextResponse } from "next/server";
import { dbError, parseSearchParams } from "@/lib/api/validation";
import { requirePlatformAdmin } from "@/lib/admin/require-platform-admin";
import { adminUsersQuerySchema } from "@/lib/validations/api";
import type { SubscriptionPlan } from "@/types/supabase";

export async function GET(request: Request) {
  const auth = await requirePlatformAdmin();
  if (!auth.ok) {
    return auth.response;
  }

  const { searchParams } = new URL(request.url);
  const queryParsed = parseSearchParams(searchParams, adminUsersQuerySchema);
  if (!queryParsed.ok) return queryParsed.response;
  const { q, role, plan } = queryParsed.data;

  const { admin } = auth.ctx;

  let query = admin
    .from("profiles")
    .select(
      "id, email, full_name, avatar_url, role, created_at, updated_at, is_suspended",
    )
    .order("created_at", { ascending: false });

  if (role && role !== "all") {
    query = query.eq("role", role);
  }

  const { data: profiles, error } = await query;

  if (error) {
    return dbError("[admin/users] list", error);
  }

  const ids = (profiles ?? []).map((p) => p.id);

  const [{ data: subscriptions }, { data: streaks }, { data: practice }] =
    await Promise.all([
      ids.length
        ? admin
            .from("subscriptions")
            .select("user_id, plan, status")
            .in("user_id", ids)
            .in("status", ["active", "trialing", "past_due"])
        : Promise.resolve({ data: [] }),
      ids.length
        ? admin
            .from("user_streaks")
            .select("user_id, last_activity_date")
            .in("user_id", ids)
        : Promise.resolve({ data: [] }),
      ids.length
        ? admin
            .from("practice_sessions")
            .select("user_id, completed_at")
            .in("user_id", ids)
            .not("completed_at", "is", null)
        : Promise.resolve({ data: [] }),
    ]);

  const planMap = new Map<string, SubscriptionPlan>();
  for (const s of subscriptions ?? []) {
    if (s.user_id) planMap.set(s.user_id, (s.plan ?? "free") as SubscriptionPlan);
  }

  const lastActiveMap = new Map<string, string>();
  for (const st of streaks ?? []) {
    if (st.user_id && st.last_activity_date) {
      lastActiveMap.set(st.user_id, st.last_activity_date);
    }
  }
  for (const ps of practice ?? []) {
    if (!ps.user_id || !ps.completed_at) continue;
    const existing = lastActiveMap.get(ps.user_id);
    if (!existing || ps.completed_at > existing) {
      lastActiveMap.set(ps.user_id, ps.completed_at);
    }
  }

  let users = (profiles ?? []).map((p) => ({
    id: p.id,
    email: p.email,
    fullName: p.full_name,
    avatarUrl: p.avatar_url,
    role: p.role,
    plan: planMap.get(p.id) ?? ("free" as SubscriptionPlan),
    createdAt: p.created_at,
    updatedAt: p.updated_at,
    isSuspended: Boolean((p as { is_suspended?: boolean }).is_suspended),
    lastActiveAt: lastActiveMap.get(p.id) ?? p.updated_at,
  }));

  if (q) {
    users = users.filter(
      (u) =>
        u.email.toLowerCase().includes(q) ||
        (u.fullName?.toLowerCase().includes(q) ?? false),
    );
  }

  if (plan && plan !== "all") {
    users = users.filter((u) => u.plan === plan);
  }

  return NextResponse.json({ users });
}
