"use client";

import {
  useCallback,
  useEffect,
  useLayoutEffect,
  useRef,
  useState,
} from "react";
import { createPortal } from "react-dom";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { CaretDown, ChatsCircle, Plus } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import type { SubjectConfig, UserActiveSubject } from "@/lib/subjectContext";
import { subjectBadgeColor } from "@/lib/subjectColors";
import { useSubjectStore } from "@/stores/subjectStore";
import { useAuth } from "@/hooks/useAuth";
import {
  daysUntilExam,
  formatExamSubline,
} from "@/lib/dashboard/userDisplay";
import type { ExamType } from "@/types/supabase";
import {
  apIbDisplayName,
  apIbShortCode,
  isApOrIbExam,
} from "@/lib/apIbCatalog";
import { tutorCtaLabel, tutorHref } from "@/lib/tutor/routes";
import styles from "./SubjectSwitcher.module.css";

function subjectDisplayName(
  examType: ExamType,
  configName: string | undefined,
): string {
  if (configName) return configName;
  if (isApOrIbExam(examType)) return apIbDisplayName(examType);
  return examType;
}

function subjectShortCode(
  examType: ExamType,
  configCode: string | undefined,
): string {
  // Registry/catalog short_code is often the full snake enum — prefer derived
  // human labels for AP/IB so badges don't overflow.
  if (isApOrIbExam(examType)) return apIbShortCode(examType);
  if (configCode) return configCode;
  return examType.slice(0, 4);
}

function resolveExamDate(
  subject: UserActiveSubject,
  profileExamGoal: ExamType | null | undefined,
  profileExamDate: string | null | undefined,
): string | null {
  if (subject.exam_date) return subject.exam_date;
  if (profileExamGoal === subject.exam_type) return profileExamDate ?? null;
  return null;
}

function mapRegistryRow(row: Record<string, unknown>): SubjectConfig {
  const parseArray = (value: unknown): string[] =>
    Array.isArray(value)
      ? value.filter((v): v is string => typeof v === "string")
      : [];

  const scoreRaw = row.score_range;
  const scoreRange =
    scoreRaw && typeof scoreRaw === "object" && !Array.isArray(scoreRaw)
      ? (scoreRaw as SubjectConfig["score_range"])
      : { min: 0, max: 100 };

  return {
    id: String(row.id),
    exam_type: row.exam_type as ExamType,
    display_name: String(row.display_name),
    short_code: String(row.short_code),
    description: (row.description as string | null) ?? null,
    sections: parseArray(row.sections),
    topics: parseArray(row.topics),
    score_range: scoreRange,
    time_limits: {},
    question_formats: parseArray(row.question_formats),
    calculator_policy:
      (row.calculator_policy as SubjectConfig["calculator_policy"]) ?? "none",
    has_stimulus: Boolean(row.has_stimulus),
    stimulus_types: Array.isArray(row.stimulus_types)
      ? row.stimulus_types.filter((v): v is string => typeof v === "string")
      : [],
    passing_score:
      typeof row.passing_score === "number" ? row.passing_score : null,
    total_questions_full_exam:
      typeof row.total_questions_full_exam === "number"
        ? row.total_questions_full_exam
        : null,
    exam_duration_minutes:
      typeof row.exam_duration_minutes === "number"
        ? row.exam_duration_minutes
        : null,
  };
}

type MenuPlacement = {
  top: number;
  left: number;
  minWidth: number;
};

