import {
  Body,
  Container,
  Head,
  Hr,
  Html,
  Img,
  Link,
  Preview,
  Section,
  Text,
} from "@react-email/components";
import type { ReactNode } from "react";
import { emailBrand, getAppBaseUrl, getLogoUrl } from "../brand";

type EmailLayoutProps = {
  preview: string;
  children: ReactNode;
};

export function EmailLayout({ preview, children }: EmailLayoutProps) {
  const appUrl = getAppBaseUrl();
  const year = new Date().getFullYear();

  return (
    <Html lang="en">
      <Head>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
      </Head>
      <Preview>{preview}</Preview>
      <Body style={styles.body}>
        <Container style={styles.container}>
          <Section style={styles.header}>
            <Link href={appUrl} style={styles.logoLink}>
              <Img
                alt="Scholaris"
                height={40}
                src={getLogoUrl()}
                style={styles.logo}
                width={40}
              />
            </Link>
            <Text style={styles.wordmark}>Scholaris</Text>
          </Section>

          <Section style={styles.card}>{children}</Section>

          <Hr style={styles.hr} />
          <Text style={styles.footer}>
            © {year} Scholaris ·{" "}
            <Link href={appUrl} style={styles.footerLink}>
              scholaris.ai
            </Link>
          </Text>
          <Text style={styles.footerMuted}>
            You received this email because of activity on your Scholaris
            account. If this wasn&apos;t you, you can ignore this message.
          </Text>
        </Container>
      </Body>
    </Html>
  );
}

const styles = {
  body: {
    backgroundColor: emailBrand.snow,
    fontFamily: emailBrand.fontFamily,
    margin: 0,
    padding: "32px 16px",
  },
  container: {
    margin: "0 auto",
    maxWidth: "560px",
  },
  header: {
    textAlign: "center" as const,
    marginBottom: "24px",
  },
  logoLink: {
    display: "inline-block",
    textDecoration: "none",
  },
  logo: {
    borderRadius: "10px",
    display: "block",
    margin: "0 auto 8px",
  },
  wordmark: {
    color: emailBrand.navy,
    fontSize: "13px",
    fontWeight: 700,
    letterSpacing: "0.12em",
    margin: 0,
    textTransform: "uppercase" as const,
  },
  card: {
    backgroundColor: emailBrand.white,
    border: `1px solid ${emailBrand.slate100}`,
    borderRadius: "12px",
    padding: "32px 28px",
  },
  hr: {
    borderColor: emailBrand.slate100,
    margin: "28px 0 16px",
  },
  footer: {
    color: emailBrand.textMuted,
    fontSize: "12px",
    lineHeight: "20px",
    margin: "0 0 8px",
    textAlign: "center" as const,
  },
  footerLink: {
    color: emailBrand.cobalt,
    textDecoration: "none",
  },
  footerMuted: {
    color: emailBrand.textMuted,
    fontSize: "11px",
    lineHeight: "18px",
    margin: 0,
    textAlign: "center" as const,
  },
};

export const emailTextStyles = {
  heading: {
    color: emailBrand.textPrimary,
    fontSize: "24px",
    fontWeight: 700,
    lineHeight: "32px",
    margin: "0 0 16px",
  },
  subheading: {
    color: emailBrand.textSecondary,
    fontSize: "16px",
    lineHeight: "26px",
    margin: "0 0 24px",
  },
  paragraph: {
    color: emailBrand.textSecondary,
    fontSize: "15px",
    lineHeight: "24px",
    margin: "0 0 16px",
  },
  muted: {
    color: emailBrand.textMuted,
    fontSize: "13px",
    lineHeight: "20px",
    margin: "24px 0 0",
  },
  highlight: {
    color: emailBrand.navy,
    fontWeight: 600,
  },
  cta: {
    backgroundColor: emailBrand.cobalt,
    borderRadius: "8px",
    color: emailBrand.white,
    display: "inline-block",
    fontSize: "15px",
    fontWeight: 600,
    lineHeight: "1",
    padding: "14px 28px",
    textDecoration: "none",
  },
  ctaSection: {
    margin: "28px 0 8px",
    textAlign: "center" as const,
  },
  inlineLink: {
    color: emailBrand.cobalt,
    textDecoration: "none",
  },
  callout: {
    backgroundColor: emailBrand.snow,
    border: `1px solid ${emailBrand.slate100}`,
    borderRadius: "8px",
    color: emailBrand.textSecondary,
    fontSize: "14px",
    lineHeight: "22px",
    margin: "0 0 20px",
    padding: "16px",
  },
  calloutError: {
    backgroundColor: "#FEF2F2",
    border: `1px solid #FECACA`,
    borderRadius: "8px",
    color: emailBrand.textSecondary,
    fontSize: "14px",
    lineHeight: "22px",
    margin: "0 0 20px",
    padding: "16px",
  },
};
