"use client";

import { useState } from "react";
import { createClient } from "@/lib/supabase/client";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { Button } from "@/components/ui/app-button";
import {
  getCurrentWeekTasks,
  parseStudyPlanData,
  planProgressPercent,
  toggleTaskInPlan,
  type StudyPlanData,
} from "@/lib/dashboard/studyPlan";
import styles from "./study-plan.module.css";

type StudyPlanTasksProps = {
  initialPlanData: unknown;
  userId: string;
};

export function StudyPlanTasks({ initialPlanData, userId }: StudyPlanTasksProps) {
  const examType = useActiveExamType();
  const [plan, setPlan] = useState<StudyPlanData>(() =>
    parseStudyPlanData(initialPlanData),
  );
  const [saving, setSaving] = useState(false);
  const tasks = getCurrentWeekTasks(plan);
  const progress = planProgressPercent(plan);

  const toggleTask = async (taskId: string, done: boolean) => {
    const next = toggleTaskInPlan(plan, taskId, done);
    setPlan(next);
    setSaving(true);
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
    setSaving(false);
  };

  const regenerate = async () => {
    setSaving(true);
    const res = await fetch("/api/dashboard/regenerate-study-plan", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ exam_type: examType }),
    });
    if (res.ok) {
      const { plan_data } = (await res.json()) as { plan_data: StudyPlanData };
      setPlan(parseStudyPlanData(plan_data));
    }
    setSaving(false);
  };

  return (
    <>
      <div className={styles.grid2}>
        <div className={styles.panel}>
          <p className={styles.cardTitle}>Progress</p>
          <p className={styles.statSub}>Week 1 · {progress}% complete</p>
          <div className={styles.progressBar} style={{ marginTop: 16 }}>
            <div
              className={styles.progressFill}
              style={{ width: `${progress}%` }}
            />
          </div>
        </div>
        <div className={styles.panel}>
          <p className={styles.cardTitle}>Actions</p>
          <Button
            variant="outline"
            onClick={() => void regenerate()}
            disabled={saving}
          >
            {saving ? "Updating…" : "Regenerate plan"}
          </Button>
        </div>
      </div>

      <div className={`${styles.panel} ${styles.sectionGap}`}>
        <p className={styles.cardTitle}>This week</p>
        <ul className={styles.taskList}>
          {tasks.map((item) => (
            <li key={item.id} className={styles.taskItem}>
              <input
                type="checkbox"
                checked={item.done || plan.completedTaskIds.includes(item.id)}
                onChange={(e) => void toggleTask(item.id, e.target.checked)}
              />
              <span
                className={
                  item.done || plan.completedTaskIds.includes(item.id)
                    ? styles.taskDone
                    : ""
                }
              >
                <strong>{item.day}</strong>: {item.task}
              </span>
            </li>
          ))}
        </ul>
      </div>
    </>
  );
}
