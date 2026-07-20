import { Suspense } from "react";
import { AuthSplitLayout } from "@/components/auth/AuthSplitLayout";
import { AuthFormFallback } from "@/components/auth/AuthFormFallback";
import { LoginForm } from "@/components/auth/LoginForm";
import { AUTH_LOGIN_IMAGE } from "@/lib/unsplash";

export const metadata = {
  title: "Sign in",
};

export default function LoginPage() {
  return (
    <AuthSplitLayout
      eyebrow="Welcome back"
      title="Sign in to Scholaris"
      subtitle="Pick up your streak, study plan, and Scho exactly where you left off."
      quote="The pacing analytics showed me I was losing points to slow algebra questions. Fixed it in two weeks."
      attribution="Daniel R., SAT 1480 → 1550"
      image={AUTH_LOGIN_IMAGE}
      imageTag="Practice that feels like test day"
    >
      <Suspense fallback={<AuthFormFallback />}>
        <LoginForm />
      </Suspense>
    </AuthSplitLayout>
  );
}
