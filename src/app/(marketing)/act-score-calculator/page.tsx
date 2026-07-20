import type { Metadata } from "next";
import { createMarketingMetadata } from "@/lib/seo/marketing-metadata";
import {
  PageContent,
  PageHero,
  PageSection,
} from "@/components/marketing/PageShell";
import { ActScoreCalculator } from "./ActScoreCalculator";

export const metadata: Metadata = createMarketingMetadata({
  title: "ACT Score Calculator",
  description:
    "Estimate your ACT composite score from your raw section results. Free, instant, and based on typical conversion curves.",
  path: "/act-score-calculator",
});

export default function ActScoreCalculatorPage() {
  return (
    <PageContent>
      <PageHero
        eyebrow="Free tool"
        title="ACT Score Calculator"
        subtitle="Enter your correct answers per section to estimate your ACT composite on the 1 to 36 scale. Science is optional — toggle it on for a Science and STEM score."
        accent="act"
        ctaLabel="Practice for free"
        ctaHref="/auth/signup"
      />

      <PageSection>
        <ActScoreCalculator />
      </PageSection>

      <PageSection title="How ACT scoring works" alt>
        <p>
          The ACT&apos;s core sections are English, Math, and Reading. There is
          no penalty for wrong answers — your raw score is simply the number of
          questions you answer correctly. Each section&apos;s raw score is
          converted to a scale score from 1 to 36 using a chart that varies
          slightly between test forms.
        </p>
        <p>
          Your composite is the average of those three core scale scores, rounded
          to the nearest whole number (halves round up). On the enhanced ACT,
          the Science section is optional: it does not change your composite, but
          if you take it you also get a separate Science score and a STEM score —
          the average of your Math and Science scores. This calculator uses a
          typical averaged conversion, so treat the result as an estimate. For a
          prediction tuned to your actual performance across skills and
          difficulty, take the free diagnostic inside Scholaris.
        </p>
      </PageSection>
    </PageContent>
  );
}