export function SubjectSwitcher() {
  const { user, profile } = useAuth();
  const router = useRouter();
  const [open, setOpen] = useState(false);
  const [menuPlacement, setMenuPlacement] = useState<MenuPlacement | null>(null);
  const wrapRef = useRef<HTMLDivElement>(null);
  const triggerRef = useRef<HTMLButtonElement>(null);
  const menuRef = useRef<HTMLDivElement>(null);
  const { activeSubject, allSubjects, subjectConfigs, setActiveSubject, setSubjects, setHydrated } =
    useSubjectStore();

  useEffect(() => {
    if (!user) return;

    const load = async () => {
      const supabase = createClient();
      const [{ data: subjects }, { data: registry }] = await Promise.all([
        supabase
          .from("user_active_subjects")
          .select("*")
          .eq("user_id", user.id)
          .order("is_primary", { ascending: false })
          .order("priority", { ascending: true }),
        supabase.from("subject_registry").select("*"),
      ]);

      let activeList = (subjects ?? []) as UserActiveSubject[];
      if (activeList.length === 0 && profile?.exam_goal) {
        activeList = [
          {
            id: "legacy",
            user_id: user.id,
            exam_type: profile.exam_goal,
            exam_date: profile.exam_date,
            target_score: null,
            baseline_score: null,
            is_primary: true,
            priority: 1,
            created_at: "",
            updated_at: "",
          },
        ];
      }

      const configs = (registry ?? []).map((row) =>
        mapRegistryRow(row as Record<string, unknown>),
      );
      setSubjects(
        activeList,
        configs,
        profile?.exam_goal ?? activeList[0]?.exam_type ?? null,
      );
      setHydrated(true);
    };

    void load();
  }, [user, profile?.exam_goal, profile?.exam_date, setSubjects, setHydrated]);

  const updateMenuPlacement = useCallback(() => {
    const trigger = triggerRef.current;
    if (!trigger) return;
    const rect = trigger.getBoundingClientRect();
    const gutter = 12;
    const preferredMin = Math.max(rect.width, 280);
    const maxMenu = Math.min(352, window.innerWidth - gutter * 2);
    const minWidth = Math.min(preferredMin, maxMenu);
    // Keep the menu on-screen when the trigger sits near the right edge.
    const left = Math.min(
      Math.max(gutter, rect.left),
      window.innerWidth - minWidth - gutter,
    );
    setMenuPlacement({
      top: rect.bottom + 8,
      left,
      minWidth,
    });
  }, []);

  useLayoutEffect(() => {
    if (!open) {
      setMenuPlacement(null);
      return;
    }
    updateMenuPlacement();
    window.addEventListener("resize", updateMenuPlacement);
    window.addEventListener("scroll", updateMenuPlacement, true);
    return () => {
      window.removeEventListener("resize", updateMenuPlacement);
      window.removeEventListener("scroll", updateMenuPlacement, true);
    };
  }, [open, updateMenuPlacement]);

  useEffect(() => {
    if (!open) return;
    const onDocClick = (event: MouseEvent) => {
      const target = event.target as Node;
      if (
        wrapRef.current?.contains(target) ||
        menuRef.current?.contains(target)
      ) {
        return;
      }
      setOpen(false);
    };
    document.addEventListener("mousedown", onDocClick);
    return () => document.removeEventListener("mousedown", onDocClick);
  }, [open]);

  useEffect(() => {
    if (!open) return;
    const onKey = (event: KeyboardEvent) => {
      if (event.key === "Escape") setOpen(false);
    };
    document.addEventListener("keydown", onKey);
    return () => document.removeEventListener("keydown", onKey);
  }, [open]);

  const active = activeSubject ?? profile?.exam_goal ?? "SAT";
  const config = subjectConfigs[active];
  const activeName = subjectDisplayName(active, config?.display_name);
  const activeRow =
    allSubjects.find((s) => s.exam_type === active) ??
    ({
      exam_type: active,
      exam_date: profile?.exam_date ?? null,
      target_score: null,
      baseline_score: null,
    } as UserActiveSubject);

  const activeExamDate = resolveExamDate(
    activeRow,
    profile?.exam_goal,
    profile?.exam_date,
  );
  const countdown = daysUntilExam(activeExamDate);
  const predicted =
    activeRow.baseline_score ??
    activeRow.target_score ??
    config?.score_range.min ??
    null;

  const handleSelect = async (examType: ExamType) => {
    setActiveSubject(examType);
    setOpen(false);
    if (!user) return;
    const supabase = createClient();
    await supabase
      .from("user_active_subjects")
      .update({ is_primary: false })
      .eq("user_id", user.id);
    await supabase
      .from("user_active_subjects")
      .update({
        is_primary: true,
        updated_at: new Date().toISOString(),
      })
      .eq("user_id", user.id)
      .eq("exam_type", examType);
    await supabase.from("profiles").update({ exam_goal: examType }).eq("id", user.id);
    // Server components (the dashboard home, etc.) read exam_goal from the DB at
    // render time, so re-fetch them now that the active exam has changed.
    router.refresh();
  };

  if (!user) return null;

  const menuSubjects =
    allSubjects.length > 0
      ? allSubjects
      : [
          {
            exam_type: active,
            exam_date: profile?.exam_date ?? null,
            target_score: null,
            baseline_score: null,
          } as UserActiveSubject,
        ];

  return (
    <div ref={wrapRef} className={styles.wrap}>
      <button
        ref={triggerRef}
        type="button"
        className={styles.trigger}
        onClick={() => setOpen((v) => !v)}
        aria-expanded={open}
        aria-haspopup="listbox"
        aria-controls="subject-switcher-menu"
        aria-label={`Active exam: ${activeName}. Change exam.`}
      >
        <span
          className={styles.badge}
          style={{ background: subjectBadgeColor(active) }}
          title={subjectShortCode(active, config?.short_code)}
        >
          {subjectShortCode(active, config?.short_code)}
        </span>
        <span className={styles.meta}>
          <span className={styles.label} title={activeName}>
            {activeName}
          </span>
          <span className={styles.sub}>
            {formatExamSubline(countdown, predicted)}
          </span>
        </span>
        <CaretDown size={16} weight="bold" aria-hidden />
      </button>

      {open && menuPlacement && typeof document !== "undefined"
        ? createPortal(
        <div
          ref={menuRef}
          className={styles.menu}
          style={{
            top: menuPlacement.top,
            left: menuPlacement.left,
            minWidth: menuPlacement.minWidth,
            width: "max-content",
          }}
        >
          <div
            id="subject-switcher-menu"
            className={styles.menuList}
            role="listbox"
            aria-label="Choose active exam"
          >
          {menuSubjects.map((subject) => {
            const rowConfig = subjectConfigs[subject.exam_type];
            const name = subjectDisplayName(
              subject.exam_type,
              rowConfig?.display_name,
            );
            const code = subjectShortCode(
              subject.exam_type,
              rowConfig?.short_code,
            );
            return (
              <button
                key={subject.exam_type}
                type="button"
                role="option"
                aria-selected={subject.exam_type === active}
                className={`${styles.item} ${
                  subject.exam_type === active ? styles.itemActive : ""
                }`}
                onClick={() => void handleSelect(subject.exam_type)}
              >
                <span
                  className={styles.badge}
                  style={{ background: subjectBadgeColor(subject.exam_type) }}
                  title={code}
                >
                  {code}
                </span>
                <span className={styles.itemBody}>
                  <span className={styles.label} title={name}>
                    {name}
                  </span>
                </span>
              </button>
            );
          })}
          </div>
          <div className={styles.addFooter}>
            <Link
              href={tutorHref(active)}
              className={`${styles.addLink} ${styles.tutorLink}`}
              onClick={() => setOpen(false)}
            >
              <ChatsCircle size={16} weight="duotone" aria-hidden />
              {tutorCtaLabel(active)}
            </Link>
            <Link
              href="/onboarding/exam?allowMultiple=1"
              className={styles.addLink}
              onClick={() => setOpen(false)}
            >
              <Plus size={16} weight="bold" aria-hidden />
              Add exam or AP/IB course
            </Link>
          </div>
        </div>,
        document.body,
      )
        : null}
    </div>
  );
}
