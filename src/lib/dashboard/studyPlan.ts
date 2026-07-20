import { domainForSkillId } from "@/lib/dashboard/bankTaxonomy";

export type StudyTaskType =
  | "lesson"
  | "practice"
  | "vocab"
  | "challenge"
  | "exam"
  // legacy types kept so older saved plans still parse
  | "video"
  | "quiz"
  | "review";

export type StudyTaskVideo = {
  id: string;
  title?: string;
  channel?: string;
};

export type StudyTask = {
  id: string;
  day: string;
  /** ISO yyyy-mm-dd — the real calendar date this task is scheduled for. */
  date?: string;
  /** @deprecated use topic + description */
  task?: string;
  type: StudyTaskType;
  topic?: string;
  description?: string;
  /** Short, human study tip (one line) shown under the task. */
  note?: string;
  /** "reading_writing" | "math" | section id — used for routing + color. */
  section?: string;
  /** Short colored tag, e.g. "Reading", "Writing", "Algebra". */
  tag?: string;
  /** Canonical bank skill id (e.g. "LIN") for deep-linking practice. */
  skill_id?: string;
  duration_minutes?: number;
  estimated_minutes?: number;
  question_count?: number;
  /** Attached YouTube lesson video, when one was found. */
  video?: StudyTaskVideo;
  completed?: boolean;
  done?: boolean;
};

export type StudyWeek = {
  week: number;
  theme?: string;
  /** ISO yyyy-mm-dd of the first/last day of the week block. */
  start_date?: string;
  end_date?: string;
  tasks: StudyTask[];
};

export type StudyPlanData = {
  total_weeks?: number;
  weekly_focus_areas?: string[];
  weeks: StudyWeek[];
  completedTaskIds: string[];
};

const DAY_ORDER = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday",
] as const;

const DAY_SHORT: Record<string, string> = {
  Monday: "Mon",
  Tuesday: "Tue",
  Wednesday: "Wed",
  Thursday: "Thu",
  Friday: "Fri",
  Saturday: "Sat",
  Sunday: "Sun",
  Mon: "Monday",
  Tue: "Tuesday",
  Wed: "Wednesday",
  Thu: "Thursday",
  Fri: "Friday",
  Sat: "Saturday",
  Sun: "Sunday",
};

export function normalizeDayLabel(day: string): string {
  const trimmed = day.trim();
  if (DAY_ORDER.includes(trimmed as (typeof DAY_ORDER)[number])) return trimmed;
  return DAY_SHORT[trimmed] ?? trimmed;
}

export function daySortIndex(day: string): number {
  const normalized = normalizeDayLabel(day);
  const idx = DAY_ORDER.indexOf(normalized as (typeof DAY_ORDER)[number]);
  return idx >= 0 ? idx : 99;
}

const DEFAULT_WEEK_TASKS: Omit<StudyTask, "id" | "done" | "completed">[] = [
  {
    day: "Monday",
    type: "practice",
    topic: "Linear equations",
    description: "Practice: Linear equations (20 Qs)",
    duration_minutes: 25,
    question_count: 20,
  },
  {
    day: "Tuesday",
    type: "video",
    topic: "Reading transitions",
    description: "Video: Transitions in context",
    duration_minutes: 20,
  },
  {
    day: "Wednesday",
    type: "quiz",
    topic: "Reading comprehension",
    description: "Quiz: Reading comprehension",
    duration_minutes: 15,
  },
  {
    day: "Thursday",
    type: "review",
    topic: "Weak areas",
    description: "Review: Weak topics from diagnostic",
    duration_minutes: 20,
  },
  {
    day: "Friday",
    type: "exam",
    topic: "Math",
    description: "Full section: Math Module 1",
    duration_minutes: 45,
  },
];

export function defaultStudyPlanData(): StudyPlanData {
  return {
    total_weeks: 1,
    weekly_focus_areas: ["Foundations"],
    weeks: [
      {
        week: 1,
        theme: "Getting started",
        tasks: DEFAULT_WEEK_TASKS.map((t, i) => ({
          ...t,
          id: `w1-t${i}`,
          done: false,
          completed: false,
        })),
      },
    ],
    completedTaskIds: [],
  };
}

