"use client";

import { useCallback, useMemo, useState } from "react";
import {
  Plus,
  Trash,
  Lightning,
  Cardholder,
  Image,
  FilePdf,
  ChatCircle,
  X,
} from "@phosphor-icons/react";
import { toast } from "sonner";
import { FreeStudyLayout } from "./FreeStudyLayout";
import { FreeStudyChat, type ChatMessage } from "./FreeStudyChat";
import { NoteQuiz } from "./NoteQuiz";
import { NoteFlashcards } from "./NoteFlashcards";
import {
  generateQuiz,
  type GenerateQuizQuestion,
} from "@/lib/free-study/generateQuiz";
import {
  generateFlashcardsFromText,
  type FreeStudyFlashcard,
} from "@/lib/free-study/generateFlashcards";
import styles from "./free-study-notes.module.css";

const PROJECT_COLORS = [
  "#3b82f6",
  "#22c55e",
  "#a855f7",
  "#f97316",
  "#ef4444",
  "#14b8a6",
] as const;

type Project = {
  id: string;
  name: string;
  color: string;
};

type Note = {
  id: string;
  title: string;
  body: string;
  projectId: string;
};

function newProject(name: string, color: string): Project {
  return { id: crypto.randomUUID(), name, color };
}

function newNote(projectId: string): Note {
  return { id: crypto.randomUUID(), title: "", body: "", projectId };
}

