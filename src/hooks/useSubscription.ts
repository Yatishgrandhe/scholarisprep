"use client";

import type { Database } from "@/types/supabase";

type SubscriptionPlan = Database["public"]["Enums"]["subscription_plan"];
type SubscriptionStatus = Database["public"]["Enums"]["subscription_status"];

export type SubscriptionInfo = {
  plan: SubscriptionPlan;
  status: SubscriptionStatus;
  planLabel: "Free" | "Student" | "Business" | "Creator";
  isPremium: boolean;
  currentPeriodEnd: string | null;
  cancelAtPeriodEnd: boolean;
};

// The whole site is free — every feature is unlocked for every signed-in user.
// This hook no longer reads the (dormant) `subscriptions` table; it returns a
// static unlocked value so existing callers keep compiling.
const UNLOCKED_SUBSCRIPTION: SubscriptionInfo = {
  plan: "free",
  status: "active",
  planLabel: "Free",
  isPremium: true,
  currentPeriodEnd: null,
  cancelAtPeriodEnd: false,
};

const noop = () => {};

export function useSubscription() {
  const subscription = UNLOCKED_SUBSCRIPTION;

  return {
    subscription,
    plan: subscription.plan,
    status: subscription.status,
    planLabel: subscription.planLabel,
    isPremium: subscription.isPremium,
    currentPeriodEnd: subscription.currentPeriodEnd,
    cancelAtPeriodEnd: subscription.cancelAtPeriodEnd,
    loading: false,
    error: null,
    refetch: noop,
  };
}
