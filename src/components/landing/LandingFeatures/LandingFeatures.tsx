"use client";

import { useRef } from "react";
import Link from "next/link";
import {
  ArrowRight,
  CalendarCheck,
  ChatCircleDots,
  Check,
  Clock,
  Flag,
  MagnifyingGlass,
  Sparkle,
} from "@phosphor-icons/react";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import { cn } from "@/lib/utils";
import styles from "./LandingFeatures.module.css";

gsap.registerPlugin(useGSAP, ScrollTrigger);

const heatCells = [82, 64, 91, 45, 73, 58, 88, 39, 95, 67, 52, 78, 84, 41, 69, 90, 56, 75];

function heatClass(value: number): string {
  if (value >= 80) return styles.heatHigh;
  if (value >= 60) return styles.heatMid;
  return styles.heatLow;
}

export default function LandingFeatures() {
  const reducedMotion = useReducedMotion();
  const sectionRef = useRef<HTMLElement>(null);

  useGSAP(
    () => {
      if (reducedMotion) return;

      const rows = gsap.utils.toArray<HTMLElement>(`.${styles.row}`);
      rows.forEach((row) => {
        const copy = row.querySelector<HTMLElement>(`.${styles.copy}`);
        const visual = row.querySelector<HTMLElement>(`.${styles.visual}`);
        const isReversed = row.classList.contains(styles.rowReverse);
        const trigger = {
          trigger: row,
          start: "top 78%",
          toggleActions: "play none none none",
          once: true,
        };

        if (copy) {
          gsap.fromTo(
            copy,
            { autoAlpha: 0, x: isReversed ? 28 : -28 },
            { autoAlpha: 1, x: 0, duration: 0.9, ease: "power3.out", scrollTrigger: trigger },
          );
        }
        if (visual) {
          gsap.fromTo(
            visual,
            { autoAlpha: 0, x: isReversed ? -28 : 28, y: 16 },
            {
              autoAlpha: 1,
              x: 0,
              y: 0,
              duration: 0.9,
              delay: 0.1,
              ease: "power3.out",
              scrollTrigger: { ...trigger },
            },
          );
        }
      });
    },
    { scope: sectionRef, dependencies: [reducedMotion] },
  );

  return (
    <section
      className={styles.section}
      aria-label="How Scholaris turns practice into points"
      ref={sectionRef}
    >
      <div className={styles.inner}>
        <div className={styles.intro}>
          <span className={styles.eyebrow}>How it works</span>
          <h2 className={styles.title}>
            Practice in. <em>Points</em> out.
          </h2>
          <p className={styles.subtitle}>
            Three things happen every time you open a question — the
            interface keeps you honest, Scho makes sure it clicks, and your
            data turns into an actual plan.
          </p>
        </div>

        <div className={styles.rows}>
          {/* Row 1 — Feels like test day */}
          <div className={styles.row}>
            <div className={styles.copy}>
              <span className={styles.rowEyebrow}>The interface</span>
              <h3 className={styles.rowTitle}>
                Feels like test day, not a workbook.
              </h3>
              <p className={styles.rowText}>
                13,000+ SAT &amp; ACT questions live inside a Bluebook-style
                layout — timer running, choices to eliminate, a flag for
                anything you want to revisit. Walk in on test day already
                knowing the screen.
              </p>
              <Link href="/auth/signup" className={styles.rowLink}>
                Browse the question bank
                <ArrowRight size={13} weight="bold" />
              </Link>
            </div>

            <div className={styles.visual}>
              <div className={styles.examMock} aria-hidden>
                <div className={styles.examChrome}>
                  <span className={styles.chromeDots}>
                    <i />
                    <i />
                    <i />
                  </span>
                  <span className={styles.examTimer}>
                    <Clock size={11} weight="bold" />
                    27:14
                  </span>
                </div>
                <div className={styles.examBody}>
                  <p className={styles.examStem}>
                    Since 2019, the research team{" "}
                    <span className={styles.examBlank}>______</span> the
                    migration patterns of Arctic terns.
                  </p>
                  <div className={styles.examOptions}>
                    <span className={styles.examOption}>A</span>
                    <span
                      className={cn(styles.examOption, styles.examOptionActive)}
                    >
                      <Check size={11} weight="bold" />
                    </span>
                    <span
                      className={cn(
                        styles.examOption,
                        styles.examOptionEliminated,
                      )}
                    >
                      C
                    </span>
                    <span className={styles.examOption}>D</span>
                  </div>
                </div>
                <div className={styles.examFooter}>
                  <span>Question 7 of 27</span>
                  <span className={styles.examFlag}>
                    <Flag size={11} weight="fill" />
                    Mark for Review
                  </span>
                </div>
              </div>
            </div>
          </div>

          {/* Row 2 — Scho explains every miss */}
          <div className={cn(styles.row, styles.rowReverse)}>
            <div className={styles.copy}>
              <span className={styles.rowEyebrow}>The tutor</span>
              <h3 className={styles.rowTitle}>Scho explains every miss.</h3>
              <p className={styles.rowText}>
                Get one wrong and Scho — the AI tutor built into the answer
                panel — walks through exactly why the right choice is right.
                Still fuzzy? Ask a follow-up and it explains again, a
                different way.
              </p>
            </div>

            <div className={styles.visual}>
              <div className={styles.chatMock} aria-hidden>
                <div className={styles.chatHead}>
                  <span className={styles.chatAvatar}>
                    <ChatCircleDots size={14} weight="fill" />
                  </span>
                  <span className={styles.chatName}>
                    Scho
                    <Sparkle size={10} weight="fill" />
                  </span>
                </div>
                <span className={styles.chatUser}>Why is B right, not C?</span>
                <span className={styles.chatScho}>
                  &ldquo;Since 2019&rdquo; sets up a timeline that&apos;s still
                  going — it needs the present perfect, &ldquo;have been
                  studying,&rdquo; not the simple past.
                </span>
                <span className={styles.chatFollowup}>
                  Show me another example
                  <ArrowRight size={11} weight="bold" />
                </span>
              </div>
            </div>
          </div>

          {/* Row 3 — Weak spots, then a plan */}
          <div className={styles.row}>
            <div className={styles.copy}>
              <span className={styles.rowEyebrow}>The strategy</span>
              <h3 className={styles.rowTitle}>
                Find the weak spots. Then get a plan.
              </h3>
              <p className={styles.rowText}>
                A live topic heatmap shows exactly where you&apos;re losing
                points across every domain. Scholaris turns that into a
                day-by-day plan, so you always know what to practice next.
              </p>
              <Link href="/sat-score-calculator" className={styles.rowLink}>
                Try the score calculator
                <ArrowRight size={13} weight="bold" />
              </Link>
            </div>

            <div className={styles.visual}>
              <div className={styles.planMock} aria-hidden>
                <div className={styles.planPanel}>
                  <span className={styles.planLabel}>
                    <MagnifyingGlass size={12} weight="bold" />
                    Weak spots
                  </span>
                  <div className={styles.heatGrid}>
                    {heatCells.map((value, i) => (
                      <span key={i} className={heatClass(value)} />
                    ))}
                  </div>
                </div>
                <div className={styles.planConnector} />
                <div className={styles.planPanel}>
                  <span className={styles.planLabel}>
                    <CalendarCheck size={12} weight="bold" />
                    This week&apos;s plan
                  </span>
                  <ul className={styles.planList}>
                    <li>
                      <span className={styles.planDot} />8 punctuation drills
                    </li>
                    <li>
                      <span className={styles.planDot} />5 quadratics word
                      problems
                    </li>
                    <li>
                      <span className={styles.planDot} />
                      Reread rhetorical synthesis notes
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
