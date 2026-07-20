import type { User } from "@supabase/supabase-js";
import { sendWelcomeEmail } from "@/lib/email/send";
import { isResendConfigured } from "@/lib/env";
import { createAdminClient, isSupabaseAdminConfigured } from "@/lib/supabase/admin";

export function welcomeEmailAlreadySent(user: User): boolean {
  return user.user_metadata?.welcome_email_sent === true;
}

export function firstNameFromUser(user: User): string | null {
  const fullName =
    user.user_metadata?.full_name ?? user.user_metadata?.name ?? null;
  if (typeof fullName !== "string" || !fullName.trim()) {
    return null;
  }
  return fullName.split(/\s+/)[0] ?? null;
}

/** Sends welcome email once per user (tracked in auth user_metadata). */
export async function sendWelcomeEmailOnce(
  user: User,
  firstName?: string | null,
): Promise<void> {
  if (!user.email || !isResendConfigured()) {
    return;
  }

  if (welcomeEmailAlreadySent(user)) {
    return;
  }

  if (!isSupabaseAdminConfigured()) {
    console.error("[welcome-email] admin client not configured");
    return;
  }

  const resolvedFirstName = firstName ?? firstNameFromUser(user);

  try {
    await sendWelcomeEmail({ to: user.email, firstName: resolvedFirstName });

    const admin = createAdminClient();
    const { error } = await admin.auth.admin.updateUserById(user.id, {
      user_metadata: {
        ...user.user_metadata,
        welcome_email_sent: true,
      },
    });

    if (error) {
      console.error("[welcome-email] metadata update failed:", error.message);
    }
  } catch (err) {
    console.error(
      "[welcome-email] send failed:",
      err instanceof Error ? err.message : err,
    );
  }
}
