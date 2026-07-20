"use client";

import { useEffect, useRef } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { isExamType } from "@/lib/examTypes";
import { courseTutorPath } from "@/lib/tutor/routes";
import { useSubjectStore } from "@/stores/subjectStore";

/**
 * Legacy `/dashboard/tutor?exam_type=…` links redirect to the per-course hub.
 *
 * Bare `/dashboard/tutor` (no query) is redirected by `ActiveExamScopeEffect`
 * once `activeSubject` is hydrated. Primary exam persistence + React Query
 * invalidation are also handled there when the store updates.
 */
export function TutorExamTypeSync() {
  const searchParams = useSearchParams();
  const router = useRouter();
  const setActiveSubject = useSubjectStore((s) => s.setActiveSubject);
  const syncedRef = useRef<string | null>(null);

  useEffect(() => {
    const raw = searchParams.get("exam_type");
    if (!raw || !isExamType(raw) || syncedRef.current === raw) return;

    syncedRef.current = raw;
    setActiveSubject(raw);
    router.replace(courseTutorPath(raw));
  }, [searchParams, setActiveSubject, router]);

  return null;
}
