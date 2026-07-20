import { Resend } from "resend";
import { getResendFromAddress, isResendConfigured } from "@/lib/env";

let resendClient: Resend | null = null;

export { isResendConfigured, getResendFromAddress };

export function getResendClient(): Resend {
  const apiKey = process.env.RESEND_API_KEY?.trim();
  if (!apiKey || !isResendConfigured()) {
    throw new Error(
      "RESEND_API_KEY is not configured (set a real Resend API key, not the re_... placeholder).",
    );
  }

  if (!resendClient) {
    resendClient = new Resend(apiKey);
  }

  return resendClient;
}

export type SendEmailInput = {
  to: string;
  subject: string;
  html: string;
  text?: string;
  replyTo?: string;
};

export type SendEmailResult =
  | { ok: true; id: string }
  | { ok: false; skipped: true }
  | { ok: false; error: string };

export async function sendEmail(
  input: SendEmailInput,
): Promise<SendEmailResult> {
  if (!isResendConfigured()) {
    console.warn("[resend] RESEND_API_KEY not set; email not sent");
    return { ok: false, skipped: true };
  }

  const resend = getResendClient();
  const { data, error } = await resend.emails.send({
    from: getResendFromAddress(),
    to: input.to,
    subject: input.subject,
    html: input.html,
    text: input.text,
    replyTo: input.replyTo,
  });

  if (error) {
    console.error("[resend]", error.message);
    const status =
      "statusCode" in error && typeof error.statusCode === "number"
        ? error.statusCode
        : undefined;
    const msg = error.message || "Failed to send email";
    // Surface config / domain issues clearly for API routes
    if (
      status === 401 ||
      /api key is invalid|invalid api key|unauthorized/i.test(msg)
    ) {
      return {
        ok: false,
        error:
          "Resend API key is invalid. Set a valid RESEND_API_KEY in the environment.",
      };
    }
    if (
      status === 403 ||
      /domain|not verified|from address|restricted/i.test(msg)
    ) {
      return {
        ok: false,
        error: `Resend rejected the sender (${getResendFromAddress()}): ${msg}. Verify the domain in Resend and set RESEND_FROM_EMAIL.`,
      };
    }
    return { ok: false, error: msg };
  }

  return { ok: true, id: data?.id ?? "unknown" };
}
