import { DashboardShell } from "@/components/layout/DashboardShell";

export const metadata = {
  title: "Creator Studio",
};

export default function CreatorLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <DashboardShell>{children}</DashboardShell>;
}
