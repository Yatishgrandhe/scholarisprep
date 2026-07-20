"use client";

import Link from "next/link";
import { useParams } from "next/navigation";
import { buttonVariants } from "@/components/ui/button";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { cn } from "@/lib/utils";
import dashboardStyles from "../../../../dashboard/dashboard.module.css";

export default function CreatorCourseAnalyticsPage() {
  const params = useParams();
  const courseId = params.courseId as string;

  return (
    <>
      <div className={dashboardStyles.pageHeaderRow}>
        <header className={dashboardStyles.pageHeader}>
          <h1 className={dashboardStyles.pageTitle}>Course analytics</h1>
          <p className={dashboardStyles.pageSubtitle}>
            Enrollment and completion metrics (coming soon)
          </p>
        </header>
        <div className="flex shrink-0 items-center gap-2">
          <Link
            href={`/creator/courses/${courseId}/edit`}
            className={cn(buttonVariants({ variant: "outline" }))}
          >
            Back to editor
          </Link>
          <ThemeToggle className="hidden md:flex" />
        </div>
      </div>
      <p className="text-muted-foreground">
        Analytics for this course will show enrollment trends, lesson completion rates,
        and question performance.
      </p>
    </>
  );
}
