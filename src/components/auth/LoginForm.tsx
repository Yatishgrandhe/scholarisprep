"use client";

import { useState } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import Link from "next/link";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { Eye, EyeSlash } from "@phosphor-icons/react";
import { resolvePostAuthDestination } from "@/lib/auth/roleHome";
import { createClient } from "@/lib/supabase/client";
import { signInSchema, type SignInInput } from "@/lib/validations/auth";
import type { UserRole } from "@/types/supabase";
import { OAuthButton } from "./OAuthButton";
import styles from "./auth.module.css";

const CALLBACK_ERROR_MESSAGES: Record<string, string> = {
  auth_callback_failed:
    "We couldn't complete your sign-in. Please try again or use email and password.",
  reset_link_invalid:
    "That password reset link is invalid or expired. Request a new one.",
};

export function LoginForm() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const redirectTo = searchParams.get("redirectTo") ?? "/dashboard";
  const callbackError = searchParams.get("error");
  const supabase = createClient();
  const [showPassword, setShowPassword] = useState(false);
  const [formError, setFormError] = useState<string | null>(
    callbackError ? (CALLBACK_ERROR_MESSAGES[callbackError] ?? null) : null,
  );

  const {
    register,
    handleSubmit,
    formState: { errors, isSubmitting },
  } = useForm<SignInInput>({
    resolver: zodResolver(signInSchema),
    defaultValues: { email: "", password: "" },
  });

  const onSubmit = async (values: SignInInput) => {
    setFormError(null);
    const { error: signInError } = await supabase.auth.signInWithPassword({
      email: values.email,
      password: values.password,
    });

    if (signInError) {
      setFormError(signInError.message);
      return;
    }

    const { data: profile } = await supabase
      .from("profiles")
      .select("role, onboarding_completed")
      .single();

    const role = (profile?.role ?? "student") as UserRole;
    const dest = profile?.onboarding_completed
      ? resolvePostAuthDestination(role, redirectTo)
      : "/onboarding/role";

    router.push(dest);
    router.refresh();
  };

  const signupHref =
    redirectTo && redirectTo !== "/dashboard"
      ? `/auth/signup?redirectTo=${encodeURIComponent(redirectTo)}`
      : "/auth/signup";

  return (
    <>
      <OAuthButton label="Continue with Google" next={redirectTo} />

      <div className={styles.divider}>or continue with email</div>

      <form
        className={styles.form}
        onSubmit={(e) => void handleSubmit(onSubmit)(e)}
        noValidate
      >
        {formError ? (
          <div className={styles.error} role="alert">
            {formError}
          </div>
        ) : null}

        <div className={styles.field}>
          <label className={styles.label} htmlFor="login-email">
            Email
          </label>
          <input
            className={`${styles.input} ${errors.email ? styles.inputError : ""}`}
            id="login-email"
            type="email"
            placeholder="you@school.edu"
            autoComplete="email"
            inputMode="email"
            aria-invalid={errors.email ? true : undefined}
            aria-describedby={errors.email ? "login-email-error" : undefined}
            {...register("email")}
          />
          {errors.email ? (
            <p id="login-email-error" className={styles.fieldError} role="alert">
              {errors.email.message}
            </p>
          ) : null}
        </div>

        <div className={styles.field}>
          <div className={styles.labelRow}>
            <label className={styles.label} htmlFor="login-password">
              Password
            </label>
            <Link href="/auth/forgot-password" className={styles.forgotLink}>
              Forgot password?
            </Link>
          </div>
          <div className={styles.passwordWrap}>
            <input
              className={`${styles.input} ${errors.password ? styles.inputError : ""}`}
              id="login-password"
              type={showPassword ? "text" : "password"}
              autoComplete="current-password"
              aria-invalid={errors.password ? true : undefined}
              aria-describedby={
                errors.password ? "login-password-error" : undefined
              }
              {...register("password")}
            />
            <button
              type="button"
              className={styles.togglePassword}
              onClick={() => setShowPassword((v) => !v)}
              aria-label={showPassword ? "Hide password" : "Show password"}
              aria-controls="login-password"
            >
              {showPassword ? (
                <EyeSlash size={18} aria-hidden />
              ) : (
                <Eye size={18} aria-hidden />
              )}
            </button>
          </div>
          {errors.password ? (
            <p
              id="login-password-error"
              className={styles.fieldError}
              role="alert"
            >
              {errors.password.message}
            </p>
          ) : null}
        </div>

        <button
          type="submit"
          className={styles.primaryButton}
          disabled={isSubmitting}
          aria-busy={isSubmitting}
        >
          {isSubmitting ? "Signing in…" : "Sign in"}
        </button>
      </form>

      <p className={styles.footer}>
        Don&apos;t have an account?{" "}
        <Link href={signupHref}>
          Sign up free <span className={styles.footerArrow}>→</span>
        </Link>
      </p>
    </>
  );
}
