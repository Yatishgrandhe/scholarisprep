"use client";

import { aiRequest } from "@/lib/ai/clientKey";

import { useMemo, useRef, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { CaretLeft, Check, UploadSimple } from "@phosphor-icons/react";
import { toast } from "sonner";
import { extractPdfTextClient } from "@/lib/pdf/extractText";
import styles from "@/components/dashboard/study-planner.module.css";

type Step = "upload" | "scores" | "date" | "days" | "test";
type DayMode = "off" | "standard" | "extended";

const WEEKDAYS = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday",
] as const;

/** First Saturday of each of the next `n` months — handy SAT-ish suggestions. */
function suggestedDates(n: number): { label: string; value: string }[] {
  const now = new Date();
  const out: { label: string; value: string }[] = [];
  for (let i = 1; i <= n; i += 1) {
    const d = new Date(now.getFullYear(), now.getMonth() + i, 1);
    const add = (6 - d.getDay() + 7) % 7;
    d.setDate(1 + add);
    const value = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}-${String(d.getDate()).padStart(2, "0")}`;
    out.push({
      label: d.toLocaleDateString("en-US", {
        month: "long",
        day: "numeric",
        year: "numeric",
      }),
      value,
    });
  }
  return out;
}

export default function ScoreReportWizardPage() {
  const router = useRouter();
  const inputRef = useRef<HTMLInputElement>(null);
  const [step, setStep] = useState<Step>("upload");
  const [file, setFile] = useState<File | null>(null);
  const [busy, setBusy] = useState(false);

  const [total, setTotal] = useState("");
  const [rw, setRw] = useState("");
  const [math, setMath] = useState("");
  const [target, setTarget] = useState("");
  const [weak, setWeak] = useState<string[]>([]);

  const [examDate, setExamDate] = useState("");
  const [dayModes, setDayModes] = useState<Record<string, DayMode>>(() =>
    Object.fromEntries(
      WEEKDAYS.map((d) => [
        d,
        d === "Saturday" || d === "Sunday" ? "off" : "standard",
      ]),
    ),
  );
  const [practiceTestDay, setPracticeTestDay] = useState("");
  /** Which day's Standard/Extended menu is currently open, if any. */
  const [openDay, setOpenDay] = useState<string | null>(null);

  const datePresets = useMemo(() => suggestedDates(5), []);
  const studyDays = WEEKDAYS.filter((d) => dayModes[d] !== "off");

  const handleFile = (picked: File | undefined) => {
    if (!picked) return;
    const ok = picked.type === "application/pdf" || picked.name.endsWith(".pdf");
    if (!ok) return toast.error("Upload a PDF of your score report.");
    if (picked.size > 10 * 1024 * 1024)
      return toast.error("That file is larger than 10 MB.");
    setFile(picked);
  };

  const handleParse = async () => {
    if (!file) return toast.error("Choose a file first.");
    setBusy(true);
    try {
      let text: string;
      try {
        text = await extractPdfTextClient(file);
      } catch {
        toast.error("Could not read that PDF. Try re-downloading it from Bluebook.");
        return;
      }
      if (text.replace(/\s/g, "").length < 40) {
        toast.error("We couldn't find readable text (it may be a scanned image).");
        return;
      }
      const res = await aiRequest("/api/ai/parse-score-report", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ report_text: text, exam_type: "SAT" }),
      });
      const data = await res.json().catch(() => ({}));
      if (res.ok) {
        setTotal(data.total != null ? String(data.total) : "");
        setRw(data.reading_writing != null ? String(data.reading_writing) : "");
        setMath(data.math != null ? String(data.math) : "");
        setTarget(data.target != null ? String(data.target) : "");
        setWeak(Array.isArray(data.weak_topics) ? data.weak_topics : []);
      }
      setStep("scores");
    } finally {
      setBusy(false);
    }
  };

  const setDayMode = (day: string, mode: DayMode) => {
    setDayModes((prev) => ({ ...prev, [day]: mode }));
    setOpenDay(null);
  };

  const goToTest = () => {
    setOpenDay(null);
    if (studyDays.length === 0)
      return toast.error("Pick at least one study day.");
    if (!practiceTestDay || !studyDays.includes(practiceTestDay as never)) {
      setPracticeTestDay(studyDays[studyDays.length - 1]);
    }
    setStep("test");
  };

  const handleBuild = async () => {
    setBusy(true);
    try {
      const baseline =
        Number(total) ||
        (Number(rw) && Number(math) ? Number(rw) + Number(math) : 0) ||
        1000;
      const goal = Number(target) || Math.min(1600, baseline + 120);
      const extendedDays = WEEKDAYS.filter((d) => dayModes[d] === "extended");

      const res = await aiRequest("/api/ai/generate-study-plan", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          mode: "planner",
          exam_type: "SAT",
          exam_date: examDate || undefined,
          target_score: goal,
          baseline_score: baseline,
          weak_topics: weak,
          weekly_hours: Math.min(40, Math.max(1, studyDays.length * 2)),
          study_days: studyDays,
          extended_days: extendedDays,
          practice_test_day: practiceTestDay || undefined,
        }),
      });
      if (!res.ok) {
        const data = await res.json().catch(() => ({}));
        toast.error(data.error ?? "Could not build your plan.");
        return;
      }
      toast.success("Your study plan is ready!");
      router.push("/dashboard/study-plan");
    } finally {
      setBusy(false);
    }
  };

  // ── Upload ──────────────────────────────────────────────────────────────
  if (step === "upload") {
    return (
      <div className={styles.uploadPage}>
        <h1 className={styles.uploadTitle}>Upload your score report</h1>
        <p className={styles.uploadSub}>
          Upload your College Board / Bluebook score report PDF. We&apos;ll read
          your section scores and weak skills, then walk you through a few quick
          questions to build your plan.
        </p>
        <button
          type="button"
          className={styles.uploadZone}
          onClick={() => inputRef.current?.click()}
        >
          <span className={styles.iconTile} aria-hidden>
            <UploadSimple size={24} weight="duotone" />
          </span>
          <span>{file?.name ?? "Click to choose your score-report PDF"}</span>
          <span className={styles.uploadHint}>Max 10 MB · PDF</span>
          <input
            ref={inputRef}
            type="file"
            accept="application/pdf,.pdf"
            className={styles.uploadInput}
            onChange={(e) => handleFile(e.target.files?.[0])}
          />
        </button>
        <div className={styles.uploadActions}>
          <button
            type="button"
            className={styles.primaryBtn}
            disabled={busy || !file}
            onClick={() => void handleParse()}
          >
            {busy ? "Reading your report…" : "Next"}
          </button>
          <Link href="/dashboard/study-plan" className={styles.uploadBack}>
            Back to study planner
          </Link>
        </div>
      </div>
    );
  }

  // ── Scores ──────────────────────────────────────────────────────────────
  if (step === "scores") {
    return (
      <WizardShell
        onBack={() => setStep("upload")}
        title="Your SAT score report"
        subtitle="Parsed from your report, edit anything that looks off."
        onContinue={() => setStep("date")}
        continueLabel="Next"
        busy={busy}
      >
        <div className={styles.scoreCard}>
          <ScoreField label="Total score" value={total} onChange={setTotal} big />
          <div className={styles.scoreSplit}>
            <ScoreField label="Reading & Writing" value={rw} onChange={setRw} />
            <ScoreField label="Math" value={math} onChange={setMath} />
          </div>
          <ScoreField label="Target score" value={target} onChange={setTarget} />
        </div>
        {weak.length > 0 ? (
          <p className={styles.weakNote}>
            We&apos;ll focus early weeks on: <strong>{weak.join(", ")}</strong>
          </p>
        ) : null}
      </WizardShell>
    );
  }

  // ── Exam date ───────────────────────────────────────────────────────────
  if (step === "date") {
    return (
      <WizardShell
        onBack={() => setStep("scores")}
        title="When is your next SAT test?"
        subtitle="Select your upcoming test date"
        onContinue={() => setStep("days")}
        continueDisabled={!examDate}
        continueLabel="Continue"
        busy={busy}
      >
        <div className={styles.dateGrid}>
          {datePresets.map((d) => (
            <button
              key={d.value}
              type="button"
              className={`${styles.datePreset} ${examDate === d.value ? styles.datePresetActive : ""}`}
              onClick={() => setExamDate(d.value)}
            >
              {d.label}
            </button>
          ))}
        </div>
        <label className={styles.field} style={{ marginTop: "1rem" }}>
          <span>Or choose a custom date</span>
          <input
            type="date"
            value={examDate}
            onChange={(e) => setExamDate(e.target.value)}
          />
        </label>
      </WizardShell>
    );
  }

  // ── Study days ──────────────────────────────────────────────────────────
  if (step === "days") {
    return (
      <WizardShell
        onBack={() => setStep("date")}
        title="Which days do you want to study?"
        subtitle="We'll schedule sessions on these days"
        onContinue={goToTest}
        continueLabel="Continue"
        busy={busy}
      >
        <div className={styles.dayPicker}>
          <div className={styles.dayGrid}>
            {WEEKDAYS.map((d) => {
              const mode = dayModes[d];
              const isOpen = openDay === d;
              return (
                <div key={d} className={styles.dayCol}>
                  <button
                    type="button"
                    className={`${styles.dayCard} ${mode !== "off" ? styles.dayCardOn : ""} ${mode === "extended" ? styles.dayCardExt : ""} ${isOpen ? styles.dayCardOpen : ""}`}
                    onClick={() => setOpenDay(isOpen ? null : d)}
                    aria-expanded={isOpen}
                  >
                    {mode !== "off" ? (
                      <span className={styles.dayCheck} aria-hidden>
                        <Check size={12} weight="bold" />
                      </span>
                    ) : null}
                    <span className={styles.dayName}>{d.slice(0, 3)}</span>
                    <span className={styles.dayMode}>
                      {mode === "extended"
                        ? "Extended"
                        : mode === "standard"
                          ? "Standard"
                          : "Add day"}
                    </span>
                  </button>

                  {isOpen ? (
                    <div className={styles.dayMenu} role="menu">
                      <button
                        type="button"
                        role="menuitemradio"
                        aria-checked={mode === "standard"}
                        className={`${styles.dayMenuItem} ${mode === "standard" ? styles.dayMenuItemActive : ""}`}
                        onClick={() => setDayMode(d, "standard")}
                      >
                        <span className={styles.dayMenuTitle}>
                          Standard practice day
                        </span>
                        <span className={styles.dayMenuSub}>
                          Standard session length
                        </span>
                      </button>
                      <button
                        type="button"
                        role="menuitemradio"
                        aria-checked={mode === "extended"}
                        className={`${styles.dayMenuItem} ${mode === "extended" ? styles.dayMenuItemActive : ""}`}
                        onClick={() => setDayMode(d, "extended")}
                      >
                        <span className={styles.dayMenuTitle}>
                          Extended practice day
                        </span>
                        <span className={styles.dayMenuSub}>
                          More content scheduled
                        </span>
                      </button>
                      {mode !== "off" ? (
                        <button
                          type="button"
                          role="menuitem"
                          className={styles.dayMenuRemove}
                          onClick={() => setDayMode(d, "off")}
                        >
                          Remove this day
                        </button>
                      ) : null}
                    </div>
                  ) : null}
                </div>
              );
            })}
          </div>
        </div>
        <p className={styles.weakNote}>
          Tap a day, then choose <strong>Standard</strong> (a focused session) or{" "}
          <strong>Extended</strong> (more lessons and practice).
        </p>
      </WizardShell>
    );
  }

  // ── Practice-test day ───────────────────────────────────────────────────
  return (
    <WizardShell
      onBack={() => setStep("days")}
      title="Which day for practice tests?"
      subtitle="We'll place a full practice exam here every couple of weeks."
      onContinue={() => void handleBuild()}
      continueLabel={busy ? "Building your plan…" : "Build my plan"}
      busy={busy}
    >
      <div className={styles.testGrid}>
        {studyDays.map((d) => (
          <button
            key={d}
            type="button"
            className={`${styles.testPill} ${practiceTestDay === d ? styles.testPillActive : ""}`}
            onClick={() => setPracticeTestDay(d)}
          >
            {d}
          </button>
        ))}
      </div>
    </WizardShell>
  );
}

function WizardShell({
  title,
  subtitle,
  children,
  onBack,
  onContinue,
  continueLabel,
  continueDisabled,
  busy,
}: {
  title: string;
  subtitle: string;
  children: React.ReactNode;
  onBack: () => void;
  onContinue: () => void;
  continueLabel: string;
  continueDisabled?: boolean;
  busy?: boolean;
}) {
  return (
    <div className={styles.uploadPage}>
      <button type="button" className={styles.wizardBack} onClick={onBack}>
        <CaretLeft size={16} weight="bold" /> Back
      </button>
      <h1 className={styles.uploadTitle}>{title}</h1>
      <p className={styles.uploadSub}>{subtitle}</p>
      {children}
      <div className={styles.uploadActions}>
        <button
          type="button"
          className={styles.primaryBtn}
          disabled={busy || continueDisabled}
          onClick={onContinue}
        >
          {continueLabel}
        </button>
      </div>
    </div>
  );
}

function ScoreField({
  label,
  value,
  onChange,
  big,
}: {
  label: string;
  value: string;
  onChange: (v: string) => void;
  big?: boolean;
}) {
  return (
    <label className={`${styles.scoreField} ${big ? styles.scoreFieldBig : ""}`}>
      <span>{label}</span>
      <input
        type="number"
        inputMode="numeric"
        value={value}
        placeholder="—"
        onChange={(e) => onChange(e.target.value)}
      />
    </label>
  );
}
