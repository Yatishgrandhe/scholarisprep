"use client";

import { aiRequest } from "@/lib/ai/clientKey";

import { useEffect, useMemo, useState } from "react";
import { createPortal } from "react-dom";
import Link from "next/link";
import { useRouter } from "next/navigation";
import {
  ArrowClockwise,
  ArrowRight,
  CaretLeft,
  CaretRight,
  Check,
  Exam,
  PencilSimple,
  PlayCircle,
  Sparkle,
  Trash,
  Trophy,
  X,
} from "@phosphor-icons/react";
import { toast } from "sonner";
import { createClient } from "@/lib/supabase/client";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/components/ui/alert-dialog";
import {
  currentWeekIndex,
  formatDayChip,
  formatWeekRange,
  isTaskComplete,
  isToday,
  parseStudyPlanData,
  planProgress,
  practiceHrefForTask,
  rushHrefForTask,
  taskEstimatedMinutes,
  taskIsOverdue,
  taskTypeBadgeLabel,
  toggleTaskInPlan,
  youtubeThumbnail,
  type StudyPlanData,
  type StudyTask,
} from "@/lib/dashboard/studyPlan";
import type { ExamType } from "@/types/supabase";
import { apIbDisplayName } from "@/lib/apIbCatalog";
import { isApOrIbExam } from "@/lib/examFamily";
import {
  defaultTargetForExam,
  scoreBoundsForExam,
} from "@/lib/onboarding/examPrograms";
import styles from "./study-plan.module.css";

type StudyPlanViewProps = {
  userId: string;
  examType: ExamType;
  initialPlanData: unknown;
  initialMeta: {
    target_score: number | null;
    baseline_score: number | null;
    exam_date: string | null;
    weekly_hours: number | null;
    generated_at: string | null;
  };
  profileExamDate: string | null;
};

function examDisplayLabel(examType: ExamType): string {
  if (isApOrIbExam(examType)) return apIbDisplayName(examType);
  if (examType === "ACT") return "ACT";
  if (examType === "SAT" || examType === "PSAT") return "SAT";
  return String(examType).replace(/_/g, " ");
}

const TYPE_ORDER: Record<string, number> = {
  lesson: 0,
  video: 1,
  practice: 1,
  quiz: 1,
  review: 2,
  vocab: 3,
  challenge: 4,
  exam: 5,
};

function tagClass(task: StudyTask): string {
  const tag = (task.tag ?? task.topic ?? "").toLowerCase();
  if (task.type === "vocab") return styles.tagVocab;
  if (task.type === "challenge") return styles.tagChallenge;
  if (task.type === "exam") return styles.tagExam;
  if (tag.includes("writing")) return styles.tagWriting;
  if (tag.includes("reading")) return styles.tagReading;
  if (tag.includes("advanced")) return styles.tagAdvanced;
  if (tag.includes("geometry")) return styles.tagGeometry;
  if (tag.includes("problem")) return styles.tagProblem;
  if (tag.includes("algebra") || tag.includes("math")) return styles.tagMath;
  return styles.tagDefault;
}

type DayGroup = { key: string; isDate: boolean; tasks: StudyTask[] };

function groupByDay(tasks: StudyTask[]): DayGroup[] {
  const map = new Map<string, StudyTask[]>();
  for (const t of tasks) {
    const key = t.date ?? t.day ?? "—";
    const list = map.get(key) ?? [];
    list.push(t);
    map.set(key, list);
  }
  return [...map.entries()]
    .sort((a, b) => (a[0] < b[0] ? -1 : a[0] > b[0] ? 1 : 0))
    .map(([key, list]) => ({
      key,
      isDate: /^\d{4}-\d{2}-\d{2}$/.test(key),
      tasks: [...list].sort(
        (x, y) => (TYPE_ORDER[x.type] ?? 1) - (TYPE_ORDER[y.type] ?? 1),
      ),
    }));
}

