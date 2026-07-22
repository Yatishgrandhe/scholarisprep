"use client";

import { useCallback, useState } from "react";
import { toast } from "sonner";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { FreeStudyLayout } from "./FreeStudyLayout";
import { FreeStudyChat, type ChatMessage } from "./FreeStudyChat";
import styles from "./free-study-tutor.module.css";

const EMPTY_STATE = (
  <div className={styles.empty}>
    <p className={styles.emptyTitle}>Ask Scho anything</p>
    <p className={styles.emptyDesc}>
      Your AI tutor is ready to help with any subject.
    </p>
  </div>
);

export function FreeStudyTutor() {
  const examType = useActiveExamType();
  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [isStreaming, setIsStreaming] = useState(false);

  const handleSend = useCallback(
    async (content: string) => {
      const userMsg: ChatMessage = { role: "user", content };
      setMessages((prev) => [...prev, userMsg]);
      setIsStreaming(true);

      try {
        const res = await fetch("/api/ai/tutor", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            conversation_id: "free-study-tutor",
            message: content,
            context: { exam_type: examType },
          }),
        });

        if (!res.ok) throw new Error("Failed to get response");

        const reader = res.body?.getReader();
        if (!reader) throw new Error("No response body");

        const decoder = new TextDecoder();
        let assistant = "";

        setMessages((prev) => [...prev, { role: "assistant", content: "" }]);

        while (true) {
          const { done, value } = await reader.read();
          if (done) break;
          assistant += decoder.decode(value, { stream: true });
          setMessages((prev) => {
            const next = [...prev];
            next[next.length - 1] = { role: "assistant", content: assistant };
            return next;
          });
        }
      } catch (err) {
        toast.error("Something went wrong. Please try again.");
        setMessages((prev) => prev.filter((m) => m !== userMsg));
      } finally {
        setIsStreaming(false);
      }
    },
    [messages, examType],
  );

  return (
    <FreeStudyLayout mode="Tutor">
      <FreeStudyChat
        messages={messages}
        onSend={handleSend}
        isStreaming={isStreaming}
        placeholder={`Ask Scho about ${examType}…`}
        emptyState={EMPTY_STATE}
      />
    </FreeStudyLayout>
  );
}
