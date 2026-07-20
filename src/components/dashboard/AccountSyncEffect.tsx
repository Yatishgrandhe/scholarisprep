"use client";

import { useEffect } from "react";
import { updateStoredAccount } from "@/lib/dashboard/userPreferences";
import { useAuth } from "@/hooks/useAuth";
import { useSubjectStore } from "@/stores/subjectStore";

/** Keeps cached account activeExam in sync with the subject switcher. */
export function AccountSyncEffect() {
  const { user } = useAuth();
  const activeSubject = useSubjectStore((s) => s.activeSubject);

  useEffect(() => {
    if (!user || !activeSubject) return;
    updateStoredAccount({ activeExam: activeSubject });
  }, [user, activeSubject]);

  return null;
}