export function StudyPlanView({
  userId,
  examType,
  initialPlanData,
  initialMeta,
  profileExamDate,
}: StudyPlanViewProps) {
  const router = useRouter();
  const hasPlan = Boolean(
    initialPlanData &&
      typeof initialPlanData === "object" &&
      Array.isArray((initialPlanData as StudyPlanData).weeks) &&
      (initialPlanData as StudyPlanData).weeks.length > 0 &&
      initialMeta.generated_at,
  );

  const [plan, setPlan] = useState<StudyPlanData | null>(() =>
    hasPlan ? parseStudyPlanData(initialPlanData) : null,
  );
  const [weekIndex, setWeekIndex] = useState(() =>
    hasPlan ? currentWeekIndex(parseStudyPlanData(initialPlanData)) : 0,
  );
  const [editOpen, setEditOpen] = useState(false);
  const [regenerateOpen, setRegenerateOpen] = useState(false);
  const [deleteOpen, setDeleteOpen] = useState(false);
  const [deleting, setDeleting] = useState(false);
  const [justDeleted, setJustDeleted] = useState(false);
  const [generating, setGenerating] = useState(false);
  const [videoTask, setVideoTask] = useState<StudyTask | null>(null);
  const [chooserTask, setChooserTask] = useState<StudyTask | null>(null);
  const [examDate, setExamDate] = useState(
    initialMeta.exam_date ?? profileExamDate ?? "",
  );
  const [targetScore, setTargetScore] = useState(
    String(initialMeta.target_score ?? defaultTargetForExam(examType)),
  );
  const [weeklyHours, setWeeklyHours] = useState(
    String(initialMeta.weekly_hours ?? 10),
  );
  const examLabel = examDisplayLabel(examType);
  const scoreBounds = scoreBoundsForExam(examType);
  const apIb = isApOrIbExam(examType);

  const progress = useMemo(
    () => (plan ? planProgress(plan) : { completed: 0, total: 0, percent: 0 }),
    [plan],
  );

  const currentWeek = plan?.weeks[weekIndex];
  const dayGroups = useMemo(
    () => (currentWeek ? groupByDay(currentWeek.tasks) : []),
    [currentWeek],
  );

  const toggleTask = async (taskId: string, done: boolean) => {
    if (!plan) return;
    const previous = plan;
    const next = toggleTaskInPlan(plan, taskId, done);
    setPlan(next);
    const supabase = createClient();
    const { error } = await supabase
      .from("multi_subject_study_plans")
      .update({ plan_data: next, last_updated: new Date().toISOString() })
      .eq("user_id", userId)
      .eq("course_id", examType);
    // keep the legacy per-course plan row in sync (best effort)
    await supabase
      .from("study_plans")
      .update({ plan_data: next })
      .eq("user_id", userId)
      .eq("course_id", examType);
    if (error) {
      setPlan(previous);
      toast.error("Could not save task progress.");
    }
  };

  const runGenerate = async () => {
    setGenerating(true);
    try {
      const res = await aiRequest("/api/ai/generate-study-plan", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          exam_type: examType,
          exam_date: examDate || undefined,
          target_score: (() => {
            const raw = Number(targetScore) || defaultTargetForExam(examType);
            return Math.min(
              scoreBounds.max,
              Math.max(scoreBounds.min, Math.round(raw)),
            );
          })(),
          baseline_score: (() => {
            const raw =
              initialMeta.baseline_score ??
              Math.round((scoreBounds.min + scoreBounds.max) / 2);
            return Math.min(
              scoreBounds.max,
              Math.max(scoreBounds.min, Math.round(raw)),
            );
          })(),
          weak_topics: plan?.weekly_focus_areas ?? [],
          weekly_hours: Number(weeklyHours) || 10,
        }),
      });

      if (!res.ok) {
        toast.error("Could not regenerate study plan.");
        return;
      }

      const { plan: newPlan } = (await res.json()) as { plan: StudyPlanData };
      const parsedPlan = parseStudyPlanData(newPlan);
      setPlan(parsedPlan);
      setWeekIndex(currentWeekIndex(parsedPlan));
      setEditOpen(false);
      setRegenerateOpen(false);
      toast.success("Study plan updated.");
    } catch {
      toast.error("Hmm, that didn't go through. Mind giving it another try?");
    } finally {
      setGenerating(false);
    }
  };

  const handleDelete = async () => {
    setDeleting(true);
    try {
      const supabase = createClient();
      const { error: multiErr } = await supabase
        .from("multi_subject_study_plans")
        .delete()
        .eq("user_id", userId)
        .eq("course_id", examType);
      if (multiErr) {
        toast.error("Could not delete your plan. Please try again.");
        return;
      }
      const { error: legacyErr } = await supabase
        .from("study_plans")
        .delete()
        .eq("user_id", userId)
        .eq("course_id", examType);
      if (legacyErr) {
        console.warn("[study-plan] legacy study_plans delete:", legacyErr.message);
      }
      setPlan(null);
      setJustDeleted(true);
      setDeleteOpen(false);
      toast.success("Study plan deleted.");
      router.refresh();
    } catch {
      toast.error("Could not delete your plan. Please try again.");
    } finally {
      setDeleting(false);
    }
  };

  if (generating) {
    return (
      <div className={styles.pageShell}>
        <div className={styles.loadingOverlay}>
          <Sparkle size={32} weight="duotone" className={styles.loadingIcon} />
          <p className={styles.loadingText}>
            Scho is rebuilding your personalized plan…
          </p>
        </div>
      </div>
    );
  }

  if (!plan) {
    return (
      <div className={styles.pageShell}>
        <div
          className={`${styles.emptyState} ${justDeleted ? styles.emptyStateDeleted : ""}`}
        >
          <span className={styles.emptyIcon} aria-hidden>
            <Sparkle size={28} weight="duotone" />
          </span>
          <p className={styles.emptyTitle}>
            {justDeleted ? "Study plan removed" : "No study plan yet"}
          </p>
          <p className={styles.emptyText}>
            {justDeleted
              ? "Your schedule and task progress were cleared. Build a fresh plan whenever you're ready."
              : "Scho will build a day-by-day schedule tailored to your exam date, target score, and weak areas."}
          </p>
          <div className={styles.emptyActions}>
            <button
              type="button"
              className={styles.emptyPrimaryBtn}
              onClick={() => setEditOpen(true)}
            >
              Generate my study plan
              <ArrowRight size={15} weight="bold" aria-hidden />
            </button>
          </div>
        </div>
        <EditPlanDialog
          open={editOpen}
          onOpenChange={setEditOpen}
          title="Build your study plan"
          examDate={examDate}
          setExamDate={setExamDate}
          targetScore={targetScore}
          setTargetScore={setTargetScore}
          weeklyHours={weeklyHours}
          setWeeklyHours={setWeeklyHours}
          scoreMin={scoreBounds.min}
          scoreMax={scoreBounds.max}
          scoreStep={apIb || examType === "ACT" ? 1 : 10}
          submitLabel="Generate plan"
          onSubmit={() => void runGenerate()}
        />
      </div>
    );
  }

  const totalWeeks = plan.total_weeks ?? plan.weeks.length;

  return (
    <div className={styles.pageShell}>
      <div className={styles.wrap}>
        <div className={styles.headerRow}>
        <div>
          <h1 className={styles.pageTitle}>My Study Plan</h1>
          <p className={styles.pageSub}>
            {progress.completed} of {progress.total} tasks complete ·{" "}
            {progress.percent}%
          </p>
        </div>
        <div className={styles.headerActions}>
          <button
            type="button"
            className={styles.ghostBtn}
            onClick={() => setEditOpen(true)}
          >
            <PencilSimple size={16} weight="bold" />
            Edit
          </button>
          <button
            type="button"
            className={styles.ghostBtn}
            onClick={() => setRegenerateOpen(true)}
          >
            <ArrowClockwise size={16} weight="bold" />
            Regenerate
          </button>
          <button
            type="button"
            className={`${styles.ghostBtn} ${styles.ghostBtnDanger}`}
            onClick={() => setDeleteOpen(true)}
          >
            <Trash size={16} weight="bold" />
            Delete
          </button>
        </div>
      </div>

      <div className={styles.progressBar}>
        <div
          className={styles.progressFill}
          style={{ width: `${progress.percent}%` }}
        />
      </div>

      <div className={styles.weekNav}>
        <button
          type="button"
          className={styles.weekNavBtn}
          disabled={weekIndex <= 0}
          onClick={() => setWeekIndex((i) => Math.max(0, i - 1))}
          aria-label="Previous week"
        >
          <CaretLeft size={18} weight="bold" />
        </button>
        <div className={styles.weekTitle}>
          <p className={styles.weekTheme}>
            {currentWeek?.theme ?? `Week ${weekIndex + 1}`}
          </p>
          <p className={styles.weekSub}>
            Week {weekIndex + 1} of {totalWeeks}
            {currentWeek?.start_date
              ? ` · ${formatWeekRange(currentWeek.start_date, currentWeek.end_date)}`
              : ""}
          </p>
        </div>
        <button
          type="button"
          className={styles.weekNavBtn}
          disabled={weekIndex >= plan.weeks.length - 1}
          onClick={() =>
            setWeekIndex((i) => Math.min(plan.weeks.length - 1, i + 1))
          }
          aria-label="Next week"
        >
          <CaretRight size={18} weight="bold" />
        </button>
      </div>

      <div className={styles.dayList}>
        {dayGroups.length === 0 ? (
          <p className={styles.restNote}>No tasks scheduled this week.</p>
        ) : (
          dayGroups.map((group) => {
            const chip = group.isDate ? formatDayChip(group.key) : null;
            const today = group.isDate && isToday(group.key);
            return (
              <div
                key={group.key}
                className={`${styles.dayRow} ${today ? styles.dayRowToday : ""}`}
              >
                <div className={styles.dayChip}>
                  {chip ? (
                    <>
                      <span className={styles.dayChipNum}>{chip.day}</span>
                      <span className={styles.dayChipMonth}>{chip.month}</span>
                      <span className={styles.dayChipWeekday}>
                        {chip.weekday}
                      </span>
                    </>
                  ) : (
                    <span className={styles.dayChipWeekday}>
                      {group.key.slice(0, 3)}
                    </span>
                  )}
                </div>
                <div className={styles.dayTasks}>
                  {group.tasks.map((task) => (
                    <TaskRow
                      key={task.id}
                      task={task}
                      completed={isTaskComplete(task, plan.completedTaskIds)}
                      overdue={taskIsOverdue(task, plan.completedTaskIds)}
                      onToggle={(done) => void toggleTask(task.id, done)}
                      onWatch={() => setVideoTask(task)}
                      onStart={() => setChooserTask(task)}
                    />
                  ))}
                </div>
              </div>
            );
          })
        )}
      </div>

      <AlertDialog open={regenerateOpen} onOpenChange={setRegenerateOpen}>
        <AlertDialogContent className={styles.planDialog}>
          <AlertDialogHeader>
            <AlertDialogTitle>Regenerate study plan?</AlertDialogTitle>
            <AlertDialogDescription>
              This rebuilds your whole schedule and resets task completion. Your
              target, exam date, and weekly hours stay the same.
            </AlertDialogDescription>
          </AlertDialogHeader>
          <AlertDialogFooter className={styles.planDialogFooter}>
            <AlertDialogCancel className={styles.planDialogCancel}>
              Keep current plan
            </AlertDialogCancel>
            <AlertDialogAction
              className={styles.planDialogPrimary}
              onClick={() => void runGenerate()}
            >
              Regenerate
            </AlertDialogAction>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>

      <AlertDialog open={deleteOpen} onOpenChange={setDeleteOpen}>
        <AlertDialogContent className={styles.planDialog}>
          <AlertDialogHeader>
            <AlertDialogTitle>Delete this study plan?</AlertDialogTitle>
            <AlertDialogDescription>
              This permanently removes your {examLabel} study plan and all task
              progress. You can build a new one anytime. This cannot be undone.
            </AlertDialogDescription>
          </AlertDialogHeader>
          <AlertDialogFooter className={styles.planDialogFooter}>
            <AlertDialogCancel className={styles.planDialogCancel}>
              Keep plan
            </AlertDialogCancel>
            <AlertDialogAction
              className={styles.planDialogDestructive}
              disabled={deleting}
              onClick={(e) => {
                e.preventDefault();
                void handleDelete();
              }}
            >
              {deleting ? "Deleting…" : "Delete plan"}
            </AlertDialogAction>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>

      <EditPlanDialog
        open={editOpen}
        onOpenChange={setEditOpen}
        title="Edit your study plan"
        examDate={examDate}
        setExamDate={setExamDate}
        targetScore={targetScore}
        setTargetScore={setTargetScore}
        weeklyHours={weeklyHours}
        setWeeklyHours={setWeeklyHours}
        scoreMin={scoreBounds.min}
        scoreMax={scoreBounds.max}
        scoreStep={apIb || examType === "ACT" ? 1 : 10}
        submitLabel="Save & regenerate"
        onSubmit={() => void runGenerate()}
      />

      <VideoDialog task={videoTask} onClose={() => setVideoTask(null)} />
      <StudyModeDialog
        task={chooserTask}
        examType={examType}
        onClose={() => setChooserTask(null)}
      />
      </div>
    </div>
  );
}

