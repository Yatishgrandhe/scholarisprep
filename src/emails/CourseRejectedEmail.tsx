import { Button, Heading, Section, Text } from "@react-email/components";
import { render } from "@react-email/render";
import { getAppBaseUrl } from "./brand";
import { EmailLayout, emailTextStyles } from "./components/EmailLayout";

export type CourseRejectedEmailProps = {
  creatorName: string | null;
  courseTitle: string;
  reason: string;
};

export function courseRejectedSubject(courseTitle: string): string {
  return `Update needed: "${courseTitle}" was not approved`;
}

export function CourseRejectedEmail({
  creatorName,
  courseTitle,
  reason,
}: CourseRejectedEmailProps) {
  const name = creatorName?.trim() || "there";
  const creatorUrl = `${getAppBaseUrl()}/creator`;

  return (
    <EmailLayout preview={`Updates needed for "${courseTitle}"`}>
      <Heading style={emailTextStyles.heading}>Course review update</Heading>
      <Text style={emailTextStyles.paragraph}>Hi {name},</Text>
      <Text style={emailTextStyles.subheading}>
        We reviewed{" "}
        <span style={emailTextStyles.highlight}>{courseTitle}</span> and it was
        not approved at this time.
      </Text>
      <Text style={emailTextStyles.calloutError}>
        <strong style={{ color: emailTextStyles.highlight.color }}>
          Reason:
        </strong>
        <br />
        {reason}
      </Text>
      <Text style={emailTextStyles.paragraph}>
        Revise your course and submit it again from your creator dashboard. Most
        creators are approved on the second review once feedback is addressed.
      </Text>
      <Section style={emailTextStyles.ctaSection}>
        <Button href={creatorUrl} style={emailTextStyles.cta}>
          Edit and resubmit
        </Button>
      </Section>
      <Text style={emailTextStyles.muted}>
        Questions? Reply to this email or contact support from your dashboard
        settings.
      </Text>
    </EmailLayout>
  );
}

export async function renderCourseRejectedEmail(
  props: CourseRejectedEmailProps,
): Promise<string> {
  return render(CourseRejectedEmail(props));
}
