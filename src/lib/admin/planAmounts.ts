import type { SubscriptionPlan } from "@/types/supabase";

/** Monthly recurring revenue equivalent in cents (USD). */
const PLAN_MRR_CENTS: Record<Exclude<SubscriptionPlan, "free">, number> = {
  student_monthly: 1999,
  student_annual: Math.round(14999 / 12),
  creator: 2999,
  business: 19999,
};

export function planMrrCents(plan: SubscriptionPlan): number {
  if (plan === "free") return 0;
  return PLAN_MRR_CENTS[plan];
}

export function formatUsdFromCents(cents: number): string {
  return new Intl.NumberFormat("en-US", {
    style: "currency",
    currency: "USD",
    maximumFractionDigits: 0,
  }).format(cents / 100);
}
