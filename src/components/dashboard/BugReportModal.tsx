"use client";

import { useState } from "react";
import { X, Bug, Globe, Envelope } from "@phosphor-icons/react";
import { useAuth } from "@/hooks/useAuth";
import { toast } from "sonner";
import styles from "./BugReportModal.module.css";

type BugReportModalProps = {
  open: boolean;
  onClose: () => void;
};

export function BugReportModal({ open, onClose }: BugReportModalProps) {
  const { user } = useAuth();
  const [description, setDescription] = useState("");
  const [email, setEmail] = useState<string | null>(null);
  const [submitting, setSubmitting] = useState(false);

  if (!open) return null;

  const pageUrl = typeof window !== "undefined" ? window.location.href : "";
  const emailValue = email ?? user?.email ?? "";

  const handleClose = () => {
    setDescription("");
    setEmail(null);
    onClose();
  };

  const handleSubmit = async () => {
    if (!description.trim()) {
      toast.error("Please describe the issue.");
      return;
    }
    setSubmitting(true);
    try {
      const res = await fetch("/api/dashboard/feedback", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          type: "bug",
          message: description.trim(),
          email: emailValue.trim() || user?.email,
          page_url: pageUrl || "unknown",
        }),
      });

      if (!res.ok) {
        throw new Error("Failed to send");
      }

      toast.success("Thanks, we received your bug report.");
      setDescription("");
      setEmail(null);
      onClose();
    } catch {
      toast.error("Could not send report. Try again or email support@scholaris.app.");
    } finally {
      setSubmitting(false);
    }
  };

  return (
    <div className={styles.overlay} role="dialog" aria-modal="true" onClick={handleClose}>
      <div className={styles.modal} onClick={(e) => e.stopPropagation()}>
        <div className={styles.header}>
          <div className={styles.titleGroup}>
            <div className={styles.bugIconWrap}>
              <Bug size={20} weight="duotone" className={styles.bugIcon} />
            </div>
            <div>
              <h2>Report a bug</h2>
              <p className={styles.hint}>Help us make Scholaris better for everyone</p>
            </div>
          </div>
          <button type="button" className={styles.close} onClick={handleClose} aria-label="Close">
            <X size={18} weight="bold" />
          </button>
        </div>

        <div className={styles.body}>
          {/* Page Location Context */}
          <div className={styles.contextCard}>
            <div className={styles.contextHeader}>
              <Globe size={14} className={styles.contextIcon} />
              <span>Location Context</span>
            </div>
            <div className={styles.contextUrl} title={pageUrl}>
              {pageUrl || "Loading current page URL..."}
            </div>
          </div>

          {/* Email input */}
          <div className={styles.field}>
            <label htmlFor="bug-email">
              <Envelope size={14} className={styles.fieldIcon} />
              <span>Your email</span>
            </label>
            <input
              id="bug-email"
              type="email"
              className={styles.input}
              value={emailValue}
              onChange={(e) => setEmail(e.target.value)}
              placeholder="name@example.com"
            />
          </div>

          {/* Description input */}
          <div className={styles.field}>
            <label htmlFor="bug-desc">
              <span>What happened?</span>
            </label>
            <textarea
              id="bug-desc"
              className={styles.textarea}
              rows={4}
              value={description}
              onChange={(e) => setDescription(e.target.value)}
              placeholder="Describe what went wrong and steps to reproduce..."
            />
          </div>
        </div>

        <div className={styles.footer}>
          <button type="button" className={styles.cancel} onClick={handleClose}>
            Cancel
          </button>
          <button
            type="button"
            className={styles.submit}
            disabled={submitting}
            onClick={() => void handleSubmit()}
          >
            {submitting ? "Sending..." : "Submit bug"}
          </button>
        </div>
      </div>
    </div>
  );
}
