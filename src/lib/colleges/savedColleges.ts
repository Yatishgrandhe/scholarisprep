/**
 * Saved colleges are stored client-side in localStorage — scoped per active
 * exam so SAT bookmarks do not appear when browsing Campus Fit for another course.
 */
import type { ExamType } from "@/types/supabase";

const LEGACY_KEY = "scholaris:saved-colleges";
const EVENT = "scholaris:saved-colleges-change";

function storageKey(examType: ExamType): string {
  return `scholaris:saved-colleges:${examType}`;
}

export function getSavedColleges(examType: ExamType): string[] {
  if (typeof window === "undefined") return [];
  try {
    const raw =
      localStorage.getItem(storageKey(examType)) ??
      (examType === "SAT" ? localStorage.getItem(LEGACY_KEY) : null);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    return Array.isArray(parsed)
      ? parsed.filter((v): v is string => typeof v === "string")
      : [];
  } catch {
    return [];
  }
}

function write(examType: ExamType, ids: string[]): void {
  if (typeof window === "undefined") return;
  localStorage.setItem(storageKey(examType), JSON.stringify(ids));
  window.dispatchEvent(new CustomEvent(EVENT, { detail: { examType } }));
}

export function toggleSavedCollege(examType: ExamType, id: string): string[] {
  const current = getSavedColleges(examType);
  const next = current.includes(id)
    ? current.filter((x) => x !== id)
    : [...current, id];
  write(examType, next);
  return next;
}

/** Subscribe to saved-college changes (this tab and others). Returns unsubscribe. */
export function subscribeSavedColleges(
  examType: ExamType,
  cb: (ids: string[]) => void,
): () => void {
  if (typeof window === "undefined") return () => {};
  const handler = (event: Event) => {
    const detail = (event as CustomEvent<{ examType?: ExamType }>).detail;
    if (detail?.examType && detail.examType !== examType) return;
    cb(getSavedColleges(examType));
  };
  window.addEventListener(EVENT, handler);
  window.addEventListener("storage", handler);
  return () => {
    window.removeEventListener(EVENT, handler);
    window.removeEventListener("storage", handler);
  };
}
