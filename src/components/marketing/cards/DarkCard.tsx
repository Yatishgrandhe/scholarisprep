import Link from "next/link";
import type { ReactNode } from "react";
import { cn } from "@/lib/utils";
import styles from "./DarkCard.module.css";

export type DarkCardProps = {
  title: string;
  description?: string;
  ctaLabel: string;
  ctaHref: string;
  className?: string;
  children?: ReactNode;
};

export function DarkCard({
  title,
  description,
  ctaLabel,
  ctaHref,
  className,
  children,
}: DarkCardProps) {
  return (
    <article className={cn(styles.darkCard, className)}>
      <h2 className={styles.darkCardTitle}>{title}</h2>
      {description && <p className={styles.darkCardDesc}>{description}</p>}
      {children}
      <Link href={ctaHref} className={styles.darkCardCta}>
        {ctaLabel}
      </Link>
    </article>
  );
}