function normalizeTask(task: StudyTask, weekNum: number, index: number): StudyTask {
  const id = task.id || `w${weekNum}-t${index}`;
  const day = normalizeDayLabel(task.day || "Monday");
  const completed =
    task.completed ??
    task.done ??
    false;
  const description =
    task.description ??
    task.task ??
    `${task.type}: ${task.topic ?? "Study task"}`;
  return {
    ...task,
    id,
    day,
    description,
    topic: task.topic ?? description.split(":")[0]?.trim(),
    duration_minutes:
      task.duration_minutes ?? task.estimated_minutes ?? defaultMinutes(task.type),
    completed,
    done: completed,
  };
}

function defaultMinutes(type: StudyTaskType): number {
  const map: Record<StudyTaskType, number> = {
    lesson: 20,
    practice: 25,
    vocab: 5,
    challenge: 15,
    exam: 90,
    video: 20,
    quiz: 15,
    review: 20,
  };
  return map[type] ?? 20;
}

export function parseStudyPlanData(raw: unknown): StudyPlanData {
  if (!raw || typeof raw !== "object") return defaultStudyPlanData();
  const data = raw as StudyPlanData;
  if (!Array.isArray(data.weeks) || data.weeks.length === 0) {
    return defaultStudyPlanData();
  }

  const weeks = data.weeks.map((week) => ({
    week: week.week,
    theme: week.theme ?? `Week ${week.week}`,
    tasks: (week.tasks ?? []).map((t, i) => normalizeTask(t, week.week, i)),
  }));

  return {
    total_weeks: data.total_weeks ?? weeks.length,
    weekly_focus_areas: data.weekly_focus_areas ?? [],
    weeks,
    completedTaskIds: data.completedTaskIds ?? [],
  };
}

export function isTaskComplete(
  task: StudyTask,
  completedIds: string[],
): boolean {
  return Boolean(
    task.completed || task.done || completedIds.includes(task.id),
  );
}

export function getWeekTasks(
  plan: StudyPlanData,
  weekIndex: number,
): StudyTask[] {
  const week = plan.weeks[weekIndex];
  if (!week) return [];
  return [...week.tasks].sort(
    (a, b) => daySortIndex(a.day) - daySortIndex(b.day),
  );
}

export function getCurrentWeekTasks(plan: StudyPlanData): StudyTask[] {
  return getWeekTasks(plan, 0);
}

export function getTodaysTasks(plan: StudyPlanData): StudyTask[] {
  // Prefer real calendar dates (new dated plans); fall back to weekday match.
  const todayIso = isoDate(new Date());
  const dated = plan.weeks
    .flatMap((w) => w.tasks)
    .filter((t) => t.date === todayIso);
  if (dated.length > 0) return dated;

  const today = new Date().toLocaleDateString("en-US", { weekday: "long" });
  const weekTasks = getCurrentWeekTasks(plan);
  const todayTasks = weekTasks.filter(
    (t) => normalizeDayLabel(t.day) === today,
  );
  return todayTasks.length > 0 ? todayTasks : weekTasks.slice(0, 3);
}

/** Index of the week block that contains today, or 0 if none/undated. */
export function currentWeekIndex(plan: StudyPlanData): number {
  const todayIso = isoDate(new Date());
  const idx = plan.weeks.findIndex(
    (w) => w.start_date && w.end_date && todayIso >= w.start_date && todayIso <= w.end_date,
  );
  return idx >= 0 ? idx : 0;
}

/** A dated task whose date is before today and which isn't completed yet. */
export function taskIsOverdue(task: StudyTask, completedIds: string[]): boolean {
  if (!task.date) return false;
  if (isTaskComplete(task, completedIds)) return false;
  return task.date < isoDate(new Date());
}

export function isToday(dateIso: string | undefined): boolean {
  return Boolean(dateIso) && dateIso === isoDate(new Date());
}

export function taskEstimatedMinutes(task: StudyTask): number {
  return (
    task.duration_minutes ??
    task.estimated_minutes ??
    defaultMinutes(task.type)
  );
}

export function taskDisplayLabel(task: StudyTask): string {
  return task.description ?? task.task ?? task.topic ?? "Study task";
}

export function taskTypeBadgeLabel(type: StudyTaskType): string {
  const labels: Record<StudyTaskType, string> = {
    lesson: "Lesson + practice",
    practice: "Practice",
    vocab: "Vocab",
    challenge: "Weekly Challenge",
    exam: "Full Exam",
    video: "Video",
    quiz: "Quiz",
    review: "Review",
  };
  return labels[type] ?? "Study task";
}

