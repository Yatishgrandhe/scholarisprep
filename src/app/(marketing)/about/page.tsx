import type { Metadata } from "next";
import Image from "next/image";
import { BaseCard, cardGrids } from "@/components/marketing/cards";
import { PageContent, PageHero, PageSection } from "@/components/marketing/PageShell";
import { createMarketingMetadata } from "@/lib/seo/marketing-metadata";
import pageStyles from "./about.module.css";

export const metadata: Metadata = createMarketingMetadata({
  title: "About",
  description: "Scholaris mission: every student deserves a world-class tutor.",
  path: "/about",
});

const values = [
  {
    title: "Access for all",
    description: "Quality tutoring shouldn't depend on zip code or budget.",
  },
  {
    title: "AI with integrity",
    description: "We generate unique questions and never scrape copyrighted exams.",
  },
  {
    title: "Outcomes over hours",
    description: "We measure success by score improvement, not time on platform.",
  },
];

const team = [
  {
    name: "Yatish Grandhe",
    role: "Founder",
    image: "/team/yatish-grandhe.jpg",
  },
];

export default function AboutPage() {
  return (
    <PageContent>
      <PageHero
        title="We believe every student deserves a world-class tutor."
        subtitle="Scholaris was founded to close the gap between expensive private tutoring and one-size-fits-all test prep."
      />

      <PageSection title="Our story" alt>
        <div className={pageStyles.prose}>
          <p>
            We started Scholaris after watching brilliant students struggle, not
            from lack of ability, but from prep tools that recycled the same
            questions and offered no real personalization.
          </p>
          <p>
            By combining frontier AI with exam-specific pedagogy, we built a platform
            that generates fresh practice, adapts to your weaknesses, and tutors
            you like a patient human, at a fraction of the cost.
          </p>
        </div>
      </PageSection>

      <PageSection title="Our values">
        <div className={`${cardGrids.grid} ${cardGrids.cols3}`}>
          {values.map((v) => (
            <BaseCard key={v.title} title={v.title} description={v.description} accent />
          ))}
        </div>
      </PageSection>

      <PageSection title="Team" alt>
        <div className={pageStyles.teamSolo}>
          {team.map((member) => (
            <BaseCard
              key={member.name}
              title={member.name}
              description={member.role}
              centered
            >
              <Image
                src={member.image}
                alt={member.name}
                width={96}
                height={96}
                className={pageStyles.teamAvatar}
              />
            </BaseCard>
          ))}
        </div>
      </PageSection>

      <PageSection title="Press">
        <p className={pageStyles.press}>
          Featured in EdTech Weekly, The Learning Post, and AI in Education
          (placeholder mentions; updates coming soon).
        </p>
      </PageSection>
    </PageContent>
  );
}
