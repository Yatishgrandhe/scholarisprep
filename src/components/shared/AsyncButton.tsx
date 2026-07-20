"use client";

import { Button } from "@/components/ui/app-button";
import styles from "./AsyncButton.module.css";

type AsyncButtonProps = {
  onClick?: () => void | Promise<void>;
  disabled?: boolean;
  loading?: boolean;
  loadingLabel?: string;
  children: React.ReactNode;
  variant?: "primary" | "secondary" | "ghost";
  className?: string;
  type?: "button" | "submit";
};

export function AsyncButton({
  onClick,
  disabled,
  loading,
  loadingLabel = "Checking...",
  children,
  variant = "primary",
  className,
  type = "button",
}: AsyncButtonProps) {
  return (
    <Button
      type={type}
      variant={variant}
      className={`${styles.btn} ${className ?? ""}`}
      disabled={disabled || loading}
      onClick={() => void onClick?.()}
    >
      {loading ? (
        <span className={styles.loading}>
          <span className={styles.spinner} aria-hidden />
          {loadingLabel}
        </span>
      ) : (
        children
      )}
    </Button>
  );
}
