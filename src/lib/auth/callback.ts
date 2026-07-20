import { NextResponse } from "next/server";
import { sendWelcomeEmailOnce } from "@/lib/auth/welcome-email";
import { resolvePostAuthDestination } from "@/lib/auth/roleHome";
import { createClient } from "@/lib/supabase/server";
import type { UserRole } from "@/types/supabase";

export async function handleAuthCallback(
  request: Request,
  code: string | null,
): Promise<NextResponse> {
  const { searchParams, origin } = new URL(request.url);
  const nextParam = searchParams.get("next");

  if (!code) {
    return NextResponse.redirect(
      `${origin}/auth/login?error=auth_callback_failed`,
    );
  }

  const supabase = await createClient();
  const { error } = await supabase.auth.exchangeCodeForSession(code);

  if (error) {
    return NextResponse.redirect(
      `${origin}/auth/login?error=auth_callback_failed`,
    );
  }

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.redirect(
      `${origin}/auth/login?error=auth_callback_failed`,
    );
  }

  const fullName =
    user.user_metadata?.full_name ?? user.user_metadata?.name ?? null;
  const resolvedName = typeof fullName === "string" ? fullName : null;

  // Sync email/name only. Do NOT upsert a partial row — PostgREST fills omitted
  // columns with column DEFAULTs on conflict, which reset role → student and
  // onboarding_completed → false on every Google (OAuth) login.
  const { data: existing } = await supabase
    .from("profiles")
    .select("id, role, onboarding_completed")
    .eq("id", user.id)
    .maybeSingle();

  if (existing) {
    await supabase
      .from("profiles")
      .update({
        email: user.email ?? "",
        ...(resolvedName ? { full_name: resolvedName } : {}),
      })
      .eq("id", user.id);
  } else {
    // handle_new_user trigger normally inserts; this covers races / missing trigger.
    await supabase.from("profiles").insert({
      id: user.id,
      email: user.email ?? "",
      full_name: resolvedName,
      role: "student",
      onboarding_completed: false,
    });
  }

  if (user.email) {
    await sendWelcomeEmailOnce(user, resolvedName?.split(/\s+/)[0] ?? null);
  }

  const { data: profile } = await supabase
    .from("profiles")
    .select("role, onboarding_completed")
    .eq("id", user.id)
    .maybeSingle();

  const role = (profile?.role ?? existing?.role ?? "student") as UserRole;
  const onboardingDone =
    profile?.onboarding_completed ?? existing?.onboarding_completed ?? false;

  const destination = !onboardingDone
    ? nextParam?.startsWith("/auth/reset-password")
      ? nextParam
      : "/onboarding/role"
    : resolvePostAuthDestination(role, nextParam);

  return NextResponse.redirect(`${origin}${destination}`);
}
