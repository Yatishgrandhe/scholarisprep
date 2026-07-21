"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { PaperPlaneTilt } from "@phosphor-icons/react";
import { ScholarisLogoMark } from "@/components/brand/ScholarisLogoMark";
import styles from "./free-study-chat.module.css";

export type ChatMessage = {
  role: "user" | "assistant";
  content: string;
};

type FreeStudyChatProps = {
  messages: ChatMessage[];
  onSend: (message: string) => void;
  isStreaming?: boolean;
  disabled?: boolean;
  placeholder?: string;
  emptyState?: React.ReactNode;
};

export function FreeStudyChat({
  messages,
  onSend,
  isStreaming = false,
  disabled = false,
  placeholder = "Ask Scho anything…",
  emptyState,
}: FreeStudyChatProps) {
  const [input, setInput] = useState("");
  const scrollRef = useRef<HTMLDivElement>(null);
  const endRef = useRef<HTMLDivElement>(null);

  const canSend = input.trim().length > 0 && !isStreaming && !disabled;

  const handleSend = useCallback(() => {
    if (!canSend) return;
    onSend(input.trim());
    setInput("");
  }, [canSend, input, onSend]);

  const handleKeyDown = useCallback(
    (e: React.KeyboardEvent<HTMLTextAreaElement>) => {
      if (e.key === "Enter" && !e.shiftKey) {
        e.preventDefault();
        handleSend();
      }
    },
    [handleSend],
  );

  useEffect(() => {
    endRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages.length, isStreaming]);

  return (
    <div className={styles.chat}>
      <div ref={scrollRef} className={styles.messages}>
        {messages.length === 0 && emptyState ? (
          <div className={styles.emptySlot}>{emptyState}</div>
        ) : (
          messages.map((msg, i) => (
            <div
              key={`${msg.role}-${i}`}
              className={`${styles.bubble} ${msg.role === "user" ? styles.userBubble : styles.assistantBubble}`}
            >
              {msg.role === "assistant" ? (
                <div className={styles.avatar}>
                  <ScholarisLogoMark size={18} />
                </div>
              ) : null}
              <div className={styles.bubbleContent}>{msg.content}</div>
            </div>
          ))
        )}
        {isStreaming ? (
          <div className={`${styles.bubble} ${styles.assistantBubble}`}>
            <div className={styles.avatar}>
              <ScholarisLogoMark size={18} />
            </div>
            <div className={styles.typing}>
              <span className={styles.dot} />
              <span className={styles.dot} />
              <span className={styles.dot} />
            </div>
          </div>
        ) : null}
        <div ref={endRef} />
      </div>

      <div className={styles.composer}>
        <textarea
          className={styles.textarea}
          value={input}
          onChange={(e) => setInput(e.target.value)}
          onKeyDown={handleKeyDown}
          placeholder={placeholder}
          disabled={isStreaming || disabled}
          rows={1}
        />
        <button
          type="button"
          className={styles.sendBtn}
          onClick={handleSend}
          disabled={!canSend}
          aria-label="Send message"
        >
          <PaperPlaneTilt size={18} weight="fill" aria-hidden />
        </button>
      </div>
    </div>
  );
}
