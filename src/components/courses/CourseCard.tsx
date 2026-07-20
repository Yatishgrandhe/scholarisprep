"use client";

import Image from "next/image";
import Link from "next/link";
import styles from "./courses.module.css";

type CourseCardProps = {
  id: string;
  title: string;
  thumbnailUrl: string | null;
  creatorName: string | null;
  examType: string | null;
  subject: string | null;
  isFree: boolean | null;
  priceCents: number | null;
  progressPercent?: number;
  continueHref?: string | null;
  enrolled?: boolean;
  enrolling?: boolean;
  onEnroll?: () => void;
};

/* Vivid cover gradients — Reading & Writing maps to pink/magenta, Math to
   blue; everything else rotates deterministically from the title hash. */
const COVER_GRADIENTS = [
  "linear-gradient(135deg, #c026d3, #ec4899)",
  "linear-gradient(135deg, #2563eb, #06b6d4)",
  "linear-gradient(135deg, #7c3aed, #a855f7)",
  "linear-gradient(135deg, #0d9488, #22c55e)",
  "linear-gradient(135deg, #ea580c, #f59e0b)",
  "linear-gradient(135deg, #0ea5e9, #6366f1)",
] as const;

function coverGradient(title: string, subject: string | null): string {
  const key = `${subject ?? ""} ${title}`.toLowerCase();
  if (/reading|writing|english|verbal|grammar|vocab/.test(key)) {
    return COVER_GRADIENTS[0];
  }
  if (/math|algebra|geometry|calculus|quant|trig|statistic/.test(key)) {
    return COVER_GRADIENTS[1];
  }
  let hash = 0;
  for (let i = 0; i < key.length; i += 1) {
    hash = (hash * 31 + key.charCodeAt(i)) >>> 0;
  }
  return COVER_GRADIENTS[2 + (hash % (COVER_GRADIENTS.length - 2))];
}

export function CourseCard({
  id: _id,
  title,
  thumbnailUrl,
  creatorName,
  examType,
  subject,
  isFree,
  priceCents,
  progressPercent,
  continueHref,
  enrolled,
  enrolling,
  onEnroll,
}: CourseCardProps) {
  const showProgress = progressPercent !== undefined;

  return (
    <article className={styles.card}>
      <div
        className={styles.cover}
        style={
          thumbnailUrl
            ? undefined
            : { background: coverGradient(title, subject) }
        }
      >
        {thumbnailUrl ? (
          <>
            <Image
              src={thumbnailUrl}
              alt={`${title} course thumbnail`}
              fill
              className={styles.thumbnail}
              sizes="(max-width: 768px) 100vw, 560px"
            />
            <span className={styles.coverScrim} aria-hidden />
          </>
        ) : null}
        {examType ? (
          <span className={styles.examBadge}>{examType}</span>
        ) : null}
        <h3 className={styles.coverTitle}>{title}</h3>
      </div>

      <div className={styles.body}>
        <p className={styles.meta}>
          {creatorName ? `by ${creatorName}` : "Scholaris Creator"}
          {subject ? ` · ${subject}` : ""}
        </p>

        {showProgress ? (
          <div className={styles.progressBlock}>
            <div className={styles.progressRow}>
              <span className={styles.progressLabel}>Your progress</span>
              <span className={styles.progressValue}>
                {Math.round(progressPercent)}%
              </span>
            </div>
            <div
              className={styles.progressTrack}
              role="progressbar"
              aria-valuenow={Math.round(progressPercent)}
              aria-valuemin={0}
              aria-valuemax={100}
            >
              <span
                className={styles.progressFill}
                style={{ width: `${Math.min(100, Math.max(0, progressPercent))}%` }}
              />
            </div>
          </div>
        ) : (
          <p className={styles.priceLabel}>
            {isFree ? "Free" : `$${((priceCents ?? 0) / 100).toFixed(2)}`}
          </p>
        )}

        <div className={styles.footer}>
          {showProgress && continueHref ? (
            <Link href={continueHref} className={styles.blackBtn}>
              {progressPercent > 0 ? "Continue course" : "View course"}
            </Link>
          ) : enrolled ? (
            <button type="button" className={styles.enrolledBtn} disabled>
              Enrolled
            </button>
          ) : (
            <button
              type="button"
              className={styles.blackBtn}
              onClick={onEnroll}
              disabled={enrolling}
            >
              {enrolling ? "Enrolling…" : "Enroll"}
            </button>
          )}
        </div>
      </div>
    </article>
  );
}