function TaskRow({
  task,
  completed,
  overdue,
  onToggle,
  onWatch,
  onStart,
}: {
  task: StudyTask;
  completed: boolean;
  overdue: boolean;
  onToggle: (done: boolean) => void;
  onWatch: () => void;
  onStart: () => void;
}) {
  const minutes = taskEstimatedMinutes(task);
  // A video only ever appears when we actually have a real link for it — no
  // fake "search YouTube" placeholder.
  const hasVideo = Boolean(task.video?.id);
  // Question-style tasks pick a study mode; vocab/challenge/exam go direct.
  const usesChooser =
    task.type === "lesson" ||
    task.type === "practice" ||
    task.type === "video" ||
    task.type === "quiz";

  return (
    <div className={`${styles.taskRow} ${completed ? styles.taskRowDone : ""}`}>
      <button
        type="button"
        className={styles.taskCheck}
        onClick={() => onToggle(!completed)}
        aria-pressed={completed}
        aria-label={`Mark ${task.topic ?? "task"} ${completed ? "incomplete" : "complete"}`}
      >
        {completed ? <Check size={14} weight="bold" /> : null}
      </button>

      {hasVideo ? (
        <button
          type="button"
          className={styles.thumbBtn}
          onClick={onWatch}
          aria-label={`Watch ${task.topic ?? "lesson"} video`}
        >
          <img
            src={youtubeThumbnail(task.video!.id)}
            alt=""
            className={styles.thumbImg}
            loading="lazy"
          />
          <span className={styles.thumbPlay}>
            <PlayCircle size={22} weight="fill" />
          </span>
        </button>
      ) : null}

      <div className={styles.taskBody}>
        <div className={styles.taskTitleRow}>
          {task.type === "challenge" ? (
            <Trophy size={15} weight="fill" className={styles.taskIcon} />
          ) : task.type === "exam" ? (
            <Exam size={15} weight="fill" className={styles.taskIcon} />
          ) : null}
          <p className={styles.taskTitle}>{task.topic ?? "Study task"}</p>
          {task.tag ? (
            <span className={`${styles.taskTag} ${tagClass(task)}`}>
              {task.tag}
            </span>
          ) : null}
          {overdue ? <span className={styles.overdue}>Overdue</span> : null}
        </div>
        <p className={styles.taskMeta}>
          {taskTypeBadgeLabel(task.type)} · {minutes} min
          {task.question_count ? ` · ${task.question_count} questions` : ""}
        </p>
        {task.note ? <p className={styles.taskNote}>{task.note}</p> : null}
      </div>

      <div className={styles.taskActions}>
        {hasVideo ? (
          <button type="button" className={styles.watchBtn} onClick={onWatch}>
            <PlayCircle size={16} weight="fill" />
            Watch
          </button>
        ) : null}
        {usesChooser ? (
          <button
            type="button"
            onClick={onStart}
            className={`${styles.startBtn} ${completed ? styles.startBtnDone : ""}`}
          >
            {completed ? "Review" : "Start"}
            <ArrowRight size={14} weight="bold" />
          </button>
        ) : (
          <Link
            href={practiceHrefForTask(task)}
            className={`${styles.startBtn} ${completed ? styles.startBtnDone : ""}`}
          >
            {completed ? "Review" : "Start"}
            <ArrowRight size={14} weight="bold" />
          </Link>
        )}
      </div>
    </div>
  );
}

