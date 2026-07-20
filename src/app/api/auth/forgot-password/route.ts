import { NextResponse } from "next/server";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { getAppUrl } from "@/lib/env";
import { createClient } from "@/lib/supabase/server";
import { forgotPasswordSchema } from "@/lib/validations/auth";

/**
 * Triggers Supabase Auth's built-in recovery email (`/auth/v1/recover`).
 *
 * Email is sent by Supabase (default Auth SMTP or Custom SMTP under
 * Authentication → SMTP) — not by Resend.
 *
 * redirectTo must be on the Auth redirect allowlist. Prefer the PKCE callback:
 *   {APP_URL}/auth/callback?next=/auth/reset-password
 * Or customize the Reset Password template to use token_hash → /auth/confirm
 * (see .env.example / skills.md).
 */
export async function POST(request: Request) {
  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const parsed = await parseJsonBody(request, forgotPasswordSchema);
  if (!parsed.ok) return parsed.response;

  const email = parsed.data.email.trim().toLowerCase();
  const appUrl = getAppUrl();
  const redirectTo = `${appUrl}/auth/callback?next=/auth/reset-password`;

  try {
    const supabase = await createClient();
    const { error } = await supabase.auth.resetPasswordForEmail(email, {
      redirectTo,
    });

    if (error) {
      // Anti-enumeration: "user not found" style errors look like success.
      const msg = error.message.toLowerCase();
      const isUnknownUser =
        msg.includes("user not found") ||
        msg.includes("unable to find user") ||
        msg.includes("email not found") ||
        error.status === 404;

      if (isUnknownUser) {
        console.warn("[forgot-password] recover (hidden):", error.message);
        return NextResponse.json({ ok: true });
      }

      // Rate limits / SMTP / config failures must surface (not silent success).
      console.error("[forgot-password] recover:", error.message);
      const isRateLimit =
        error.status === 429 ||
        /rate.?limit|too many requests|email rate/i.test(error.message);
      const isSmtp =
        /smtp|error sending|email.*fail|mail.*fail/i.test(error.message);

      return NextResponse.json(
        {
          error: isRateLimit
            ? "Too many reset emails were requested. Please wait a few minutes and try again."
            : isSmtp
              ? "Supabase could not send the reset email. Check Authentication → SMTP (or built-in email limits) in the Supabase dashboard."
              : error.message ||
                "We couldn't send the reset email. Please try again in a few minutes.",
        },
        { status: isRateLimit ? 429 : isSmtp ? 503 : 502 },
      );
    }

    return NextResponse.json({ ok: true });
  } catch (err) {
    const message = err instanceof Error ? err.message : "Failed to send email";
    console.error("[forgot-password]", message);
    return NextResponse.json(
      {
        error:
          "We couldn't send the reset email. Please try again in a few minutes.",
      },
      { status: 502 },
    );
  }
}
