import {
  courseApprovedSubject,
  courseRejectedSubject,
  passwordResetEmailSubject,
  renderCourseApprovedEmail,
  renderCourseRejectedEmail,
  renderPasswordResetEmail,
} from "@/emails";
import { sendEmail } from "@/lib/resend";
import { getAppUrl } from "@/lib/env";
import {
  inviteEmailSubject,
  renderInviteEmail,
} from "@/emails/InviteEmail";
import type { OrgInviteBody } from "@/lib/validations/org";

export function formatInviteRoleLabel(role: OrgInviteBody["role"]): string {
  if (role === "creator") return "Course creator";
  return "Student";
}

type WelcomeEmailInput = {
  to: string;
  firstName: string | null;
};

export async function sendWelcomeEmail(
  input: WelcomeEmailInput,
): Promise<{ id?: string; skipped?: boolean }> {
  const greeting = input.firstName ? `Hi ${input.firstName}` : "Hi there";
  const appUrl = getAppUrl();

  const result = await sendEmail({
    to: input.to,
    subject: "Welcome to Scholaris",
    html: `
      <p>${greeting},</p>
      <p>Your Scholaris account is ready. Start practicing, track your progress, and reach your target score.</p>
      <p><a href="${appUrl}/dashboard">Open your dashboard</a></p>
    `,
    text: `${greeting},\n\nYour Scholaris account is ready. Open your dashboard: ${appUrl}/dashboard`,
  });

  if (!result.ok) {
    if ("skipped" in result && result.skipped) return { skipped: true };
    throw new Error("error" in result ? result.error : "Failed to send email");
  }

  return { id: result.id };
}

type InviteEmailInput = {
  to: string;
  orgName: string;
  inviterName: string;
  roleLabel: string;
  inviteUrl: string;
};

export async function sendInviteEmail(input: InviteEmailInput): Promise<void> {
  const html = await renderInviteEmail({
    orgName: input.orgName,
    inviterName: input.inviterName,
    roleLabel: input.roleLabel,
    inviteUrl: input.inviteUrl,
  });

  const result = await sendEmail({
    to: input.to,
    subject: inviteEmailSubject(input.orgName),
    html,
    text: `${input.inviterName} invited you to join ${input.orgName} on Scholaris as a ${input.roleLabel}. Accept: ${input.inviteUrl}\n\nThis invitation expires in 7 days.`,
  });

  if (!result.ok) {
    if ("skipped" in result && result.skipped) {
      throw new Error("Email service is not configured");
    }
    throw new Error("error" in result ? result.error : "Failed to send email");
  }
}

type CourseReviewEmailInput = {
  to: string;
  courseTitle: string;
  courseId: string;
  approved: boolean;
  reason?: string;
  creatorName?: string | null;
};

export async function sendCourseReviewEmail(
  input: CourseReviewEmailInput,
): Promise<{ id?: string; skipped?: boolean }> {
  const subject = input.approved
    ? courseApprovedSubject(input.courseTitle)
    : courseRejectedSubject(input.courseTitle);

  const html = input.approved
    ? await renderCourseApprovedEmail({
        creatorName: input.creatorName ?? null,
        courseTitle: input.courseTitle,
        courseId: input.courseId,
      })
    : await renderCourseRejectedEmail({
        creatorName: input.creatorName ?? null,
        courseTitle: input.courseTitle,
        reason: input.reason?.trim() || "No reason provided.",
      });

  const result = await sendEmail({
    to: input.to,
    subject,
    html,
    text: subject,
  });

  if (!result.ok) {
    if ("skipped" in result && result.skipped) return { skipped: true };
    throw new Error("error" in result ? result.error : "Failed to send email");
  }

  return { id: result.id };
}

type PasswordResetEmailInput = {
  to: string;
  resetUrl: string;
};

export async function sendPasswordResetEmail(
  input: PasswordResetEmailInput,
): Promise<{ id?: string; skipped?: boolean }> {
  const subject = passwordResetEmailSubject();
  const html = await renderPasswordResetEmail({ resetUrl: input.resetUrl });

  const result = await sendEmail({
    to: input.to,
    subject,
    html,
    text: `Reset your Scholaris password:\n\n${input.resetUrl}\n\nIf you did not request this, you can ignore this email.`,
  });

  if (!result.ok) {
    if ("skipped" in result && result.skipped) {
      throw new Error("Email service is not configured");
    }
    throw new Error("error" in result ? result.error : "Failed to send email");
  }

  return { id: result.id };
}
