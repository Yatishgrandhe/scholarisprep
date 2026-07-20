"use client";

import { useAuth } from "@/hooks/useAuth";
import { useSubjectStore } from "@/stores/subjectStore";
import type { ExamType } from "@/types/supabase";

/** Active exam from Zustand subject switcher, else profile exam_goal. */
export function useActiveExamType(): ExamType {
  const activeSubject = useSubjectStore((s) => s.activeSubject);
  const { profile } = useAuth();
  return activeSubject ?? profile?.exam_goal ?? "SAT";
}
