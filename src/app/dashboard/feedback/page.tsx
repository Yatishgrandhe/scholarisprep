"use client";

import { Suspense, useState } from "react";
import { useSearchParams } from "next/navigation";
import Link from "next/link";
import { toast } from "sonner";
import {
  Bug,
  ChatsCircle,
  CheckCircle,
  Lightbulb,
  PaperPlaneTilt,
  Question,
  UsersThree,
} from "@phosphor-icons/react";
import { useAuth } from "@/hooks/useAuth";
import styles from "./page.module.css";

const FEEDBACK_TYPES = [
  { value: "general", label: "General", icon: ChatsCircle },
  { value: "bug", label: "Bug report", icon: Bug },
  { value: "feature", label: "Feature idea", icon: Lightbulb },
  { value: "question", label: "Question issue", icon: Question },
  { value: "class", label: "Join a class", icon: UsersThree },
] as const;

function FeedbackForm() {
  const searchParams = useSearchParams();
  const initialType = searchParams.get("type") ?? "general";
  const questionId = searchParams.get("q");
  const { user } = useAuth();
  const [type, setType] = useState(initialType);
  const [message, setMessage] = useState("");
  const [submitting, setSubmitting] = useState(false);
  const [sent, setSent] = useState(false);

  const handleSubmit = async () => {
    if (!message.trim()) {
      toast.error("Please enter your feedback.");
      return;
    }
    setSubmitting(true);
    try {
      await fetch("/api/dashboard/feedback", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          type,
          message: questionId ? `[Q:${questionId}] ${message.trim()}` : message.trim(),
          email: user?.email,
        }),
      });
      setSent(true);
      setMessage("");
    } catch {
      toast.error("Could not send feedback.");
    } finally {
      setSubmitting(false);
    }
  };

  if (sent) {
    return (
      <div className={styles.success}>
        <span className={styles.successIcon} aria-hidden>
          <CheckCircle size={28} weight="duotone" />
        </span>
        <h1 className={styles.successTitle}>Message received</h1>
        <p className={styles.successSub}>
          We read every submission and use it to shape Scholaris. Thanks for
          helping us build a better prep experience.
        </p>
        <Link href="/dashboard" className={styles.successBtn}>
          Back to dashboard
        </Link>
      </div>
    );
  }

  return (
    <section className={styles.card} aria-labelledby="feedback-form-title">
      <h2 id="feedback-form-title" className={styles.cardTitle}>
        Send feedback
      </h2>
      <p className={styles.cardDesc}>
        Your message goes directly to the product team, no black hole, no
        auto-reply.
      </p>
      <div className={styles.typeGrid} role="group" aria-label="Feedback type">
        {FEEDBACK_TYPES.map(({ value, label, icon: Icon }) => (
          <button
            key={value}
            type="button"
            className={`${styles.typeChip}${type === value ? ` ${styles.typeChipActive}` : ""}`}
            aria-pressed={type === value}
            onClick={() => setType(value)}
          >
            <Icon size={16} weight={type === value ? "fill" : "regular"} />
            {label}
          </button>
        ))}
      </div>
      <label className={styles.field}>
        <span className={styles.fieldLabel}>Your message</span>
        <textarea
          className={styles.textarea}
          rows={6}
          value={message}
          onChange={(e) => setMessage(e.target.value)}
          placeholder="Tell us what's on your mind, the more detail, the better…"
        />
        <span className={styles.charCount}>{message.length} characters</span>
      </label>
      <button
        type="button"
        className={styles.submit}
        disabled={submitting}
        onClick={() => void handleSubmit()}
      >
        <PaperPlaneTilt size={18} weight="fill" />
        {submitting ? "Sending…" : "Send feedback"}
      </button>
    </section>
  );
}

export default function FeedbackPage() {
  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <ChatsCircle
          size={22}
          weight="duotone"
          className={styles.headerIcon}
          aria-hidden
        />
        <div>
          <h1 className={styles.title}>Feedback</h1>
          <p className={styles.subtitle}>
            Share bugs, feature ideas, or question issues with the team.
          </p>
        </div>
      </header>
      <Suspense
        fallback={
          <div className={styles.card}>
            <p className={styles.cardDesc}>Loading feedback form…</p>
          </div>
        }
      >
        <FeedbackForm />
      </Suspense>
    </div>
  );
}
