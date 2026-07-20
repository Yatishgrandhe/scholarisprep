/**
 * Per-course Scho tutor context (client-safe helpers + types).
 * Server preload loading lives in `courseTutorContext.server.ts`.
 */
import {
  apIbDisplayName,
  catalogEntryForExam,
  generateTutorPreloadBlock,
  getApIbCourse,
  isApExamType,
  isIbExamType,
  isApOrIbExam,
  resolveCanonicalExamType,
  type ApIbCatalogCourse,
} from "@/lib/apIbCatalog";
import type { SubjectConfig } from "@/lib/subjectContext";

export type TutorSuggestion = { lead: string; text: string };

export type TutorPreloadUnitSummary = {
  unit_code?: string;
  unit_name?: string;
  unit_order?: number;
  weight_hint?: number;
  quota?: number;
  topics?: string[];
};

export type TutorPreloadJson = {
  exam_type?: string;
  display_name?: string;
  family?: string;
  units?: string[];
  units_summary?: TutorPreloadUnitSummary[];
  command_terms?: string[];
  misconceptions?: string[];
  paper_rules?: string[];
  calculator_policy?: string | Record<string, unknown>;
  calculator?: string;
  scoring_notes?: string[];
  remix_cues?: string[];
  explanation_standards?: string[];
  reference_sheet?: string;
  extra?: string;
};

export type CourseTutorContext = {
  examType: string;
  canonicalExamType: string;
  displayName: string;
  family: "AP" | "IB" | null;
  systemPreload: string;
  suggestions: TutorSuggestion[];
  greeting: string;
  emptyLead: string;
  hasPreloadFile: boolean;
};

export function unitTitlesFromPreload(data: TutorPreloadJson): string[] {
  if (Array.isArray(data.units_summary) && data.units_summary.length > 0) {
    return data.units_summary
      .map((u) => u.unit_name?.trim())
      .filter((name): name is string => Boolean(name));
  }
  if (Array.isArray(data.units) && data.units.length > 0) {
    return data.units.filter((u): u is string => typeof u === "string" && u.trim().length > 0);
  }
  return [];
}

function formatCalculatorPolicy(
  policy: TutorPreloadJson["calculator_policy"],
  fallback?: string,
): string | null {
  if (typeof policy === "string" && policy.trim()) return policy.trim();
  if (policy && typeof policy === "object") {
    const obj = policy as {
      default?: string;
      notes?: string;
    };
    const parts = [obj.default, obj.notes].filter(Boolean);
    if (parts.length) return parts.join(" — ");
  }
  if (fallback?.trim()) return fallback.trim();
  return null;
}

export function formatPreloadJson(data: TutorPreloadJson, examType: string): string {
  const lines: string[] = [
    `COURSE PRELOAD (${data.display_name ?? apIbDisplayName(examType)}):`,
  ];

  const titles = unitTitlesFromPreload(data);
  if (titles.length) {
    lines.push(`Units: ${titles.slice(0, 40).join("; ")}`);
  }

  if (data.command_terms?.length) {
    lines.push(`Command terms: ${data.command_terms.join(", ")}`);
  }
  if (data.misconceptions?.length) {
    lines.push(
      `Common misconceptions: ${data.misconceptions.slice(0, 12).join("; ")}`,
    );
  }
  if (data.paper_rules?.length) {
    lines.push(`Paper / section rules: ${data.paper_rules.join("; ")}`);
  }

  const calc = formatCalculatorPolicy(data.calculator_policy, data.calculator);
  if (calc) lines.push(`Calculator: ${calc}`);

  if (data.scoring_notes?.length) {
    lines.push(`Scoring: ${data.scoring_notes.join("; ")}`);
  }
  if (data.explanation_standards?.length) {
    lines.push(`Explanation standards: ${data.explanation_standards.join("; ")}`);
  }
  if (data.reference_sheet?.trim()) {
    lines.push(`Reference sheet: ${data.reference_sheet.trim()}`);
  }
  if (data.remix_cues?.length) {
    lines.push(`Skill cues: ${data.remix_cues.slice(0, 10).join("; ")}`);
  }
  if (data.extra?.trim()) {
    lines.push(data.extra.trim());
  }

  return lines.join("\n");
}

