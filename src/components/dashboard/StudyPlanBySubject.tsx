"use client";

import { aiRequest } from "@/lib/ai/clientKey";

import { useEffect, useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { useSubjectStore } from "@/stores/subjectStore";
import { subjectBadgeColor } from "@/lib/subjectColors";
import {
  defaultStudyPlanData,
  getCurrentWeekTasks,
  parseStudyPlanData,
  planProgressPercent,
  toggleTaskInPlan,
  type StudyPlanData,
} from "@/lib/dashboard/studyPlan";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import type { ExamType, Json } from "@/types/supabase";
import styles from "./study-plan.module.css";

type PlanRow = {
  exam_type: ExamType;
  target_score: number | null;
  baseline_score: number | null;
  exam_date: string | null;
  weekly_hours_allocated: number | null;
  plan_data: unknown;
};

export function StudyPlanBySubject() {
  const { user } = useAuth();
  const { allSubjects, subjectConfigs, activeSubject } = useSubjectStore();
  const [plans, setPlans] = useState<PlanRow[]>([]);
  const [tab, setTab] = useState<ExamType>("SAT");
  const [generating, setGenerating] = useState(false);
  const [planState, setPlanState] = useState<StudyPlanData>(() =>
    defaultStudyPlanData(),
  );
  const [saving, setSaving] = useState(false);

  useMountLoad(async () => {
    if (!user) return;
    const supabase = createClient();
    const { data } = await supabase
      .from("multi_subject_study_plans")
      .select(
        "exam_type, target_score, baseline_score, exam_date, weekly_hours_allocated, plan_data",
      )
      .eq("user_id", user.id);
    const rows = (data ?? []) as PlanRow[];
    setPlans(rows);
    const first =
      activeSubject ?? allSubjects[0]?.exam_type ?? rows[0]?.exam_type ?? "SAT";
    setTab(first);
  }, [user, allSubjects, activeSubject]);

  useEffect(() => {
    if (activeSubject) {
      queueMicrotask(() => setTab(activeSubject));
    }
  }, [activeSubject]);

  useEffect(() => {
    queueMicrotask(() => {
      const plan = plans.find((p) => p.exam_type === tab);
      setPlanState(parseStudyPlanData(plan?.plan_data ?? defaultStudyPlanData()));
    });
  }, [plans, tab]);

  const subjects =
    allSubjects.length > 0
      ? allSubjects
      : [{ exam_type: tab }];

  const generateForSubject = async (examType: ExamType) => {
    if (!user) return;
    setGenerating(true);
    const subjectPlan = plans.find((p) => p.exam_type === examType);
    let planData = defaultStudyPlanData();

    try {
      const res = await aiRequest("/api/ai/generate-study-plan", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          exam_type: examType,
          exam_date: subjectPlan?.exam_date ?? undefined,
          target_score: subjectPlan?.target_score ?? 1400,
          baseline_score: subjectPlan?.baseline_score ?? 1000,
          weak_topics: [],
          weekly_hours: subjectPlan?.weekly_hours_allocated ?? 5,
        }),
      });
      if (res.ok) {
        const body = (await res.json()) as { plan?: unknown };
        if (body.plan) {
          planData = parseStudyPlanData(body.plan);
        }
      }
    } catch {
      /* fall back to default plan below */
    }

    const supabase = createClient();
    await supabase.from("multi_subject_study_plans").upsert(
      {
        user_id: user.id,
        course_id: examType,
        exam_type: examType,
        plan_data: planData as unknown as Json,
        generated_at: new Date().toISOString(),
        last_updated: new Date().toISOString(),
      },
      { onConflict: "user_id,course_id" },
    );
    const { data } = await supabase
      .from("multi_subject_study_plans")
      .select(
        "exam_type, target_score, baseline_score, exam_date, weekly_hours_allocated, plan_data",
      )
      .eq("user_id", user.id);
    setPlans((data ?? []) as PlanRow[]);
    setPlanState(parseStudyPlanData(planData));
    setGenerating(false);
  };

  const toggleTask = async (taskId: string, done: boolean) => {
    if (!user) return;
    const next = toggleTaskInPlan(planState, taskId, done);
    setPlanState(next);
    setSaving(true);
    const supabase = createClient();
    await supabase
      .from("multi_subject_study_plans")
      .update({
        plan_data: next as unknown as Json,
        last_updated: new Date().toISOString(),
      })
      .eq("user_id", user.id)
      .eq("course_id", tab);
    setSaving(false);
  };

  if (!user) return null;

  const plan = plans.find((p) => p.exam_type === tab);
  const config = subjectConfigs[tab];
  const tasks = getCurrentWeekTasks(planState);
  const progress = planProgressPercent(planState);

  return (
    <Tabs value={tab} onValueChange={(v) => setTab(v as ExamType)}>
      <TabsList className={styles.subjectTabs}>
        {subjects.map((subject) => {
          const rowConfig = subjectConfigs[subject.exam_type];
          return (
            <TabsTrigger
              key={subject.exam_type}
              value={subject.exam_type}
              className={styles.subjectTab}
            >
              <span
                className={styles.subjectTabDot}
                style={{ background: subjectBadgeColor(subject.exam_type) }}
              />
              {rowConfig?.short_code ?? subject.exam_type}
            </TabsTrigger>
          );
        })}
      </TabsList>

      <TabsContent value={tab}>
        <div className={styles.grid2}>
          <div className={styles.panel}>
            <p className={styles.cardTitle}>Goals · {config?.display_name ?? tab}</p>
            <p className={styles.statValue}>
              {plan?.baseline_score ?? "—"} → {plan?.target_score ?? "—"}
            </p>
            <p className={styles.statSub}>
              {plan?.weekly_hours_allocated ?? 5} hours/week · Exam{" "}
              {plan?.exam_date
                ? new Date(plan.exam_date).toLocaleDateString()
                : "not set"}
            </p>
          </div>
          <div className={styles.panel}>
            <p className={styles.cardTitle}>Generate</p>
            <button
              type="button"
              className={styles.emptyPrimaryBtn}
              onClick={() => void generateForSubject(tab)}
              disabled={generating}
            >
              {generating ? "Generating…" : "Generate plan for subject"}
            </button>
          </div>
        </div>

        <div className={`${styles.panel} ${styles.sectionGap}`}>
          <p className={styles.cardTitle}>This week · {progress}% complete</p>
          <ul className={styles.taskList}>
            {tasks.map((task) => (
              <li key={task.id} className={styles.taskItem}>
                <label>
                  <input
                    type="checkbox"
                    checked={Boolean(task.completed ?? task.done)}
                    disabled={saving}
                    onChange={(e) =>
                      void toggleTask(task.id, e.target.checked)
                    }
                  />
                  <span>{task.topic ?? task.task ?? task.description}</span>
                </label>
              </li>
            ))}
          </ul>
        </div>
      </TabsContent>
    </Tabs>
  );
}
