import { PlatformOverview } from "@/components/admin/PlatformOverview";
import { loadPlatformOverview } from "@/lib/admin/overview-data";
import { createClient } from "@/lib/supabase/server";

export default async function AdminOverviewPage() {
  // Layout already gates platform_admin. Use session client + RLS (not
  // service_role) so Overview still renders when the service key is bad.
  const supabase = await createClient();
  const result = await loadPlatformOverview(supabase);

  return (
    <PlatformOverview
      initialData={result.ok ? result.data : null}
      initialError={result.ok ? null : result.error}
    />
  );
}
