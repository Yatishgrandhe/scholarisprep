"use client";

import { useRef } from "react";
import Link from "next/link";
import {
  ArrowRight,
  Bank,
  BookOpenText,
  Flask,
  Function as FunctionIcon,
  PaintBrush,
  Translate,
} from "@phosphor-icons/react";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import { cn } from "@/lib/utils";
import { AP_IB_CATALOG } from "@/lib/apIbCatalog";
import styles from "./LandingSubjects.module.css";

gsap.registerPlugin(useGSAP, ScrollTrigger);

const PROGRAMS = [
  {
    code: "SAT",
    detail: "Reading & Writing, Math — full Bluebook-style bank",
    tone: "toneSat",
  },
  {
    code: "ACT",
    detail: "English, Math, Reading & Science",
    tone: "toneAct",
  },
  {
    code: "AP",
    detail: `${AP_IB_CATALOG.stats.ap_primary} courses, scored 1\u20135`,
    tone: "toneAp",
  },
  {
    code: "IB",
    detail: `${AP_IB_CATALOG.stats.ib} subjects, scored 1\u20137`,
    tone: "toneIb",
  },
] as const;

const DOMAINS = [
  { label: "Math & Computer Science", icon: FunctionIcon },
  { label: "Sciences", icon: Flask },
  { label: "English & Literature", icon: BookOpenText },
  { label: "History & Social Sciences", icon: Bank },
  { label: "World Languages", icon: Translate },
  { label: "Arts", icon: PaintBrush },
];

const STATS = [
  { value: "13,000+", label: "practice questions" },
  { value: `${AP_IB_CATALOG.stats.total}`, label: "AP & IB courses" },
  { value: "SAT & ACT", label: "full coverage" },
];

export default function LandingSubjects() {
  const reducedMotion = useReducedMotion();
  const sectionRef = useRef<HTMLElement>(null);

  useGSAP(
    () => {
      if (reducedMotion) return;

      const selectors = [
        styles.kicker,
        styles.title,
        styles.subtitle,
        styles.programCard,
        styles.domainKicker,
        styles.domainChip,
        styles.statsRow,
        styles.teaser,
      ]
        .map((s) => `.${s}`)
        .join(", ");

      gsap.set(selectors, { opacity: 0, y: 16 });

      const tl = gsap.timeline({
        defaults: { duration: 0.55, ease: "power2.out" },
        scrollTrigger: {
          trigger: sectionRef.current,
          start: "top 78%",
          once: true,
        },
      });

      tl.to(`.${styles.kicker}`, { opacity: 1, y: 0 })
        .to(`.${styles.title}`, { opacity: 1, y: 0 }, "-=0.4")
        .to(`.${styles.subtitle}`, { opacity: 1, y: 0 }, "-=0.4")
        .to(
          `.${styles.programCard}`,
          { opacity: 1, y: 0, stagger: 0.09 },
          "-=0.3",
        )
        .to(`.${styles.domainKicker}`, { opacity: 1, y: 0 }, "-=0.25")
        .to(
          `.${styles.domainChip}`,
          { opacity: 1, y: 0, stagger: 0.035 },
          "-=0.3",
        )
        .to(`.${styles.statsRow}`, { opacity: 1, y: 0 }, "-=0.2")
        .to(`.${styles.teaser}`, { opacity: 1, y: 0 }, "-=0.15");
    },
    { scope: sectionRef, dependencies: [reducedMotion] },
  );

  return (
    <section
      className={styles.section}
      ref={sectionRef}
      aria-labelledby="landing-subjects-heading"
    >
      <div className={cn("container", styles.inner)}>
        <div className={styles.heading}>
          <p className={styles.kicker}>Coverage</p>
          <h2 id="landing-subjects-heading" className={styles.title}>
            Built for the exam you&apos;re <em>actually</em> taking.
          </h2>
          <p className={styles.subtitle}>
            SAT, ACT, AP, and IB — one practice platform, real curriculum
            coverage, not just a Reading &amp; Math bank.
          </p>
        </div>

        <ul className={styles.programGrid}>
          {PROGRAMS.map((program) => (
            <li
              key={program.code}
              className={cn(styles.programCard, styles[program.tone])}
            >
              <span className={styles.programDot} aria-hidden />
              <span className={styles.programName}>{program.code}</span>
              <span className={styles.programDetail}>{program.detail}</span>
            </li>
          ))}
        </ul>

        <div className={styles.domainBlock}>
          <p className={styles.domainKicker}>
            Every AP &amp; IB subject area, in one bank
          </p>
          <ul className={styles.domainRow}>
            {DOMAINS.map((domain) => {
              const Icon = domain.icon;
              return (
                <li key={domain.label} className={styles.domainChip}>
                  <Icon size={14} weight="duotone" />
                  {domain.label}
                </li>
              );
            })}
          </ul>
        </div>

        <div className={styles.statsRow}>
          {STATS.map((stat) => (
            <div key={stat.label} className={styles.stat}>
              <span className={styles.statValue}>{stat.value}</span>
              <span className={styles.statLabel}>{stat.label}</span>
            </div>
          ))}
        </div>

        <p className={styles.teaser}>
          Prefer learning from video?{" "}
          <Link href="/learn" className={styles.teaserLink}>
            Turn any YouTube lesson into a structured AI course
            <ArrowRight size={13} weight="bold" />
          </Link>
        </p>
      </div>
    </section>
  );
}
