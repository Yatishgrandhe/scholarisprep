/**
 * Shared FRQ / SAQ / DBQ / LEQ grading helpers for practice + exam + grade-frq API.
 */
import { isApExamType, isIbExamType } from "@/lib/apIbCatalog";

export type RubricCriterionScore = {
  id: string;
  points_earned: number;
  points_possible: number;
  note?: string;
};

type RubricPoint = {
  id?: string;
  name?: string;
  points?: number;
  /** IB bank rubrics use max_points on each criterion. */
  max_points?: number;
  desc?: string;
  description?: string;
  /** IB/AP bank rubrics use descriptors — string or object { "1": "...", "2": "..." }. */
  descriptors?: string | Record<string, string>;
};

function criterionPoints(p: RubricPoint): number {
  if (typeof p.points === "number" && p.points > 0) return p.points;
  if (typeof p.max_points === "number" && p.max_points > 0) return p.max_points;
  return 0;
}

function criterionDesc(p: RubricPoint): string {
  const raw = p.desc ?? p.description ?? p.name ?? "";
  // Handle descriptors as object (AP style: { "1": "...", "2": "..." })
  if (typeof p.descriptors === "object" && p.descriptors !== null && !Array.isArray(p.descriptors)) {
    const entries = Object.entries(p.descriptors as Record<string, string>)
      .map(([k, v]) => `${k} pts: ${v}`)
      .join("; ");
    return entries || raw.trim();
  }
  const str = typeof p.descriptors === "string" ? p.descriptors : raw;
  return str.trim();
}

function criterionList(rubric: object): RubricPoint[] | null {
  const obj = rubric as { points?: RubricPoint[]; criteria?: RubricPoint[] };
  if (Array.isArray(obj.points) && obj.points.length) return obj.points;
  if (Array.isArray(obj.criteria) && obj.criteria.length) return obj.criteria;
  if (Array.isArray(rubric) && (rubric as RubricPoint[]).length) {
    return rubric as RubricPoint[];
  }
  return null;
}

/** Coerce DB jsonb or string rubric into grader-ready text. */
export function formatRubricForGrader(rubric: unknown): string | undefined {
  if (rubric == null) return undefined;
  if (typeof rubric === "string") {
    const trimmed = rubric.trim();
    return trimmed || undefined;
  }
  if (typeof rubric !== "object") return undefined;

  const points = criterionList(rubric);

  if (points?.length) {
    return points
      .map((p, i) => {
        const id = p.id?.trim() || `criterion_${i + 1}`;
        const pts = criterionPoints(p);
        const desc = criterionDesc(p);
        // Handle descriptors as object (AP style: { "1": "...", "2": "..." })
        if (typeof p.descriptors === "object" && p.descriptors !== null && !Array.isArray(p.descriptors)) {
          const entries = Object.entries(p.descriptors as Record<string, string>)
            .map(([k, v]) => `  ${k} pts: ${v}`)
            .join("\n");
          return `${id} (${pts} pt${pts === 1 ? "" : "s"}):\n${entries}`;
        }
        return `${id} (${pts} pt${pts === 1 ? "" : "s"}): ${desc}`;
      })
      .join("\n");
  }

  try {
    return JSON.stringify(rubric);
  } catch {
    return undefined;
  }
}

function subtypeKey(
  questionSubtype?: string | null,
  section?: string | null,
): string {
  return `${questionSubtype ?? ""} ${section ?? ""}`.toLowerCase();
}

/**
 * Resolve FRQ max points: bank max (esp. IB) → AP SAQ/DBQ/LEQ defaults → rubric → 4.
 */
export function resolveFrqMaxPoints(opts: {
  max_points?: number | null;
  question_subtype?: string | null;
  section?: string | null;
  exam_type?: string | null;
  rubric?: unknown;
}): number {
  const bank =
    typeof opts.max_points === "number" && opts.max_points > 0
      ? Math.round(opts.max_points)
      : null;

  // IB: always prefer bank max when present.
  if (opts.exam_type && isIbExamType(opts.exam_type) && bank != null) {
    return Math.min(40, Math.max(1, bank));
  }

  if (bank != null) {
    return Math.min(40, Math.max(1, bank));
  }

  const key = subtypeKey(opts.question_subtype, opts.section);
  if (/\bsaq\b/.test(key) || key.includes("short_answer")) return 3;
  if (/\bdbq\b/.test(key)) return 7;
  if (/\bleq\b/.test(key)) return 6;

  if (opts.rubric && typeof opts.rubric === "object") {
    const mp = (opts.rubric as { max_points?: unknown }).max_points;
    if (typeof mp === "number" && mp > 0) {
      return Math.min(40, Math.max(1, Math.round(mp)));
    }
    const points = criterionList(opts.rubric);
    if (points?.length) {
      const sum = points.reduce((acc, p) => acc + criterionPoints(p), 0);
      if (sum > 0) return Math.min(40, Math.max(1, Math.round(sum)));
    }
  }

  return 4;
}

