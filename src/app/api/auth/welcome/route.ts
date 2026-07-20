import { NextResponse } from "next/server";
import { parseJsonBodyOrEmpty } from "@/lib/api/validation";
import { sendWelcomeEmailOnce } from "@/lib/auth/welcome-email";
import { verifyCsrf } from "@/lib/csrf";
import { emptyBodySchema } from "@/lib/validations/api";
import { createClient } from "@/lib/supabase/server";

/**
 * Sends the welcome email for the current session user (once per account).
 * Used after email/password signup when a session exists without OAuth callback.
 */
export async function POST(request: Request) {
  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  const parsed = await parseJsonBodyOrEmpty(request, emptyBodySchema);
  if (!parsed.ok) return parsed.response;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  await sendWelcomeEmailOnce(user);
  return NextResponse.json({ ok: true });
}
