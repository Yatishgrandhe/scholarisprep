import { DarkCard } from "@/components/marketing/cards";
import styles from "./FinalCTA.module.css";

export default function FinalCTA() {
  return (
    <section className={`section ${styles.section}`}>
      <div className="container">
        <DarkCard
          title="Your best SAT & ACT score starts today."
          description="Join thousands of students using AI to study smarter, not harder."
          ctaLabel="Start free today"
          ctaHref="/auth/signup"
        />
      </div>
    </section>
  );
}
