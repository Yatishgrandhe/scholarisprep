import type { SubscriptionStatus } from "@/types/supabase";

/** Subscriptions that contribute to estimated MRR. */
export function subscriptionContributesToMrr(
  status: SubscriptionStatus | string | null | undefined,
): boolean {
  return (
    status === "active" || status === "trialing" || status === "past_due"
  );
}
