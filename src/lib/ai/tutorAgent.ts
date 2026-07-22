/**
 * Scholaris course-aware tutor agent (LangChain tool-calling loop).
 *
 * Owns the Scho tutoring agent surface used by `POST /api/ai/tutor`:
 * - Course-scoped system prompt (assembled by the route via `buildTutorPrompt`)
 * - Course-aware tools (`web_search` biased to the active exam/course)
 * - Bounded tool-calling rounds via `streamWithTools`
 * - User-facing error strings (never leak raw stack traces)
 *
 * Flow: route validates/auth → builds course prompt + history →
 * `streamTutorAgent` → SSE tokens / search status → persist assistant turn.
 */
import type { StructuredToolInterface } from "@langchain/core/tools";
import {
  streamWithTools,
  TUTOR_STOP_SEQUENCES,
  type AgentEvent,
  type AiAuth,
  type ChatTurn,
} from "@/lib/ai/mistral";
import { makeWebSearchTool } from "@/lib/ai/tools";
import { apIbDisplayName, isApOrIbExam } from "@/lib/apIbCatalog";
import { isExamType } from "@/lib/examTypes";

export type { AgentEvent };

export type TutorAgentParams = {
  ai: AiAuth;
  /** Full system prompt from `buildTutorPrompt` (+ preload / performance). */
  systemPrompt: string;
  messages: ChatTurn[];
  /** Active exam_type slug (SAT, AP_CALCULUS_AB, …). */
  examType?: string | null;
  temperature?: number;
  maxTokens?: number;
  maxRounds?: number;
};

function courseLabel(examType: string | null | undefined): string {
  if (!examType) return "the student's exam";
  if (isApOrIbExam(examType)) return apIbDisplayName(examType);
  if (isExamType(examType)) return examType;
  return examType.replace(/_/g, " ");
}

/**
 * Tool-use guidance appended to the course system prompt.
 * Keeps search on-policy for Scholaris tutoring (not generic chatbot browse).
 */
export function buildTutorToolHint(examType?: string | null): string {
  const label = courseLabel(examType);
  return (
    `\n\nTOOLS — course-aware tutoring for ${label}:\n` +
    `- You may call \`web_search\` ONLY when you need current or uncertain facts ` +
    `(test dates/policies, college data, statistics, scoring updates).\n` +
    `- NEVER search for: basic arithmetic (2+2, 3×5, 10/2), algebra, calculus, ` +
    `physics formulas, definitions, or any concept you already know. Answer directly.\n` +
    `- Prefer course/exam-specific queries (include "${label}" or the official ` +
    `exam name when relevant).\n` +
    `- For concepts, worked examples, and strategy you already know for this ` +
    `course, answer directly — do not search.\n` +
    `- After searching, ground the answer in the results and mention the source.`
  );
}

/** LangChain tools scoped to the active Scholaris course/exam. */
export function tutorToolsForCourse(
  examType?: string | null,
  onSearch?: (query: string) => void,
): StructuredToolInterface[] {
  const label = courseLabel(examType);
  return [
    makeWebSearchTool(onSearch, {
      description:
        `Search the live internet for current, factual, or up-to-date ` +
        `information relevant to tutoring ${label} on Scholaris. Use for recent ` +
        `test dates/policies, college info, statistics, or anything you are not ` +
        `certain about. Prefer queries that mention ${label} (or its official ` +
        `exam name) when the topic is course-specific. Returns ranked results ` +
        `with titles, URLs, and snippets — read and cite them in your answer.`,
      queryDescribe: `A focused search query, e.g. '${label} exam format 2026' or 'College Board AP Calculus AB CED units'.`,
    }),
  ];
}

/** Stream Scho's course-aware tool-calling agent. */
export function streamTutorAgent(
  params: TutorAgentParams,
): AsyncGenerator<AgentEvent> {
  const {
    ai,
    systemPrompt,
    messages,
    examType = null,
    temperature = 0.6,
    maxTokens = 650,
    maxRounds = 2,
  } = params;

  return streamWithTools(ai, {
    system: systemPrompt + buildTutorToolHint(examType),
    messages,
    tools: tutorToolsForCourse(examType),
    temperature,
    maxTokens,
    maxRounds,
    stop: TUTOR_STOP_SEQUENCES,
  });
}

/** Safe user-facing message when the agent/model fails mid-stream. */
export function formatTutorAgentError(err: unknown): string {
  const detail =
    err instanceof Error ? `${err.name}: ${err.message}` : String(err);
  // Keep enough detail for support without dumping stacks.
  const clipped = detail.length > 240 ? `${detail.slice(0, 240)}…` : detail;
  return `Tutor model error — ${clipped}`;
}

/** Safe user-facing message for unexpected route-level failures. */
export function formatTutorRouteError(err: unknown): string {
  const detail =
    err instanceof Error ? `${err.name}: ${err.message}` : String(err);
  const clipped = detail.length > 240 ? `${detail.slice(0, 240)}…` : detail;
  return `Tutor unavailable — ${clipped}`;
}
