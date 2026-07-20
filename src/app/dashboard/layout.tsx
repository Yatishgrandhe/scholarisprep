import "@/styles/dashboard-panels.css";
import { DashboardShell } from "@/components/layout/DashboardShell";
import { QueryProvider } from "@/components/providers/QueryProvider";

export const metadata = {
  title: "Dashboard",
};

/**
 * Dashboard chrome (sidebar / top bar / mobile tab bar) lives in
 * `DashboardShell`, which hides it on fullscreen routes — including
 * `/dashboard/whiteboard` — via pathname detection. Other pages unchanged.
 */
export default function DashboardLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <QueryProvider>
      <DashboardShell>{children}</DashboardShell>
    </QueryProvider>
  );
}
