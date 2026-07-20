"use client";

import { useEffect } from "react";
import { useRouter } from "next/navigation";
import { OrgSidebar } from "@/components/layout/OrgSidebar";
import { ShellThemeFooter } from "@/components/layout/ShellThemeFooter";
import { ErrorBoundary } from "@/components/shared/ErrorBoundary";
import { useAuth } from "@/hooks/useAuth";
import styles from "@/app/org/org.module.css";

export function OrgShell({ children }: { children: React.ReactNode }) {
  const router = useRouter();
  const { profile, loading } = useAuth();

  useEffect(() => {
    if (loading) return;
    if (profile && profile.role !== "org_admin") {
      router.replace("/dashboard");
    }
  }, [loading, profile, router]);

  if (loading) {
    return (
      <div className={styles.shell}>
        <OrgSidebar />
        <main className={styles.main}>
          <p className={styles.loading}>Loading organization…</p>
        </main>
      </div>
    );
  }

  if (profile && profile.role !== "org_admin") {
    return null;
  }

  return (
    <div className={styles.shell}>
      <OrgSidebar />
      <main className={styles.main}>
        <ErrorBoundary homeHref="/org" homeLabel="Go to organization">
          {children}
        </ErrorBoundary>
        <ShellThemeFooter />
      </main>
    </div>
  );
}
