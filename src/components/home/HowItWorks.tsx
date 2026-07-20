"use client";

import { motion } from "framer-motion";
import { BaseCard, cardGrids } from "@/components/marketing/cards";
import styles from "./HowItWorks.module.css";

const steps = [
  {
    num: "01",
    title: "Sign up and pick your exam",
    description:
      "Two quick steps and you're in. No forced tests, no gatekeeping — your dashboard is ready immediately.",
  },
  {
    num: "02",
    title: "Practice real-style questions",
    description:
      "Practice 13,000+ exam-style SAT & ACT questions in a familiar test interface, with Scho explaining every mistake.",
  },
  {
    num: "03",
    title: "Approximate your score (optional)",
    description:
      "Whenever you're ready, take a 20-minute diagnostic from your dashboard to see your predicted score and weak domains.",
  },
  {
    num: "04",
    title: "Follow your plan, watch it climb",
    description:
      "Your AI study plan targets what matters most. Track your predicted score as it rises week over week.",
  },
];

const cardVariants = {
  hidden: { opacity: 0, y: 24 },
  visible: (i: number) => ({
    opacity: 1,
    y: 0,
    transition: { delay: i * 0.12, duration: 0.5, ease: "easeOut" as const },
  }),
};

export default function HowItWorks() {
  return (
    <section id="how-it-works" className={`section ${styles.section}`}>
      <div className="container">
        <div className={`sectionHeader ${styles.header}`}>
          <h2 className={styles.title}>How it works</h2>
        </div>
        <div className={`${cardGrids.grid} ${cardGrids.cols4}`}>
          {steps.map((step, i) => (
            <motion.div
              key={step.num}
              custom={i}
              variants={cardVariants}
              initial="hidden"
              whileInView="visible"
              viewport={{ once: true, margin: "-80px" }}
            >
              <BaseCard
                stepNumber={step.num}
                title={step.title}
                description={step.description}
              />
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
}
