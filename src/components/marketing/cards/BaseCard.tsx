import type { ReactNode } from "react";
import { cn } from "@/lib/utils";
import styles from "./BaseCard.module.css";

export type BaseCardProps = {
  title?: string;
  description?: string;
  meta?: string;
  date?: string;
  accent?: boolean;
  centered?: boolean;
  stepNumber?: string;
  thumbnail?: ReactNode;
  className?: string;
  children?: ReactNode;
};

export function BaseCard({
  title,
  description,
  meta,
  date,
  accent = false,
  centered = false,
  stepNumber,
  thumbnail,
  className,
  children,
}: BaseCardProps) {
  const hasThumb = Boolean(thumbnail);
  const hasHeaderRow = Boolean(stepNumber || meta);

  return (
    <article
      className={cn(
        styles.baseCard,
        accent && styles.baseCardAccent,
        !hasThumb && centered && styles.baseCardCentered,
        className,
      )}
    >
      <div className={styles.panel}>
        {thumbnail && <div className={styles.thumbnail}>{thumbnail}</div>}
        <div className={cn(styles.body, centered && styles.bodyCentered)}>
          {hasHeaderRow && (
            <div className={styles.headerRow}>
              {stepNumber && (
                <span className={styles.stepTile} aria-hidden>
                  {stepNumber}
                </span>
              )}
              {meta && <p className={styles.meta}>{meta}</p>}
            </div>
          )}
          {title && <h3 className={styles.baseCardTitle}>{title}</h3>}
          {description && <p className={styles.baseCardDesc}>{description}</p>}
          {children}
          {date && (
            <div className={styles.footerRow}>
              <time className={styles.date}>{date}</time>
              <span className={styles.footerArrow} aria-hidden>
                →
              </span>
            </div>
          )}
        </div>
      </div>
    </article>
  );
}
