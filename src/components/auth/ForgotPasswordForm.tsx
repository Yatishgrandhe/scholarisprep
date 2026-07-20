"use client";

import { useState } from "react";
import Link from "next/link";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { Check } from "@phosphor-icons/react";
import { getAppUrl } from "@/lib/env";
import { createClient } from "@/lib/supabase/client";
import {
  forgotPasswordSchema,
  type ForgotPasswordInput,
} from "@/lib/validations/auth";
import styles from "./auth.module.css";
import splitStyles from "./auth-split.module.css";

export function ForgotPasswordForm() {
  const supabase = createClient();
  const [formError, setFormError] = useState<string | null>(null);
  const [sent, setSent] = useState(false);

  const {
    register,
    handleSubmit,
    formState: { errors, isSubmitting },
  } = useForm<ForgotPasswordInput>({
    resolver: zodResolver(forgotPasswordSchema),
    defaultValues: { email: "" },
  });

  const onSubmit = async (values: ForgotPasswordInput) => {
    setFormError(null);

    const email = values.email.trim().toLowerCase();
    const redirectTo = `${getAppUrl()}/auth/callback?next=/auth/reset-password`;

    try {
      // Primary path: Supabase Auth sends the recovery email (built-in or
      // Custom SMTP). Client call stores the PKCE code verifier for the
      // default ConfirmationURL → /auth/callback?code=… flow.
      const { error } = await supabase.auth.resetPasswordForEmail(email, {
        redirectTo,
      });

      if (error) {
        const msg = error.message.toLowerCase();
        const isUnknownUser =
          msg.includes("user not found") ||
          msg.includes("unable to find user") ||
          msg.includes("email not found") ||
          error.status === 404;

        // Anti-enumeration: unknown emails still show the success state.
        if (!isUnknownUser) {
          const isRateLimit =
            error.status === 429 ||
            /rate.?limit|too many requests|email rate/i.test(error.message);
          const isSmtp =
            /smtp|error sending|email.*fail|mail.*fail/i.test(error.message);

          setFormError(
            isRateLimit
              ? "Too many reset emails were requested. Please wait a few minutes and try again."
              : isSmtp
                ? "Supabase could not send the reset email. Check Authentication → SMTP in the dashboard, or try again later."
                : error.message ||
                  "We couldn't send the reset email. Please try again.",
          );
          return;
        }
      }

      setSent(true);
    } catch {
      setFormError(
        "Network error while sending the reset email. Check your connection and try again.",
      );
    }
  };

  if (sent) {
    return (
      <div className={splitStyles.successState}>
        <div className={splitStyles.successIcon}>
          <Check size={28} weight="bold" />
        </div>
        <h2 className={splitStyles.successTitle}>Check your email</h2>
        <p className={splitStyles.successText}>
          If an account exists for that address, we sent a password reset link.
          Open it from your inbox to choose a new password.
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
          <label className={styles.label} htmlFor="forgot-email">
            Email
          </label>
          <input
            className={`${styles.input} ${errors.email ? styles.inputError : ""}`}
            id="forgot-email"
            type="email"
            placeholder="you@school.edu"
            autoComplete="email"
            inputMode="email"
            aria-invalid={errors.email ? true : undefined}
            aria-describedby={errors.email ? "forgot-email-error" : undefined}
            {...register("email")}
          />
          {errors.email ? (
            <p id="forgot-email-error" className={styles.fieldError} role="alert">
              {errors.email.message}
            </p>
          ) : null}
        </div>

        <button
          type="submit"
          className={styles.primaryButton}
          disabled={isSubmitting}
          aria-busy={isSubmitting}
        >
          {isSubmitting ? "Sending…" : "Send reset link"}
        </button>
      </form>

      <p className={styles.footer}>
        Remembered it?{" "}
        <Link href="/auth/login">
          Sign in <span className={styles.footerArrow}>→</span>
        </Link>
      </p>
    </>
  );
}
