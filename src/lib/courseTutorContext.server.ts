import { readFile } from "node:fs/promises";
import { join } from "node:path";
import {
  generateTutorPreloadBlock,
  getApIbCourse,
  isApOrIbExam,
  resolveCanonicalExamType,
} from "@/lib/apIbCatalog";
import type { SubjectConfig } from "@/lib/subjectContext";
import {
  buildSuggestionsFromPreload,
  buildTutorEmptyLead,
  buildTutorGreeting,
  displayNameForCourse,
  familyForExam,
  formatPreloadJson,
  formatSubjectConfigPreload,
  genericApIbSuggestions,
  type CourseTutorContext,
  type TutorPreloadJson,
} from "@/lib/courseTutorContext";

export type { CourseTutorContext, TutorPreloadJson } from "@/lib/courseTutorContext";

const PRELOAD_DIR = join(process.cwd(), "src/data/tutor-preload");

/** Read preload JSON from src/data/tutor-preload (Vercel-safe). */
export async function loadTutorPreloadJson(
  examType: string,
): Promise<TutorPreloadJson | null> {
  const candidates = [examType, resolveCanonicalExamType(examType)];
  const seen = new Set<string>();

  for (const candidate of candidates) {
    if (!candidate || seen.has(candidate)) continue;
    seen.add(candidate);
    try {
      const raw = await readFile(join(PRELOAD_DIR, `${candidate}.json`), "utf8");
      return JSON.parse(raw) as TutorPreloadJson;
    } catch {
      // Try next candidate.
    }
  }
  return null;
}

/**
 * Resolve full course tutor context (system preload + UI starters).
 * Use from API routes and server-only callers.
 */
export async function resolveCourseTutorContext(
  examType: string,
  subjectConfig?: SubjectConfig | null,
): Promise<CourseTutorContext> {
  const canonicalExamType = resolveCanonicalExamType(examType);
  const catalog =
    getApIbCourse(canonicalExamType) ?? getApIbCourse(examType) ?? undefined;
  const preload = await loadTutorPreloadJson(examType);
  const displayName = displayNameForCourse(
    canonicalExamType,
    preload,
    catalog,
    subjectConfig,
  );

  let systemPreload = "";
  if (preload) {
    systemPreload = formatPreloadJson(preload, canonicalExamType);
  } else if (subjectConfig) {
    systemPreload = formatSubjectConfigPreload(subjectConfig);
  } else if (isApOrIbExam(canonicalExamType)) {
    systemPreload = generateTutorPreloadBlock(canonicalExamType);
  }

  const suggestions =
    preload && isApOrIbExam(canonicalExamType)
      ? buildSuggestionsFromPreload(preload, displayName, catalog)
      : isApOrIbExam(canonicalExamType)
        ? genericApIbSuggestions(displayName)
        : [];

  return {
    examType,
    canonicalExamType,
    displayName,
    family: familyForExam(canonicalExamType),
    systemPreload,
    suggestions,
    greeting: buildTutorGreeting(canonicalExamType, displayName),
    emptyLead: buildTutorEmptyLead(displayName),
    hasPreloadFile: Boolean(preload),
  };
}

/** System prompt block for Scho — used by tutor chat routes. */
export async function resolveCoursePreloadBlock(
  examType: string,
  subjectConfig?: SubjectConfig | null,
): Promise<string> {
  const ctx = await resolveCourseTutorContext(examType, subjectConfig);
  return ctx.systemPreload;
}
