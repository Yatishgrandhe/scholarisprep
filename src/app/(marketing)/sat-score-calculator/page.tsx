import type { Metadata } from "next";
import { createMarketingMetadata } from "@/lib/seo/marketing-metadata";
import {
  PageContent,
  PageHero,
  PageSection,
} from "@/components/marketing/PageShell";
import { ScoreCalculator } from "./ScoreCalculator";

export const metadata: Metadata = createMarketingMetadata({
  title: "SAT Score Calculator",
  description:
    "Estimate your Digital SAT score from your raw section results. Free, instant, and based on typical conversion curves.",
  path: "/sat-score-calculator",
});

export default function SatScoreCalculatorPage() {
  return (
    <PageContent>
      <PageHero
        eyebrow="Free tool"
        title="SAT Score Calculator"
        subtitle="Enter your correct answers per module to estimate your Digital SAT score on the 400 to 1600 scale."
        accent="sat"
        ctaLabel="Practice for free"
        ctaHref="/auth/signup"
      />

      <PageSection>
        <ScoreCalculator />
      </PageSection>

      <PageSection title="How scoring works" alt>
        <p>
          The Digital SAT has two sections: Reading &amp; Writing (54
          questions) and Math (44 questions), each scaled from 200 to 800.
          Your raw score (questions answered correctly) is converted to the
          scaled score using a curve that varies slightly between test forms.
          This calculator uses a typical curve, so treat the result as an
          estimate. For a prediction tuned to your actual performance across
          domains and difficulty, take the free diagnostic inside Scholaris.
        </p>
      </PageSection>
    </PageContent>
  );
}
