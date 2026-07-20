"use client";

import { useRef } from "react";
import Link from "next/link";
import {
  ArrowRight,
  ChatCircleDots,
  Check,
  Clock,
  Play,
  Sparkle,
  TrendUp,
} from "@phosphor-icons/react";
import {
  motion,
  useMotionValue,
  useSpring,
  useTransform,
} from "framer-motion";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import { cn } from "@/lib/utils";
import styles from "./HeroSection.module.css";

gsap.registerPlugin(useGSAP, ScrollTrigger);

const stats = [
  { value: "13,000+", label: "practice questions" },
  { value: "SAT & ACT", label: "full coverage" },
  { value: "24/7", label: "AI tutor, Scho" },
  { value: "Free", label: "to start, no card" },
];

const mockOptions = [
  { id: "A", text: "had been studying", state: "default" },
  { id: "B", text: "have been studying", state: "selected" },
  { id: "C", text: "was studying", state: "default" },
  { id: "D", text: "studies", state: "eliminated" },
];

const entrance = {
  hidden: { opacity: 0, y: 22 },
  show: (i: number) => ({
    opacity: 1,
    y: 0,
    transition: { duration: 0.55, delay: 0.08 * i, ease: [0.21, 0.65, 0.36, 1] as const },
  }),
};

export function HeroSection() {
  const reducedMotion = useReducedMotion();
  const sectionRef = useRef<HTMLElement>(null);
  const mockWrapRef = useRef<HTMLDivElement>(null);

  // Mouse-follow tilt on the Bluebook mock.
  const tiltX = useMotionValue(0);
  const tiltY = useMotionValue(0);
  const springX = useSpring(tiltX, { stiffness: 120, damping: 18 });
  const springY = useSpring(tiltY, { stiffness: 120, damping: 18 });
  const rotateX = useTransform(springY, [-0.5, 0.5], ["4deg", "-4deg"]);
  const rotateY = useTransform(springX, [-0.5, 0.5], ["-5deg", "5deg"]);

  const handlePointerMove = (event: React.PointerEvent<HTMLDivElement>) => {
    if (reducedMotion) return;
    const rect = event.currentTarget.getBoundingClientRect();
    tiltX.set((event.clientX - rect.left) / rect.width - 0.5);
    tiltY.set((event.clientY - rect.top) / rect.height - 0.5);
  };

  const resetTilt = () => {
    tiltX.set(0);
    tiltY.set(0);
  };

  useGSAP(
    () => {
      if (reducedMotion) return;
      const mm = gsap.matchMedia();
      mm.add("(min-width: 1024px)", () => {
        gsap.to(mockWrapRef.current, {
          y: -36,
          scale: 1.015,
          ease: "none",
          scrollTrigger: {
            trigger: sectionRef.current,
            start: "top top",
            end: "bottom 30%",
            scrub: true,
          },
        });
      });
    },
    { scope: sectionRef, dependencies: [reducedMotion] },
  );

  return (
    <section className={styles.hero} id="hero" ref={sectionRef}>
      <div className={styles.aurora} aria-hidden />
      <div className={styles.gridLines} aria-hidden />

      <div className={styles.inner}>
        <motion.div
          className={styles.announce}
          variants={entrance}
          custom={0}
          initial={reducedMotion ? false : "hidden"}
          animate="show"
        >
          <span className={styles.announceTag}>New</span>
          <span>Now covering both the SAT &amp; ACT</span>
          <ArrowRight size={12} weight="bold" className={styles.announceArrow} />
        </motion.div>

        <motion.h1
          className={styles.headline}
          variants={entrance}
          custom={1}
          initial={reducedMotion ? false : "hidden"}
          animate="show"
        >
          A clearer path to a higher
          <br />
          <span className={styles.headlineScore}>SAT &amp; ACT</span> score.
        </motion.h1>

        <motion.p
          className={styles.subtitle}
          variants={entrance}
          custom={2}
          initial={reducedMotion ? false : "hidden"}
          animate="show"
        >
          Practice realistic SAT &amp; ACT questions in a familiar test
          interface, see exactly where you lose points, and let Scho — your AI
          tutor — explain every mistake until it clicks.
        </motion.p>

        <motion.div
          className={styles.ctas}
          variants={entrance}
          custom={3}
          initial={reducedMotion ? false : "hidden"}
          animate="show"
        >
          <Link href="/auth/signup" className={styles.primaryCta}>
            Start practicing free
            <ArrowRight size={17} weight="bold" />
          </Link>
          <Link href="#live-demo" className={styles.secondaryCta}>
            <span className={styles.playDot}>
              <Play size={11} weight="fill" />
            </span>
            Try a real question
          </Link>
        </motion.div>

        <motion.p
          className={styles.trustLine}
          variants={entrance}
          custom={4}
          initial={reducedMotion ? false : "hidden"}
          animate="show"
        >
          No credit card · No diagnostic required · Cancel any time
        </motion.p>

        <motion.div
          className={styles.mockStage}
          variants={entrance}
          custom={5}
          initial={reducedMotion ? false : "hidden"}
          animate="show"
        >
          <div
            ref={mockWrapRef}
            className={styles.mockWrap}
            onPointerMove={handlePointerMove}
            onPointerLeave={resetTilt}
          >
            <motion.div
              className={styles.mockWindow}
              style={reducedMotion ? undefined : { rotateX, rotateY }}
            >
              <div className={styles.mockChrome}>
                <span className={styles.chromeDots} aria-hidden>
                  <i />
                  <i />
                  <i />
                </span>
                <span className={styles.chromeTitle}>
                  Section 1, Module 2: Reading and Writing
                </span>
                <span className={styles.chromeTimer}>
                  <Clock size={12} weight="bold" />
                  27:14
                </span>
              </div>

              <div className={styles.mockBody}>
                <div className={styles.mockQuestion}>
                  <div className={styles.mockQBadgeRow}>
                    <span className={styles.mockQBadge}>7</span>
                    <span className={styles.mockQMark}>Mark for Review</span>
                  </div>
                  <p className={styles.mockStem}>
                    Since 2019, the research team{" "}
                    <span className={styles.mockBlank}>______</span> the
                    migration patterns of Arctic terns using satellite
                    telemetry.
                  </p>
                  <p className={styles.mockPrompt}>
                    Which choice completes the text so that it conforms to the
                    conventions of Standard English?
                  </p>
                </div>

                <div className={styles.mockOptions} aria-hidden>
                  {mockOptions.map((option) => (
                    <div
                      key={option.id}
                      className={cn(
                        styles.mockOption,
                        option.state === "selected" && styles.mockOptionSelected,
                        option.state === "eliminated" &&
                          styles.mockOptionEliminated,
                      )}
                    >
                      <span className={styles.mockOptionLetter}>
                        {option.state === "selected" ? (
                          <Check size={11} weight="bold" />
                        ) : (
                          option.id
                        )}
                      </span>
                      <span className={styles.mockOptionText}>
                        {option.text}
                      </span>
                    </div>
                  ))}
                </div>
              </div>

              <div className={styles.mockFooter}>
                <span>Question 7 of 27</span>
                <span className={styles.mockNext}>
                  Next
                  <ArrowRight size={12} weight="bold" />
                </span>
              </div>
            </motion.div>

            <div className={cn(styles.floatChip, styles.chipScore)} aria-hidden>
              <span className={styles.chipIcon}>
                <TrendUp size={15} weight="bold" />
              </span>
              <span className={styles.chipText}>
                <strong>+210 pts</strong>
                <small>avg. improvement plan</small>
              </span>
            </div>

            <div className={cn(styles.floatChip, styles.chipScho)} aria-hidden>
              <span className={cn(styles.chipIcon, styles.chipIconScho)}>
                <ChatCircleDots size={15} weight="fill" />
              </span>
              <span className={styles.chipText}>
                <strong>
                  Scho
                  <Sparkle size={11} weight="fill" />
                </strong>
                <small>&ldquo;B keeps the present-perfect timeline&rdquo;</small>
              </span>
            </div>
          </div>
        </motion.div>

        <motion.div
          className={styles.statsRow}
          variants={entrance}
          custom={6}
          initial={reducedMotion ? false : "hidden"}
          animate="show"
        >
          {stats.map((stat) => (
            <div key={stat.label} className={styles.stat}>
              <span className={styles.statValue}>{stat.value}</span>
              <span className={styles.statLabel}>{stat.label}</span>
            </div>
          ))}
        </motion.div>
      </div>
    </section>
  );
}
