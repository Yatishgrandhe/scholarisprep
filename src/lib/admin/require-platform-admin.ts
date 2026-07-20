import { NextResponse } from "next/server";
import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database, Profile } from "@/types/supabase";
import { resolveIsPlatformAdmin } from "@/lib/admin/platform-admin";
import { createAdminClient, isSupabaseAdminConfigured } from "@/lib/supabase/admin";
import { createClient } from "@/lib/supabase/server";

type AdminClient = SupabaseClient<Database>;

export type PlatformAdminContext = {
  userId: string;
  profile: Profile;
  admin: AdminClient;
};

type PlatformAdminResult =
  | { ok: true; ctx: PlatformAdminContext }
  | { ok: false; response: NextResponse };

export async function requirePlatformAdmin(): Promise<PlatformAdminResult> {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Unsigned-in → 401 (not 403). Avoids false "Forbidden" for missing session.
  if (!user) {
    return {
      ok: false,
      response: NextResponse.json({ error: "Unauthorized" }, { status: 401 }),
    };
  }

  const isAdmin = await resolveIsPlatformAdmin(supabase, user.id);
  if (!isAdmin) {
    return {
      ok: false,
      response: NextResponse.json({ error: "Forbidden" }, { status: 403 }),
    };
  }

  if (!isSupabaseAdminConfigured()) {
    return {
      ok: false,
      response: NextResponse.json(
        { error: "Admin data access is not configured" },
        { status: 503 },
      ),
    };
  }

  const admin = createAdminClient();

  // Prefer session profile; if RLS/session race returns null after RPC said
  // admin, load via service role so platform_admin is not falsely denied.
  const { data: sessionProfile } = await supabase
    .from("profiles")
    .select("*")
    .eq("id", user.id)
    .maybeSingle();

  let profile = sessionProfile;
  if (!profile) {
    const { data: adminProfile } = await admin
      .from("profiles")
      .select("*")
      .eq("id", user.id)
      .maybeSingle();
    profile = adminProfile;
  }

  if (!profile) {
    return {
      ok: false,
      response: NextResponse.json(
        { error: "Platform admin profile not found" },
        { status: 403 },
      ),
    };
  }

  return {
    ok: true,
    ctx: {
      userId: user.id,
      profile,
      admin,
    },
  };
}
