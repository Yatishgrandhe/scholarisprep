import type {
  SubscriptionPlan,
  SubscriptionStatus,
} from "@/types/supabase";

export type PremiumFeature =
  | "unlimited_practice"
  | "full_exams"
  | "ai_tutor_unlimited"
  | "ai_question_generation"
  | "course_creation"
  | "org_dashboard";

const PLAN_RANK: Record<SubscriptionPlan, number> = {
  free: 0,
  student_monthly: 1,
  student_annual: 1,
  creator: 2,
  business: 3,
};

const FEATURE_MINIMUM_PLAN: Record<PremiumFeature, SubscriptionPlan> = {
  unlimited_practice: "student_monthly",
  full_exams: "student_monthly",
  ai_tutor_unlimited: "student_monthly",
  ai_question_generation: "student_monthly",
  course_creation: "creator",
  org_dashboard: "business",
};

const FEATURE_COPY: Record<
  PremiumFeature,
  { title: string; description: string }
> = {
  unlimited_practice: {
    title: "Unlimited practice",
    description:
      "Practice as much as you want — unlimited questions with full explanations, completely free.",
  },
  full_exams: {
    title: "Full timed exams",
    description:
      "Take full Digital SAT practice tests with realistic timing, scoring, and section review.",
  },
  ai_tutor_unlimited: {
    title: "Unlimited AI tutor",
    description:
      "Free accounts include 5 tutor conversations. Upgrade for unlimited chats with Scho.",
  },
  ai_question_generation: {
    title: "AI question generation",
    description:
      "Generate fresh practice questions tailored to your weak topics and exam goal.",
  },
  course_creation: {
    title: "Creator Studio",
    description:
      "Publish courses from YouTube playlists or manual lessons and reach students on Scholaris.",
  },
  org_dashboard: {
    title: "Organization dashboard",
    description:
      "Manage teams, seats, and org-wide progress with Scholaris Business.",
  },
};

// Everything is free now — keep these exports for callers but make them effectively unlimited.
export const FREE_PRACTICE_QUESTIONS_PER_DAY = Number.MAX_SAFE_INTEGER;
export const FREE_TUTOR_CONVERSATIONS = Number.MAX_SAFE_INTEGER;

export function requiresPremium(feature: PremiumFeature) {
  return {
    feature,
    minimumPlan: FEATURE_MINIMUM_PLAN[feature],
    ...FEATURE_COPY[feature],
  };
}

export function planMeetsMinimum(
  plan: SubscriptionPlan,
  minimumPlan: SubscriptionPlan,
): boolean {
  return PLAN_RANK[plan] >= PLAN_RANK[minimumPlan];
}

export function isSubscriptionActive(status: SubscriptionStatus): boolean {
  return status === "active" || status === "trialing";
}

export function hasFeatureAccess(
  _plan: SubscriptionPlan,
  _status: SubscriptionStatus,
  _feature: PremiumFeature,
): boolean {
  // Every feature is free and unlocked for all signed-in users.
  return true;
}
