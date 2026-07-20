"use client";

import { useCallback, useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import { useParams, useRouter } from "next/navigation";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import { Check, ChatsCircle } from "@phosphor-icons/react";
import { toast } from "sonner";
import { Button, buttonVariants } from "@/components/ui/button";
import { cn } from "@/lib/utils";
import {
  Sheet,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";
import { QuestionInterface } from "@/components/question/QuestionInterface";
import { TutorChat } from "@/components/tutor/TutorChat";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import {
  fetchCoursePlayerData,
  markLessonComplete,
} from "@/lib/courses/queries";
import { mapDbQuestion } from "@/lib/practice/mapQuestion";
import { formatDuration } from "@/lib/courses/youtube";
import styles from "../../courses.module.css";

export default function LessonPlayerPage() {
  const params = useParams();
  const courseId = params.courseId as string;
  const lessonId = params.lessonId as string;
  const router = useRouter();
  const { user } = useAuth();
  const supabase = createClient();

  const [loading, setLoading] = useState(true);
  const [courseTitle, setCourseTitle] = useState("");
  const [lessons, setLessons] = useState<
    Array<{
      id: string;
      title: string;
      duration_seconds: number | null;
      order_index: number;
      youtube_video_id: string | null;
      summary: string | null;
    }>
  >([]);
  const [lesson, setLesson] = useState<{
    id: string;
    title: string;
    youtube_video_id: string | null;
    summary: string | null;
  } | null>(null);
  const [progressMap, setProgressMap] = useState<Map<string, boolean>>(
    new Map(),
  );
  const [questions, setQuestions] = useState<
    ReturnType<typeof mapDbQuestion>[]
  >([]);
  const [completing, setCompleting] = useState(false);
  const [tutorOpen, setTutorOpen] = useState(false);

  const load = useCallback(async () => {
    if (!user) return;
    setLoading(true);

    const data = await fetchCoursePlayerData(
      supabase,
      user.id,
      courseId,
      lessonId,
    );

    if (!data) {
      router.replace("/dashboard/courses");
      return;
    }

    setCourseTitle(data.course.title);
    setLessons(data.lessons);
    setLesson(data.lesson);
    setProgressMap(data.progressMap);
    setQuestions(data.questions.map(mapDbQuestion));
    setLoading(false);
  }, [user, supabase, courseId, lessonId, router]);

  useMountLoad(load, [load]);

  const navigateLesson = (id: string) => {
    router.push(`/dashboard/courses/${courseId}/${id}`);
  };

  const handleMarkComplete = async () => {
    if (!user || !lesson) return;
    setCompleting(true);
    const { progressPercent, error } = await markLessonComplete(
      supabase,
      user.id,
      courseId,
      lesson.id,
    );
    setCompleting(false);

    if (error) {
      toast.error(error);
      return;
    }

    setProgressMap((prev) => {
      const next = new Map(prev);
      next.set(lesson.id, true);
      return next;
    });
    toast.success(`Lesson complete! Course progress: ${progressPercent}%`);
  };

  if (loading || !lesson) {
    return <p className={styles.loadingState}>Loading lesson…</p>;
  }

  return (
    <div className={styles.playerLayout}>
      <aside className={styles.sidebar}>
        <div className={styles.sidebarHeader}>
          <h2 className={styles.sidebarTitle}>{courseTitle}</h2>
        </div>
        <ul className={styles.lessonList}>
          {lessons.map((l) => {
            const completed = progressMap.get(l.id) ?? false;
            const active = l.id === lessonId;
            return (
              <li key={l.id}>
                <button
                  type="button"
                  className={`${styles.lessonLink} ${active ? styles.lessonLinkActive : ""}`}
                  onClick={() => navigateLesson(l.id)}
                >
                  <span style={{ flex: 1 }}>
                    {l.title}
                    <span className={styles.lessonMeta}>
                      {formatDuration(l.duration_seconds)}
                    </span>
                  </span>
                  {completed ? (
                    <Check size={18} weight="bold" aria-label="Completed" />
                  ) : null}
                </button>
              </li>
            );
          })}
        </ul>
      </aside>

      <main className={styles.main}>
        {lesson.youtube_video_id ? (
          <div className={styles.videoWrap}>
            <iframe
              className={styles.videoIframe}
              src={`https://www.youtube.com/embed/${lesson.youtube_video_id}`}
              title={lesson.title}
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowFullScreen
            />
          </div>
        ) : null}

        <h1 className={styles.lessonTitle}>{lesson.title}</h1>

        {lesson.summary ? (
          <div className={styles.summary}>
            <ReactMarkdown remarkPlugins={[remarkGfm]}>
              {lesson.summary}
            </ReactMarkdown>
          </div>
        ) : null}

        {questions.length > 0 ? (
          <section className={styles.questionsSection}>
            <h2 className={styles.questionsHeading}>Questions for this lesson</h2>
            <div className={styles.questionStack}>
              {questions.map((q, index) => (
                <div key={q.id} className={styles.questionItem}>
                  <QuestionInterface
                    question={q}
                    questionNumber={index + 1}
                    totalQuestions={questions.length}
                    sessionType="practice"
                    variant="compact"
                    onNext={() => {}}
                    onFlag={() => {}}
                  />
                </div>
              ))}
            </div>
          </section>
        ) : null}

        <div className={styles.markCompleteRow}>
          <Button
            type="button"
            size="lg"
            onClick={() => void handleMarkComplete()}
            disabled={completing || (progressMap.get(lesson.id) ?? false)}
          >
            {progressMap.get(lesson.id) ? "Completed" : "Mark Complete"}
          </Button>
        </div>
      </main>

      <Sheet open={tutorOpen} onOpenChange={setTutorOpen}>
        <SheetTrigger className={cn(buttonVariants({ size: "lg" }), styles.fab)}>
          <ChatsCircle size={20} weight="fill" />
          Ask Scho about this lesson
        </SheetTrigger>
        <SheetContent side="right" className="w-full sm:max-w-md">
          <SheetHeader>
            <SheetTitle>Ask Scho</SheetTitle>
          </SheetHeader>
          <div className={styles.sheetBody}>
            <TutorChat
              contextType="lesson"
              contextId={lessonId}
              title={`Lesson: ${lesson.title}`}
            />
          </div>
        </SheetContent>
      </Sheet>
    </div>
  );
}
