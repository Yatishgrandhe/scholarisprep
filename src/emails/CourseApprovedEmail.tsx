import { Button, Heading, Section, Text } from "@react-email/components";
import { render } from "@react-email/render";
import { getAppBaseUrl } from "./brand";
import { EmailLayout, emailTextStyles } from "./components/EmailLayout";

export type CourseApprovedEmailProps = {
  creatorName: string | null;
  courseTitle: string;
  courseId: string;
};

export function courseApprovedSubject(courseTitle: string): string {
  return `Your course "${courseTitle}" is now live on Scholaris`;
}

export function CourseApprovedEmail({
  creatorName,
  courseTitle,
  courseId,
}: CourseApprovedEmailProps) {
  const name = creatorName?.trim() || "there";
  const courseUrl = `${getAppBaseUrl()}/dashboard/courses?course=${encodeURIComponent(courseId)}`;

  return (
    <EmailLayout preview={`Your course "${courseTitle}" is now live`}>
      <Heading style={emailTextStyles.heading}>
        Your course is now live
      </Heading>
      <Text style={emailTextStyles.paragraph}>
        Hi {name},
      </Text>
      <Text style={emailTextStyles.subheading}>
        Great news —{" "}
        <span style={emailTextStyles.highlight}>{courseTitle}</span> has been
        approved and is now published on Scholaris.
      </Text>
      <Section style={emailTextStyles.ctaSection}>
        <Button href={courseUrl} style={emailTextStyles.cta}>
          View your course
        </Button>
      </Section>
      <Text style={emailTextStyles.muted}>
        Thank you for contributing to the Scholaris learning community.
      </Text>
    </EmailLayout>
  );
}

export async function renderCourseApprovedEmail(
  props: CourseApprovedEmailProps,
): Promise<string> {
  return render(CourseApprovedEmail(props));
}
