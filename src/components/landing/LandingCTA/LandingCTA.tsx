"use client";

import { useRef } from "react";
import Link from "next/link";
import { ArrowRight, HandHeart } from "@phosphor-icons/react";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import styles from "./LandingCTA.module.css";

gsap.registerPlugin(useGSAP, ScrollTrigger);

export function LandingCTA() {
  const reducedMotion = useReducedMotion();
  const sectionRef = useRef<HTMLElement>(null);

  useGSAP(
    () => {
      if (reducedMotion) return;
      const items = gsap.utils.toArray<HTMLElement>(
        "[data-cta-item]",
        sectionRef.current,
      );
      if (!items.length) return;

      gsap.from(items, {
        opacity: 0,
        y: 26,
        duration: 0.7,
        ease: "power3.out",
        stagger: 0.09,
        scrollTrigger: {
          trigger: sectionRef.current,
          start: "top 78%",
          toggleActions: "play none none none",
        },
      });
    },
    { scope: sectionRef, dependencies: [reducedMotion] },
  );

  return (
    <section className={`section ${styles.section}`} ref={sectionRef}>
      <div className={styles.aurora} aria-hidden />
      <div className={styles.horizon} aria-hidden />

      <div className="container">
        <div className={styles.panel}>
          <span className={styles.eyebrow} data-cta-item>
            <HandHeart size={14} weight="fill" />
            Access, not exclusivity
          </span>

          <h2 className={styles.heading} data-cta-item>
            Great tutoring shouldn&rsquo;t depend on what you can afford.
          </h2>

          <p className={styles.subtitle} data-cta-item>
            Scho, your AI tutor, is on call around the clock across the SAT,
            ACT, AP, and IB, explaining every mistake until it actually
            clicks.
          </p>

          <div className={styles.ctas} data-cta-item>
            <Link href="/auth/signup" className={styles.primaryCta}>
              Start practicing free
              <ArrowRight size={17} weight="bold" />
            </Link>
            <Link href="/auth/login" className={styles.secondaryCta}>
              Log in
            </Link>
          </div>

          <p className={styles.meta} data-cta-item>
            <span className={styles.freeLead}>The whole site is free.</span>
            {" "}No credit card.
          </p>
        </div>
      </div>
    </section>
  );
}

export default LandingCTA;
