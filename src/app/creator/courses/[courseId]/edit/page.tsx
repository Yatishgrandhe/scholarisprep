"use client";

import { aiRequest } from "@/lib/ai/clientKey";

import { useCallback, useEffect, useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import Link from "next/link";
import { useParams } from "next/navigation";
import {
  DndContext,
  closestCenter,
  KeyboardSensor,
  PointerSensor,
  useSensor,
  useSensors,
  type DragEndEvent,
} from "@dnd-kit/core";
import {
  SortableContext,
  arrayMove,
  sortableKeyboardCoordinates,
  useSortable,
  verticalListSortingStrategy,
} from "@dnd-kit/sortable";
import { CSS } from "@dnd-kit/utilities";
import { DotsSixVertical, Sparkle, Trash } from "@phosphor-icons/react";
import { toast } from "sonner";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { Button, buttonVariants } from "@/components/ui/button";
import { cn } from "@/lib/utils";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Badge } from "@/components/ui/badge";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import type { Database } from "@/types/supabase";
import dashboardStyles from "../../../../dashboard/dashboard.module.css";
import styles from "../../../creator.module.css";

type Lesson = Database["public"]["Tables"]["lessons"]["Row"];
type Question = Database["public"]["Tables"]["questions"]["Row"];

function SortableLessonRow({
  lesson,
  selected,
  onSelect,
}: {
  lesson: Lesson;
  selected: boolean;
  onSelect: () => void;
}) {
  const { attributes, listeners, setNodeRef, transform, transition, isDragging } =
    useSortable({ id: lesson.id });

  const style = {
    transform: CSS.Transform.toString(transform),
    transition,
  };

  return (
    <div
      ref={setNodeRef}
      style={style}
      className={`${styles.sortableLesson} ${selected ? styles.sortableLessonSelected : ""} ${isDragging ? styles.sortableLessonActive : ""}`}
    >
      <button
        type="button"
        className={styles.dragHandle}
        {...attributes}
        {...listeners}
        aria-label="Drag to reorder"
      >
        <DotsSixVertical size={18} />
      </button>
      <button type="button" className="flex-1 text-left text-sm" onClick={onSelect}>
        {lesson.title}
      </button>
    </div>
  );
}

