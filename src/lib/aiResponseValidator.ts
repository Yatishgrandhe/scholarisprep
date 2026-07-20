import {
  validateQuestion,
  type QuestionValidationInput,
  type QuestionValidationResult,
} from "@/lib/questionValidator";

const STUDY_TASK_TYPES = [
  "practice",
  "video",
  "quiz",
  "exam",
  "review",
] as const;

const WEEKDAYS = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday",
] as const;

const DIFFICULTIES = ["easy", "medium", "hard"] as const;

export type ValidationResult<T = unknown> = {
  valid: boolean;
  errors: string[];
  data?: T;
};

export type AiStudyPlanWeek = {
  week: number;
  theme: string;
  tasks: Array<{
    day: string;
    type: (typeof STUDY_TASK_TYPES)[number];
    topic: string;
    duration_minutes: number;
    description: string;
    question_count?: number;
  }>;
};

export type AiStudyPlanPayload = {
  total_weeks: number;
  weekly_focus_areas: string[];
  weeks: AiStudyPlanWeek[];
};

export type AiRecommendationSession = {
  title: string;
  topic: string;
  difficulty: (typeof DIFFICULTIES)[number];
  question_count: number;
  estimated_minutes: number;
  reason: string;
};

export type AiRecommendationPayload = {
  weak_areas: string[];
  study_tip: string;
  recommended_sessions: AiRecommendationSession[];
  encouragement: string;
};

export function stripAiJsonFence(text: string): string {
  return text.replace(/```json|```/g, "").trim();
}

export function parseAiJson<T>(text: string): T | null {
  try {
    return JSON.parse(stripAiJsonFence(text)) as T;
  } catch {
    return null;
  }
}

function isRecord(value: unknown): value is Record<string, unknown> {
  return Boolean(value) && typeof value === "object" && !Array.isArray(value);
}

export function validateStudyPlanResponse(
  raw: unknown,
): ValidationResult<AiStudyPlanPayload> {
  const errors: string[] = [];

  if (!isRecord(raw)) {
    return { valid: false, errors: ["response must be a JSON object"] };
  }

  const totalWeeks = raw.total_weeks;
  if (typeof totalWeeks !== "number" || totalWeeks < 1) {
    errors.push("total_weeks must be a positive number");
  }

  if (!Array.isArray(raw.weekly_focus_areas)) {
    errors.push("weekly_focus_areas must be an array");
  } else if (raw.weekly_focus_areas.some((t) => typeof t !== "string")) {
    errors.push("weekly_focus_areas must contain strings");
  }

  if (!Array.isArray(raw.weeks) || raw.weeks.length === 0) {
    errors.push("weeks must be a non-empty array");
  } else {
    for (let wi = 0; wi < raw.weeks.length; wi += 1) {
      const week = raw.weeks[wi];
      if (!isRecord(week)) {
        errors.push(`weeks[${wi}] must be an object`);
        continue;
      }
      if (typeof week.week !== "number") {
        errors.push(`weeks[${wi}].week must be a number`);
      }
      if (typeof week.theme !== "string" || !week.theme.trim()) {
        errors.push(`weeks[${wi}].theme must be a non-empty string`);
      }
      if (!Array.isArray(week.tasks) || week.tasks.length === 0) {
        errors.push(`weeks[${wi}].tasks must be a non-empty array`);
        continue;
      }
      for (let ti = 0; ti < week.tasks.length; ti += 1) {
        const task = week.tasks[ti];
        if (!isRecord(task)) {
          errors.push(`weeks[${wi}].tasks[${ti}] must be an object`);
          continue;
        }
        if (
          typeof task.day !== "string" ||
          !WEEKDAYS.includes(task.day as (typeof WEEKDAYS)[number])
        ) {
          errors.push(
            `weeks[${wi}].tasks[${ti}].day must be a weekday name (Monday–Sunday)`,
          );
        }
        if (
          typeof task.type !== "string" ||
          !STUDY_TASK_TYPES.includes(
            task.type as (typeof STUDY_TASK_TYPES)[number],
          )
        ) {
          errors.push(
            `weeks[${wi}].tasks[${ti}].type must be practice|video|quiz|exam|review`,
          );
        }
        if (typeof task.topic !== "string" || !task.topic.trim()) {
          errors.push(`weeks[${wi}].tasks[${ti}].topic must be a string`);
        }
        if (
          typeof task.duration_minutes !== "number" ||
          task.duration_minutes < 1
        ) {
          errors.push(
            `weeks[${wi}].tasks[${ti}].duration_minutes must be a positive number`,
          );
        }
        if (
          typeof task.description !== "string" ||
          !task.description.trim()
        ) {
          errors.push(
            `weeks[${wi}].tasks[${ti}].description must be a non-empty string`,
          );
        }
        if (
          task.question_count != null &&
          (typeof task.question_count !== "number" || task.question_count < 1)
        ) {
          errors.push(
            `weeks[${wi}].tasks[${ti}].question_count must be a positive number when set`,
          );
        }
      }
    }
  }

  if (errors.length > 0) {
    return { valid: false, errors };
  }

  return {
    valid: true,
    errors: [],
    data: raw as AiStudyPlanPayload,
  };
}

