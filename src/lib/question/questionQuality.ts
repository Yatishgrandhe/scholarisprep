import type { QuestionRow } from "@/lib/question/schema";
import type { QuestionOptionJson } from "@/lib/question/schema";
import { isMathSection } from "@/lib/question/isMathSection";

/** Grammar / conventions RW skills — no passage required (Digital SAT standalone stems). */
const GRAMMAR_RW_SKILL_IDS = new Set(["BOU", "FSS", "TRA", "SYN"]);

export type QuestionQualityIssue =
  | "empty_stem"
  | "too_few_choices"
  | "missing_stimulus"
  | "empty_option";

export type QuestionSourceMetadata = {
  /** Set by remix-opensat-questions.mjs */
  is_remixed?: boolean;
  remixed?: boolean;
  quality_score?: number;
  display_issues?: string[];
  remix_method?: string;
  opensat_index?: number;
  /** DSAT expansion — harder tier beyond standard hard items */
  challenged_problem?: boolean;
  difficulty_tier?: string;
  [key: string]: unknown;
};

export function parseSourceMetadata(
  raw: QuestionRow["source_metadata"],
): QuestionSourceMetadata {
  if (!raw || typeof raw !== "object" || Array.isArray(raw)) return {};
  return raw as QuestionSourceMetadata;
}

/** True when `source_metadata` marks a DSAT challenged problem. */
export function isChallengedProblem(
  raw: QuestionRow["source_metadata"] | QuestionSourceMetadata | undefined,
): boolean {
  const meta =
    raw && typeof raw === "object" && !Array.isArray(raw)
      ? (raw as QuestionSourceMetadata)
      : parseSourceMetadata(raw as QuestionRow["source_metadata"]);
  return (
    meta.challenged_problem === true || meta.difficulty_tier === "challenged"
  );
}

/** Parse `questions.options` whether stored as an array or legacy object map. */
export function normalizeOptionRows(row: QuestionRow): QuestionOptionJson[] {
  const raw = row.options;
  if (!raw) return [];
  if (Array.isArray(raw)) {
    return raw.map((entry, i) => {
      const o = entry as QuestionOptionJson | null | undefined;
      return {
        id: String(o?.id ?? ["A", "B", "C", "D"][i] ?? "A"),
        text: String(o?.text ?? ""),
        is_correct: Boolean(o?.is_correct),
        explanation: typeof o?.explanation === "string" ? o.explanation : undefined,
      };
    });
  }
  if (typeof raw === "object") {
    return Object.entries(raw as Record<string, unknown>).map(([id, val], i) => {
      if (typeof val === "string") {
        return { id, text: val };
      }
      if (val && typeof val === "object" && "text" in val) {
        const obj = val as QuestionOptionJson;
        return {
          id: String(obj.id ?? id),
          text: String(obj.text ?? ""),
          is_correct: obj.is_correct,
          explanation: obj.explanation,
        };
      }
      return { id, text: String(val ?? "") };
    });
  }
  return [];
}

function optionRows(row: QuestionRow): QuestionOptionJson[] {
  return normalizeOptionRows(row);
}

function isSatReadingWriting(row: QuestionRow): boolean {
  if (row.exam_type !== "SAT") return false;
  const section = (row.section ?? "").toLowerCase();
  return (
    section.includes("reading") ||
    section.includes("writing") ||
    section === "reading_writing"
  );
}

export function assessQuestionPlayability(row: QuestionRow): {
  playable: boolean;
  issues: QuestionQualityIssue[];
} {
  const issues: QuestionQualityIssue[] = [];
  const stem = row.question_text?.trim() ?? "";

  if (stem.length < 8) {
    issues.push("empty_stem");
  }

  const options = optionRows(row).filter((o) => o.text?.trim());
  if (options.length < 2) {
    issues.push("too_few_choices");
  }

  if (options.some((o) => !o.text?.trim())) {
    issues.push("empty_option");
  }

  // Light scans omit stimulus_text; defer passage checks to full question load.
  // Grammar skills (BOU/FSS/TRA/SYN) never require a separate passage.
  const grammarSkill =
    row.skill_id != null && GRAMMAR_RW_SKILL_IDS.has(row.skill_id);
  if (
    isSatReadingWriting(row) &&
    !grammarSkill &&
    row.stimulus_text !== undefined &&
    row.stimulus_text !== null &&
    !row.stimulus_text.trim()
  ) {
    const stemLower = row.question_text?.toLowerCase() ?? "";
    // Grammar / boundaries / transitions items often have no separate passage in OpenSAT.
    const standaloneRwStem =
      stemLower.includes("which choice") ||
      stemLower.includes("which sentence") ||
      stemLower.includes("which option") ||
      stemLower.includes("which finding") ||
      stemLower.includes("which response") ||
      stemLower.includes("which revision") ||
      stemLower.includes("which quotation") ||
      stemLower.includes("which statement") ||
      stemLower.includes("completes the text") ||
      stemLower.includes("most logically completes") ||
      stemLower.includes("best states") ||
      stemLower.includes("best describes") ||
      stemLower.includes("underlined portion") ||
      stemLower.includes("underlined word") ||
      stemLower.includes("highlighted sentence");
    if (!standaloneRwStem) {
      issues.push("missing_stimulus");
    }
  }

  return { playable: issues.length === 0, issues };
}

export function questionFetchScore(row: QuestionRow): number {
  const meta = parseSourceMetadata(row.source_metadata);
  let score = typeof meta.quality_score === "number" ? meta.quality_score : 50;

  if (meta.remixed === true || meta.is_remixed === true) {
    score += 100;
  }

  if (Array.isArray(meta.display_issues) && meta.display_issues.length > 0) {
    score -= meta.display_issues.length * 25;
  }

  const { playable, issues } = assessQuestionPlayability(row);
  if (!playable) {
    score -= 1000;
  } else {
    score -= issues.length * 5;
  }

  if (isMathSection(row.section) && row.stimulus_text?.trim()) {
    const words = row.stimulus_text.trim().split(/\s+/).length;
    if (words > 40) score -= 10;
  }

  return score;
}

export function sortQuestionsByFetchQuality<T extends QuestionRow>(
  rows: T[],
): T[] {
  return [...rows].sort((a, b) => questionFetchScore(b) - questionFetchScore(a));
}

export function filterPlayableQuestions<T extends QuestionRow>(rows: T[]): T[] {
  return rows.filter((row) => assessQuestionPlayability(row).playable);
}

/**
 * Lenient scan fallback when strict playability rejects every row (e.g. after
 * bulk regen with short stems or options stored in a legacy shape). Skips
 * passage checks — those run on full load via QUESTION_LOAD_SELECT.
 */
export function filterPlayableQuestionsLenient<T extends QuestionRow>(
  rows: T[],
): T[] {
  return rows.filter((row) => {
    const stem = row.question_text?.trim() ?? "";
    if (stem.length < 4) return false;
    const options = optionRows(row).filter((o) => o.text?.trim());
    return options.length >= 2;
  });
}

export function filterPlayableQuestionsWithFallback<T extends QuestionRow>(
  rows: T[],
): T[] {
  const strict = filterPlayableQuestions(rows);
  if (strict.length) return strict;
  return filterPlayableQuestionsLenient(rows);
}