export function toggleTaskInPlan(
  plan: StudyPlanData,
  taskId: string,
  done: boolean,
): StudyPlanData {
  const completed = new Set(plan.completedTaskIds);
  if (done) completed.add(taskId);
  else completed.delete(taskId);

  const weeks = plan.weeks.map((week) => ({
    ...week,
    tasks: week.tasks.map((t) => {
      if (t.id !== taskId) {
        const isDone = completed.has(t.id);
        return { ...t, completed: isDone, done: isDone };
      }
      return { ...t, completed: done, done };
    }),
  }));

  return { weeks, completedTaskIds: [...completed], ...pickMeta(plan) };
}

function pickMeta(plan: StudyPlanData) {
  return {
    total_weeks: plan.total_weeks,
    weekly_focus_areas: plan.weekly_focus_areas,
  };
}

export function planProgress(plan: StudyPlanData): {
  completed: number;
  total: number;
  percent: number;
} {
  const tasks = plan.weeks.flatMap((w) => w.tasks);
  const total = tasks.length;
  if (total === 0) return { completed: 0, total: 0, percent: 0 };
  const completed = tasks.filter((t) =>
    isTaskComplete(t, plan.completedTaskIds),
  ).length;
  return {
    completed,
    total,
    percent: Math.round((completed / total) * 100),
  };
}

export function planProgressPercent(plan: StudyPlanData): number {
  return planProgress(plan).percent;
}

export function groupTasksByDay(tasks: StudyTask[]): Map<string, StudyTask[]> {
  const map = new Map<string, StudyTask[]>();
  for (const day of DAY_ORDER) {
    map.set(day, []);
  }
  for (const task of tasks) {
    const day = normalizeDayLabel(task.day);
    const list = map.get(day) ?? [];
    list.push(task);
    map.set(day, list);
  }
  return map;
}

export const STUDY_DAYS = DAY_ORDER;

type AiWeek = {
  week: number;
  theme: string;
  tasks: Array<{
    day: string;
    type: StudyTaskType;
    topic: string;
    duration_minutes: number;
    description: string;
    question_count?: number;
  }>;
};

type AiPlan = {
  total_weeks: number;
  weekly_focus_areas: string[];
  weeks: AiWeek[];
};

export function buildPlanFromAi(raw: AiPlan): StudyPlanData {
  const weeks: StudyWeek[] = raw.weeks.map((w) => ({
    week: w.week,
    theme: w.theme,
    tasks: w.tasks.map((t, i) => ({
      id: `w${w.week}-${t.day.slice(0, 3).toLowerCase()}-${i}`,
      day: t.day,
      type: t.type,
      topic: t.topic,
      description: t.description,
      duration_minutes: t.duration_minutes,
      question_count: t.question_count,
      completed: false,
      done: false,
    })),
  }));

  return parseStudyPlanData({
    total_weeks: raw.total_weeks,
    weekly_focus_areas: raw.weekly_focus_areas,
    weeks,
    completedTaskIds: [],
  });
}

// ───────────────────────────── Dated scheduler ─────────────────────────────

/** ISO yyyy-mm-dd in local time (no UTC shift). */
export function isoDate(d: Date): string {
  const y = d.getFullYear();
  const m = String(d.getMonth() + 1).padStart(2, "0");
  const day = String(d.getDate()).padStart(2, "0");
  return `${y}-${m}-${day}`;
}

export function addDays(d: Date, n: number): Date {
  const next = new Date(d);
  next.setDate(next.getDate() + n);
  return next;
}

function weekdayLabel(d: Date): string {
  return d.toLocaleDateString("en-US", { weekday: "long" });
}

/** "22 Jun" style short date used in the day headers. */
export function formatDayChip(dateIso: string): { day: string; month: string; weekday: string } {
  const d = new Date(`${dateIso}T00:00:00`);
  return {
    day: String(d.getDate()),
    month: d.toLocaleDateString("en-US", { month: "short" }),
    weekday: d.toLocaleDateString("en-US", { weekday: "short" }),
  };
}

