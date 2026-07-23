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
import {
  isExamFullscreenRoute,
  isFreeStudyFullscreenRoute,
  isLabsFullscreenRoute,
  isWhiteboardFullscreenRoute,
} from "@/lib/dashboard/shellRoutes";
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
  const path = pathname ?? "";

  // Immersive study surfaces drop PRIMARY dashboard chrome (sidebar / top bar /
  // mobile tab bar). Product shells keep their own sidebars:
  // - FreeStudyShell on `/dashboard/free-study`
  // - LabsShell on `/dashboard/labs` (+ `/dashboard/labs/[simId]`)
  // - WhiteboardStudio on `/dashboard/whiteboard`
  const hideShell =
    isExamFullscreenRoute(path) ||
    isFreeStudyFullscreenRoute(path) ||
    isLabsFullscreenRoute(path) ||
    isWhiteboardFullscreenRoute(path);

  const pageScopeKey = `${path}:${examType}`;
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
      <div
        className={styles.examLayout}
        data-shell="fullscreen"
        data-dashboard-chrome="hidden"
        data-free-study-fullscreen={
          isFreeStudyFullscreenRoute(path) ? "true" : undefined
        }
        data-labs-fullscreen={
          isLabsFullscreenRoute(path) ? "true" : undefined
        }
        data-whiteboard-fullscreen={
          isWhiteboardFullscreenRoute(path) ? "true" : undefined
        }
      >
        {/* No DashboardSidebar / DashboardTopBar / MobileTabBar here. */}
        {children}
        <AiKeyPrompt />
      </div>
    );
  }

  return (
    <div
      className={`${styles.layout} ${collapsed ? styles.layoutCollapsed : ""}`}
      data-sidebar-collapsed={collapsed ? "true" : "false"}
      data-dashboard-chrome="visible"
    >
      <AccountSyncEffect />
      <BackfillExamTypeEffect />
      <Suspense fallback={null}>
        <ActiveExamScopeEffect />
      </Suspense>

      {/* Primary dashboard sidebar — not used on free-study / labs / whiteboard */}
      <Suspense fallback={null}>
        <DashboardSidebar collapsed={collapsed} onCollapse={toggleSidebar} />
      </Suspense>

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
