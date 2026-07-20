"use client";

import Link from "next/link";
import { BrandLockup } from "@/components/brand/BrandLockup";
import { Button } from "@/components/ui/app-button";
import styles from "./error-fallback.module.css";

type ErrorFallbackViewProps = {
  onTryAgain?: () => void;
  homeHref?: string;
  homeLabel?: string;
  description?: string;
};

export function ErrorFallbackView({
  onTryAgain,
  homeHref = "/",
  homeLabel = "Go home",
  description = "An unexpected error occurred. Try again or return to a safe page.",
}: ErrorFallbackViewProps) {
  return (
    <div className={styles.wrap} role="alert" aria-live="assertive">
      <BrandLockup className={styles.logo} size="lg" />
      <h1 className={styles.title}>Something went wrong</h1>
      <p className={styles.description}>{description}</p>
      <div className={styles.actions}>
        {onTryAgain ? (
          <Button type="button" variant="primary" onClick={onTryAgain}>
            Try again
          </Button>
        ) : null}
        <Link href={homeHref} className={styles.homeLink}>
          {homeLabel}
        </Link>
      </div>
    </div>
  );
}