function StudyModeDialog({
  task,
  examType,
  onClose,
}: {
  task: StudyTask | null;
  examType: ExamType;
  onClose: () => void;
}) {
  const open = Boolean(task);
  const apIb = isApOrIbExam(examType);
  const bankBase = task ? practiceHrefForTask(task) : "#";
  const bankHref = task
    ? `${bankBase}${bankBase.includes("?") ? "&" : "?"}autostart=1`
    : "#";
  const rushHref = task ? rushHrefForTask(task) : "#";

  return (
    <Dialog open={open} onOpenChange={(o) => !o && onClose()}>
      <DialogContent className={styles.chooserDialog}>
        <DialogHeader>
          <DialogTitle>How would you like to study?</DialogTitle>
          <DialogDescription>
            {task?.topic
              ? `${task.topic}, pick a mode to start.`
              : "Pick a mode to start."}
          </DialogDescription>
        </DialogHeader>
        <div className={styles.chooserGrid}>
          <Link href={bankHref} className={styles.chooserCard} onClick={onClose}>
            <div className={styles.chooserHead}>
              <span className={styles.chooserName}>Question bank</span>
              <span className={styles.chooserBadge}>Recommended</span>
            </div>
            <p className={styles.chooserDesc}>
              Work through questions at your own pace with full explanations.
            </p>
            <span className={styles.chooserContinue}>
              Continue
              <ArrowRight size={14} weight="bold" />
            </span>
          </Link>
          {apIb ? (
            <>
              <Link
                href="/dashboard/unit-tests"
                className={styles.chooserCard}
                onClick={onClose}
              >
                <div className={styles.chooserHead}>
                  <span className={styles.chooserName}>Unit Tests</span>
                </div>
                <p className={styles.chooserDesc}>
                  Timed practice scoped to a single course unit.
                </p>
                <span className={styles.chooserContinue}>
                  Continue
                  <ArrowRight size={14} weight="bold" />
                </span>
              </Link>
              <Link
                href="/dashboard/exams"
                className={styles.chooserCard}
                onClick={onClose}
              >
                <div className={styles.chooserHead}>
                  <span className={styles.chooserName}>Practice Exams</span>
                </div>
                <p className={styles.chooserDesc}>
                  Full-length Forms A–J matched to your course.
                </p>
                <span className={styles.chooserContinue}>
                  Continue
                  <ArrowRight size={14} weight="bold" />
                </span>
              </Link>
            </>
          ) : (
            <Link href={rushHref} className={styles.chooserCard} onClick={onClose}>
              <div className={styles.chooserHead}>
                <span className={styles.chooserName}>Question Rush</span>
              </div>
              <p className={styles.chooserDesc}>
                Race against the clock to practice your speed.
              </p>
              <span className={styles.chooserContinue}>
                Continue
                <ArrowRight size={14} weight="bold" />
              </span>
            </Link>
          )}
        </div>
      </DialogContent>
    </Dialog>
  );
}

