"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import { useParams, useRouter } from "next/navigation";
import { CaretRight, Sparkle } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { useAuth } from "@/hooks/useAuth";
import { useTutorStream } from "@/hooks/useTutorStream";
import { useSubjectStore } from "@/stores/subjectStore";
import { TutorConversationList } from "@/components/tutor/TutorConversationList";
import { TutorMessageBubble } from "@/components/tutor/TutorMessageBubble";
import { TutorTypingIndicator } from "@/components/tutor/TutorTypingIndicator";
import { TutorChatInput } from "@/components/tutor/TutorChatInput";
import {
  fetchTutorConversations,
  type TutorConversationRow,
} from "@/lib/tutor/queries";
import {
  tutorEmptyLead,
  tutorExamLabel,
  tutorSuggestions,
} from "@/lib/tutor/suggestions";
import { tutorHref } from "@/lib/tutor/routes";
import { toast } from "sonner";
import styles from "@/components/tutor/tutor.module.css";

type Message = { id?: string; role: "user" | "assistant"; content: string };

export default function TutorConversationPage() {
  const params = useParams();
  const conversationId = params.conversationId as string;
  const router = useRouter();
  const { user } = useAuth();
  const activeExamType = useActiveExamType();
  const subjectConfigs = useSubjectStore((s) => s.subjectConfigs);
  const examLabel = useMemo(
    () =>
      tutorExamLabel(
        activeExamType,
        subjectConfigs[activeExamType]?.display_name,
      ),
    [activeExamType, subjectConfigs],
  );
  const suggestions = useMemo(
    () => tutorSuggestions(activeExamType, examLabel),
    [activeExamType, examLabel],
  );
  const supabase = createClient();
  const bottomRef = useRef<HTMLDivElement>(null);

  const [conversations, setConversations] = useState<TutorConversationRow[]>([]);
  const [messages, setMessages] = useState<Message[]>([]);
  const [title, setTitle] = useState("Conversation");
  const [contextLabel, setContextLabel] = useState<string | null>(null);
  const [input, setInput] = useState("");
  const [loading, setLoading] = useState(true);
  const [sidebarCollapsed, setSidebarCollapsed] = useState(false);
  const [showTyping, setShowTyping] = useState(false);

  const { isStreaming, streamedText, startStream, setStreamedText } =
    useTutorStream();

  const loadConversations = useCallback(async () => {
    if (!user) return;
    const rows = await fetchTutorConversations(supabase, user.id, activeExamType);
    setConversations(rows);
  }, [user, supabase, activeExamType]);

  const loadConversation = useCallback(async () => {
    if (!user) return;
    setLoading(true);

    const { data: convo } = await supabase
      .from("tutor_conversations")
      .select("id, title, context_type, context_id, user_id")
      .eq("id", conversationId)
      .single();

    if (!convo || convo.user_id !== user.id) {
      router.replace(tutorHref(activeExamType));
      return;
    }

    setTitle(convo.title ?? "Conversation");
    if (convo.context_type && convo.context_type !== "general") {
      setContextLabel(`${convo.context_type}${convo.context_id ? `: ${convo.context_id}` : ""}`);
    } else {
      setContextLabel(null);
    }

    const { data: rows } = await supabase
      .from("tutor_messages")
      .select("id, role, content")
      .eq("conversation_id", conversationId)
      .order("created_at", { ascending: true });

    setMessages(
      (rows ?? []).map((r) => ({
        id: r.id,
        role: r.role as "user" | "assistant",
        content: r.content,
      })),
    );
    setLoading(false);
  }, [user, supabase, conversationId, router, activeExamType]);

  useMountLoad(loadConversations, [loadConversations]);
  useMountLoad(loadConversation, [loadConversation]);

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages, streamedText, isStreaming]);

  const handleNewConversation = async () => {
    if (!user) return;
    const { data } = await supabase
      .from("tutor_conversations")
      .insert({
        user_id: user.id,
        title: "New conversation",
        context_type: "general",
        exam_type: activeExamType,
      })
      .select("id")
      .single();
    if (data?.id) {
      router.push(`/dashboard/tutor/${data.id}`);
    } else {
      toast.error("Could not create conversation. Please try again.");
    }
  };

  const sendMessage = async () => {
    const text = input.trim();
    if (!text || isStreaming || !user) return;

    setInput("");
    setMessages((m) => [...m, { role: "user", content: text }]);
    setStreamedText("");
    setShowTyping(true);
    const typingStartedAt = Date.now();

    if (text.length < 60 && title === "New conversation") {
      await supabase
        .from("tutor_conversations")
        .update({ title: text.slice(0, 48) })
        .eq("id", conversationId);
      setTitle(text.slice(0, 48));
    }

    try {
      const result = await startStream({
        conversationId,
        message: text,
        context: { exam_type: activeExamType },
      });

      const typingMinMs = 500;
      const typingWait = Math.max(0, typingMinMs - (Date.now() - typingStartedAt));
      if (typingWait > 0) {
        await new Promise((r) => setTimeout(r, typingWait));
      }

      if (result.text) {
        setMessages((m) => [...m, { role: "assistant", content: result.text }]);
      }
      setStreamedText("");
      setShowTyping(false);
      void loadConversations();
      void loadConversation();
    } catch {
      setMessages((m) => [
        ...m,
        {
          role: "assistant",
          content: "Hmm, that didn't go through. Mind giving it another try?",
        },
      ]);
      setStreamedText("");
      setShowTyping(false);
    }
  };

  return (
    <>
      <div className={styles.chatLayout}>
        <TutorConversationList
          conversations={conversations}
          activeId={conversationId}
          onNewConversation={() => void handleNewConversation()}
          collapsible
          collapsed={sidebarCollapsed}
          onToggleCollapse={() => setSidebarCollapsed((c) => !c)}
        />

        <div className={styles.chatMain}>
          <header className={styles.chatHeader}>
            <div className={styles.chatHeaderMain}>
              <h2 className={styles.chatTitle}>{title}</h2>
              {contextLabel ? (
                <span className={styles.contextBadge}>{contextLabel}</span>
              ) : null}
            </div>
          </header>

          <div className={styles.messages}>
            {loading ? (
              <p className={styles.emptyHint}>Loading…</p>
            ) : (
              <>
                {messages.length === 0 && !isStreaming ? (
                  <div className={styles.emptyState}>
                    <span className={styles.emptyIcon} aria-hidden>
                      <Sparkle size={32} weight="duotone" />
                    </span>
                    <p className={styles.emptyLead}>
                      {tutorEmptyLead(examLabel)}
                    </p>
                    <div className={styles.suggestionList}>
                      {suggestions.map((s) => (
                        <button
                          key={s.lead}
                          type="button"
                          className={styles.suggestionRow}
                          onClick={() => setInput(`${s.lead} ${s.text}`)}
                        >
                          <span className={styles.suggestionLead}>{s.lead}</span>
                          <span className={styles.suggestionText}>{s.text}</span>
                          <span className={styles.suggestionChevron} aria-hidden>
                            <CaretRight size={16} />
                          </span>
                        </button>
                      ))}
                    </div>
                  </div>
                ) : null}
                {messages.map((msg, i) => (
                  <TutorMessageBubble
                    key={msg.id ?? `msg-${i}`}
                    role={msg.role}
                    content={msg.content}
                  />
                ))}
                {(isStreaming || showTyping) && !streamedText ? (
                  <TutorTypingIndicator />
                ) : null}
                {(isStreaming || showTyping) && streamedText ? (
                  <TutorMessageBubble role="assistant" content={streamedText} />
                ) : null}
              </>
            )}
            <div ref={bottomRef} />
          </div>

          <TutorChatInput
            value={input}
            onChange={setInput}
            onSend={() => void sendMessage()}
            disabled={isStreaming || loading}
          />
        </div>
      </div>
    </>
  );
}
