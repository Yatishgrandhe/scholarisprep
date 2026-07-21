"use client";

import { useCallback, useState } from "react";
import { Plus, Trash, X } from "@phosphor-icons/react";
import { toast } from "sonner";
import { FreeStudyLayout } from "./FreeStudyLayout";
import { FreeStudyChat, type ChatMessage } from "./FreeStudyChat";
import styles from "./free-study-notes.module.css";

type Note = {
  id: string;
  title: string;
  body: string;
  imageText?: string;
};

function newNote(): Note {
  return { id: crypto.randomUUID(), title: "", body: "" };
}

export function FreeStudyNotes() {
  const [notes, setNotes] = useState<Note[]>([newNote()]);
  const [activeId, setActiveId] = useState<string>(notes[0]!.id);
  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [isStreaming, setIsStreaming] = useState(false);

  const activeNote = notes.find((n) => n.id === activeId) ?? notes[0];

  const updateNote = useCallback(
    (patch: Partial<Note>) => {
      setNotes((prev) =>
        prev.map((n) => (n.id === activeId ? { ...n, ...patch } : n)),
      );
    },
    [activeId],
  );

  const handleAdd = useCallback(() => {
    const note = newNote();
    setNotes((prev) => [...prev, note]);
    setActiveId(note.id);
  }, []);

  const handleDelete = useCallback(
    (id: string) => {
      setNotes((prev) => {
        const next = prev.filter((n) => n.id !== id);
        if (next.length === 0) {
          const note = newNote();
          setActiveId(note.id);
          return [note];
        }
        if (id === activeId) {
          setActiveId(next[0]!.id);
        }
        return next;
      });
    },
    [activeId],
  );

  const handleSend = useCallback(
    async (content: string) => {
      const noteContext = activeNote
        ? `\n\nNote content:\nTitle: ${activeNote.title || "(untitled)"}\n${activeNote.body}`
        : "";

      const userMsg: ChatMessage = {
        role: "user",
        content: content + noteContext,
      };
      setMessages((prev) => [...prev, userMsg]);
      setIsStreaming(true);

      try {
        const res = await fetch("/api/ai/tutor", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            messages: [...messages, userMsg].map((m) => ({
              role: m.role,
              content: m.content,
            })),
            examType: "general",
          }),
        });

        if (!res.ok) throw new Error("Failed");

        const reader = res.body?.getReader();
        if (!reader) throw new Error("No body");

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
      } catch {
        toast.error("Something went wrong");
        setMessages((prev) => prev.filter((m) => m !== userMsg));
      } finally {
        setIsStreaming(false);
      }
    },
    [activeNote, messages],
  );

  return (
    <FreeStudyLayout mode="Notes">
      <div className={styles.layout}>
        <div className={styles.sidebar}>
          <div className={styles.sidebarHeader}>
            <h2 className={styles.sidebarTitle}>Notes</h2>
            <button
              type="button"
              className={styles.addBtn}
              onClick={handleAdd}
              aria-label="New note"
            >
              <Plus size={16} weight="bold" aria-hidden />
            </button>
          </div>
          <ul className={styles.noteList}>
            {notes.map((note) => (
              <li key={note.id}>
                <button
                  type="button"
                  className={`${styles.noteItem} ${note.id === activeId ? styles.noteItemActive : ""}`}
                  onClick={() => setActiveId(note.id)}
                >
                  <span className={styles.noteItemTitle}>
                    {note.title || "Untitled"}
                  </span>
                  {notes.length > 1 ? (
                    <span
                      className={styles.noteDelete}
                      onClick={(e) => {
                        e.stopPropagation();
                        handleDelete(note.id);
                      }}
                      role="button"
                      tabIndex={0}
                    >
                      <Trash size={12} aria-hidden />
                    </span>
                  ) : null}
                </button>
              </li>
            ))}
          </ul>
        </div>

        <div className={styles.editor}>
          <input
            className={styles.titleInput}
            type="text"
            value={activeNote?.title ?? ""}
            onChange={(e) => updateNote({ title: e.target.value })}
            placeholder="Note title…"
          />
          <textarea
            className={styles.bodyTextarea}
            value={activeNote?.body ?? ""}
            onChange={(e) => updateNote({ body: e.target.value })}
            placeholder="Start writing…"
          />
        </div>

        <div className={styles.chatPanel}>
          <FreeStudyChat
            messages={messages}
            onSend={handleSend}
            isStreaming={isStreaming}
            placeholder="Ask about your notes…"
            emptyState={
              <div className={styles.empty}>
                <p className={styles.emptyTitle}>Ask Scho about your notes</p>
                <p className={styles.emptyDesc}>
                  Write your notes, then ask Scho to help you study them.
                </p>
              </div>
            }
          />
        </div>
      </div>
    </FreeStudyLayout>
  );
}
