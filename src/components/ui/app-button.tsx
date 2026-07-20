import Link from "next/link";
import { Button as ShadButton, buttonVariants } from "@/components/ui/button";
import { cn } from "@/lib/utils";
import type { ComponentProps } from "react";

type ShadButtonProps = ComponentProps<typeof ShadButton>;
type LegacyVariant = ShadButtonProps["variant"] | "primary";
type LegacySize = ShadButtonProps["size"] | "md";

export type ButtonProps = Omit<ShadButtonProps, "variant" | "size"> & {
  href?: string;
  variant?: LegacyVariant;
  size?: LegacySize;
  fullWidth?: boolean;
};

function mapVariant(variant?: LegacyVariant): ShadButtonProps["variant"] {
  if (variant === "primary") return "default";
  return variant;
}

function mapSize(size?: LegacySize): ShadButtonProps["size"] {
  if (size === "md") return "default";
  return size;
}

export function Button({
  href,
  variant,
  size,
  fullWidth,
  className,
  children,
  ...props
}: ButtonProps) {
  const mappedVariant = mapVariant(variant);
  const mappedSize = mapSize(size);
  const classes = cn(
    "group/button",
    buttonVariants({ variant: mappedVariant, size: mappedSize }),
    fullWidth && "w-full",
    className,
  );

  if (href) {
    return (
      <Link href={href} className={classes} data-slot="button">
        {children}
      </Link>
    );
  }

  return (
    <ShadButton
      variant={mappedVariant}
      size={mappedSize}
      className={classes}
      {...props}
    >
      {children}
    </ShadButton>
  );
}