/** "Jun 22 to 28" style range used in the week header. */
export function formatWeekRange(startIso?: string, endIso?: string): string {
  if (!startIso || !endIso) return "";
  const s = new Date(`${startIso}T00:00:00`);
  const e = new Date(`${endIso}T00:00:00`);
  const sMonth = s.toLocaleDateString("en-US", { month: "short" });
  const eMonth = e.toLocaleDateString("en-US", { month: "short" });
  return sMonth === eMonth
    ? `${sMonth} ${s.getDate()} to ${e.getDate()}`
    : `${sMonth} ${s.getDate()} to ${eMonth} ${e.getDate()}`;
}

const DOMAIN_TAG: Record<string, string> = {
  craft: "Reading",
  information: "Reading",
  expression: "Writing",
  conventions: "Writing",
  algebra: "Algebra",
  advanced: "Advanced Math",
  psda: "Problem Solving",
  geometry: "Geometry",
  english: "English",
  math: "Math",
  reading: "Reading",
  science: "Science",
};

const RW_DOMAIN_IDS = new Set(["craft", "expression", "information", "conventions"]);

/** Short colored tag for a skill, e.g. "Reading", "Algebra". */
export function sectionTagForSkill(skillId: string | undefined): string {
  if (!skillId) return "Practice";
  const domain = domainForSkillId(skillId);
  if (!domain) return "Practice";
  return DOMAIN_TAG[domain.id] ?? domain.label;
}

/** Coarse section bucket used for color + practice routing. */
export function sectionForSkill(skillId: string | undefined): "reading_writing" | "math" | "other" {
  if (!skillId) return "other";
  const domain = domainForSkillId(skillId);
  if (!domain) return "other";
  if (RW_DOMAIN_IDS.has(domain.id) || domain.id === "english" || domain.id === "reading") {
    return "reading_writing";
  }
  if (domain.id === "math" || ["algebra", "advanced", "psda", "geometry"].includes(domain.id)) {
    return "math";
  }
  return "other";
}

/** Deep link to start practice / study for a given task. */
export function practiceHrefForTask(task: StudyTask): string {
  if (task.type === "vocab") return "/dashboard/vocab";
  if (task.type === "challenge") return "/dashboard/practice/challenge";
  if (task.type === "exam") return "/dashboard/exams";
  const section = task.section ?? sectionForSkill(task.skill_id);
  // SAT/ACT: en|math modules. AP/IB units use section "other" + skill_id = unit_code.
  const moduleParam =
    section === "math"
      ? "math"
      : section === "reading_writing"
        ? "en"
        : section === "other" && task.skill_id
          ? task.skill_id
          : null;
  const base = "/dashboard/practice/bank";
  const params = new URLSearchParams();
  if (moduleParam) params.set("module", moduleParam);
  if (task.skill_id) params.set("skill", task.skill_id);
  if (task.skill_id && task.question_count) {
    params.set("count", String(task.question_count));
  }
  const qs = params.toString();
  return qs ? `${base}?${qs}` : base;
}

/** Deep link to start a timed Question Rush for a task's skill. */
export function rushHrefForTask(task: StudyTask): string {
  const section = task.section ?? sectionForSkill(task.skill_id);
  const sec = section === "math" ? "math" : "reading_writing";
  const params = new URLSearchParams({ section: sec, autostart: "1" });
  if (task.skill_id) params.set("skill", task.skill_id);
  if (task.question_count) params.set("count", String(task.question_count));
  return `/dashboard/question-rush?${params.toString()}`;
}

/** A YouTube search URL for a skill — the always-available video fallback. */
export function youtubeSearchUrl(examType: string, topic: string): string {
  const exam = examType === "ACT" ? "ACT" : "SAT";
  const q = encodeURIComponent(`${exam} ${topic} explained`);
  return `https://www.youtube.com/results?search_query=${q}`;
}

/** Thumbnail image for a cached lesson video. */
export function youtubeThumbnail(videoId: string): string {
  return `https://i.ytimg.com/vi/${videoId}/mqdefault.jpg`;
}

export type ScheduleSkill = {
  id: string;
  label: string;
  section: "reading_writing" | "math" | "other";
  available: number;
};

