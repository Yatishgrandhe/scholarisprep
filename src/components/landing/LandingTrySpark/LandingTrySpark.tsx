"use client";

import { useRef, useState } from "react";
import Link from "next/link";
import { ArrowRight, Check, Sparkle } from "@phosphor-icons/react";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import { LandingSparkLiveGraph } from "@/components/landing/LandingSparkLiveGraph";
import { cn } from "@/lib/utils";
import styles from "./LandingTrySpark.module.css";

gsap.registerPlugin(useGSAP, ScrollTrigger);

type ChoiceId = "A" | "B" | "C";

const choices: { id: ChoiceId; text: string; correct: boolean }[] = [
  { id: "A", text: "a and x always have the same sign", correct: false },
  { id: "B", text: "a = −ω²x (opposite sign, ω² scaled)", correct: true },
  { id: "C", text: "a is constant while x oscillates", correct: false },
];

/**
 * Compact interactive Spark try-out (Live Graph: SHM x vs a).
 * Placed after HowItWorks; hero demo stays non-interactive.
 */
export function LandingTrySpark() {
  const reducedMotion = useReducedMotion();
  const sectionRef = useRef<HTMLElement>(null);
  const [omega, setOmega] = useState(1.4);
  const [selected, setSelected] = useState<ChoiceId | null>(null);
  const [revealed, setRevealed] = useState(false);

  useGSAP(
    () => {
      if (reducedMotion) return;
      const items = gsap.utils.toArray<HTMLElement>(
        "[data-try-item]",
        sectionRef.current,
      );
      if (!items.length) return;
      gsap.from(items, {
        opacity: 0,
        y: 20,
        duration: 0.6,
        ease: "power3.out",
        stagger: 0.07,
        scrollTrigger: {
          trigger: sectionRef.current,
          start: "top 80%",
          once: true,
        },
      });
    },
    { scope: sectionRef, dependencies: [reducedMotion] },
  );

  const isCorrect = selected
    ? choices.find((c) => c.id === selected)?.correct
    : null;

  return (
    <section
      className={`${styles.section} landing__section landing__section--tight`}
      id="try-spark"
      ref={sectionRef}
      aria-labelledby="try-spark-heading"
    >
      <div className={`${styles.inner} landing__container`}>
        <header className={styles.header} data-try-item>
          <p className={styles.kicker}>
            <Sparkle size={13} weight="fill" aria-hidden />
            Sparks
          </p>
          <h2 className={styles.heading} id="try-spark-heading">
            Try the Spark yourself
          </h2>
          <p className={styles.lead}>
            Drag ω and watch acceleration scale with ω² while staying opposite
            x. Then lock in the relationship.
          </p>
        </header>

        <div className={styles.panel} data-try-item>
          <div className={styles.sparkShell}>
            <div className={styles.sparkMeta}>
              <span className={styles.sparkLabel}>Spark</span>
              <span className={styles.sparkType}>Live Graph</span>
            </div>
            <h3 className={styles.sparkTitle}>SHM: a = −ω²x</h3>

            <div className={styles.graph}>
              <LandingSparkLiveGraph omega={omega} size="try" />
            </div>

            <label className={styles.sliderRow}>
              <span className={styles.sliderLabel}>Angular frequency ω</span>
              <input
                type="range"
                min={0.6}
                max={2.2}
                step={0.1}
                value={omega}
                onChange={(e) => setOmega(Number(e.target.value))}
                className={styles.slider}
                aria-valuetext={`omega ${omega.toFixed(1)}`}
              />
            </label>
          </div>

          <div className={styles.quiz}>
            <p className={styles.quizPrompt}>What does the graph show?</p>
            <ul className={styles.choices} role="list">
              {choices.map((choice) => {
                const isSelected = selected === choice.id;
                const showCorrect = revealed && choice.correct;
                const showWrong = revealed && isSelected && !choice.correct;
                return (
                  <li key={choice.id}>
                    <button
                      type="button"
                      className={cn(
                        styles.choice,
                        isSelected && styles.choiceSelected,
                        showCorrect && styles.choiceCorrect,
                        showWrong && styles.choiceWrong,
                      )}
                      onClick={() => {
                        if (revealed) return;
                        setSelected(choice.id);
                        setRevealed(true);
                      }}
                      aria-pressed={isSelected}
                      disabled={revealed}
                    >
                      <span className={styles.choiceLetter}>
                        {showCorrect ? (
                          <Check size={11} weight="bold" />
                        ) : (
                          choice.id
                        )}
                      </span>
                      <span className={styles.choiceText}>{choice.text}</span>
                    </button>
                  </li>
                );
              })}
            </ul>

            {revealed ? (
              <p
                className={cn(
                  styles.feedback,
                  isCorrect ? styles.feedbackGood : styles.feedbackHint,
                )}
                role="status"
              >
                {isCorrect
                  ? "Right. Acceleration is −ω² times displacement: opposite phase, amplitude scales with ω²."
                  : "Look again: peaks of a sit where x is most negative (and vice versa), and grow with ω²."}
              </p>
            ) : null}

            <Link href="/auth/signup" className={styles.cta}>
              Keep learning with Scho
              <ArrowRight size={15} weight="bold" />
            </Link>
          </div>
        </div>
      </div>
    </section>
  );
}

export default LandingTrySpark;
