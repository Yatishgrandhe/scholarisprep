import { Skeleton } from "@/components/ui/skeleton";
import { cn } from "@/lib/utils";
import styles from "./skeletons.module.css";

type ChartSkeletonProps = {
  className?: string;
  height?: number;
};

export function ChartSkeleton({ className, height = 280 }: ChartSkeletonProps) {
  return (
    <Skeleton
      className={cn(styles.chartBlock, className)}
      style={{ height }}
      aria-busy="true"
      aria-label="Loading chart"
    />
  );
}
