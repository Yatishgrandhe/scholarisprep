"use client";

import { useState } from "react";
import { useSearchParams } from "next/navigation";
import Link from "next/link";
import { toast } from "sonner";
import { useAuth } from "@/hooks/useAuth";
import styles from "./feedback.module.css";

export function FeedbackClient() {
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
      <div className={styles.wrap}>
        <h1 className={styles.title}>Thanks for your feedback</h1>
        <p className={styles.sub}>We read every message and use it to improve Scholaris.</p>
        <Link href="/dashboard" className={styles.link}>
          Back to dashboard
        </Link>
      </div>
    );
  }

  return (
    <div className={styles.wrap}>
      <h1 className={styles.title}>Give Feedback</h1>
      <p className={styles.sub}>Share bugs, feature ideas, or general feedback with the team.</p>
      <label className={styles.field}>
        <span>Type</span>
        <select value={type} onChange={(e) => setType(e.target.value)}>
          <option value="general">General feedback</option>
          <option value="bug">Bug report</option>
          <option value="feature">Feature request</option>
          <option value="question">Question issue</option>
          <option value="class">Join a class</option>
        </select>
      </label>
      <label className={styles.field}>
        <span>Message</span>
        <textarea
          rows={6}
          value={message}
          onChange={(e) => setMessage(e.target.value)}
          placeholder="Tell us what's on your mind…"
        />
      </label>
      <button
        type="button"
        className={styles.submit}
        disabled={submitting}
        onClick={() => void handleSubmit()}
      >
        {submitting ? "Sending…" : "Send feedback"}
      </button>
    </div>
  );
}
