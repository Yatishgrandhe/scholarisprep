"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import Link from "next/link";
import { useForm, Controller } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { Eye, EyeSlash } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { getAppUrl } from "@/lib/env";
import { signUpSchema, type SignUpInput } from "@/lib/validations/auth";
import { OAuthButton } from "./OAuthButton";
import styles from "./auth.module.css";
import splitStyles from "./auth-split.module.css";

export function SignupForm() {
  const router = useRouter();
  const supabase = createClient();
  const [showPassword, setShowPassword] = useState(false);
  const [formError, setFormError] = useState<string | null>(null);
  const [emailConfirmPending, setEmailConfirmPending] = useState(false);

  const {
    register,
    handleSubmit,
    control,
    formState: { errors, isSubmitting },
  } = useForm<SignUpInput>({
    resolver: zodResolver(signUpSchema),
    defaultValues: {
      fullName: "",
      email: "",
      password: "",
      confirmPassword: "",
      // Scholaris is student-only; role is fixed and not user-selectable.
      role: "student",
      acceptedTerms: false,
    },
  });

  const onSubmit = async (values: SignUpInput) => {
    setFormError(null);
    setEmailConfirmPending(false);
    const appUrl = getAppUrl();

    const { data, error: signUpError } = await supabase.auth.signUp({
      email: values.email,
      password: values.password,
      options: {
        data: {
          full_name: values.fullName,
          role: values.role,
        },
        emailRedirectTo: `${appUrl}/auth/callback?next=/onboarding/role`,
      },
    });

    if (signUpError) {
      setFormError(signUpError.message);
      return;
    }

    if (!data.session) {
      setEmailConfirmPending(true);
      return;
    }

    // Never force role/onboarding when the row already has an elevated role
    // (protect_platform_admin_role blocks demotion, but avoid the attempt).
    const { data: existingProfile } = await supabase
      .from("profiles")
      .select("role")
      .eq("id", data.user!.id)
      .maybeSingle();
    const elevated =
      existingProfile?.role != null && existingProfile.role !== "student";

    const { error: profileError } = await supabase
      .from("profiles")
      .update({
        full_name: values.fullName,
        ...(elevated
          ? {}
          : { role: values.role, onboarding_completed: false }),
      })
      .eq("id", data.user!.id);

    if (profileError) {
      setFormError(profileError.message);
      return;
    }

    void fetch("/api/auth/welcome", { method: "POST" });

    router.push("/onboarding/role");
    router.refresh();
  };

  if (emailConfirmPending) {
    return (
      <div className={splitStyles.successState}>
        <h2 className={splitStyles.successTitle}>Check your email</h2>
        <p className={splitStyles.successText}>
          We sent a confirmation link. Open it to activate your account, then
          you&apos;ll continue to onboarding.
        </p>
        <p className={styles.footer}>
          <Link href="/auth/login">
            Back to sign in <span className={styles.footerArrow}>→</span>
          </Link>
        </p>
      </div>
    );
  }

  return (
    <>
      <OAuthButton label="Continue with Google" next="/onboarding/role" />
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
          <label className={styles.label} htmlFor="signup-fullName">
            Full name
          </label>
          <input
            className={`${styles.input} ${errors.fullName ? styles.inputError : ""}`}
            id="signup-fullName"
            type="text"
            autoComplete="name"
            placeholder="Alex Rivera"
            aria-invalid={errors.fullName ? true : undefined}
            aria-describedby={
              errors.fullName ? "signup-fullName-error" : undefined
            }
            {...register("fullName")}
          />
          {errors.fullName ? (
            <p
              id="signup-fullName-error"
              className={styles.fieldError}
              role="alert"
            >
              {errors.fullName.message}
            </p>
          ) : null}
        </div>

        <div className={styles.field}>
          <label className={styles.label} htmlFor="signup-email">
            Email
          </label>
          <input
            className={`${styles.input} ${errors.email ? styles.inputError : ""}`}
            id="signup-email"
            type="email"
            placeholder="you@school.edu"
            autoComplete="email"
            inputMode="email"
            aria-invalid={errors.email ? true : undefined}
            aria-describedby={errors.email ? "signup-email-error" : undefined}
            {...register("email")}
          />
          {errors.email ? (
            <p id="signup-email-error" className={styles.fieldError} role="alert">
              {errors.email.message}
            </p>
          ) : null}
        </div>

        <div className={styles.field}>
          <label className={styles.label} htmlFor="signup-password">
            Password
          </label>
          <div className={styles.passwordWrap}>
            <input
              className={`${styles.input} ${errors.password ? styles.inputError : ""}`}
              id="signup-password"
              type={showPassword ? "text" : "password"}
              autoComplete="new-password"
              aria-invalid={errors.password ? true : undefined}
              aria-describedby={
                errors.password
                  ? "signup-password-error"
                  : "signup-password-hint"
              }
              {...register("password")}
            />
            <button
              type="button"
              className={styles.togglePassword}
              onClick={() => setShowPassword((v) => !v)}
              aria-label={showPassword ? "Hide password" : "Show password"}
              aria-controls="signup-password"
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
              id="signup-password-error"
              className={styles.fieldError}
              role="alert"
            >
              {errors.password.message}
            </p>
          ) : (
            <p id="signup-password-hint" className={styles.fieldHint}>
              At least 8 characters
            </p>
          )}
        </div>

        <div className={styles.field}>
          <label className={styles.label} htmlFor="signup-confirmPassword">
            Confirm password
          </label>
          <input
            className={`${styles.input} ${errors.confirmPassword ? styles.inputError : ""}`}
            id="signup-confirmPassword"
            type={showPassword ? "text" : "password"}
            autoComplete="new-password"
            aria-invalid={errors.confirmPassword ? true : undefined}
            aria-describedby={
              errors.confirmPassword
                ? "signup-confirmPassword-error"
                : undefined
            }
            {...register("confirmPassword")}
          />
          {errors.confirmPassword ? (
            <p
              id="signup-confirmPassword-error"
              className={styles.fieldError}
              role="alert"
            >
              {errors.confirmPassword.message}
            </p>
          ) : null}
        </div>

        <Controller
          name="acceptedTerms"
          control={control}
          render={({ field }) => (
            <label className={styles.checkbox}>
              <input
                type="checkbox"
                checked={field.value === true}
                onChange={(e) =>
                  field.onChange(e.target.checked ? true : false)
                }
                aria-invalid={errors.acceptedTerms ? true : undefined}
                aria-describedby={
                  errors.acceptedTerms ? "signup-terms-error" : undefined
                }
              />
              <span>
                I agree to the{" "}
                <Link href="/legal/terms">Terms of Service</Link> and{" "}
                <Link href="/legal/privacy">Privacy Policy</Link>
              </span>
            </label>
          )}
        />
        {errors.acceptedTerms ? (
          <p id="signup-terms-error" className={styles.fieldError} role="alert">
            {errors.acceptedTerms.message}
          </p>
        ) : null}

        <button
          type="submit"
          className={styles.primaryButton}
          disabled={isSubmitting}
          aria-busy={isSubmitting}
        >
          {isSubmitting ? "Creating account…" : "Start practicing free"}
        </button>

        <p className={styles.freeNote}>
          <span className={styles.freeLead}>The whole site is free.</span> No
          credit card.
        </p>
      </form>

      <p className={styles.footer}>
        Already have an account?{" "}
        <Link href="/auth/login">
          Sign in <span className={styles.footerArrow}>→</span>
        </Link>
      </p>
    </>
  );
}
