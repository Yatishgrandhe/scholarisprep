"use client";

import { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { Plus, Books } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { useSubjectStore } from "@/stores/subjectStore";
import { subjectBadgeColor } from "@/lib/subjectColors";
import {
  apIbDisplayName,
  apIbShortCode,
  isApOrIbExam,
} from "@/lib/apIbCatalog";
import type { ExamType } from "@/types/supabase";
import styles from "./ManageExamsPanel.module.css";

function examDisplayName(
  examType: ExamType,
  configName: string | undefined,
): string {
  if (isApOrIbExam(examType)) {
    return apIbDisplayName(examType) || configName || examType;
  }
  if (configName) return configName;
  return examType;
}

function examShortCode(
  examType: ExamType,
  configCode: string | undefined,
): string {
  if (isApOrIbExam(examType)) return apIbShortCode(examType);
  if (configCode && !configCode.includes("_")) return configCode;
  return examType.slice(0, 4);
}

/** Persist primary + profiles.exam_goal (same contract as switchActiveSubject). */
async function persistActiveSubject(userId: string, examType: ExamType) {
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

export function ManageExamsPanel() {
  const { user } = useAuth();
  const router = useRouter();
  const {
    allSubjects,
    subjectConfigs,
    activeSubject,
    setActiveSubject,
    setSubjects,
    removeSubject,
  } = useSubjectStore();
  const supabase = createClient();
  const [removing, setRemoving] = useState<ExamType | null>(null);
  const [switching, setSwitching] = useState<ExamType | null>(null);

  const handleSwitch = async (examType: ExamType) => {
    if (!user || examType === activeSubject) return;
    setSwitching(examType);
    try {
      setActiveSubject(examType);
      await persistActiveSubject(user.id, examType);
      setSubjects(
        allSubjects.map((s) => ({
          ...s,
          is_primary: s.exam_type === examType,
        })),
        Object.values(subjectConfigs),
        examType,
      );
      router.refresh();
    } finally {
      setSwitching(null);
    }
  };

  const handleRemove = async (examType: ExamType) => {
    if (!user) return;
    if (allSubjects.length <= 1) {
      window.alert("You need at least one active exam.");
      return;
    }
    const label = examDisplayName(
      examType,
      subjectConfigs[examType]?.display_name,
    );
    if (
      !window.confirm(
        `Remove ${label} from your dashboard? Progress is kept until you reset it in Settings.`,
      )
    ) {
      return;
    }
    setRemoving(examType);
    try {
      const removed = allSubjects.find((s) => s.exam_type === examType);
      const remaining = allSubjects.filter((s) => s.exam_type !== examType);

      await supabase
        .from("user_active_subjects")
        .delete()
        .eq("user_id", user.id)
        .eq("exam_type", examType);

      removeSubject(examType);

      const next = remaining[0];
      if (
        next &&
        (removed?.is_primary || activeSubject === examType)
      ) {
        await persistActiveSubject(user.id, next.exam_type);
        setActiveSubject(next.exam_type);
      }

      window.location.reload();
    } finally {
      setRemoving(null);
    }
  };

  if (allSubjects.length === 0) {
    return (
      <div className={styles.wrap}>
        <div className={styles.empty} role="status">
          <span className={styles.emptyIcon} aria-hidden>
            <Books size={28} weight="duotone" />
          </span>
          <p className={styles.emptyTitle}>No exams yet</p>
          <p className={styles.emptyText}>
            Add the SAT, ACT, or an AP/IB course to start studying.
          </p>
          <Link
            href="/onboarding/exam?allowMultiple=1"
            className={styles.addCta}
          >
            <Plus size={18} weight="bold" aria-hidden />
            Add exam or AP/IB course
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className={styles.wrap}>
      <ul className={styles.list}>
        {allSubjects.map((subject) => {
          const config = subjectConfigs[subject.exam_type];
          const isActive = activeSubject === subject.exam_type;
          const name = examDisplayName(
            subject.exam_type,
            config?.display_name,
          );
          const code = examShortCode(subject.exam_type, config?.short_code);
          return (
            <li key={subject.exam_type} className={styles.row}>
              <div className={styles.info}>
                <span
                  className={styles.badge}
                  style={{ background: subjectBadgeColor(subject.exam_type) }}
                  title={code}
                  aria-hidden
                >
                  {code}
                </span>
                <div className={styles.textCol}>
                  <span className={styles.name}>
                    <span className={styles.nameText} title={name}>
                      {name}
                    </span>
                    {subject.is_primary ? (
                      <span className={styles.primary}>Primary</span>
                    ) : null}
                  </span>
                  {subject.target_score ? (
                    <span className={styles.meta}>
                      Goal {subject.target_score}
                    </span>
                  ) : null}
                </div>
              </div>
              <div className={styles.actions}>
                {!isActive ? (
                  <button
                    type="button"
                    className={styles.switchBtn}
                    disabled={switching === subject.exam_type}
                    onClick={() => void handleSwitch(subject.exam_type)}
                  >
                    {switching === subject.exam_type ? "Switching…" : "Switch"}
                  </button>
                ) : (
                  <span className={styles.activeLabel}>Active</span>
                )}
                <button
                  type="button"
                  className={styles.removeBtn}
                  disabled={
                    removing === subject.exam_type || allSubjects.length <= 1
                  }
                  onClick={() => void handleRemove(subject.exam_type)}
                  aria-label={`Remove ${name}`}
                >
                  {removing === subject.exam_type ? "Removing…" : "Remove"}
                </button>
              </div>
            </li>
          );
        })}
      </ul>
      <Link
        href="/onboarding/exam?allowMultiple=1"
        className={styles.addCta}
      >
        <Plus size={18} weight="bold" aria-hidden />
        Add exam or AP/IB course
      </Link>
    </div>
  );
}