/** Exam/subtype-aware grader system prompt extras. */
export function frqGraderScaleHint(opts: {
  exam_type: string;
  question_subtype?: string | null;
  section?: string | null;
  max_points: number;
}): string {
  const { exam_type, max_points } = opts;
  const key = subtypeKey(opts.question_subtype, opts.section);

  if (isApExamType(exam_type)) {
    if (/\bsaq\b/.test(key)) {
      return `This is an AP Short-Answer Question (SAQ). Score on a 0–${max_points} scale (typically 0–3, one point per part). Award points only for historically/analytically accurate, task-specific claims.`;
    }
    if (/\bdbq\b/.test(key)) {
      return `This is an AP Document-Based Question (DBQ). Score on the College Board 0–${max_points} rubric (typically 0–7): thesis, contextualization, evidence, sourcing, complexity as applicable.`;
    }
    if (/\bleq\b/.test(key)) {
      return `This is an AP Long Essay Question (LEQ). Score on the College Board 0–${max_points} rubric (typically 0–6): thesis, contextualization, evidence, analysis/reasoning, complexity as applicable.`;
    }
    return `This is an AP free-response item. Score 0–${max_points} using the provided rubric / model answer.`;
  }

  if (isIbExamType(exam_type)) {
    if (exam_type === "IB_TOK") {
      if (key.includes("exhibition") || key.includes("part_1")) {
        return `This is an IB TOK Exhibition response. Holistic driving question: Does the exhibition successfully show how TOK manifests in the world around us? Score 0–${max_points} (official scale /10). Prefer the bank's TOK_exhibition_v1 criteria (objects/context, links to prompt, justification, evidence). Award criterion partial credit; final score should reflect global impression.`;
      }
      return `This is an IB TOK Essay response. Holistic driving question: Does the student present an appropriate and cogent analysis of knowledge questions in discussing the title? Score 0–${max_points} (official scale /10). Prefer TOK_essay_v1 criteria (KQ focus, AOK/theme, arguments/counterclaims, examples/implications).`;
    }
    if (exam_type === "IB_EE") {
      return `This is an IB Extended Essay checkpoint/response. Score 0–${max_points} using official EE criteria A–E (A Focus & method /6, B Knowledge & understanding /6, C Critical thinking /12, D Presentation /4, E Engagement /6; total 34). For short process scaffolds, award only criteria that are evidenced; leave others at 0. Prefer EE_criteria_v1 rubric_scores.`;
    }
    if (
      /IB_(FILM|MUSIC|THEATRE|DANCE|VISUAL_ARTS)/.test(exam_type)
    ) {
      return `This is an IB Group 6 arts portfolio/process free-response. Score 0–${max_points} using the subject portfolio rubric (analysis, process/creation, context, reflection). Prefer criterion-level partial credit.`;
    }
    return `This is an IB free-response / constructed-response item. Use the bank rubric and award an integer score from 0 to ${max_points} (course markscheme scale). Prefer criterion-level partial credit over a binary pass/fail.`;
  }

  return `Score the response from 0 to ${max_points} against the rubric / model answer.`;
}

export function modelAnswerFromOptions(
  options: Array<{ id: string; text: string | Record<string, string>; is_correct?: boolean }>,
): string | undefined {
  const model = options.find((o) => o.id === "MODEL" || o.id.toUpperCase() === "MODEL");
  const raw = model?.text;
  if (!raw) return undefined;
  // Handle object model answers like {"a": "...", "b": "..."}
  if (typeof raw === "object" && !Array.isArray(raw)) {
    return Object.entries(raw)
      .map(([k, v]) => `(${k}) ${v}`)
      .join("\n");
  }
  return String(raw).trim() || undefined;
}

export type FrqScoreState = "full" | "partial" | "zero";

export function frqScoreState(score: number, maxPoints: number): FrqScoreState {
  if (score <= 0) return "zero";
  if (score >= maxPoints) return "full";
  return "partial";
}

/* ------------------------------------------------------------------ */
/*  Multi-part FRQ parsing                                            */
/* ------------------------------------------------------------------ */

export type FrqPart = {
  id: string;
  label: string;
  prompt: string;
};

/**
 * Detect labeled parts in an FRQ question_text.
 * Matches patterns like "(a) ...", "(b) ...", etc. at the start of a line
 * or after a newline. Returns empty array if no parts found.
 */
export function parseFrqParts(questionText: string): FrqPart[] {
  if (!questionText) return [];

  const partRegex = /\(([a-z])\)\s*/g;
  const matches: Array<{ id: string; label: string; index: number }> = [];
  let m: RegExpExecArray | null;

  while ((m = partRegex.exec(questionText)) !== null) {
    matches.push({ id: m[1], label: `(${m[1]})`, index: m.index });
  }

  if (matches.length < 2) return [];

  return matches.map((match, i) => {
    const nextIndex = i < matches.length - 1 ? matches[i + 1].index : questionText.length;
    const raw = questionText.slice(match.index + match.label.length, nextIndex).trim();
    const prompt = raw.replace(/\n\s*/g, " ").trim();
    return { id: match.id, label: match.label, prompt };
  });
}

/**
 * Merge part answers into a single graded response string.
 * Format: "(a) [answer]\n(b) [answer]\n(c) [answer]"
 */
export function mergeFrqPartAnswers(parts: Record<string, string>): string {
  return Object.entries(parts)
    .filter(([, v]) => v.trim())
    .map(([k, v]) => `(${k}) ${v.trim()}`)
    .join("\n");
}
