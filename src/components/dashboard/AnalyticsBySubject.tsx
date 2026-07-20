"use client";

import { useState } from "react";
import { useSubjectStore } from "@/stores/subjectStore";
import { subjectBadgeColor } from "@/lib/subjectColors";
import { AnalyticsCharts } from "@/components/dashboard/AnalyticsCharts";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import type { ExamType } from "@/types/supabase";
import styles from "@/app/dashboard/dashboard.module.css";

export function AnalyticsBySubject() {
  const { allSubjects, subjectConfigs, activeSubject } = useSubjectStore();
  const [manualTab, setManualTab] = useState<ExamType | null>(null);
  const tab = activeSubject ?? manualTab ?? "SAT";

  const subjects =
    allSubjects.length > 0 ? allSubjects : [{ exam_type: tab as ExamType }];

  return (
    <Tabs value={tab} onValueChange={(v) => setManualTab(v as ExamType)}>
      <TabsList className={styles.subjectTabs}>
        {subjects.map((subject) => {
          const config = subjectConfigs[subject.exam_type];
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
              {config?.short_code ?? subject.exam_type}
            </TabsTrigger>
          );
        })}
      </TabsList>
      {subjects.map((subject) => (
        <TabsContent key={subject.exam_type} value={subject.exam_type}>
          <AnalyticsCharts examType={subject.exam_type} />
        </TabsContent>
      ))}
    </Tabs>
  );
}
