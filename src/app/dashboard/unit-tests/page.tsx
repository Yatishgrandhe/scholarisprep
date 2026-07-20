"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";
import { Exam, ListChecks } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { loadCourseUnits, type CourseUnit } from "@/lib/dashboard/courseUnits";
import { createUnitTestSession } from "@/lib/exam/queries";
import { examFamilyLabel, isApOrIbExam } from "@/lib/examFamily";
import styles from "./unit-tests.module.css";

export default function UnitTestsPage() {
  const router = useRouter();
  const { user } = useAuth();
  const examType = useActiveExamType();
  const supabase = createClient();
  const apIb = isApOrIbExam(examType);
  const examLabel = examFamilyLabel(examType);

  const [units, setUnits] = useState<CourseUnit[]>([]);
  const [loading, setLoading] = useState(true);
  const [starting, setStarting] = useState<string | null>(null);

  useEffect(() => {
    let active = true;
    setLoading(true);
    void (async () => {
      if (!apIb) {
        if (active) {
          setUnits([]);
          setLoading(false);
        }
        return;
      }
      const list = await loadCourseUnits(supabase, examType);
      if (active) {
        setUnits(list);
        setLoading(false);
      }
    })();
    return () => {
      active = false;
    };
  }, [apIb, examType, supabase]);

  const startUnitTest = async (unit: CourseUnit) => {
    if (!user) {
      router.push("/auth/login");
      return;
    }
    setStarting(unit.unit_code);
    const sessionId = await createUnitTestSession(
      supabase,
      user.id,
      examType,
      unit.unit_code,
      unit.title,
    );
    if (!sessionId) {
      toast.message("Unit test not ready yet", {
        description: `No questions tagged for ${unit.title} yet. Content pools will unlock this test.`,
      });
      setStarting(null);
      return;
    }
    router.push(`/dashboard/practice/${sessionId}`);
  };

  if (!apIb) {
    return (
      <div className={styles.page}>
        <header className={styles.header}>
          <ListChecks
            size={22}
            weight="duotone"
            className={styles.headerIcon}
            aria-hidden
          />
          <div>
            <h1 className={styles.title}>Unit Tests</h1>
            <p className={styles.subtitle}>
              Timed unit checks for AP and IB courses.
            </p>
          </div>
        </header>
        <div className={styles.emptyCard}>
          <span className={styles.emptyIcon} aria-hidden>
            <Exam size={28} weight="duotone" />
          </span>
          <h2 className={styles.emptyTitle}>AP / IB courses only</h2>
          <p className={styles.emptyDesc}>
            Switch your active exam to an AP or IB subject to see course units
            and start timed tests.
          </p>
        </div>
      </div>
    );
  }

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <ListChecks
          size={22}
          weight="duotone"
          className={styles.headerIcon}
          aria-hidden
        />
        <div>
          <h1 className={styles.title}>Unit Tests</h1>
          <p className={styles.subtitle}>
            Timed checks for each {examLabel} unit — pick a unit and start.
          </p>
        </div>
      </header>

      <section className={styles.section} aria-labelledby="units-list">
        <h2 id="units-list" className={styles.sectionLabel}>
          Course units
        </h2>
        {loading ? (
          <p className={styles.loadingState} role="status">
            Loading units…
          </p>
        ) : units.length === 0 ? (
          <div className={styles.emptyCard}>
            <span className={styles.emptyIcon} aria-hidden>
              <ListChecks size={28} weight="duotone" />
            </span>
            <h3 className={styles.emptyTitle}>No units yet</h3>
            <p className={styles.emptyDesc}>
              Units for this course will appear here once the catalog is linked.
            </p>
          </div>
        ) : (
          <div className={styles.list}>
            {units.map((unit) => (
              <div key={unit.unit_code} className={styles.row}>
                <span className={styles.rowIcon} aria-hidden>
                  <Exam size={20} weight="duotone" />
                </span>
                <div className={styles.rowMain}>
                  <h3 className={styles.rowTitle}>{unit.title}</h3>
                  <p className={styles.rowMeta}>
                    Unit {unit.sort_order} · {unit.unit_code}
                  </p>
                </div>
                <div className={styles.rowActions}>
                  <button
                    type="button"
                    className={styles.primaryBtn}
                    disabled={starting !== null}
                    onClick={() => void startUnitTest(unit)}
                    aria-label={`Start unit test: ${unit.title}`}
                  >
                    {starting === unit.unit_code ? "Starting…" : "Start"}
                  </button>
                </div>
              </div>
            ))}
          </div>
        )}
      </section>
    </div>
  );
}
