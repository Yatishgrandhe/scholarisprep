import { z } from "zod";
import { Constants, type ExamType } from "@/types/supabase";

/** All exam types from generated Supabase types (includes AP_*, PSAT, etc.). */
export const EXAM_TYPE_VALUES = Constants.public.Enums
  .exam_type as readonly ExamType[];

export const examTypeSchema = z.enum(
  EXAM_TYPE_VALUES as [ExamType, ...ExamType[]],
);

export function isExamType(value: string): value is ExamType {
  return (EXAM_TYPE_VALUES as readonly string[]).includes(value);
}