export function validateRecommendationResponse(
  raw: unknown,
): ValidationResult<AiRecommendationPayload> {
  const errors: string[] = [];

  if (!isRecord(raw)) {
    return { valid: false, errors: ["response must be a JSON object"] };
  }

  if (!Array.isArray(raw.weak_areas) || raw.weak_areas.length === 0) {
    errors.push("weak_areas must be a non-empty array of strings");
  } else if (raw.weak_areas.some((a) => typeof a !== "string" || !a.trim())) {
    errors.push("weak_areas must contain non-empty strings");
  }

  if (typeof raw.study_tip !== "string" || raw.study_tip.trim().length < 8) {
    errors.push("study_tip must be a meaningful string");
  }

  if (typeof raw.encouragement !== "string" || !raw.encouragement.trim()) {
    errors.push("encouragement must be a non-empty string");
  }

  if (!Array.isArray(raw.recommended_sessions)) {
    errors.push("recommended_sessions must be an array");
  } else if (raw.recommended_sessions.length === 0) {
    errors.push("recommended_sessions must include at least one session");
  } else {
    for (let i = 0; i < raw.recommended_sessions.length; i += 1) {
      const session = raw.recommended_sessions[i];
      if (!isRecord(session)) {
        errors.push(`recommended_sessions[${i}] must be an object`);
        continue;
      }
      for (const key of [
        "title",
        "topic",
        "difficulty",
        "reason",
      ] as const) {
        if (typeof session[key] !== "string" || !session[key].trim()) {
          errors.push(`recommended_sessions[${i}].${key} must be a string`);
        }
      }
      if (
        typeof session.difficulty !== "string" ||
        !DIFFICULTIES.includes(
          session.difficulty as (typeof DIFFICULTIES)[number],
        )
      ) {
        errors.push(
          `recommended_sessions[${i}].difficulty must be easy|medium|hard`,
        );
      }
      if (
        typeof session.question_count !== "number" ||
        session.question_count < 1
      ) {
        errors.push(
          `recommended_sessions[${i}].question_count must be a positive number`,
        );
      }
      if (
        typeof session.estimated_minutes !== "number" ||
        session.estimated_minutes < 1
      ) {
        errors.push(
          `recommended_sessions[${i}].estimated_minutes must be a positive number`,
        );
      }
    }
  }

  if (errors.length > 0) {
    return { valid: false, errors };
  }

  return {
    valid: true,
    errors: [],
    data: raw as AiRecommendationPayload,
  };
}

export function validateQuestionResponse(
  input: QuestionValidationInput,
): QuestionValidationResult {
  return validateQuestion(input);
}
