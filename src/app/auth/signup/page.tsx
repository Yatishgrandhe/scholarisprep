import { Suspense } from "react";
import { AuthSplitLayout } from "@/components/auth/AuthSplitLayout";
import { AuthFormFallback } from "@/components/auth/AuthFormFallback";
import { SignupForm } from "@/components/auth/SignupForm";
import { AUTH_SIGNUP_IMAGE } from "@/lib/unsplash";

export const metadata = {
  title: "Sign up",
};

export default function SignupPage() {
  return (
    <AuthSplitLayout
      eyebrow="Free forever"
      title="Create your account"
      subtitle="The whole site is free. No credit card."
      quote="I jumped 4 points on my ACT composite. Seeing exactly which skills to drill made all the difference."
      attribution="Priya S., ACT 27 → 31"
      image={AUTH_SIGNUP_IMAGE}
      imageTag="Join thousands of students"
    >
      <Suspense fallback={<AuthFormFallback />}>
        <SignupForm />
      </Suspense>
    </AuthSplitLayout>
  );
}
