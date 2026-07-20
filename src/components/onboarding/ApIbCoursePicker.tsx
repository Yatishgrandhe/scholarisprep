"use client";

import { useId, useMemo, useState } from "react";
import { Check, MagnifyingGlass, X } from "@phosphor-icons/react";
import {
  filterCourses,
  groupCourses,
  toExamType,
  type ApIbCatalogCourse,
} from "@/lib/apIbCatalog";
import type { ExamType } from "@/types/supabase";
import styles from "@/app/onboarding/ap-ib-onboarding.module.css";

type Props = {
  family: "AP" | "IB";
  selectedExams: ExamType[];
  onToggleCourse: (exam: ExamType) => void;
  onRemoveCourse: (exam: ExamType) => void;
};

export function ApIbCoursePicker({
  family,
  selectedExams,
  onToggleCourse,
  onRemoveCourse,
}: Props) {
  const [query, setQuery] = useState("");
  const titleId = useId();
  const listId = useId();

  const filtered = useMemo(
    () => filterCourses(family, query),
    [family, query],
  );
  const grouped = useMemo(() => groupCourses(filtered), [filtered]);

  const selectedCourses = useMemo(() => {
    const set = new Set(selectedExams.map(String));
    return filterCourses(family, "").filter((c) => set.has(c.exam_type));
  }, [family, selectedExams]);

  const panelClass =
    family === "AP"
      ? `${styles.coursePanel} ${styles.coursePanelAp}`
      : `${styles.coursePanel} ${styles.coursePanelIb}`;

  const toggle = (course: ApIbCatalogCourse) => {
    onToggleCourse(toExamType(course.exam_type));
  };

  return (
    <div className={panelClass}>
      <div className={styles.coursePanelHeader}>
        <h3 id={titleId} className={styles.coursePanelTitle}>
          {family === "AP" ? "Choose AP courses" : "Choose IB subjects"}
        </h3>
        <p className={styles.coursePanelHint}>
          {selectedCourses.length} selected · search to filter
        </p>
      </div>

      <div className={styles.searchWrap}>
        <MagnifyingGlass
          className={styles.searchIcon}
          size={18}
          weight="bold"
          aria-hidden
        />
        <input
          className={styles.searchInput}
          type="search"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder={
            family === "AP"
              ? "Search AP courses (e.g. Calculus, Biology…)"
              : "Search IB subjects (e.g. Math AA, Biology HL…)"
          }
          aria-label={`Search ${family} courses`}
          aria-controls={listId}
          autoComplete="off"
          enterKeyHint="search"
        />
      </div>

      <div
        id={listId}
        className={styles.dropdown}
        role="group"
        aria-labelledby={titleId}
      >
        {grouped.length === 0 ? (
          <p className={styles.emptyResults}>No courses match “{query}”.</p>
        ) : (
          grouped.map(({ group, courses }) => (
            <div
              key={group}
              className={styles.groupBlock}
              role="group"
              aria-label={group}
            >
              <div className={styles.groupLabel} aria-hidden>
                {group}
              </div>
              {courses.map((course) => {
                const selected = selectedExams.includes(
                  toExamType(course.exam_type),
                );
                const inputId = `${listId}-${course.exam_type}`;
                return (
                  <label
                    key={course.exam_type}
                    htmlFor={inputId}
                    className={`${styles.courseRow} ${
                      selected ? styles.courseRowSelected : ""
                    }`}
                  >
                    <input
                      id={inputId}
                      type="checkbox"
                      className={styles.courseRowInput}
                      checked={selected}
                      onChange={() => toggle(course)}
                    />
                    <span className={styles.courseRowCheck} aria-hidden>
                      {selected ? <Check size={12} weight="bold" /> : null}
                    </span>
                    <span className={styles.courseRowLabel}>
                      {course.display_name}
                    </span>
                    <span className={styles.courseRowCode}>
                      {course.short_code}
                    </span>
                  </label>
                );
              })}
            </div>
          ))
        )}
      </div>

      {selectedCourses.length > 0 ? (
        <div className={styles.chipRow} aria-label={`Selected ${family} courses`}>
          {selectedCourses.map((course) => (
            <span
              key={course.exam_type}
              className={`${styles.chip} ${
                family === "IB" ? styles.chipIb : ""
              }`}
            >
              <span
                className={styles.chipLabel}
                title={course.display_name}
              >
                {course.display_name}
              </span>
              <button
                type="button"
                className={styles.chipRemove}
                aria-label={`Remove ${course.display_name}`}
                onClick={() => onRemoveCourse(toExamType(course.exam_type))}
              >
                <X size={12} weight="bold" />
              </button>
            </span>
          ))}
        </div>
      ) : null}
    </div>
  );
}
