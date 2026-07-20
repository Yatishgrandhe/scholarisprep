import type { Metadata } from "next";
import { BaseCard, DarkCard, cardGrids } from "@/components/marketing/cards";
import { FAQ } from "@/components/marketing/FAQ";
import { PageContent, PageHero, PageSection } from "@/components/marketing/PageShell";
import { createMarketingMetadata } from "@/lib/seo/marketing-metadata";
import styles from "../exam.module.css";

export const metadata: Metadata = createMarketingMetadata({
  title: "SAT Prep",
  description:
    "AI-powered SAT prep with unique questions, score prediction, and personalized study plans.",
  path: "/exams/sat",
});

const sections = [
  {
    title: "Reading & Writing",
    description:
      "Passage-based questions with AI-generated stimuli. Build comprehension, grammar, and rhetoric skills.",
  },
  {
    title: "Math",
    description:
      "Algebra, advanced math, problem-solving, and data analysis — with a calculator allowed on every question, including the built-in Desmos graphing calculator.",
  },
];

const faq = [
  {
    question: "How is Scholaris different from other SAT prep?",
    answer:
      "Every practice question is AI-generated and unique to you, with no recycled content from old tests.",
  },
  {
    question: "Can I take full-length practice tests?",
    answer:
      "Yes. Student plan includes timed full exams that mirror the digital SAT structure.",
  },
  {
    question: "How accurate is the score prediction?",
    answer:
      "Predictions improve as you complete more questions. Most students see within ±40 points after 200+ attempts.",
  },
];

export default function SatPrepPage() {
  return (
    <PageContent>
      <PageHero
        eyebrow="SAT Prep"
        title="Master the digital SAT with AI"
        subtitle="Adaptive practice, full tests, and score prediction, built for the 2024+ SAT format."
        accent="sat"
        ctaLabel="Start SAT Prep Free"
        ctaHref="/auth/signup"
      />

      <PageSection title="What the SAT tests">
        <div className={`${cardGrids.grid} ${cardGrids.cols2}`}>
          {sections.map((s) => (
            <BaseCard key={s.title} title={s.title} description={s.description} accent />
          ))}
        </div>
      </PageSection>

      <PageSection title="How Scholaris prepares you" alt>
        <ul className={styles.featureList}>
          <li>10-minute diagnostic to find your baseline</li>
          <li>AI study plan targeting weak topics</li>
          <li>Never-repeat, AI-generated practice questions</li>
          <li>Full timed exams with section breaks</li>
          <li>Live score prediction on your dashboard</li>
        </ul>
      </PageSection>

      <PageSection title="Score trajectory">
        <div className={styles.chart}>
          <div className={styles.chartBar} style={{ height: "45%" }} />
          <div className={styles.chartBar} style={{ height: "62%" }} />
          <div className={styles.chartBar} style={{ height: "78%" }} />
          <div className={styles.chartBar} style={{ height: "92%" }} />
          <span className={styles.chartLabel}>Week 1 → Week 8</span>
        </div>
        <p className={styles.chartCaption}>
          Average student improvement with 5+ hours/week on Scholaris
        </p>
      </PageSection>

      <PageSection title="FAQ" alt>
        <FAQ items={faq} />
      </PageSection>

      <section className={styles.ctaSection}>
        <div className="container">
          <DarkCard
            title="Ready to aim for 1600?"
            description="Start with a free diagnostic and see where Scholaris can take your score."
            ctaLabel="Start SAT Prep Free"
            ctaHref="/auth/signup"
          />
        </div>
      </section>
    </PageContent>
  );
}
