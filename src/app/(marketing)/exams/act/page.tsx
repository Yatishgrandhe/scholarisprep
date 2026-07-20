import type { Metadata } from "next";
import { BaseCard, DarkCard, cardGrids } from "@/components/marketing/cards";
import { FAQ } from "@/components/marketing/FAQ";
import { PageContent, PageHero, PageSection } from "@/components/marketing/PageShell";
import { createMarketingMetadata } from "@/lib/seo/marketing-metadata";
import styles from "../exam.module.css";

export const metadata: Metadata = createMarketingMetadata({
  title: "ACT Prep",
  description:
    "Comprehensive ACT prep with AI-generated questions across all four sections.",
  path: "/exams/act",
});

const sections = [
  { title: "English", description: "Grammar, punctuation, and rhetorical skills under time pressure." },
  { title: "Math", description: "Pre-algebra through trigonometry with strategy-focused drills." },
  { title: "Reading", description: "Four passages, 40 questions: pace and comprehension training." },
  { title: "Science", description: "Data interpretation and research summaries, not memorization." },
];

const faq = [
  {
    question: "Does Scholaris cover the Science section?",
    answer: "Yes. We include science reasoning passages with charts, experiments, and conflicting viewpoints.",
  },
  {
    question: "SAT or ACT: which should I take?",
    answer: "Take our free diagnostic on both formats. Scholaris recommends based on your stronger performance.",
  },
];

export default function ActPrepPage() {
  return (
    <PageContent>
      <PageHero
        eyebrow="ACT Prep"
        title="Conquer all four ACT sections"
        subtitle="English, Math, Reading, and Science: personalized drills and full practice tests."
        accent="act"
        ctaLabel="Start ACT Prep Free"
      />

      <PageSection title="Four sections, one platform">
        <div className={`${cardGrids.grid} ${cardGrids.cols2}`}>
          {sections.map((s) => (
            <BaseCard key={s.title} title={s.title} description={s.description} accent />
          ))}
        </div>
      </PageSection>

      <PageSection title="How Scholaris prepares you" alt>
        <ul className={styles.featureList}>
          <li>Section-specific topic drills</li>
          <li>Timed full ACT simulations</li>
          <li>AI tutor for science passage strategies</li>
          <li>Composite score tracking</li>
        </ul>
      </PageSection>

      <PageSection title="FAQ" alt>
        <FAQ items={faq} />
      </PageSection>

      <section className={styles.ctaSection}>
        <div className="container">
          <DarkCard
            title="Your target composite starts here"
            description="Practice all four ACT sections with AI-generated questions and full timed tests."
            ctaLabel="Start ACT Prep Free"
            ctaHref="/auth/signup"
          />
        </div>
      </section>
    </PageContent>
  );
}