function VideoDialog({
  task,
  onClose,
}: {
  task: StudyTask | null;
  onClose: () => void;
}) {
  const open = Boolean(task?.video?.id);

  // Close on Escape and lock body scroll while the modal is open.
  useEffect(() => {
    if (!open) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") onClose();
    };
    document.addEventListener("keydown", onKey);
    const prevOverflow = document.body.style.overflow;
    document.body.style.overflow = "hidden";
    return () => {
      document.removeEventListener("keydown", onKey);
      document.body.style.overflow = prevOverflow;
    };
  }, [open, onClose]);

  if (!open || !task?.video?.id || typeof document === "undefined") return null;

  // Portal to <body> so the fixed overlay escapes the dashboard's transformed
  // page wrapper and covers the whole viewport.
  return createPortal(
    <div
      className={styles.videoOverlay}
      role="dialog"
      aria-modal="true"
      aria-label={`${task.topic ?? "Lesson"} video`}
      onClick={onClose}
    >
      <div className={styles.videoModal} onClick={(e) => e.stopPropagation()}>
        <div className={styles.videoHead}>
          <div className={styles.videoHeadText}>
            <h2 className={styles.videoTitle}>{task.topic ?? "Lesson"}</h2>
            <p className={styles.videoSub}>
              {task.video.channel
                ? `Video from ${task.video.channel}`
                : "Watch, then practice the skill."}
            </p>
          </div>
          <button
            type="button"
            className={styles.videoClose}
            onClick={onClose}
            aria-label="Close video"
          >
            <X size={18} weight="bold" />
          </button>
        </div>

        <div className={styles.videoFrame}>
          <iframe
            src={`https://www.youtube.com/embed/${task.video.id}`}
            title={task.video.title ?? task.topic ?? "Lesson video"}
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowFullScreen
          />
        </div>

        <div className={styles.videoFooter}>
          <button
            type="button"
            className={styles.videoBtnGhost}
            onClick={onClose}
          >
            Close
          </button>
          <Link
            href={practiceHrefForTask(task)}
            className={styles.videoBtnPrimary}
          >
            Practice this skill
            <ArrowRight size={14} weight="bold" />
          </Link>
        </div>
      </div>
    </div>,
    document.body,
  );
}

