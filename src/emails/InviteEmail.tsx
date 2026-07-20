import { Button, Heading, Section, Text } from "@react-email/components";
import { render } from "@react-email/render";
import { EmailLayout, emailTextStyles } from "./components/EmailLayout";

export type InviteEmailProps = {
  orgName: string;
  inviterName: string;
  roleLabel: string;
  inviteUrl: string;
};

export function inviteEmailSubject(orgName: string): string {
  return `You're invited to join ${orgName} on Scholaris`;
}

export function InviteEmail({
  orgName,
  inviterName,
  roleLabel,
  inviteUrl,
}: InviteEmailProps) {
  return (
    <EmailLayout
      preview={`${inviterName} invited you to ${orgName} on Scholaris`}
    >
      <Heading style={emailTextStyles.heading}>
        Join {orgName}
      </Heading>
      <Text style={emailTextStyles.paragraph}>
        <span style={emailTextStyles.highlight}>{inviterName}</span> invited you
        to Scholaris as a{" "}
        <span style={emailTextStyles.highlight}>{roleLabel}</span>.
      </Text>
      <Text style={emailTextStyles.subheading}>
        Create your account to access your organization&apos;s courses, practice,
        and progress tracking.
      </Text>
      <Section style={emailTextStyles.ctaSection}>
        <Button href={inviteUrl} style={emailTextStyles.cta}>
          Join on Scholaris
        </Button>
      </Section>
      <Text style={emailTextStyles.muted}>
        Or copy this link:{" "}
        <a href={inviteUrl} style={emailTextStyles.inlineLink}>
          {inviteUrl}
        </a>
        <br />
        This invitation expires in 7 days.
      </Text>
    </EmailLayout>
  );
}

export async function renderInviteEmail(
  props: InviteEmailProps,
): Promise<string> {
  return render(InviteEmail(props));
}
