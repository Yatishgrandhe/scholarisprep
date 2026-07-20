import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import type { EmailOtpType } from "@supabase/supabase-js";

/**
 * Exchanges an email OTP / recovery token_hash for a session, then redirects.
 *
 * Used when the Supabase Auth "Reset password" email template links to:
 *   {{ .SiteURL }}/auth/confirm?token_hash={{ .TokenHash }}&type=recovery&next=/auth/reset-password
 * (recommended for SSR / PKCE). Default ConfirmationURL links use /auth/callback instead.
 */
export async function GET(request: Request) {
  const { searchParams, origin } = new URL(request.url);
  const tokenHash = searchParams.get("token_hash");
  const type = searchParams.get("type") as EmailOtpType | null;
  const nextParam = searchParams.get("next");
  const next =
    nextParam?.startsWith("/") && !nextParam.startsWith("//")
      ? nextParam
      : "/auth/reset-password";

  if (!tokenHash || !type) {
    return NextResponse.redirect(
      `${origin}/auth/login?error=reset_link_invalid`,
    );
  }

  const supabase = await createClient();
  const { error } = await supabase.auth.verifyOtp({
    type,
    token_hash: tokenHash,
  });

  if (error) {
    console.error("[auth/confirm]", error.message);
    return NextResponse.redirect(
      `${origin}/auth/login?error=reset_link_invalid`,
    );
  }

  return NextResponse.redirect(`${origin}${next}`);
}
