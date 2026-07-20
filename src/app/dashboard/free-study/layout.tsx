import type { Metadata } from "next";
import { Suspense, type ReactNode } from "react";
import { FreeStudyStudioShell } from "@/components/free-study/FreeStudyStudioShell";

export const metadata: Metadata = {
  title: "Free Studying",
};

/**
 * Free Studying product layout — cobalt destination rail (Notion/Figma).
 * Dashboard chrome already hidden via `isFreeStudyFullscreenRoute`.
 * Whiteboard Studio stays rail-less on `/dashboard/whiteboard`.
 */
export default function FreeStudyLayout({ children }: { children: ReactNode }) {
  return (
    <Suspense
      fallback={
        <div
          data-free-study-studio-shell-fallback=""
          style={{ minHeight: "100dvh" }}
        >
          {children}
        </div>
      }
    >
      <FreeStudyStudioShell>{children}</FreeStudyStudioShell>
    </Suspense>
  );
}