export type ScheduleInput = {
  examType: string;
  startDate?: Date;
  examDate?: string | null;
  weeklyHours: number;
  weakSkillIds?: string[];
  skills: ScheduleSkill[];
  /** Specific weekdays to study (e.g. ["Monday","Wednesday"]). Overrides the
   *  weeklyHours-derived schedule when provided. */
  studyDays?: string[];
  /** Weekdays that are "extended" (more lessons that day). */
  extendedDays?: string[];
  /** Weekday to place the periodic full practice exam on. */
  practiceTestDay?: string;
  /** Mistral-provided personalization (all optional). */
  weekThemes?: string[];
  orderedSkillIds?: string[];
  tips?: Record<string, string>;
  videosBySkill?: Record<string, StudyTaskVideo>;
  /** A "how to use Desmos" video, injected once early on a math day. */
  desmosVideo?: StudyTaskVideo;
};

const WEEKDAY_INDEX: Record<string, number> = {
  Sunday: 0,
  Monday: 1,
  Tuesday: 2,
  Wednesday: 3,
  Thursday: 4,
  Friday: 5,
  Saturday: 6,
};

/** Offset (0-6) of a weekday within a 7-day block starting at `blockStart`. */
function offsetForWeekday(blockStart: Date, weekday: string): number | null {
  const target = WEEKDAY_INDEX[normalizeDayLabel(weekday)];
  if (target == null) return null;
  return (target - blockStart.getDay() + 7) % 7;
}

function resolveWeekCount(start: Date, examDate?: string | null): number {
  if (examDate) {
    const exam = new Date(`${examDate}T00:00:00`);
    const days = Math.ceil((exam.getTime() - start.getTime()) / 86_400_000);
    if (Number.isFinite(days) && days > 0) {
      return Math.min(16, Math.max(1, Math.ceil(days / 7)));
    }
  }
  return 12;
}

/** Day offsets (0-6) within each week block to schedule study on. */
function studyDayOffsets(weeklyHours: number): number[] {
  if (weeklyHours <= 5) return [0, 2, 4];
  if (weeklyHours <= 9) return [0, 1, 3, 5];
  if (weeklyHours <= 13) return [0, 1, 2, 3, 4];
  return [0, 1, 2, 3, 4, 5];
}

/**
 * Build a real, dated, day-by-day study plan from the resolved skill set.
 * Deterministic — Mistral only supplies ordering / themes / tips / videos.
 */
