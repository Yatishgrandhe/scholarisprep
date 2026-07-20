"use client";

import { useRef } from "react";
import type { Icon } from "@phosphor-icons/react";
import { ChartLineUp, Gauge, NotePencil, UserPlus } from "@phosphor-icons/react";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import styles from "./LandingHowItWorks.module.css";

gsap.registerPlugin(useGSAP, ScrollTrigger);

interface Step {
  num: string;
  icon: Icon;
  title: string;
  description: string;
  tag: string;
}

const steps: Step[] = [
  {
    num: "01",
    icon: UserPlus,
    title: "Create your account",
    description:
      "Pick your exam — SAT, ACT, or any AP & IB course — and your dashboard is ready in two steps. No placement test, no gatekeeping.",
    tag: "SAT · ACT · AP · IB",
  },
  {
    num: "02",
    icon: NotePencil,
    title: "Practice in the real format",
    description:
      "Work through Bluebook-style SAT & ACT questions or unit-by-unit AP & IB practice, with Scho explaining every mistake until it clicks.",
    tag: "13,000+ questions",
  },
  {
    num: "03",
    icon: Gauge,
    title: "Check a predicted score",
    description:
      "Whenever you're ready, run a short diagnostic from your dashboard to see a predicted score and your weakest domains. Never required to start.",
    tag: "Optional · ~20 min",
  },
  {
    num: "04",
    icon: ChartLineUp,
    title: "Follow your plan, watch it climb",
    description:
      "Your AI study plan targets what matters most for your exam. Track progress and predicted score as they rise week over week.",
    tag: "Personalized to you",
  },
];

export default function LandingHowItWorks() {
  const reducedMotion = useReducedMotion();
  const sectionRef = useRef<HTMLElement>(null);
  const trackRef = useRef<HTMLDivElement>(null);
  const connectorRef = useRef<HTMLDivElement>(null);

  useGSAP(
    () => {
      if (reducedMotion) return;

      const stepEls = trackRef.current
        ? Array.from(trackRef.current.querySelectorAll<HTMLElement>(`.${styles.step}`))
        : [];
      if (!stepEls.length) return;

      const mm = gsap.matchMedia();

      mm.add(
        {
          isDesktop: "(min-width: 1024px)",
          isMobile: "(max-width: 1023.98px)",
        },
        (context) => {
          const conditions = context.conditions as { isDesktop: boolean } | undefined;
          const isDesktop = Boolean(conditions?.isDesktop);
          const connector = connectorRef.current;

          gsap.set(stepEls, { opacity: 0, y: 26 });
          if (connector) {
            gsap.set(connector, {
              scaleX: isDesktop ? 0 : 1,
              scaleY: isDesktop ? 1 : 0,
              transformOrigin: isDesktop ? "left center" : "center top",
            });
          }

          const tl = gsap.timeline({
            scrollTrigger: {
              trigger: sectionRef.current,
              start: "top 72%",
              once: true,
            },
          });

          if (connector) {
            tl.to(connector, {
              [isDesktop ? "scaleX" : "scaleY"]: 1,
              duration: 0.7,
              ease: "power2.out",
            });
          }

          tl.to(
            stepEls,
            {
              opacity: 1,
              y: 0,
              duration: 0.55,
              ease: "power2.out",
              stagger: 0.13,
            },
            isDesktop ? 0.15 : 0,
          );

          return () => {
            tl.scrollTrigger?.kill();
            tl.kill();
          };
        },
      );

      return () => mm.revert();
    },
    { scope: sectionRef, dependencies: [reducedMotion] },
  );

  return (
    <section id="how-it-works" className={`section ${styles.section}`} ref={sectionRef}>
      <div className="container">
        <div className={`sectionHeader ${styles.header}`}>
          <span className={styles.eyebrow}>How it works</span>
          <h2 className={styles.title}>From sign-up to score climb</h2>
          <p className={styles.subtitle}>
            One flow for every exam — SAT, ACT, AP, or IB. Practice first, check
            a predicted score whenever you want, and let your plan do the rest.
          </p>
        </div>

        <div className={styles.track} ref={trackRef}>
          <div className={styles.connector} ref={connectorRef} aria-hidden="true" />

          {steps.map((step) => {
            const StepIcon = step.icon;
            return (
              <div className={styles.step} key={step.num}>
                <div className={styles.markerCol}>
                  <span className={styles.stepMarker}>
                    <StepIcon size={22} weight="bold" />
                  </span>
                </div>
                <div className={styles.stepBody}>
                  <span className={styles.stepNum}>Step {step.num}</span>
                  <h3 className={styles.stepTitle}>{step.title}</h3>
                  <p className={styles.stepDesc}>{step.description}</p>
                  <span className={styles.stepTag}>{step.tag}</span>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
}
