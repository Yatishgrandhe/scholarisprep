import { cn } from "@/lib/utils";

type ScholarisLogoMarkProps = {
  className?: string;
  size?: number;
};

/** Circular ring + center dot — matches navbar and favicon */
export function ScholarisLogoMark({
  className,
  size = 28,
}: ScholarisLogoMarkProps) {
  return (
    <svg
      className={cn(className)}
      width={size}
      height={size}
      viewBox="0 0 28 28"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      aria-hidden
    >
      <circle
        cx="14"
        cy="14"
        r="12"
        stroke="currentColor"
        strokeWidth="2.5"
        strokeDasharray="60 18"
        strokeLinecap="round"
      />
      <circle cx="14" cy="14" r="4" fill="currentColor" />
    </svg>
  );
}
