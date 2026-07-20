/**
 * Client-safe bundled blueprints (static JSON imports).
 * Server code may still read additional packs from disk via loadBlueprint.ts.
 */

import type { ExamBlueprint } from "./types";
import { blueprintTotals } from "./types";
import apBiology from "./AP_BIOLOGY.json";

const RAW: Record<string, ExamBlueprint> = {
  AP_BIOLOGY: apBiology as ExamBlueprint,
};

/** Blueprint JSON shipped in the bundle — works in the browser. */
export function getBundledBlueprint(examType: string): ExamBlueprint | null {
  const parsed = RAW[examType];
  if (!parsed?.modules?.length) return null;
  const totals = blueprintTotals(parsed.modules);
  return {
    ...parsed,
    examType: parsed.examType || examType,
    totalQuestions: parsed.totalQuestions || totals.totalQuestions,
    totalMinutes: parsed.totalMinutes || totals.totalMinutes,
  };
}
