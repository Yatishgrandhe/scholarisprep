import { Button, Heading, Section, Text } from "@react-email/components";
import { render } from "@react-email/render";
import { getAppBaseUrl } from "./brand";
import { EmailLayout, emailTextStyles } from "./components/EmailLayout";

export type WelcomeEmailProps = {
  firstName: string;
  dashboardUrl: string;
};

export function welcomeEmailSubject(): string {
  return "Welcome to Scholaris — let's ace your next exam";
}

export function WelcomeEmail({ firstName, dashboardUrl }: WelcomeEmailProps) {
  const displayName = firstName.trim();
  const greeting = displayName ? `Hi ${displayName},` : "Hi there,";
  const diagnosticUrl = `${getAppBaseUrl()}/dashboard/diagnostic`;

  return (
    <EmailLayout preview="Welcome to Scholaris — your AI study companion">
      <Heading style={emailTextStyles.heading}>Welcome to Scholaris</Heading>
      <Text style={emailTextStyles.paragraph}>{greeting}</Text>
      <Text style={emailTextStyles.subheading}>
        Your account is ready. Jump straight into practice, and whenever you
        like, take an optional diagnostic to approximate your score.
      </Text>
      <Section style={emailTextStyles.ctaSection}>
        <Button href={dashboardUrl} style={emailTextStyles.cta}>
          Go to your dashboard
        </Button>
      </Section>
      <Text style={emailTextStyles.muted}>
        Want a predicted score?{" "}
        <a href={diagnosticUrl} style={emailTextStyles.inlineLink}>
          Take the optional diagnostic
        </a>{" "}
        anytime. Questions? Reply to this email — we&apos;re here to help.
      </Text>
    </EmailLayout>
  );
}

export async function renderWelcomeEmail(
  props: WelcomeEmailProps,
): Promise<string> {
  return render(WelcomeEmail(props));
}
