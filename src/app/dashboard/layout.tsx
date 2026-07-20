import "@/styles/dashboard-panels.css";
import { DashboardShell } from "@/components/layout/DashboardShell";
import { QueryProvider } from "@/components/providers/QueryProvider";

export const metadata = {
  title: "Dashboard",
};

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
