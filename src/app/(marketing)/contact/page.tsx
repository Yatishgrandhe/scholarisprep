import type { Metadata } from "next";
import { Button } from "@/components/ui/app-button";
import { PageContent, PageHero, PageSection } from "@/components/marketing/PageShell";
import { createMarketingMetadata } from "@/lib/seo/marketing-metadata";
import styles from "./contact.module.css";

export const metadata: Metadata = createMarketingMetadata({
  title: "Contact",
  description: "Get in touch with the Scholaris team.",
  path: "/contact",
});

export default function ContactPage() {
  return (
    <PageContent>
      <PageHero
        title="We'd love to hear from you"
        subtitle="Questions about plans, partnerships, or support. We typically reply within one business day."
      />

      <PageSection alt>
        <form className={styles.form} action="#" method="post">
          <div className={styles.row}>
            <label htmlFor="name">
              Name
              <input id="name" name="name" type="text" required autoComplete="name" />
            </label>
            <label htmlFor="email">
              Email
              <input id="email" name="email" type="email" required autoComplete="email" />
            </label>
          </div>
          <label htmlFor="subject">
            Subject
            <select id="subject" name="subject" defaultValue="general">
              <option value="general">General inquiry</option>
              <option value="support">Support</option>
              <option value="business">Business / Enterprise</option>
              <option value="press">Press</option>
            </select>
          </label>
          <label htmlFor="message">
            Message
            <textarea id="message" name="message" rows={6} required />
          </label>
          <Button type="submit" size="lg">
            Send message
          </Button>
        </form>

        <aside className={styles.aside}>
          <h3>Other ways to reach us</h3>
          <p>
            <strong>Email:</strong> hello@scholaris.ai
          </p>
          <p>
            <strong>Support:</strong> support@scholaris.ai
          </p>
          <p>
            <strong>Business:</strong> enterprise@scholaris.ai
          </p>
        </aside>
      </PageSection>
    </PageContent>
  );
}