export function formatSubjectConfigPreload(config: SubjectConfig): string {
  const entry = catalogEntryForExam(config.exam_type);
  return [
    `COURSE: ${config.display_name} (${config.exam_type})`,
    `Sections: ${config.sections.join(", ") || "standard"}`,
    `Topics: ${config.topics.slice(0, 24).join(", ") || "see outline"}`,
    `Score range: ${config.score_range.min}–${config.score_range.max}`,
    config.passing_score != null
      ? `Passing/target reference: ${config.passing_score}`
      : null,
    `Calculator policy: ${config.calculator_policy}`,
    `Formats: ${config.question_formats.join(", ") || "multiple_choice"}`,
    entry?.tutor_blurb ?? null,
  ]
    .filter(Boolean)
    .join("\n");
}

export function familyForExam(examType: string): "AP" | "IB" | null {
  if (isApExamType(examType)) return "AP";
  if (isIbExamType(examType)) return "IB";
  return null;
}

export function displayNameForCourse(
  examType: string,
  preload?: TutorPreloadJson | null,
  catalog?: ApIbCatalogCourse,
  subjectConfig?: SubjectConfig | null,
): string {
  return (
    preload?.display_name?.trim() ||
    subjectConfig?.display_name ||
    catalog?.display_name ||
    apIbDisplayName(examType)
  );
}

export function genericApIbSuggestions(label: string): TutorSuggestion[] {
  return [
    { lead: "Quiz me", text: `on the toughest unit in ${label}` },
    { lead: "Explain", text: "a concept I keep missing on practice FRQs" },
    { lead: "Help me study", text: "for my next unit test" },
    {
      lead: "Walk me through",
      text: "how to structure a strong free-response answer",
    },
    {
      lead: "Show me",
      text: "common mistakes on this course's multiple-choice",
    },
  ];
}

export function buildSuggestionsFromPreload(
  data: TutorPreloadJson,
  label: string,
  catalog?: ApIbCatalogCourse,
): TutorSuggestion[] {
  const suggestions: TutorSuggestion[] = [];
  const titles = unitTitlesFromPreload(data);

  if (titles[0]) {
    suggestions.push({
      lead: "Quiz me",
      text: `on ${titles[0]} with exam-style questions`,
    });
  }
  if (titles[1]) {
    suggestions.push({
      lead: "Help me study",
      text: `for ${titles[1]} before my next test`,
    });
  }

  const misconception = data.misconceptions?.find((m) => m.trim().length > 8);
  if (misconception) {
    const short =
      misconception.length > 72 ? `${misconception.slice(0, 69).trimEnd()}…` : misconception;
    suggestions.push({
      lead: "Explain",
      text: `why students confuse "${short}"`,
    });
  }

  const commandTerm = data.command_terms?.find((t) => t.trim().length > 2);
  if (commandTerm) {
    suggestions.push({
      lead: "Walk me through",
      text: `how to answer a "${commandTerm}" free-response prompt`,
    });
  }

  const paperRule = data.paper_rules?.find((r) => r.trim().length > 12);
  if (paperRule) {
    const short =
      paperRule.length > 64 ? `${paperRule.slice(0, 61).trimEnd()}…` : paperRule;
    suggestions.push({
      lead: "Show me",
      text: `what examiners expect for: ${short}`,
    });
  }

  if (catalog?.question_formats.includes("free_response")) {
    suggestions.push({
      lead: "Grade my work",
      text: `using ${label} FRQ rubric language`,
    });
  }

  if (suggestions.length >= 4) return suggestions.slice(0, 5);
  return [...suggestions, ...genericApIbSuggestions(label)].slice(0, 5);
}

export function buildTutorGreeting(examType: string, label: string): string {
  if (isApOrIbExam(examType)) {
    return `Hi! I'm Scho, your AI tutor. Ask me anything about ${label}.`;
  }
  return "Hi! I'm Scho, your AI tutor. Ask me anything about SAT, ACT, or your study plan.";
}

export function buildTutorEmptyLead(label: string): string {
  return `Ask me anything about ${label}`;
}

/** Sync catalog-only context (safe in client bundles — no filesystem). */
export function getCourseTutorContextFallback(examType: string): CourseTutorContext {
  const canonicalExamType = resolveCanonicalExamType(examType);
  const catalog = getApIbCourse(canonicalExamType) ?? getApIbCourse(examType);
  const displayName = displayNameForCourse(examType, null, catalog);
  const systemPreload = isApOrIbExam(canonicalExamType)
    ? generateTutorPreloadBlock(canonicalExamType)
    : "";

  return {
    examType,
    canonicalExamType,
    displayName,
    family: familyForExam(canonicalExamType),
    systemPreload,
    suggestions: isApOrIbExam(canonicalExamType)
      ? genericApIbSuggestions(displayName)
      : [],
    greeting: buildTutorGreeting(canonicalExamType, displayName),
    emptyLead: buildTutorEmptyLead(displayName),
    hasPreloadFile: false,
  };
}