export function buildScheduledPlan(input: ScheduleInput): StudyPlanData {
  const start = input.startDate ? new Date(input.startDate) : new Date();
  start.setHours(0, 0, 0, 0);

  const weeks = resolveWeekCount(start, input.examDate);
  const useDays = Boolean(input.studyDays && input.studyDays.length > 0);
  const offsets = studyDayOffsets(input.weeklyHours);
  const lessonsPerDay = input.weeklyHours >= 12 ? 2 : 1;
  const extendedSet = new Set(
    (input.extendedDays ?? []).map((d) => normalizeDayLabel(d)),
  );

  const available = input.skills.filter((s) => s.available > 0);
  const byId = new Map(available.map((s) => [s.id, s]));

  // Ordering: weak skills first, then a Mistral order, then RW/Math interleaved.
  const order: ScheduleSkill[] = [];
  const seen = new Set<string>();
  const push = (id: string) => {
    const skill = byId.get(id);
    if (skill && !seen.has(id)) {
      seen.add(id);
      order.push(skill);
    }
  };
  (input.weakSkillIds ?? []).forEach(push);
  (input.orderedSkillIds ?? []).forEach(push);
  const restRW = available.filter((s) => !seen.has(s.id) && s.section === "reading_writing");
  const restMath = available.filter((s) => !seen.has(s.id) && s.section !== "reading_writing");
  let ri = 0;
  let mi = 0;
  while (ri < restRW.length || mi < restMath.length) {
    if (mi < restMath.length) push(restMath[mi++].id);
    if (ri < restRW.length) push(restRW[ri++].id);
  }
  if (order.length === 0 && available.length > 0) available.forEach((s) => push(s.id));

  let cursor = 0;
  const nextSkill = (): ScheduleSkill | undefined =>
    order.length === 0 ? undefined : order[cursor++ % order.length];

  // Skills already taught with a video, so we only show the lesson video the
  // first time a skill is introduced — later days reinforce it with practice
  // only. This is why videos taper off instead of appearing every single day.
  const taughtWithVideo = new Set<string>();
  // Skills introduced so far, used to pull spaced-review practice sets.
  const introduced: ScheduleSkill[] = [];
  let reviewCursor = 0;
  let desmosPlaced = false;

  const planWeeks: StudyWeek[] = [];
  for (let w = 0; w < weeks; w += 1) {
    const blockStart = addDays(start, w * 7);
    const weekSkills: ScheduleSkill[] = [];
    const tasks: StudyTask[] = [];

    // The study days for this week, in chronological order.
    const dayList = (
      useDays
        ? input
            .studyDays!.map((name) => offsetForWeekday(blockStart, name))
            .filter((o): o is number => o != null)
        : offsets
    )
      .map((off) => {
        const date = addDays(blockStart, off);
        return { off, date, dateIso: isoDate(date), day: weekdayLabel(date) };
      })
      .sort((a, b) => a.off - b.off);

    dayList.forEach((d) => {
      const newSkills = useDays
        ? extendedSet.has(d.day)
          ? 3
          : 2
        : lessonsPerDay + 1;

      // Pick a spaced-review skill from earlier material (before today's intros).
      const reviewSkill =
        introduced.length > 0
          ? introduced[reviewCursor++ % introduced.length]
          : null;

      let dayHasMathIntro = false;

      // Introduce new skills: a short lesson video (first time only) + practice.
      for (let l = 0; l < newSkills; l += 1) {
        const skill = nextSkill();
        if (!skill) continue;
        weekSkills.push(skill);
        introduced.push(skill);
        if (skill.section === "math") dayHasMathIntro = true;

        const video = input.videosBySkill?.[skill.id];
        if (video?.id && !taughtWithVideo.has(skill.id)) {
          taughtWithVideo.add(skill.id);
          tasks.push({
            id: `w${w + 1}-${d.dateIso}-v${l}`,
            day: d.day,
            date: d.dateIso,
            type: "video",
            topic: skill.label,
            description: `Lesson video: ${skill.label}`,
            note: input.tips?.[skill.id],
            section: skill.section,
            tag: sectionTagForSkill(skill.id),
            skill_id: skill.id,
            duration_minutes: 6,
            video,
            completed: false,
            done: false,
          });
        }

        tasks.push({
          id: `w${w + 1}-${d.dateIso}-l${l}`,
          day: d.day,
          date: d.dateIso,
          type: "practice",
          topic: skill.label,
          description: `Practice: ${skill.label}`,
          note: video?.id ? undefined : input.tips?.[skill.id],
          section: skill.section,
          tag: sectionTagForSkill(skill.id),
          skill_id: skill.id,
          duration_minutes: 12,
          question_count: Math.max(5, Math.min(8, skill.available)),
          completed: false,
          done: false,
        });
      }

      // Desmos: drop the calculator walkthrough once, early, on the first math
      // day — a real lesson video with no fake fallback.
      if (
        !desmosPlaced &&
        input.desmosVideo?.id &&
        (dayHasMathIntro || w === 0)
      ) {
        desmosPlaced = true;
        tasks.push({
          id: `w${w + 1}-${d.dateIso}-desmos`,
          day: d.day,
          date: d.dateIso,
          type: "video",
          topic: "Desmos calculator",
          description: "How to use the Desmos calculator on SAT Math",
          note: "Learn graphing, intersections, and regressions to solve faster.",
          section: "math",
          tag: "Desmos",
          skill_id: "SYS",
          duration_minutes: 10,
          video: input.desmosVideo,
          completed: false,
          done: false,
        });
      }

      // A spaced-review practice set drawn from earlier skills (no video).
      const review = reviewSkill ?? introduced[introduced.length - 1];
      if (review) {
        tasks.push({
          id: `w${w + 1}-${d.dateIso}-review`,
          day: d.day,
          date: d.dateIso,
          type: "practice",
          topic: review.label,
          description: `Mixed review: ${review.label}`,
          section: review.section,
          tag: sectionTagForSkill(review.id),
          skill_id: review.id,
          duration_minutes: 15,
          question_count: Math.max(8, Math.min(12, review.available)),
          completed: false,
          done: false,
        });
      }

      // A short daily vocab drill.
      tasks.push({
        id: `w${w + 1}-${d.dateIso}-vocab`,
        day: d.day,
        date: d.dateIso,
        type: "vocab",
        topic: "Vocab",
        description: "Vocab review",
        section: "reading_writing",
        tag: "Vocab",
        duration_minutes: 10,
        question_count: 15,
        completed: false,
        done: false,
      });
    });

    // Capstone: a full practice exam on the chosen test day (every other week
    // when a test day is set, else every 4th week), otherwise a weekly challenge
    // on the last study day.
    if (dayList.length > 0) {
      const examWeek = input.practiceTestDay
        ? (w + 1) % 2 === 0
        : (w + 1) % 4 === 0;
      const testIdx = input.practiceTestDay
        ? dayList.findIndex(
            (d) => d.day === normalizeDayLabel(input.practiceTestDay!),
          )
        : -1;
      if (examWeek) {
        const d = dayList[testIdx >= 0 ? testIdx : dayList.length - 1];
        tasks.push({
          id: `w${w + 1}-${d.dateIso}-exam`,
          day: d.day,
          date: d.dateIso,
          type: "exam",
          topic: "Full practice exam",
          description: "Timed full-length practice exam",
          tag: "Full Exam",
          duration_minutes: 130,
          completed: false,
          done: false,
        });
      } else {
        const d = dayList[dayList.length - 1];
        tasks.push({
          id: `w${w + 1}-${d.dateIso}-challenge`,
          day: d.day,
          date: d.dateIso,
          type: "challenge",
          topic: "Weekly Challenge",
          description: "Mixed challenge questions across this week's skills",
          tag: "Challenge",
          duration_minutes: 15,
          question_count: 10,
          completed: false,
          done: false,
        });
      }
    }

    // Title the week by its most-covered domain, or a cleaned Mistral theme.
    const domainCounts = new Map<string, number>();
    for (const s of weekSkills) {
      const label = domainForSkillId(s.id)?.label;
      if (label) domainCounts.set(label, (domainCounts.get(label) ?? 0) + 1);
    }
    const topDomain = [...domainCounts.entries()].sort(
      (a, b) => b[1] - a[1],
    )[0]?.[0];
    const rawTheme = input.weekThemes?.[w]
      ?.trim()
      .replace(/^week\s*\d+\s*[:.\-]?\s*/i, "")
      .trim();
    planWeeks.push({
      week: w + 1,
      theme:
        rawTheme && rawTheme.length > 1
          ? rawTheme.slice(0, 60)
          : (topDomain ?? `Week ${w + 1}`),
      start_date: isoDate(blockStart),
      end_date: isoDate(addDays(blockStart, 6)),
      tasks,
    });
  }

  const focus = [...new Set(order.slice(0, 6).map((s) => s.label))];

  return {
    total_weeks: weeks,
    weekly_focus_areas: focus.length > 0 ? focus : ["Core skills"],
    weeks: planWeeks,
    completedTaskIds: [],
  };
}

