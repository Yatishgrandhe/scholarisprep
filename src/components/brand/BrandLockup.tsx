import { ScholarisLogoMark } from "@/components/brand/ScholarisLogoMark";
import { cn } from "@/lib/utils";
import styles from "./brand-lockup.module.css";

export type BrandLockupSize = "sm" | "md" | "lg";
export type BrandLockupVariant = "default" | "light";

const MARK_SIZES: Record<BrandLockupSize, number> = {
  sm: 28,
  md: 32,
  lg: 40,
};

type BrandLockupProps = {
  className?: string;
  size?: BrandLockupSize;
  variant?: BrandLockupVariant;
};

/** Icon mark + "Scholaris" wordmark — use in navbar, footer, auth, dashboard, onboarding. */
export function BrandLockup({
  className,
  size = "sm",
  variant = "default",
}: BrandLockupProps) {
  return (
    <span
      className={cn(
        styles.lockup,
        styles[size],
        variant === "light" && styles.light,
        className,
      )}
    >
      <ScholarisLogoMark className={styles.mark} size={MARK_SIZES[size]} />
      <span className={styles.wordmark}>Scholaris</span>
    </span>
  );
}
