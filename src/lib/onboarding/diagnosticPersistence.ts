import type { Question } from "@/components/question/QuestionInterface";
import type { SupabaseClient } from "@supabase/supabase-js";
import type { ExamType } from "@/types/supabase";
import type { Database } from "@/types/supabase";
import {
  questionFromRow,
  type DiagnosticAnswer,
} from "@/lib/onboarding/diagnostic";
import { QUESTION_LOAD_SELECT, asQuestionRows } from "@/lib/question/schema";

export const DIAGNOSTIC_LOCAL_PREFIX = "scholaris_onboarding_diagnostic_session";
export const DIAGNOSTIC_ACTIVE_PREFIX = "scholaris_onboarding_diagnostic_active";

const STORAGE_VERSION = 2 as const;
const LEGACY_STORAGE_VERSION = 1 as const;

export type DiagnosticLocalSession = {
  version: typeof STORAGE_VERSION;
  userId: string | null;
  sessionId: string;
  sessionSeed?: string;
  examType: ExamType;
  questions: Question[];
  answers: DiagnosticAnswer[];
  currentIndex: number;
  startedAt: string;
  updatedAt: string;
};

export type DiagnosticLocalSessionWrite = Omit<
  DiagnosticLocalSession,
  "version" | "updatedAt"
> & {
  version?: typeof STORAGE_VERSION;
  updatedAt?: string;
};

/** Active session pointer: `{userId|anon}:{examType}` → session UUID */
export function diagnosticActiveKey(
  userId: string | null,
  examType: ExamType,
): string {
  return `${DIAGNOSTIC_ACTIVE_PREFIX}:${userId ?? "anon"}:${examType}`;
}

/** Full session blob: `{userId|anon}:{sessionId}` */
export function diagnosticSessionKey(
  userId: string | null,
  sessionId: string,
): string {
  return `${DIAGNOSTIC_LOCAL_PREFIX}:${userId ?? "anon"}:${sessionId}`;
}

function canUseStorage(): boolean {
  return typeof window !== "undefined" && typeof localStorage !== "undefined";
}

function normalizeAnswers(raw: DiagnosticAnswer[]): DiagnosticAnswer[] {
  return raw.map((answer) => ({
    ...answer,
    checked:
      typeof answer.checked === "boolean"
        ? answer.checked
        : Boolean(answer.selectedOption),
  }));
}

function migrateStoredSession(raw: unknown): DiagnosticLocalSession | null {
  if (!raw || typeof raw !== "object") return null;

  const record = raw as DiagnosticLocalSession;
  if (
    record.version !== STORAGE_VERSION &&
    record.version !== LEGACY_STORAGE_VERSION
  ) {
    return null;
  }
  if (!record.sessionId || !Array.isArray(record.questions)) return null;

  const currentIndex =
    typeof record.currentIndex === "number" && Number.isFinite(record.currentIndex)
      ? Math.max(
          0,
          Math.min(record.currentIndex, Math.max(record.questions.length - 1, 0)),
        )
      : 0;

  return {
    ...record,
    version: STORAGE_VERSION,
    answers: normalizeAnswers(Array.isArray(record.answers) ? record.answers : []),
    currentIndex,
  };
}

export function readLocalDiagnosticSession(
  userId: string | null,
  examType: ExamType,
): DiagnosticLocalSession | null {
  if (!canUseStorage()) return null;

  try {
    const activeId = localStorage.getItem(diagnosticActiveKey(userId, examType));
    if (!activeId) return null;

    const raw = localStorage.getItem(diagnosticSessionKey(userId, activeId));
    if (!raw) return null;

    const parsed = migrateStoredSession(JSON.parse(raw));
    if (!parsed) return null;
    if (parsed.examType !== examType) return null;
    if (parsed.userId !== userId) return null;

    return parsed;
  } catch {
    return null;
  }
}

