"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import { createClient } from "@/lib/supabase/client";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useAuth } from "@/hooks/useAuth";
import { useTutorStream } from "@/hooks/useTutorStream";
import { createTutorConversation } from "@/lib/tutor/queries";
import { matchSparkKeyword, type SparkSuggestion } from "@/lib/tutor/sparkKeywords";
import { SparkSuggestionCard } from "@/components/tutor/SparkSuggestionCard";
import { logSparkInteraction } from "@/lib/tutor/logSparkInteraction";
import { SuggestedPrompts } from "@/components/course-chat";
import { TutorMessageBubble } from "./TutorMessageBubble";
import { TutorTypingIndicator } from "./TutorTypingIndicator";
import { TutorChatInput } from "./TutorChatInput";
import { toast } from "sonner";
import type { TutorStreamContext } from "@/lib/tutor/questionContext";
import styles from "./tutor.module.css";
import courseChatStyles from "@/components/course-chat/course-chat.module.css";

type Message = { id?: string; role: "user" | "assistant"; content: string };

export type TutorChatProps = {
  contextType?: "exam_prep" | "lesson" | "question" | "general";
  contextId?: string;
  title?: string;
  className?: string;
  initialPrompt?: string;
  streamContext?: TutorStreamContext;
  plainAssistantText?: boolean;
  /** Starter prompts shown ONLY before the first message; they fill the input
   *  when clicked and disappear once the conversation has any messages. */
  suggestedPrompts?: string[];
};

export function TutorChat({
  contextType = "general",
  contextId,
  title = "Ask Scho",
  className,
  initialPrompt,
  streamContext,
  plainAssistantText = false,
  suggestedPrompts,
}: TutorChatProps) {
  const { user } = useAuth();
  const activeExamType = useActiveExamType();
  const supabase = createClient();
  const bottomRef = useRef<HTMLDivElement>(null);

  const [conversationId, setConversationId] = useState<string | null>(null);
  const [messages, setMessages] = useState<Message[]>([]);
  const [input, setInput] = useState("");
  const [loading, setLoading] = useState(true);
  const [showTyping, setShowTyping] = useState(false);
  const [sparkSuggestion, setSparkSuggestion] = useState<SparkSuggestion | null>(null);

  const { isStreaming, streamedText, statusNote, startStream, setStreamedText } =
    useTutorStream();

  const initConversation = useCallback(async () => {
    if (!user) return;
    setLoading(true);

    let query = supabase
      .from("tutor_conversations")
      .select("id")
      .eq("user_id", user.id)
      .eq("context_type", contextType)
      .order("updated_at", { ascending: false })
      .limit(1);

    if (contextId) {
      query = query.eq("context_id", contextId);
    }

    const { data: existing } = await query.maybeSingle();

    let id = existing?.id ?? null;
    if (!id) {
      id = await createTutorConversation(supabase, user.id, {
        title,
        context_type: contextType,
        context_id: contextId,
        exam_type: activeExamType,
      });
    }

    if (!id) {
      toast.error("Could not start tutor chat");
      setLoading(false);
      return;
    }

    setConversationId(id);

    const { data: rows } = await supabase
      .from("tutor_messages")
      .select("id, role, content")
      .eq("conversation_id", id)
      .order("created_at", { ascending: true });

    setMessages(
      (rows ?? []).map((r) => ({
        id: r.id,
        role: r.role as "user" | "assistant",
        content: r.content,
      })),
    );
    setLoading(false);
  }, [user, supabase, contextType, contextId, title, activeExamType]);

  useMountLoad(initConversation, [initConversation]);

  useEffect(() => {
    if (initialPrompt && !loading && conversationId && messages.length === 0) {
      setInput(initialPrompt);
    }
  }, [initialPrompt, loading, conversationId, messages.length]);

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages, streamedText, isStreaming]);

  const sendMessage = async () => {
    const text = input.trim();
    if (!text || isStreaming || !user || !conversationId) return;

    setInput("");
    setMessages((m) => [...m, { role: "user", content: text }]);
    setStreamedText("");
    setShowTyping(true);

    const sparkMatch = matchSparkKeyword(text);
    if (sparkMatch) {
      setSparkSuggestion(sparkMatch);
      logSparkInteraction({
        sparkType: sparkMatch.type,
        action: "suggested",
        examType: activeExamType,
        conversationId: conversationId ?? undefined,
        triggeredByMessage: text,
      });
    } else {
      setSparkSuggestion(null);
    }

    try {
      const result = await startStream({
        conversationId,
        message: text,
        context: {
          exam_type: activeExamType,
          ...streamContext,
        },
      });

      if (result.text) {
        setMessages((m) => [...m, { role: "assistant", content: result.text }]);
      }
      setStreamedText("");
      setShowTyping(false);
    } catch (err) {
      // Show the real reason so failures are debuggable in production rather
      // than always reading as a generic "try again".
      const detail =
        err instanceof Error && err.message ? err.message : "Please try again.";
      setMessages((m) => [
        ...m,
        {
          role: "assistant",
          content: `Something went wrong, ${detail}`,
        },
      ]);
      setStreamedText("");
      setShowTyping(false);
    }
  };

  return (
    <div className={`${styles.embeddedChat} ${className ?? ""}`}>
      <div className={styles.messages}>
        {loading ? (
          <p className={styles.emptyHint}>Loading…</p>
        ) : (
          <>
            {messages.length === 0 && !isStreaming ? (
              <div className={styles.starter}>
                <p className={styles.emptyHint}>
                  Ask Scho anything about this lesson, concepts, practice, or
                  exam strategy.
                </p>
                {suggestedPrompts && suggestedPrompts.length > 0 ? (
                  <SuggestedPrompts
                    prompts={suggestedPrompts}
                    variant="chips"
                    onSelect={setInput}
                  />
                ) : null}
              </div>
            ) : null}
            {messages.map((msg, i) => (
              <TutorMessageBubble
                key={msg.id ?? `msg-${i}`}
                role={msg.role}
                content={msg.content}
                plainAssistantText={plainAssistantText}
              />
            ))}
            {sparkSuggestion ? (
              <div className={courseChatStyles.messageAssistant}>
                <span className={courseChatStyles.avatar} aria-hidden>S</span>
                <div className={courseChatStyles.messageAssistantBody}>
                  <span className={courseChatStyles.roleLabel}>Scho</span>
                  <SparkSuggestionCard
                    suggestion={sparkSuggestion}
                    onTryIt={(prompt) => {
                      logSparkInteraction({
                        sparkType: sparkSuggestion.type,
                        action: "try_it",
                        examType: activeExamType,
                        conversationId: conversationId ?? undefined,
                      });
                      setInput(prompt);
                      setSparkSuggestion(null);
                    }}
                    onDismiss={() => {
                      logSparkInteraction({
                        sparkType: sparkSuggestion.type,
                        action: "dismiss",
                        examType: activeExamType,
                        conversationId: conversationId ?? undefined,
                      });
                      setSparkSuggestion(null);
                    }}
                  />
                </div>
              </div>
            ) : null}
            {(isStreaming || showTyping) && !streamedText ? (
              <TutorTypingIndicator label={statusNote || undefined} />
            ) : null}
            {(isStreaming || showTyping) && streamedText ? (
              <TutorMessageBubble
                role="assistant"
                content={streamedText}
                plainAssistantText={plainAssistantText}
              />
            ) : null}
          </>
        )}
        <div ref={bottomRef} />
      </div>
      <TutorChatInput
        value={input}
        onChange={setInput}
        onSend={() => void sendMessage()}
        disabled={isStreaming || loading || !conversationId}
      />
    </div>
  );
}
