"use client";

import Link from "next/link";
import {
  ArrowRight,
  Calculator,
  ChartBar,
  ChatCircleDots,
  Gift,
  Lightning,
  Sparkle,
} from "@phosphor-icons/react";
import { motion } from "framer-motion";
import styles from "./FeatureBento.module.css";

const cardMotion = {
  hidden: { opacity: 0, y: 26 },
  show: (i: number) => ({
    opacity: 1,
    y: 0,
    transition: { duration: 0.5, delay: 0.07 * i, ease: [0.21, 0.65, 0.36, 1] as const },
  }),
};

const heatCells = [
  82, 64, 91, 45, 73, 58, 88, 39, 95, 67, 52, 78, 84, 41, 69, 90, 56, 75,
];

function heatClass(value: number): string {
  if (value >= 80) return styles.heatHigh;
  if (value >= 60) return styles.heatMid;
  return styles.heatLow;
}

export default function FeatureBento() {
  return (
    <section className={styles.section}>
      <div className={styles.inner}>
        <motion.div
          className={styles.heading}
          initial={{ opacity: 0, y: 18 }}
          whileInView={{ opacity: 1, y: 0 }}
          viewport={{ once: true, margin: "-80px" }}
          transition={{ duration: 0.5 }}
        >
          <h2 className={styles.title}>
            Built like the test.
            <br />
            <em>Smarter</em> than a prep book.
          </h2>
          <p className={styles.subtitle}>
            Everything in Scholaris exists for one reason: turning your
            practice minutes into points.
          </p>
        </motion.div>

        <div className={styles.grid}>
          {/* Question bank — large card */}
          <motion.div
            className={`${styles.card} ${styles.cardWide}`}
            variants={cardMotion}
            custom={0}
            initial="hidden"
            whileInView="show"
            viewport={{ once: true, margin: "-60px" }}
          >
            <div className={styles.cardBody}>
              <span className={styles.cardIcon}>
                <Sparkle size={18} weight="duotone" />
              </span>
              <h3 className={styles.cardTitle}>
                13,000+ questions that feel like test day
              </h3>
              <p className={styles.cardText}>
                Real exam-style items across every SAT &amp; ACT domain,
                rendered in a familiar test interface — timer, mark for
                review, answer elimination and all.
              </p>
              <Link href="/auth/signup" className={styles.cardLink}>
                Browse the question bank
                <ArrowRight size={13} weight="bold" />
              </Link>
            </div>
            <div className={styles.bankVisual} aria-hidden>
              <div className={styles.bankLine} style={{ width: "88%" }} />
              <div className={styles.bankLine} style={{ width: "72%" }} />
              <div className={styles.bankLine} style={{ width: "80%" }} />
              <div className={styles.bankChoices}>
                <span className={styles.bankChoice}>A</span>
                <span
                  className={`${styles.bankChoice} ${styles.bankChoiceActive}`}
                >
                  B
                </span>
                <span className={styles.bankChoice}>C</span>
                <span className={styles.bankChoice}>D</span>
              </div>
            </div>
          </motion.div>

          {/* Scho tutor */}
          <motion.div
            className={styles.card}
            variants={cardMotion}
            custom={1}
            initial="hidden"
            whileInView="show"
            viewport={{ once: true, margin: "-60px" }}
          >
            <span className={`${styles.cardIcon} ${styles.iconScho}`}>
              <ChatCircleDots size={18} weight="duotone" />
            </span>
            <h3 className={styles.cardTitle}>Scho explains every miss</h3>
            <p className={styles.cardText}>
              An AI tutor in the answer panel — ask &ldquo;why is B
              right?&rdquo; and get a step-by-step breakdown instantly.
            </p>
            <div className={styles.chatMock} aria-hidden>
              <span className={styles.chatUser}>Why not C?</span>
              <span className={styles.chatScho}>
                &ldquo;Was studying&rdquo; breaks the timeline — &ldquo;since
                2019&rdquo; needs the present perfect…
              </span>
            </div>
          </motion.div>

          {/* Analytics */}
          <motion.div
            className={styles.card}
            variants={cardMotion}
            custom={2}
            initial="hidden"
            whileInView="show"
            viewport={{ once: true, margin: "-60px" }}
          >
            <span className={`${styles.cardIcon} ${styles.iconAnalytics}`}>
              <ChartBar size={18} weight="duotone" />
            </span>
            <h3 className={styles.cardTitle}>Analytics that find weak spots</h3>
            <p className={styles.cardText}>
              A topic heatmap, pacing chart, and predicted score that update
              with every question you answer.
            </p>
            <div className={styles.heatGrid} aria-hidden>
              {heatCells.map((value, i) => (
                <span key={i} className={heatClass(value)} />
              ))}
            </div>
          </motion.div>

          {/* Speed Drill */}
          <motion.div
            className={styles.card}
            variants={cardMotion}
            custom={3}
            initial="hidden"
            whileInView="show"
            viewport={{ once: true, margin: "-60px" }}
          >
            <span className={`${styles.cardIcon} ${styles.iconRush}`}>
              <Lightning size={18} weight="duotone" />
            </span>
            <h3 className={styles.cardTitle}>Speed Drill</h3>
            <p className={styles.cardText}>
              Ten questions against the clock. Build the pacing instincts that
              save you on module two.
            </p>
            <span className={styles.rushTimer} aria-hidden>
              04:32
            </span>
          </motion.div>

          {/* Free daily */}
          <motion.div
            className={styles.card}
            variants={cardMotion}
            custom={4}
            initial="hidden"
            whileInView="show"
            viewport={{ once: true, margin: "-60px" }}
          >
            <span className={`${styles.cardIcon} ${styles.iconFree}`}>
              <Gift size={18} weight="duotone" />
            </span>
            <h3 className={styles.cardTitle}>Free, every single day</h3>
            <p className={styles.cardText}>
              Unlimited questions with full explanations — no credit card, no
              trial countdown, no catch.
            </p>
          </motion.div>

          {/* Score calculator */}
          <motion.div
            className={styles.card}
            variants={cardMotion}
            custom={5}
            initial="hidden"
            whileInView="show"
            viewport={{ once: true, margin: "-60px" }}
          >
            <span className={`${styles.cardIcon} ${styles.iconCalc}`}>
              <Calculator size={18} weight="duotone" />
            </span>
            <h3 className={styles.cardTitle}>Know where you stand</h3>
            <p className={styles.cardText}>
              Estimate your score in 30 seconds with the free calculator, or
              take the optional 20-question predictor.
            </p>
            <Link href="/sat-score-calculator" className={styles.cardLink}>
              Try the score calculator
              <ArrowRight size={13} weight="bold" />
            </Link>
          </motion.div>
        </div>
      </div>
    </section>
  );
}
