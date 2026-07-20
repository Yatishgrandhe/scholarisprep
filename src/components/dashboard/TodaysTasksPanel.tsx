"use client";

import { useState } from "react";
import Link from "next/link";
import { createClient } from "@/lib/supabase/client";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import {
  getTodaysTasks,
  parseStudyPlanData,
  toggleTaskInPlan,
  type StudyPlanData,
} from "@/lib/dashboard/studyPlan";
import styles from "./study-plan.module.css";

type TodaysTasksPanelProps = {
  hasStudyPlan: boolean;
  initialPlanData: unknown;
  userId: string;
};

export function TodaysTasksPanel({
  hasStudyPlan,
  initialPlanData,
  userId,
}: TodaysTasksPanelProps) {
  const examType = useActiveExamType();
  const [plan, setPlan] = useState<StudyPlanData | null>(() =>
    hasStudyPlan ? parseStudyPlanData(initialPlanData) : null,
  );
  const [savingId, setSavingId] = useState<string | null>(null);

  if (!hasStudyPlan || !plan) {
    return (
      <div className={styles.panel}>
        <p className={styles.cardTitle}>Today&apos;s tasks</p>
        <p className={styles.mutedText}>
          No study plan yet.{" "}
          <Link href="/dashboard/study-plan" className={styles.planLink}>
            Create your plan →
          </Link>
        </p>
      </div>
    );
  }

  const tasks = getTodaysTasks(plan);

  const toggleTask = async (taskId: string, done: boolean) => {
    const next = toggleTaskInPlan(plan, taskId, done);
    setPlan(next);
    setSavingId(taskId);
    const supabase = createClient();
    await supabase
      .from("multi_subject_study_plans")
      .update({ plan_data: next, last_updated: new Date().toISOString() })
      .eq("user_id", userId)
      .eq("course_id", examType);
    await supabase
      .from("study_plans")
      .update({ plan_data: next })
      .eq("user_id", userId)
      .eq("course_id", examType);
    setSavingId(null);
  };

  return (
    <div className={styles.panel}>
      <p className={styles.cardTitle}>Today&apos;s tasks</p>
      {tasks.length === 0 ? (
        <p className={styles.mutedText}>No tasks scheduled for today.</p>
      ) : (
        <ul className={styles.taskList}>
          {tasks.map((item) => {
            const checked =
              item.done || plan.completedTaskIds.includes(item.id);
            return (
              <li key={item.id} className={styles.taskItem}>
                <input
                  type="checkbox"
                  checked={checked}
                  disabled={savingId === item.id}
                  onChange={(e) => void toggleTask(item.id, e.target.checked)}
                  aria-label={`Mark ${item.task} as done`}
                />
                <span className={checked ? styles.taskDone : ""}>
                  {item.task}
                </span>
              </li>
            );
          })}
        </ul>
      )}
    </div>
  );
}
