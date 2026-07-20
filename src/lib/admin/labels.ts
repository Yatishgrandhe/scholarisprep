import type { SubscriptionPlan, UserRole } from "@/types/supabase";

export function roleLabel(role: UserRole): string {
  switch (role) {
    case "platform_admin":
      return "Platform Admin";
    case "org_admin":
      return "Org Admin";
    case "creator":
      return "Creator";
    default:
      return "Student";
  }
}

export function planLabel(plan: SubscriptionPlan): string {
  switch (plan) {
    case "student_monthly":
      return "Student Monthly";
    case "student_annual":
      return "Student Annual";
    case "creator":
      return "Creator";
    case "business":
      return "Business";
    default:
      return "Free";
  }
}
