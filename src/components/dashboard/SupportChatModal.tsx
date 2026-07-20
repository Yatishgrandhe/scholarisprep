"use client";

import { useState } from "react";
import { ChatCircle, X } from "@phosphor-icons/react";
import styles from "./BugReportModal.module.css";

type SupportChatModalProps = {
  open: boolean;
  onClose: () => void;
};

export function SupportChatModal({ open, onClose }: SupportChatModalProps) {
  const [message, setMessage] = useState("");

  if (!open) return null;

  const handleSend = () => {
    const body = encodeURIComponent(
      message.trim() || "Hi, I need help with Scholaris.",
    );
    window.location.href = `mailto:support@scholaris.app?subject=${encodeURIComponent("Support request")}&body=${body}`;
    setMessage("");
    onClose();
  };

  return (
    <div className={styles.overlay} role="dialog" aria-modal="true" aria-labelledby="support-title">
      <div className={styles.modal}>
        <div className={styles.header}>
          <h2 id="support-title">Chat with Support</h2>
          <button type="button" className={styles.close} onClick={onClose} aria-label="Close">
            <X size={20} />
          </button>
        </div>
        <p className={styles.hint}>
          Live chat (Intercom) is coming soon. Leave a message and we&apos;ll open your email
          client, or email{" "}
          <a href="mailto:support@scholaris.app">support@scholaris.app</a> directly.
        </p>
        <textarea
          className={styles.textarea}
          rows={4}
          placeholder="How can we help?"
          value={message}
          onChange={(e) => setMessage(e.target.value)}
        />
        <div className={styles.footer}>
          <button type="button" className={styles.cancel} onClick={onClose}>
            Cancel
          </button>
          <button type="button" className={styles.submit} onClick={handleSend}>
            <ChatCircle size={16} weight="fill" style={{ marginRight: 6, verticalAlign: -2 }} />
            Send via email
          </button>
        </div>
      </div>
    </div>
  );
}
