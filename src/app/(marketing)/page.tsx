import type { Metadata } from "next";
import { createMarketingMetadata } from "@/lib/seo/marketing-metadata";
import { LandingShell } from "@/components/landing/LandingShell";
import LandingNav from "@/components/landing/LandingNav/LandingNav";
import LandingHero from "@/components/landing/LandingHero/LandingHero";
import LandingImpactStrip from "@/components/landing/LandingImpactStrip/LandingImpactStrip";
import LandingSubjects from "@/components/landing/LandingSubjects/LandingSubjects";
import LandingFeatures from "@/components/landing/LandingFeatures/LandingFeatures";
import LandingHowItWorks from "@/components/landing/LandingHowItWorks/LandingHowItWorks";
import LandingTrySpark from "@/components/landing/LandingTrySpark/LandingTrySpark";
import LandingScoreDemo from "@/components/landing/LandingScoreDemo/LandingScoreDemo";
import LandingLiveDemo from "@/components/landing/LandingLiveDemo/LandingLiveDemo";
import LandingCTA from "@/components/landing/LandingCTA/LandingCTA";
import LandingFooter from "@/components/landing/LandingFooter/LandingFooter";

export const metadata: Metadata = createMarketingMetadata({
  title: "Ace Every Exam",
  description:
    "AI-powered exam prep with unique practice questions, personalized study plans, and your tutor Scho, always on.",
  path: "/",
});

/**
 * Page order (documented for agents):
 * 1. Hero (Scho chat + Spark generation demo, non-interactive)
 * 2. Impact strip
 * 3. Subjects / coverage
 * 4. Features story
 * 5. How it works
 * 6. Try a Spark (interactive) — after visitors understand the product,
 *    before score/question demos and final CTA
 * 7. Score demo
 * 8. Live question demo
 * 9. Final CTA + footer
 */
export default function HomePage() {
  return (
    <LandingShell>
      <LandingNav />
      <LandingHero />
      <LandingImpactStrip />
      <LandingSubjects />
      <LandingFeatures />
      <LandingHowItWorks />
      <LandingTrySpark />
      <LandingScoreDemo />
      <LandingLiveDemo />
      <LandingCTA />
      <LandingFooter />
    </LandingShell>
  );
}
