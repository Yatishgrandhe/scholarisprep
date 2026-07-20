import type { FullExamMetadata } from "./metadata";

/** Index of RW Module 2 in a four-module full exam. */
export const RW_MODULE_2_SECTION_INDEX = 1;

/** Index of Math Module 1 after the RW → Math break. */
export const MATH_MODULE_1_SECTION_INDEX = 2;

export function isFullLengthExamMode(
  mode: FullExamMetadata["exam_mode"],
): boolean {
  return mode === "full" || mode === "simulator";
}

/** Whether completing this section should trigger the official RW → Math break. */
export function shouldOfferExamBreak(
  metadata: FullExamMetadata,
  completedSectionIndex: number,
): boolean {
  if (!isFullLengthExamMode(metadata.exam_mode)) return false;
  if (metadata.break_status) return false;
  const section = metadata.sections[completedSectionIndex];
  return section?.key === "rw_module_2";
}

export function breakSecondsRemaining(
  breakStartedAt: string | undefined,
  breakSeconds: number,
): number {
  if (!breakStartedAt) return breakSeconds;
  const elapsed = Math.floor(
    (Date.now() - new Date(breakStartedAt).getTime()) / 1000,
  );
  return Math.max(0, breakSeconds - elapsed);
}