export function fallbackPlannerPlan(
  weakTopics: string[],
  weeklyHours: number,
): StudyPlanData {
  const focus = weakTopics.length > 0 ? weakTopics : ["Core skills"];
  const weeksCount = Math.min(12, Math.max(4, Math.ceil(weeklyHours / 3)));

  const weeks: StudyWeek[] = Array.from({ length: weeksCount }, (_, i) => {
    const weekNum = i + 1;
    const topic = focus[i % focus.length] ?? "Mixed review";
    return {
      week: weekNum,
      theme: `Week ${weekNum}: ${topic}`,
      tasks: [
        {
          id: `w${weekNum}-mon`,
          day: "Monday",
          type: "practice" as const,
          topic,
          description: `Practice ${topic}`,
          duration_minutes: 30,
          question_count: 15,
          completed: false,
          done: false,
        },
        {
          id: `w${weekNum}-wed`,
          day: "Wednesday",
          type: "quiz" as const,
          topic,
          description: `Quiz: ${topic}`,
          duration_minutes: 20,
          completed: false,
          done: false,
        },
        {
          id: `w${weekNum}-fri`,
          day: "Friday",
          type: weekNum % 4 === 0 ? ("exam" as const) : ("review" as const),
          topic,
          description:
            weekNum % 4 === 0 ? "Full practice exam" : `Review ${topic}`,
          duration_minutes: weekNum % 4 === 0 ? 90 : 25,
          completed: false,
          done: false,
        },
      ],
    };
  });

  return {
    total_weeks: weeksCount,
    weekly_focus_areas: focus,
    weeks,
    completedTaskIds: [],
  };
}
