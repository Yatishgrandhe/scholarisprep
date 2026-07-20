"use client";

import { useEffect, useRef } from "react";
import { ArrowUp } from "@phosphor-icons/react";
import styles from "./course-chat.module.css";

const DEFAULT_MAX_CHARS = 3000;
const WARN_AT = 2700;

export type ChatInputProps = {
  value: string;
  onChange: (value: string) => void;
  onSend: () => void;
  disabled?: boolean;
  placeholder?: string;
  maxChars?: number;
  disclaimer?: string;
};

export function ChatInput({
  value,
  onChange,
  onSend,
  disabled,
  placeholder = "Ask Scho anything…",
  maxChars = DEFAULT_MAX_CHARS,
  disclaimer = "Scho can make mistakes. Check important details.",
}: ChatInputProps) {
  const textareaRef = useRef<HTMLTextAreaElement>(null);

  useEffect(() => {
    const el = textareaRef.current;
    if (!el) return;
    el.style.height = "auto";
    const lineHeight = 22;
    const maxHeight = lineHeight * 6;
    el.style.height = `${Math.min(el.scrollHeight, maxHeight)}px`;
  }, [value]);

  const handleKeyDown = (e: React.KeyboardEvent<HTMLTextAreaElement>) => {
    if (e.key === "Enter" && !e.shiftKey) {
      e.preventDefault();
      if (!disabled && value.trim()) onSend();
    }
  };

  const nearLimit = value.length >= WARN_AT;

  return (
    <div className={styles.composer}>
      {nearLimit ? (
        <p
          className={`${styles.charCount} ${value.length >= maxChars ? styles.charCountWarn : ""}`}
        >
          {value.length} / {maxChars}
        </p>
      ) : null}
      <div className={styles.inputArea}>
        <textarea
          ref={textareaRef}
          className={styles.textarea}
          value={value}
          rows={1}
          maxLength={maxChars}
          placeholder={placeholder}
          disabled={disabled}
          onChange={(e) => onChange(e.target.value)}
          onKeyDown={handleKeyDown}
        />
        <button
          type="button"
          className={styles.sendBtn}
          disabled={disabled || !value.trim()}
          onClick={onSend}
          aria-label="Send message"
        >
          <ArrowUp size={18} weight="bold" />
        </button>
      </div>
      {disclaimer ? <p className={styles.disclaimer}>{disclaimer}</p> : null}
    </div>
  );
}
