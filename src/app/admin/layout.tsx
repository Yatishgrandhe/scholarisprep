import "@/styles/dashboard-panels.css";
import "@/styles/admin-theme.css";
import { redirect } from "next/navigation";
import { AdminSidebar } from "@/components/layout/AdminSidebar";
import { ShellThemeFooter } from "@/components/layout/ShellThemeFooter";
import { ErrorBoundary } from "@/components/shared/ErrorBoundary";
import { QueryProvider } from "@/components/providers/QueryProvider";
import { resolveIsPlatformAdmin } from "@/lib/admin/platform-admin";
import { createClient } from "@/lib/supabase/server";
import adminStyles from "./admin.module.css";

export const metadata = {
  title: "Platform Admin",
};

export default async function AdminLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    redirect("/auth/login?redirectTo=/admin");
  }

  const isAdmin = await resolveIsPlatformAdmin(supabase, user.id);
  if (!isAdmin) {
    redirect("/dashboard");
  }

  return (
    <QueryProvider>
      <div className={`adminShell ${adminStyles.shell}`}>
        <AdminSidebar />
        <div className={adminStyles.contentShell}>
          <div className={adminStyles.wash} aria-hidden />
          <div className={adminStyles.gridFade} aria-hidden />
          <main className={adminStyles.main}>
            <div className={adminStyles.pageBody}>
              <ErrorBoundary homeHref="/admin" homeLabel="Go to admin">
                {children}
              </ErrorBoundary>
            </div>
            <ShellThemeFooter />
          </main>
        </div>
      </div>
    </QueryProvider>
  );
}
