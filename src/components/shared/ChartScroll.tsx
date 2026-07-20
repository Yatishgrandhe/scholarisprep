import type { ReactNode } from "react";

export function ChartScroll({ children }: { children: ReactNode }) {
  return (
    <div className="chartScroll">
      <div className="chartScrollInner">{children}</div>
    </div>
  );
}
