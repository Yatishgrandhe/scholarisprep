import type { Metadata } from "next";
import { PageContent, PageHero, PageSection } from "@/components/marketing/PageShell";
import { createMarketingMetadata } from "@/lib/seo/marketing-metadata";
import styles from "../legal.module.css";

export const metadata: Metadata = createMarketingMetadata({
  title: "Privacy Policy",
  description: "How Scholaris collects, uses, and protects your personal data.",
  path: "/legal/privacy",
});

export default function PrivacyPage() {
  return (
    <PageContent>
      <PageHero
        title="Privacy Policy"
        subtitle="Last updated: May 16, 2026"
        ctaLabel="Back to home"
        ctaHref="/"
      />
      <PageSection alt>
        <article className={styles.prose}>
          <h2>1. Information we collect</h2>
          <p>
            We collect account information (name, email), usage data (practice
            attempts, scores), and payment information processed by Stripe.
          </p>
          <h2>2. How we use data</h2>
          <p>
            Data powers personalized study plans, score prediction, and platform
            improvements. We do not sell your personal information.
          </p>
          <h2>3. AI processing</h2>
          <p>
            Tutor conversations and question generation may be processed by
            Google&apos;s Gemini API. Content is not used to train public models
            per our vendor agreements.
          </p>
          <h2>4. Cookies</h2>
          <p>
            We use essential cookies for authentication and session management.
            Analytics cookies are optional.
          </p>
          <h2>5. Your rights</h2>
          <p>
            You may request access, correction, or deletion of your data by
            emailing privacy@scholaris.ai.
          </p>
          <h2>6. Security</h2>
          <p>
            We use encryption in transit, row-level security on databases, and
            industry-standard practices to protect your information.
          </p>
        </article>
      </PageSection>
    </PageContent>
  );
}
