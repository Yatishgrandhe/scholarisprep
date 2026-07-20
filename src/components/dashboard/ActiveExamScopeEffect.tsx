"use client";

import { useEffect, useRef } from "react";
import { usePathname, useRouter, useSearchParams } from "next/navigation";
import { useQueryClient } from "@tanstack/react-query";
import { createClient } from "@/lib/supabase/client";
import { isExamType } from "@/lib/examTypes";
import {
  dispatchExamScopeChange,
  examTypeFromDashboardPath,
} from "@/lib/dashboard/examScope";
import { courseTutorPath, isTutorRoute, TUTOR_PATH } from "@/lib/tutor/routes";
import { useAuth } from "@/hooks/useAuth";
import { useSubjectStore } from "@/stores/subjectStore";
import type { ExamType } from "@/types/supabase";

async function persistPrimaryExam(userId: string, examType: ExamType) {
  const supabase = createClient();
  await supabase
    .from("user_active_subjects")
    .update({ is_primary: false })
    .eq("user_id", userId);
  await supabase
    .from("user_active_subjects")
    .update({
      is_primary: true,
      updated_at: new Date().toISOString(),
    })
    .eq("user_id", userId)
    .eq("exam_type", examType);
  await supabase
    .from("profiles")
    .update({ exam_goal: examType })
    .eq("id", userId);
}

/** `/dashboard/tutor` only — not conversation deep links. */
function isBareTutorHub(pathname: string): boolean {
  return pathname === TUTOR_PATH || pathname === `${TUTOR_PATH}/`;
}

/**
 * Keeps global course context aligned with URL + subject switcher, and clears
 * client caches when the active exam changes so SAT data never bleeds into AP.
 *
 * Tutor sync (source of truth: `useSubjectStore.activeSubject`):
 * - URL → store when navigating to `/dashboard/courses/[courseId]/…`
 * - Store → URL on tutor routes when sidebar course ≠ path courseId
 * - Bare `/dashboard/tutor` → `courseTutorPath(activeSubject)`
 */
export function ActiveExamScopeEffect() {
  const pathname = usePathname() ?? "";
  const searchParams = useSearchParams();
  const router = useRouter();
  const queryClient = useQueryClient();
  const { user } = useAuth();
  const activeSubject = useSubjectStore((s) => s.activeSubject);
  const allSubjects = useSubjectStore((s) => s.allSubjects);
  const hydrated = useSubjectStore((s) => s.hydrated);
  const setActiveSubject = useSubjectStore((s) => s.setActiveSubject);
  const urlSyncedRef = useRef<string | null>(null);
  const prevExamRef = useRef<ExamType | null>(null);
  const prevPathExamRef = useRef<string | null>(null);
  const prevSubjectForTutorRef = useRef<ExamType | null>(null);
  /** Skip one URL→store write after we intentionally navigated from the store. */
  const storeDrivenTutorNavRef = useRef(false);

  // URL → store: course routes and legacy ?exam_type= links.
  // Only when the path/query course changes — do NOT overwrite a fresher
  // sidebar selection while still on the old tutor URL (store→URL handles that).
  useEffect(() => {
    const fromPath = examTypeFromDashboardPath(pathname);
    const fromQuery = searchParams.get("exam_type");
    const raw =
      fromPath ??
      (fromQuery && isExamType(fromQuery) ? fromQuery : null);

    if (!raw) {
      urlSyncedRef.current = null;
      return;
    }

    if (storeDrivenTutorNavRef.current) {
      // We just replaced the tutor URL to match the store — accept the new
      // path as synced without forcing setActiveSubject again.
      storeDrivenTutorNavRef.current = false;
      urlSyncedRef.current = raw;
      return;
    }

    if (urlSyncedRef.current === raw) return;

    urlSyncedRef.current = raw;
    setActiveSubject(raw);

    if (!user) return;
    const enrolled = allSubjects.some((s) => s.exam_type === raw);
    if (!enrolled) return;

    void (async () => {
      await persistPrimaryExam(user.id, raw);
      router.refresh();
    })();
  }, [pathname, searchParams, user, allSubjects, setActiveSubject, router]);

  // Store → tutor URL: sidebar course drives Ask Scho / Course Tutor hub.
  useEffect(() => {
    if (!hydrated || !activeSubject) return;
    if (!isTutorRoute(pathname)) {
      prevPathExamRef.current = examTypeFromDashboardPath(pathname);
      prevSubjectForTutorRef.current = activeSubject;
      return;
    }

    const pathExam = examTypeFromDashboardPath(pathname);
    const pathChanged = pathExam !== prevPathExamRef.current;
    const subjectChanged = activeSubject !== prevSubjectForTutorRef.current;

    prevPathExamRef.current = pathExam;
    prevSubjectForTutorRef.current = activeSubject;

    // Bare hub → per-course tutor (uses sidebar / persisted activeSubject).
    if (isBareTutorHub(pathname)) {
      storeDrivenTutorNavRef.current = true;
      router.replace(courseTutorPath(activeSubject));
      return;
    }

    // Sidebar changed while path course stayed put → navigate hub to new course.
    if (
      subjectChanged &&
      !pathChanged &&
      pathExam &&
      pathExam !== activeSubject
    ) {
      storeDrivenTutorNavRef.current = true;
      router.replace(courseTutorPath(activeSubject));
    }
  }, [activeSubject, pathname, hydrated, router]);

  // Store change → invalidate client caches + notify listeners.
  useEffect(() => {
    if (!activeSubject) return;
    if (prevExamRef.current === null) {
      prevExamRef.current = activeSubject;
      return;
    }
    if (prevExamRef.current === activeSubject) return;
    prevExamRef.current = activeSubject;

    void queryClient.invalidateQueries();
    dispatchExamScopeChange(activeSubject);
  }, [activeSubject, queryClient]);

  return null;
}