export function FreeStudyNotes() {
  const [projects, setProjects] = useState<Project[]>([]);
  const [activeProjectId, setActiveProjectId] = useState<string | null>(null);
  const [notes, setNotes] = useState<Note[]>([]);
  const [activeNoteId, setActiveNoteId] = useState<string | null>(null);

  const [showNewProject, setShowNewProject] = useState(false);
  const [newProjectName, setNewProjectName] = useState("");
  const [newProjectColor, setNewProjectColor] = useState<string>(PROJECT_COLORS[0]);

  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [isStreaming, setIsStreaming] = useState(false);
  const [showChat, setShowChat] = useState(false);

  const [showQuiz, setShowQuiz] = useState(false);
  const [quizQuestions, setQuizQuestions] = useState<GenerateQuizQuestion[]>([]);
  const [showFlashcards, setShowFlashcards] = useState(false);
  const [flashcards, setFlashcards] = useState<FreeStudyFlashcard[]>([]);
  const [generating, setGenerating] = useState(false);

  const activeProject = useMemo(
    () => projects.find((p) => p.id === activeProjectId) ?? null,
    [projects, activeProjectId],
  );

  const projectNotes = useMemo(
    () =>
      activeProjectId
        ? notes.filter((n) => n.projectId === activeProjectId)
        : [],
    [notes, activeProjectId],
  );

  const activeNote = useMemo(
    () => notes.find((n) => n.id === activeNoteId) ?? null,
    [notes, activeNoteId],
  );

  const projectNoteCounts = useMemo(() => {
    const counts: Record<string, number> = {};
    for (const n of notes) {
      counts[n.projectId] = (counts[n.projectId] ?? 0) + 1;
    }
    return counts;
  }, [notes]);

  const handleCreateProject = useCallback(() => {
    const name = newProjectName.trim();
    if (!name) return;
    const project = newProject(name, newProjectColor);
    setProjects((prev) => [...prev, project]);
    setActiveProjectId(project.id);
    setNotes((prev) => [...prev, newNote(project.id)]);
    setNewProjectName("");
    setShowNewProject(false);
  }, [newProjectName, newProjectColor]);

  const handleDeleteProject = useCallback(
    (id: string) => {
      setProjects((prev) => prev.filter((p) => p.id !== id));
      setNotes((prev) => prev.filter((n) => n.projectId !== id));
      if (activeProjectId === id) {
        setActiveProjectId(null);
        setActiveNoteId(null);
      }
    },
    [activeProjectId],
  );

  const handleAddNote = useCallback(() => {
    if (!activeProjectId) return;
    const note = newNote(activeProjectId);
    setNotes((prev) => [...prev, note]);
    setActiveNoteId(note.id);
  }, [activeProjectId]);

  const handleDeleteNote = useCallback(
    (id: string) => {
      setNotes((prev) => {
        const next = prev.filter((n) => n.id !== id);
        return next;
      });
      if (activeNoteId === id) {
        setActiveNoteId(null);
      }
    },
    [activeNoteId],
  );

  const updateNote = useCallback(
    (patch: Partial<Note>) => {
      if (!activeNoteId) return;
      setNotes((prev) =>
        prev.map((n) => (n.id === activeNoteId ? { ...n, ...patch } : n)),
      );
    },
    [activeNoteId],
  );

  const noteContent = activeNote?.body ?? "";
  const canGenerate = noteContent.replace(/\s/g, "").length >= 40;

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

  const handleQuiz = useCallback(async () => {
    if (!canGenerate) return;
    setGenerating(true);
    try {
      const result = await generateQuiz({ text: noteContent, count: 5 });
      setQuizQuestions(result.questions);
      setShowQuiz(true);
    } catch (err) {
      const msg =
        err instanceof Error ? err.message : "Failed to generate quiz";
      toast.error(msg);
    } finally {
      setGenerating(false);
    }
  }, [noteContent, canGenerate]);

  const handleFlashcards = useCallback(async () => {
    if (!canGenerate) return;
    setGenerating(true);
    try {
      const result = await generateFlashcardsFromText({
        text: noteContent,
        count: 8,
      });
      if (!result.ok) {
        toast.error(result.error);
        return;
      }
      setFlashcards(result.data.cards);
      setShowFlashcards(true);
    } catch (err) {
      const msg =
        err instanceof Error ? err.message : "Failed to generate flashcards";
      toast.error(msg);
    } finally {
      setGenerating(false);
    }
  }, [noteContent, canGenerate]);

  const handleProjectKeyDown = useCallback(
    (e: React.KeyboardEvent<HTMLInputElement>) => {
      if (e.key === "Enter") {
        handleCreateProject();
      } else if (e.key === "Escape") {
        setShowNewProject(false);
        setNewProjectName("");
      }
    },
    [handleCreateProject],
  );

  return (
    <FreeStudyLayout mode="Notes">
      <div className={styles.layout}>
        {/* Project Sidebar */}
        <div className={styles.projectSidebar}>
          <div className={styles.projectHeader}>
            <span className={styles.projectHeaderTitle}>Projects</span>
            <button
              type="button"
              className={styles.iconBtn}
              onClick={() => {
                setShowNewProject(true);
                setNewProjectColor(PROJECT_COLORS[0]);
              }}
              aria-label="New project"
            >
              <Plus size={16} weight="bold" aria-hidden />
            </button>
          </div>

          {showNewProject ? (
            <div className={styles.newProjectForm}>
              <div className={styles.newProjectColors}>
                {PROJECT_COLORS.map((c) => (
                  <button
                    key={c}
                    type="button"
                    className={`${styles.colorOption} ${c === newProjectColor ? styles.colorOptionActive : ""}`}
                    style={{ background: c }}
                    onClick={() => setNewProjectColor(c)}
                    aria-label={`Color ${c}`}
                  />
                ))}
              </div>
              <input
                className={styles.newProjectInput}
                type="text"
                value={newProjectName}
                onChange={(e) => setNewProjectName(e.target.value)}
                onKeyDown={handleProjectKeyDown}
                placeholder="Project name…"
                autoFocus
              />
            </div>
          ) : null}

          <ul className={styles.projectList}>
            {projects.map((project) => (
              <li key={project.id}>
                <button
                  type="button"
                  className={`${styles.projectItem} ${project.id === activeProjectId ? styles.projectItemActive : ""}`}
                  onClick={() => {
                    setActiveProjectId(project.id);
                    setActiveNoteId(null);
                  }}
                >
                  <span
                    className={styles.projectColorDot}
                    style={{ background: project.color }}
                  />
                  <span className={styles.projectItemName}>{project.name}</span>
                  <span className={styles.projectItemCount}>
                    {projectNoteCounts[project.id] ?? 0}
                  </span>
                  <span
                    className={styles.projectDelete}
                    onClick={(e) => {
                      e.stopPropagation();
                      handleDeleteProject(project.id);
                    }}
                    role="button"
                    tabIndex={0}
                  >
                    <Trash size={12} aria-hidden />
                  </span>
                </button>
              </li>
            ))}
          </ul>

          {projects.length === 0 && !showNewProject ? (
            <div className={styles.emptyState}>
              <p className={styles.emptyStateText}>No projects yet</p>
              <button
                type="button"
                className={styles.emptyStateBtn}
                onClick={() => setShowNewProject(true)}
              >
                <Plus size={14} weight="bold" aria-hidden />
                Create project
              </button>
            </div>
          ) : null}
        </div>

        {/* Notes List */}
        <div className={styles.notesPanel}>
          {activeProject ? (
            <>
              <div className={styles.notesHeader}>
                <span className={styles.notesHeaderTitle}>
                  {activeProject.name}
                </span>
                <button
                  type="button"
                  className={styles.iconBtn}
                  onClick={handleAddNote}
                  aria-label="New note"
                >
                  <Plus size={16} weight="bold" aria-hidden />
                </button>
              </div>

              <ul className={styles.noteList}>
                {projectNotes.map((note) => (
                  <li key={note.id}>
                    <button
                      type="button"
                      className={`${styles.noteListItem} ${note.id === activeNoteId ? styles.noteListItemActive : ""}`}
                      onClick={() => setActiveNoteId(note.id)}
                    >
                      <div className={styles.noteListItemContent}>
                        <span className={styles.noteListItemTitle}>
                          {note.title || "Untitled"}
                        </span>
                        <span className={styles.notePreview}>
                          {note.body.split("\n")[0]?.slice(0, 60) ||
                            "Empty note"}
                        </span>
                      </div>
                      {projectNotes.length > 1 ? (
                        <span
                          className={styles.noteDelete}
                          onClick={(e) => {
                            e.stopPropagation();
                            handleDeleteNote(note.id);
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

              {projectNotes.length === 0 ? (
                <div className={styles.emptyState}>
                  <p className={styles.emptyStateText}>No notes yet</p>
                  <button
                    type="button"
                    className={styles.emptyStateBtn}
                    onClick={handleAddNote}
                  >
                    <Plus size={14} weight="bold" aria-hidden />
                    New note
                  </button>
                </div>
              ) : null}
            </>
          ) : (
            <div className={styles.emptyState}>
              <p className={styles.emptyStateText}>
                Select a project to get started
              </p>
            </div>
          )}
        </div>

        {/* Editor + Chat */}
        <div className={styles.editorPanel}>
          {activeNote ? (
            <>
              <input
                className={styles.editorTitle}
                type="text"
                value={activeNote.title}
                onChange={(e) => updateNote({ title: e.target.value })}
                placeholder="Untitled"
              />

              <div className={styles.editorActionBar}>
                <button
                  type="button"
                  className={`${styles.actionBtn} ${generating ? styles.actionBtnLoading : ""}`}
                  onClick={handleQuiz}
                  disabled={!canGenerate || generating}
                  title={
                    canGenerate
                      ? "Generate a quiz from your notes"
                      : "Write at least 40 characters"
                  }
                >
                  <Lightning size={15} weight="fill" aria-hidden />
                  Quiz Me
                </button>
                <button
                  type="button"
                  className={`${styles.actionBtn} ${generating ? styles.actionBtnLoading : ""}`}
                  onClick={handleFlashcards}
                  disabled={!canGenerate || generating}
                  title={
                    canGenerate
                      ? "Generate flashcards from your notes"
                      : "Write at least 40 characters"
                  }
                >
                  <Cardholder size={15} weight="fill" aria-hidden />
                  Flashcards
                </button>
                <div className={styles.actionBarSpacer} />
                <label className={styles.actionBtn} title="Upload image">
                  <Image size={15} weight="fill" aria-hidden />
                  <input
                    type="file"
                    accept="image/*"
                    className={styles.hiddenFileInput}
                    onChange={(e) => {
                      const file = e.target.files?.[0];
                      if (file) toast.info(`Image "${file.name}" selected`);
                      e.target.value = "";
                    }}
                  />
                </label>
                <label className={styles.actionBtn} title="Upload PDF">
                  <FilePdf size={15} weight="fill" aria-hidden />
                  <input
                    type="file"
                    accept=".pdf"
                    className={styles.hiddenFileInput}
                    onChange={(e) => {
                      const file = e.target.files?.[0];
                      if (file) toast.info(`PDF "${file.name}" selected`);
                      e.target.value = "";
                    }}
                  />
                </label>
                <button
                  type="button"
                  className={`${styles.actionBtn} ${showChat ? styles.actionBtnActive : ""}`}
                  onClick={() => setShowChat(!showChat)}
                  title="Toggle AI chat"
                >
                  <ChatCircle size={15} weight="fill" aria-hidden />
                </button>
              </div>

              <textarea
                className={styles.editorBody}
                value={activeNote.body}
                onChange={(e) => updateNote({ body: e.target.value })}
                placeholder="Start writing…"
              />

              {showChat ? (
                <div className={styles.chatPanel}>
                  <FreeStudyChat
                    messages={messages}
                    onSend={handleSend}
                    isStreaming={isStreaming}
                    placeholder="Ask about your notes…"
                    emptyState={
                      <div className={styles.chatEmpty}>
                        <p className={styles.chatEmptyTitle}>
                          Ask Scho about your notes
                        </p>
                        <p className={styles.chatEmptyDesc}>
                          Write your notes, then ask Scho to help you study
                          them.
                        </p>
                      </div>
                    }
                  />
                </div>
              ) : null}
            </>
          ) : (
            <div className={styles.emptyState}>
              {activeProject ? (
                <>
                  <p className={styles.emptyStateText}>
                    Create a note to start writing
                  </p>
                  <button
                    type="button"
                    className={styles.emptyStateBtn}
                    onClick={handleAddNote}
                  >
                    <Plus size={14} weight="bold" aria-hidden />
                    New note
                  </button>
                </>
              ) : (
                <p className={styles.emptyStateText}>
                  Select or create a project to get started
                </p>
              )}
            </div>
          )}
        </div>
      </div>

      {showQuiz && quizQuestions.length > 0 ? (
        <NoteQuiz
          questions={quizQuestions}
          onComplete={(score) => {
            toast.success(
              `Quiz done — ${score.correct} of ${score.total} correct`,
            );
          }}
          onClose={() => {
            setShowQuiz(false);
            setQuizQuestions([]);
          }}
        />
      ) : null}

      {showFlashcards && flashcards.length > 0 ? (
        <NoteFlashcards
          cards={flashcards}
          onComplete={() => {
            toast.success("Flashcard review complete");
          }}
          onClose={() => {
            setShowFlashcards(false);
            setFlashcards([]);
          }}
        />
      ) : null}
    </FreeStudyLayout>
  );
}
