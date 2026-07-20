"use client";

import { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { Check, Eye, EyeSlash } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import {
  resetPasswordSchema,
  type ResetPasswordInput,
} from "@/lib/validations/auth";
import styles from "./auth.module.css";
import splitStyles from "./auth-split.module.css";

export function ResetPasswordForm() {
  const router = useRouter();
  const supabase = createClient();
  const [formError, setFormError] = useState<string | null>(null);
  const [done, setDone] = useState(false);
  const [showPassword, setShowPassword] = useState(false);

  const {
    register,
    handleSubmit,
    formState: { errors, isSubmitting },
  } = useForm<ResetPasswordInput>({
    resolver: zodResolver(resetPasswordSchema),
    defaultValues: { password: "", confirmPassword: "" },
  });

  const onSubmit = async (values: ResetPasswordInput) => {
    setFormError(null);

    const {
      data: { user },
    } = await supabase.auth.getUser();

    if (!user) {
      setFormError(
        "This reset link is invalid or has expired. Request a new one.",
      );
      return;
    }

    const { error } = await supabase.auth.updateUser({
      password: values.password,
    });

    if (error) {
      setFormError(error.message);
      return;
    }

    // End the recovery session so /auth/login is reachable (middleware
    // otherwise bounces signed-in users away from auth pages).
    await supabase.auth.signOut();

    setDone(true);
    window.setTimeout(() => {
      router.push("/auth/login");
      router.refresh();
    }, 1600);
  };

  if (done) {
    return (
      <div className={splitStyles.successState}>
        <div className={splitStyles.successIcon}>
          <Check size={28} weight="bold" />
        </div>
        <h2 className={splitStyles.successTitle}>Password updated</h2>
        <p className={splitStyles.successText}>
          Your new password is saved. Taking you to sign in…
        </p>
      </div>
    );
  }

  return (
    <>
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
          <label className={styles.label} htmlFor="reset-password">
            New password
          </label>
          <div className={styles.passwordWrap}>
            <input
              className={`${styles.input} ${errors.password ? styles.inputError : ""}`}
              id="reset-password"
              type={showPassword ? "text" : "password"}
              autoComplete="new-password"
              aria-invalid={errors.password ? true : undefined}
              aria-describedby={
                errors.password
                  ? "reset-password-error"
                  : "reset-password-hint"
              }
              {...register("password")}
            />
            <button
              type="button"
              className={styles.togglePassword}
              onClick={() => setShowPassword((v) => !v)}
              aria-label={showPassword ? "Hide password" : "Show password"}
              aria-controls="reset-password"
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
              id="reset-password-error"
              className={styles.fieldError}
              role="alert"
            >
              {errors.password.message}
            </p>
          ) : (
            <p id="reset-password-hint" className={styles.fieldHint}>
              At least 8 characters
            </p>
          )}
        </div>

        <div className={styles.field}>
          <label className={styles.label} htmlFor="reset-confirmPassword">
            Confirm password
          </label>
          <input
            className={`${styles.input} ${errors.confirmPassword ? styles.inputError : ""}`}
            id="reset-confirmPassword"
            type={showPassword ? "text" : "password"}
            autoComplete="new-password"
            aria-invalid={errors.confirmPassword ? true : undefined}
            aria-describedby={
              errors.confirmPassword
                ? "reset-confirmPassword-error"
                : undefined
            }
            {...register("confirmPassword")}
          />
          {errors.confirmPassword ? (
            <p
              id="reset-confirmPassword-error"
              className={styles.fieldError}
              role="alert"
            >
              {errors.confirmPassword.message}
            </p>
          ) : null}
        </div>

        <button
          type="submit"
          className={styles.primaryButton}
          disabled={isSubmitting}
          aria-busy={isSubmitting}
        >
          {isSubmitting ? "Saving…" : "Save new password"}
        </button>
      </form>

      <p className={styles.footer}>
        Link expired?{" "}
        <Link href="/auth/forgot-password">
          Request a new one <span className={styles.footerArrow}>→</span>
        </Link>
      </p>
    </>
  );
}