function EditPlanDialog({
  open,
  onOpenChange,
  title,
  examDate,
  setExamDate,
  targetScore,
  setTargetScore,
  weeklyHours,
  setWeeklyHours,
  scoreMin,
  scoreMax,
  scoreStep,
  submitLabel,
  onSubmit,
}: {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  title: string;
  examDate: string;
  setExamDate: (v: string) => void;
  targetScore: string;
  setTargetScore: (v: string) => void;
  weeklyHours: string;
  setWeeklyHours: (v: string) => void;
  scoreMin: number;
  scoreMax: number;
  scoreStep: number;
  submitLabel: string;
  onSubmit: () => void;
}) {
  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className={styles.planDialog}>
        <DialogHeader>
          <DialogTitle>{title}</DialogTitle>
          <DialogDescription>
            Scho rebuilds your day-by-day schedule from these goals.
          </DialogDescription>
        </DialogHeader>
        <div className={styles.modalForm}>
          <div className={styles.modalField}>
            <label htmlFor="exam-date">Exam date</label>
            <input
              id="exam-date"
              type="date"
              value={examDate}
              onChange={(e) => setExamDate(e.target.value)}
            />
          </div>
          <div className={styles.modalField}>
            <label htmlFor="target-score">
              Target score ({scoreMin}–{scoreMax})
            </label>
            <input
              id="target-score"
              type="number"
              min={scoreMin}
              max={scoreMax}
              step={scoreStep}
              value={targetScore}
              onChange={(e) => setTargetScore(e.target.value)}
            />
          </div>
          <div className={styles.modalField}>
            <label htmlFor="weekly-hours">Weekly study hours</label>
            <input
              id="weekly-hours"
              type="number"
              min={1}
              max={40}
              value={weeklyHours}
              onChange={(e) => setWeeklyHours(e.target.value)}
            />
          </div>
        </div>
        <DialogFooter className={styles.planDialogFooter}>
          <button
            type="button"
            className={styles.planDialogCancel}
            onClick={() => onOpenChange(false)}
          >
            Cancel
          </button>
          <button
            type="button"
            className={styles.planDialogPrimary}
            onClick={onSubmit}
          >
            {submitLabel}
          </button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  );
}
