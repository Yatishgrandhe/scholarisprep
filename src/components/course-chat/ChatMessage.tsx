"use client";

import { MathRenderer } from "@/components/question/MathRenderer";
import { ChatMarkdown } from "./ChatMarkdown";
import styles from "./course-chat.module.css";

export type ChatMessageRole = "user" | "assistant";

export type ChatMessageProps = {
  role: ChatMessageRole;
  content: string;
  /** When true, strip markdown chrome from assistant replies. */
  plainAssistantText?: boolean;
  assistantName?: string;
  userLabel?: string;
  avatarFallback?: string;
};

function plainTutorText(text: string): string {
  return text
    .replace(/^#{1,6}\s+/gm, "")
    .replace(/\*\*([^*]+)\*\*/g, "$1")
    .replace(/\*([^*]+)\*/g, "$1")
    .replace(/`([^`]+)`/g, "$1")
    .replace(/^\s*[-*]\s+/gm, "• ")
    .trim();
}

export function ChatMessage({
  role,
  content,
  plainAssistantText = false,
  assistantName = "Scho",
  userLabel = "You",
  avatarFallback = "S",
}: ChatMessageProps) {
  if (role === "user") {
    return (
      <div className={styles.messageUser}>
        <span className={styles.roleLabel}>{userLabel}</span>
        <div className={styles.bubbleUser}>
          <MathRenderer text={content} />
        </div>
      </div>
    );
  }

  const display = plainAssistantText ? plainTutorText(content) : content;

  return (
    <div className={styles.messageAssistant}>
      <span className={styles.avatar} aria-hidden>
        {avatarFallback}
      </span>
      <div className={styles.messageAssistantBody}>
        <span className={styles.roleLabel}>{assistantName}</span>
        <div className={styles.bubbleAssistant}>
          {display ?
            plainAssistantText ?
              <p className={styles.plainAssistant}>
                <MathRenderer text={display} />
              </p>
            : <ChatMarkdown content={display} />
          : null}
        </div>
      </div>
    </div>
  );
}
