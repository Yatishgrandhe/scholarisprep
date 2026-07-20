import { redirect } from "next/navigation";
import { OrgShell } from "@/components/layout/OrgShell";
import { QueryProvider } from "@/components/providers/QueryProvider";
import { createClient } from "@/lib/supabase/server";

export const metadata = {
  title: "Organization",
};

export default async function OrgLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    redirect("/auth/login?redirectTo=/org");
  }

  const { data: profile } = await supabase
    .from("profiles")
    .select("role")
    .eq("id", user.id)
    .single();

  if (profile?.role !== "org_admin") {
    redirect("/dashboard");
  }

  return (
    <QueryProvider>
      <OrgShell>{children}</OrgShell>
    </QueryProvider>
  );
}
