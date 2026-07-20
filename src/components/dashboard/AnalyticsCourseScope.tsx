"use client";

import { useActiveExamType } from "@/hooks/useActiveExamType";
import { apIbDisplayName, isApOrIbExam } from "@/lib/apIbCatalog";
import { examFamilyLabel } from "@/lib/examFamily";
import styles from "@/app/dashboard/analytics/page.module.css";

/** Course label under the Analytics page title (updates with subject switcher). */
export function AnalyticsCourseScope() {
  const examType = useActiveExamType();
  const label = isApOrIbExam(examType)
    ? apIbDisplayName(examType)
    : examFamilyLabel(examType);

  return (
    <p className={styles.courseBadge} aria-live="polite">
      {label}
    </p>
  );
}
