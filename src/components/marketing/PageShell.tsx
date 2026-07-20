import type { ReactNode } from "react";
import { Button } from "@/components/ui/app-button";
import styles from "./PageShell.module.css";

type PageShellProps = {
  eyebrow?: string;
  title: string;
  subtitle: string;
  accent?: "sat" | "act" | "jamb" | "default";
  ctaLabel?: string;
  ctaHref?: string;
  children: ReactNode;
};

export function PageHero({
  eyebrow,
  title,
  subtitle,
  accent = "default",
  ctaLabel = "Start free",
  ctaHref = "/auth/signup",
}: Omit<PageShellProps, "children">) {
  return (
    <header className={`${styles.hero} ${styles[accent]}`}>
      <div className={styles.heroDecorClip} aria-hidden>
        <div className={styles.heroDecor}>
          <svg viewBox="0 0 200 200" className={styles.heroShape}>
            <circle
              cx="100"
              cy="100"
              r="80"
              fill="none"
              stroke="currentColor"
              strokeWidth="1"
              opacity="0.2"
            />
          </svg>
        </div>
      </div>
      <div className="container">
        <div className={styles.heroInner}>
          {eyebrow && <p className={styles.eyebrow}>{eyebrow}</p>}
          <h1 className={styles.heroTitle}>{title}</h1>
          <p className={styles.heroSubtitle}>{subtitle}</p>
          <Button href={ctaHref} variant="primary" size="lg" className={styles.heroCta}>
            {ctaLabel}
          </Button>
        </div>
      </div>
    </header>
  );
}

export function PageSection({
  title,
  children,
  alt = false,
}: {
  title?: string;
  children: ReactNode;
  alt?: boolean;
}) {
  return (
    <section
      className={`${styles.section} ${alt ? styles.sectionAlt : ""}`}
    >
      <div className="container">
        <div className={styles.sectionInner}>
          {title && <h2 className={styles.sectionTitle}>{title}</h2>}
          {children}
        </div>
      </div>
    </section>
  );
}

export function PageContent({ children }: { children: ReactNode }) {
  return <div className={styles.content}>{children}</div>;
}