export default function CourseEditorPage() {
  const params = useParams();
  const courseId = params.courseId as string;
  const { user } = useAuth();
  const supabase = createClient();

  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [status, setStatus] = useState<"draft" | "published">("draft");
  const [lessons, setLessons] = useState<Lesson[]>([]);
  const [selectedLessonId, setSelectedLessonId] = useState<string | null>(null);
  const [lessonTitle, setLessonTitle] = useState("");
  const [videoId, setVideoId] = useState("");
  const [summary, setSummary] = useState("");
  const [questions, setQuestions] = useState<Question[]>([]);
  const [loading, setLoading] = useState(true);
  const [savingMeta, setSavingMeta] = useState(false);
  const [savingLesson, setSavingLesson] = useState(false);
  const [generatingQ, setGeneratingQ] = useState(false);
  const [questionDialogOpen, setQuestionDialogOpen] = useState(false);
  const [editingQuestion, setEditingQuestion] = useState<Question | null>(null);

  const [qForm, setQForm] = useState({
    question_text: "",
    topic: "",
    difficulty: "medium",
    explanation: "",
    hint: "",
    options: [
      { id: "A", text: "", is_correct: false },
      { id: "B", text: "", is_correct: true },
      { id: "C", text: "", is_correct: false },
      { id: "D", text: "", is_correct: false },
    ],
  });

  const sensors = useSensors(
    useSensor(PointerSensor),
    useSensor(KeyboardSensor, {
      coordinateGetter: sortableKeyboardCoordinates,
    }),
  );

  const selectedLesson = lessons.find((l) => l.id === selectedLessonId) ?? null;

  const load = useCallback(async () => {
    if (!user) return;
    setLoading(true);

    const { data: course } = await supabase
      .from("courses")
      .select("id, title, description, status, creator_id, subject, exam_type")
      .eq("id", courseId)
      .single();

    if (!course || course.creator_id !== user.id) {
      toast.error("Course not found");
      setLoading(false);
      return;
    }

    setTitle(course.title);
    setDescription(course.description ?? "");
    setStatus(course.status === "published" ? "published" : "draft");

    const { data: lessonRows } = await supabase
      .from("lessons")
      .select("*")
      .eq("course_id", courseId)
      .order("order_index");

    const list = lessonRows ?? [];
    setLessons(list);
    if (list[0] && !selectedLessonId) {
      setSelectedLessonId(list[0].id);
    }

    setLoading(false);
  }, [user, supabase, courseId, selectedLessonId]);

  const loadQuestions = useCallback(
    async (lessonId: string) => {
      const { data } = await supabase
        .from("questions")
        .select("*")
        .eq("lesson_id", lessonId)
        .order("created_at");
      setQuestions(data ?? []);
    },
    [supabase],
  );

  useMountLoad(load, [load]);

  useEffect(() => {
    if (!selectedLesson) return;
    const lesson = selectedLesson;
    queueMicrotask(() => {
      setLessonTitle(lesson.title);
      setVideoId(lesson.youtube_video_id ?? "");
      setSummary(lesson.summary ?? "");
      void loadQuestions(lesson.id);
    });
  }, [selectedLesson, loadQuestions]);

  const saveMeta = async () => {
    setSavingMeta(true);
    const { error } = await supabase
      .from("courses")
      .update({
        title: title.trim(),
        description: description.trim(),
        status,
        updated_at: new Date().toISOString(),
      })
      .eq("id", courseId);
    setSavingMeta(false);
    if (error) toast.error(error.message);
    else toast.success("Course saved");
  };

  const saveLesson = async () => {
    if (!selectedLessonId) return;
    setSavingLesson(true);
    const { error } = await supabase
      .from("lessons")
      .update({
        title: lessonTitle.trim(),
        youtube_video_id: videoId.trim() || null,
        summary: summary.trim() || null,
        updated_at: new Date().toISOString(),
      })
      .eq("id", selectedLessonId);
    setSavingLesson(false);
    if (error) toast.error(error.message);
    else {
      toast.success("Lesson saved");
      setLessons((prev) =>
        prev.map((l) =>
          l.id === selectedLessonId
            ? {
                ...l,
                title: lessonTitle.trim(),
                youtube_video_id: videoId.trim() || null,
                summary: summary.trim() || null,
              }
            : l,
        ),
      );
    }
  };

  const handleDragEnd = async (event: DragEndEvent) => {
    const { active, over } = event;
    if (!over || active.id === over.id) return;

    const oldIndex = lessons.findIndex((l) => l.id === active.id);
    const newIndex = lessons.findIndex((l) => l.id === over.id);
    const reordered = arrayMove(lessons, oldIndex, newIndex).map((l, i) => ({
      ...l,
      order_index: i,
    }));
    setLessons(reordered);

    await Promise.all(
      reordered.map((l) =>
        supabase.from("lessons").update({ order_index: l.order_index }).eq("id", l.id),
      ),
    );
  };

  const resetQuestionForm = () => {
    setEditingQuestion(null);
    setQForm({
      question_text: "",
      topic: "",
      difficulty: "medium",
      explanation: "",
      hint: "",
      options: [
        { id: "A", text: "", is_correct: false },
        { id: "B", text: "", is_correct: true },
        { id: "C", text: "", is_correct: false },
        { id: "D", text: "", is_correct: false },
      ],
    });
  };

  const openEditQuestion = (q: Question) => {
    setEditingQuestion(q);
    const opts = (q.options as Array<{ id: string; text: string; is_correct?: boolean }>) ?? [];
    setQForm({
      question_text: q.question_text,
      topic: q.topic ?? "",
      difficulty: q.difficulty ?? "medium",
      explanation: q.explanation ?? "",
      hint: q.hint ?? "",
      options: opts.length
        ? opts.map((o) => ({
            id: o.id,
            text: o.text,
            is_correct: o.is_correct ?? o.id === q.correct_answer,
          }))
        : qForm.options,
    });
    setQuestionDialogOpen(true);
  };

  const saveQuestion = async () => {
    if (!selectedLessonId || !user) return;
    const correct = qForm.options.find((o) => o.is_correct);
    const payload = {
      course_id: courseId,
      lesson_id: selectedLessonId,
      created_by: user.id,
      question_text: qForm.question_text.trim(),
      options: qForm.options,
      correct_answer: correct?.id ?? "A",
      explanation: qForm.explanation.trim(),
      hint: qForm.hint.trim(),
      topic: qForm.topic.trim() || "General",
      difficulty: qForm.difficulty as "easy" | "medium" | "hard" | "expert",
      section: "reading_writing",
      question_type: "multiple_choice" as const,
      is_platform_question: false,
    };

    if (editingQuestion) {
      const { error } = await supabase
        .from("questions")
        .update(payload)
        .eq("id", editingQuestion.id);
      if (error) toast.error(error.message);
      else toast.success("Question updated");
    } else {
      const { error } = await supabase.from("questions").insert(payload);
      if (error) toast.error(error.message);
      else toast.success("Question added");
    }

    setQuestionDialogOpen(false);
    resetQuestionForm();
    void loadQuestions(selectedLessonId);
  };

  const deleteQuestion = async (id: string) => {
    const { error } = await supabase.from("questions").delete().eq("id", id);
    if (error) toast.error(error.message);
    else {
      toast.success("Question deleted");
      if (selectedLessonId) void loadQuestions(selectedLessonId);
    }
  };

  const generateMoreQuestions = async () => {
    if (!selectedLesson || !user) return;
    setGeneratingQ(true);
    try {
      const res = await aiRequest("/api/ai/generate-sat-question", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          section: "reading_writing",
          topic: selectedLesson.title,
          difficulty: "medium",
          seed: `${courseId}-${selectedLesson.id}-${Date.now()}`,
          exam_type: "SAT",
        }),
      });
      const data = (await res.json()) as { question?: { id: string }; error?: string };
      if (!res.ok) {
        toast.error(data.error ?? "Generation failed");
        return;
      }
      if (data.question?.id) {
        await supabase
          .from("questions")
          .update({ lesson_id: selectedLesson.id, course_id: courseId })
          .eq("id", data.question.id);
      }
      toast.success("Question generated");
      void loadQuestions(selectedLesson.id);
    } catch {
      toast.error("Failed to generate question");
    } finally {
      setGeneratingQ(false);
    }
  };

  if (loading) {
    return <p>Loading editor…</p>;
  }

  return (
    <>
      <div
        className={cn(
          dashboardStyles.pageHeaderRow,
          dashboardStyles.pageHeaderRowWide,
        )}
      >
        <header className={dashboardStyles.pageHeader}>
          <h1 className={dashboardStyles.pageTitle}>Edit course</h1>
          <p className={dashboardStyles.pageSubtitle}>{title}</p>
        </header>
        <div className="flex shrink-0 items-center gap-2">
          <Link href="/creator" className={cn(buttonVariants({ variant: "outline" }))}>
            Back
          </Link>
          <ThemeToggle className="hidden md:flex" />
        </div>
      </div>

      <div className={styles.metaEditor}>
        <div>
          <Label htmlFor="meta-title">Title</Label>
          <Input
            id="meta-title"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
          />
        </div>
        <div>
          <Label htmlFor="meta-desc">Description</Label>
          <textarea
            id="meta-desc"
            className="flex min-h-[100px] w-full rounded-md border border-input bg-transparent px-3 py-2 text-sm"
            value={description}
            onChange={(e) => setDescription(e.target.value)}
          />
        </div>
        <div>
          <Label>Status</Label>
          <div className="flex gap-2 mt-1">
            <Button
              type="button"
              size="sm"
              variant={status === "draft" ? "default" : "outline"}
              onClick={() => setStatus("draft")}
            >
              Draft
            </Button>
            <Button
              type="button"
              size="sm"
              variant={status === "published" ? "default" : "outline"}
              onClick={() => setStatus("published")}
            >
              Published
            </Button>
          </div>
          <Badge className="mt-2" variant="outline">
            {status}
          </Badge>
        </div>
        <Button type="button" onClick={() => void saveMeta()} disabled={savingMeta}>
          {savingMeta ? "Saving…" : "Save course metadata"}
        </Button>
      </div>

      <div className={styles.editorLayout}>
        <div className={styles.lessonListPanel}>
          <h2 className="text-sm font-semibold mb-3">Lessons</h2>
          <DndContext
            sensors={sensors}
            collisionDetection={closestCenter}
            onDragEnd={(e) => void handleDragEnd(e)}
          >
            <SortableContext
              items={lessons.map((l) => l.id)}
              strategy={verticalListSortingStrategy}
            >
              {lessons.map((lesson) => (
                <SortableLessonRow
                  key={lesson.id}
                  lesson={lesson}
                  selected={lesson.id === selectedLessonId}
                  onSelect={() => setSelectedLessonId(lesson.id)}
                />
              ))}
            </SortableContext>
          </DndContext>
        </div>

        <div className={styles.editorPanel}>
          {selectedLesson ? (
            <>
              <h2 className="text-lg font-semibold mb-4">Lesson editor</h2>
              <div className="flex flex-col gap-4 mb-6">
                <div>
                  <Label>Title</Label>
                  <Input
                    value={lessonTitle}
                    onChange={(e) => setLessonTitle(e.target.value)}
                  />
                </div>
                <div>
                  <Label>YouTube video ID</Label>
                  <Input
                    value={videoId}
                    onChange={(e) => setVideoId(e.target.value)}
                    placeholder="dQw4w9WgXcQ"
                  />
                </div>
                <div>
                  <Label>Summary (markdown)</Label>
                  <textarea
                    className="flex min-h-[140px] w-full rounded-md border border-input bg-transparent px-3 py-2 text-sm"
                    value={summary}
                    onChange={(e) => setSummary(e.target.value)}
                  />
                </div>
                <Button
                  type="button"
                  onClick={() => void saveLesson()}
                  disabled={savingLesson}
                >
                  {savingLesson ? "Saving…" : "Save lesson"}
                </Button>
              </div>

              <div className="flex items-center justify-between gap-2 mb-3">
                <h3 className="font-semibold">Questions</h3>
                <div className="flex gap-2">
                  <Button
                    type="button"
                    variant="outline"
                    size="sm"
                    onClick={() => void generateMoreQuestions()}
                    disabled={generatingQ}
                  >
                    <Sparkle size={16} />
                    {generatingQ ? "Generating…" : "Generate More Questions with AI"}
                  </Button>
                  <Dialog
                    open={questionDialogOpen}
                    onOpenChange={(open) => {
                      setQuestionDialogOpen(open);
                      if (!open) resetQuestionForm();
                    }}
                  >
                    <DialogTrigger
                      className={cn(buttonVariants({ size: "sm" }))}
                      onClick={resetQuestionForm}
                    >
                      Add Question
                    </DialogTrigger>
                    <DialogContent className="max-w-lg max-h-[90vh] overflow-y-auto">
                      <DialogHeader>
                        <DialogTitle>
                          {editingQuestion ? "Edit question" : "Add question"}
                        </DialogTitle>
                      </DialogHeader>
                      <div className="flex flex-col gap-3">
                        <div>
                          <Label>Question text</Label>
                          <textarea
                            className="flex min-h-[80px] w-full rounded-md border border-input px-3 py-2 text-sm"
                            value={qForm.question_text}
                            onChange={(e) =>
                              setQForm((f) => ({ ...f, question_text: e.target.value }))
                            }
                          />
                        </div>
                        <div>
                          <Label>Topic</Label>
                          <Input
                            value={qForm.topic}
                            onChange={(e) =>
                              setQForm((f) => ({ ...f, topic: e.target.value }))
                            }
                          />
                        </div>
                        {qForm.options.map((opt, idx) => (
                          <div key={opt.id} className="flex gap-2 items-center">
                            <span className="w-6 font-medium">{opt.id}</span>
                            <Input
                              value={opt.text}
                              onChange={(e) => {
                                const options = [...qForm.options];
                                options[idx] = { ...opt, text: e.target.value };
                                setQForm((f) => ({ ...f, options }));
                              }}
                            />
                            <Button
                              type="button"
                              size="sm"
                              variant={opt.is_correct ? "default" : "outline"}
                              onClick={() => {
                                setQForm((f) => ({
                                  ...f,
                                  options: f.options.map((o) => ({
                                    ...o,
                                    is_correct: o.id === opt.id,
                                  })),
                                }));
                              }}
                            >
                              Correct
                            </Button>
                          </div>
                        ))}
                        <div>
                          <Label>Explanation</Label>
                          <textarea
                            className="flex min-h-[60px] w-full rounded-md border border-input px-3 py-2 text-sm"
                            value={qForm.explanation}
                            onChange={(e) =>
                              setQForm((f) => ({ ...f, explanation: e.target.value }))
                            }
                          />
                        </div>
                        <Button type="button" onClick={() => void saveQuestion()}>
                          Save question
                        </Button>
                      </div>
                    </DialogContent>
                  </Dialog>
                </div>
              </div>

              {questions.map((q) => (
                <div key={q.id} className={styles.questionListItem}>
                  <p className={styles.questionListText}>{q.question_text}</p>
                  <div className={styles.questionListActions}>
                    <Button
                      type="button"
                      size="sm"
                      variant="outline"
                      onClick={() => openEditQuestion(q)}
                    >
                      Edit
                    </Button>
                    <Button
                      type="button"
                      size="sm"
                      variant="destructive"
                      onClick={() => void deleteQuestion(q.id)}
                    >
                      <Trash size={16} />
                    </Button>
                  </div>
                </div>
              ))}
            </>
          ) : (
            <p className="text-muted-foreground">Select a lesson to edit.</p>
          )}
        </div>
      </div>
    </>
  );
}