export function writeLocalDiagnosticSession(
  session: DiagnosticLocalSessionWrite,
): void {
  if (!canUseStorage()) return;

  const payload: DiagnosticLocalSession = {
    ...session,
    version: STORAGE_VERSION,
    updatedAt: new Date().toISOString(),
  };

  try {
    localStorage.setItem(
      diagnosticSessionKey(session.userId, session.sessionId),
      JSON.stringify(payload),
    );
    localStorage.setItem(
      diagnosticActiveKey(session.userId, session.examType),
      session.sessionId,
    );
  } catch {
    /* quota or private mode */
  }
}

export function clearLocalDiagnosticSession(
  userId: string | null,
  examType: ExamType,
  sessionId: string,
): void {
  if (!canUseStorage()) return;

  try {
    localStorage.removeItem(diagnosticActiveKey(userId, examType));
    localStorage.removeItem(diagnosticSessionKey(userId, sessionId));
  } catch {
    /* ignore */
  }
}

type QuestionRow = Database["public"]["Tables"]["questions"]["Row"];

export type ResumedCloudDiagnostic = {
  sessionId: string;
  sessionSeed?: string;
  questions: Question[];
  answers: DiagnosticAnswer[];
  currentIndex: number;
};

function answersFromSessionItems(
  questions: Question[],
  items: Database["public"]["Tables"]["diagnostic_session_items"]["Row"][],
): DiagnosticAnswer[] {
  const byQuestionId = new Map(items.map((item) => [item.question_id, item]));
  const answers: DiagnosticAnswer[] = [];

  for (const question of questions) {
    const item = byQuestionId.get(question.id);
    if (!item?.selected_option_id) continue;

    answers.push({
      questionId: question.id,
      topic: question.topic,
      section: question.section,
      isCorrect: item.is_correct ?? false,
      selectedOption: item.selected_option_id,
      checked: true,
      timeSpentSeconds: item.time_spent_seconds ?? undefined,
    });
  }

  return answers;
}

/** Resume from Supabase when a diagnostic exam_session is still in progress. */
export async function loadIncompleteCloudDiagnostic(
  supabase: SupabaseClient<Database>,
  userId: string,
  examType: ExamType,
): Promise<ResumedCloudDiagnostic | null> {
  const { data: session } = await supabase
    .from("exam_sessions")
    .select(
      "id, question_order, current_question_index, session_state, metadata",
    )
    .eq("user_id", userId)
    .eq("session_type", "diagnostic")
    .eq("exam_type", examType)
    .in("status", ["in_progress", "paused"])
    .order("started_at", { ascending: false })
    .limit(1)
    .maybeSingle();

  const order = session?.question_order;
  if (!session?.id || !order?.length) return null;

  const { data: rows } = await supabase
    .from("questions")
    .select(QUESTION_LOAD_SELECT)
    .in("id", order);

  if (!rows?.length) return null;

  const questionRows = asQuestionRows(rows);
  const byId = new Map(questionRows.map((row) => [row.id, row]));
  const questions = order
    .map((id) => {
      const row = byId.get(id);
      return row ? questionFromRow(row) : null;
    })
    .filter((q): q is Question => q !== null);

  if (questions.length === 0) return null;

  const { data: items } = await supabase
    .from("diagnostic_session_items")
    .select("*")
    .eq("session_id", session.id)
    .order("position", { ascending: true });

  const answers = answersFromSessionItems(questions, items ?? []);
  const answeredPositions = new Set(
    (items ?? [])
      .filter((item) => item.selected_option_id)
      .map((item) => item.position),
  );

  let currentIndex = session.current_question_index ?? 0;
  if (answeredPositions.size > 0) {
    const maxAnswered = Math.max(...answeredPositions);
    currentIndex = Math.min(maxAnswered + 1, questions.length - 1);
  }
  currentIndex = Math.max(0, Math.min(currentIndex, questions.length - 1));

  const state = session.session_state as Record<string, unknown> | null;
  const sessionSeed =
    typeof state?.session_seed === "string"
      ? state.session_seed
      : typeof session.metadata === "object" &&
          session.metadata !== null &&
          "session_seed" in (session.metadata as Record<string, unknown>)
        ? String((session.metadata as Record<string, unknown>).session_seed)
        : undefined;

  return {
    sessionId: session.id,
    sessionSeed,
    questions,
    answers,
    currentIndex,
  };
}
