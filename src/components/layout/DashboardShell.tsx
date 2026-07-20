"use client";

import { Suspense, useCallback, useSyncExternalStore } from "react";
import { usePathname } from "next/navigation";
import { DashboardSidebar } from "@/components/layout/DashboardSidebar";
import { DashboardTopBar } from "@/components/layout/DashboardTopBar";
import { MobileTabBar } from "@/components/layout/MobileTabBar";
import { AccountSyncEffect } from "@/components/dashboard/AccountSyncEffect";
import { ActiveExamScopeEffect } from "@/components/dashboard/ActiveExamScopeEffect";
import { AiKeyPrompt } from "@/components/ai/AiKeyPrompt";
import { BackfillExamTypeEffect } from "@/components/dashboard/BackfillExamTypeEffect";
import { ErrorBoundary } from "@/components/shared/ErrorBoundary";
import { isExamFullscreenRoute } from "@/lib/dashboard/shellRoutes";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import {
  getSidebarCollapsed,
  setSidebarCollapsed,
} from "@/lib/dashboard/userPreferences";
import styles from "@/app/dashboard/dashboard.module.css";

const subscribeSidebar = (onStoreChange: () => void) => {
  const handler = () => onStoreChange();
  window.addEventListener("scholaris-sidebar-change", handler);
  return () => window.removeEventListener("scholaris-sidebar-change", handler);
};

function getSidebarSnapshot() {
  return getSidebarCollapsed();
}

function getSidebarServerSnapshot() {
  return false;
}

export function DashboardShell({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const examType = useActiveExamType();
  // Pathname-driven: practice sessions, exams, question-rush, and
  // `/dashboard/whiteboard` drop sidebar + top bar for a full-bleed canvas.
  // Other dashboard routes keep the normal chrome (incl. free-study hub).
  const hideShell = isExamFullscreenRoute(pathname ?? "");
  const pageScopeKey = `${pathname ?? ""}:${examType}`;
  const collapsed = useSyncExternalStore(
    subscribeSidebar,
    getSidebarSnapshot,
    getSidebarServerSnapshot,
  );

  const toggleSidebar = useCallback(() => {
    const next = !getSidebarCollapsed();
    setSidebarCollapsed(next);
    window.dispatchEvent(new Event("scholaris-sidebar-change"));
  }, []);

  if (hideShell) {
    return (
      <div className={styles.examLayout} data-shell="fullscreen">
        {children}
        <AiKeyPrompt />
      </div>
    );
  }

  return (
    <div
      className={`${styles.layout} ${collapsed ? styles.layoutCollapsed : ""}`}
      data-sidebar-collapsed={collapsed ? "true" : "false"}
    >
      <AccountSyncEffect />
      <BackfillExamTypeEffect />
      <Suspense fallback={null}>
        <ActiveExamScopeEffect />
      </Suspense>

      {/* Sidebar always rendered — collapses to icon rail, never disappears */}
      <DashboardSidebar collapsed={collapsed} onCollapse={toggleSidebar} />

      <div className={styles.contentShell} data-dashboard-shell>
        <main className={styles.main} id="dashboard-main">
          <DashboardTopBar />
          <div className={styles.pageBody}>
            {/* keyed on route + active exam so course switches remount scoped pages */}
            <div key={pageScopeKey} className={styles.pageEnter}>
              <ErrorBoundary homeHref="/dashboard" homeLabel="Go to dashboard">
                {children}
              </ErrorBoundary>
            </div>
          </div>
        </main>
      </div>
      <MobileTabBar />
      <AiKeyPrompt />
    </div>
  );
}
