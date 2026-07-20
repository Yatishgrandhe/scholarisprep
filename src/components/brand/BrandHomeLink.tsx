import Link from "next/link";
import type { ComponentProps } from "react";
import {
  BrandLockup,
  type BrandLockupSize,
  type BrandLockupVariant,
} from "@/components/brand/BrandLockup";
import { cn } from "@/lib/utils";

type BrandHomeLinkProps = {
  href?: string;
  className?: string;
  size?: BrandLockupSize;
  variant?: BrandLockupVariant;
} & Pick<ComponentProps<typeof Link>, "onClick">;

/** Scholaris mark + wordmark linking home — navbar, footer, auth, dashboard, onboarding. */
export function BrandHomeLink({
  href = "/",
  className,
  size = "sm",
  variant = "default",
  onClick,
}: BrandHomeLinkProps) {
  return (
    <Link
      href={href}
      className={cn(className)}
      aria-label="Scholaris home"
      onClick={onClick}
    >
      <BrandLockup size={size} variant={variant} />
    </Link>
  );
}
