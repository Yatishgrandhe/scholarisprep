import { Button, Heading, Section, Text } from "@react-email/components";
import { render } from "@react-email/render";
import { EmailLayout, emailTextStyles } from "./components/EmailLayout";

export type PasswordResetEmailProps = {
  resetUrl: string;
};

export function passwordResetEmailSubject(): string {
  return "Reset your Scholaris password";
}

export function PasswordResetEmail({ resetUrl }: PasswordResetEmailProps) {
  return (
    <EmailLayout preview="Reset your Scholaris password">
      <Heading style={emailTextStyles.heading}>Reset your password</Heading>
      <Text style={emailTextStyles.paragraph}>
        We received a request to reset the password for your Scholaris account.
        Click the button below to choose a new password.
      </Text>
      <Section style={emailTextStyles.ctaSection}>
        <Button href={resetUrl} style={emailTextStyles.cta}>
          Choose a new password
        </Button>
      </Section>
      <Text style={emailTextStyles.muted}>
        Or copy this link:{" "}
        <a href={resetUrl} style={emailTextStyles.inlineLink}>
          {resetUrl}
        </a>
        <br />
        This link expires soon. If you did not request a reset, you can ignore
        this email.
      </Text>
    </EmailLayout>
  );
}

export async function renderPasswordResetEmail(
  props: PasswordResetEmailProps,
): Promise<string> {
  return render(PasswordResetEmail(props));
}
