"use client";

import { useRef } from "react";
import {
  Buildings,
  ChalkboardTeacher,
  MapPinLine,
  Wallet,
} from "@phosphor-icons/react";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import styles from "./LandingImpactStrip.module.css";

gsap.registerPlugin(useGSAP, ScrollTrigger);

const points = [
  {
    icon: MapPinLine,
    value: "Any zip code, any budget",
    label:
      "A world-class tutor shouldn't depend on where you live or what your family can afford.",
  },
  {
    icon: ChalkboardTeacher,
    value: "$50–150 an hour",
    label:
      "The going rate for a private tutor \u2014 out of reach for most students who need one.",
  },
  {
    icon: Wallet,
    value: "A fraction of that cost",
    label:
      "The same one-on-one attention, personalized by AI instead of priced by the hour.",
  },
  {
    icon: Buildings,
    value: "SAT, ACT, AP & IB",
    label:
      "One platform for every exam a family is juggling, instead of a subscription for each.",
  },
];

export function LandingImpactStrip() {
  const reducedMotion = useReducedMotion();
  const sectionRef = useRef<HTMLElement>(null);
  const listRef = useRef<HTMLUListElement>(null);

  useGSAP(
    () => {
      if (reducedMotion || !listRef.current) return;

      const items = gsap.utils.toArray<HTMLElement>(listRef.current.children);
      gsap.set(items, { opacity: 0, y: 18 });

      ScrollTrigger.batch(items, {
        start: "top 88%",
        once: true,
        onEnter: (batch) =>
          gsap.to(batch, {
            opacity: 1,
            y: 0,
            duration: 0.55,
            ease: "power2.out",
            stagger: 0.09,
            overwrite: true,
          }),
      });
    },
    { scope: sectionRef, dependencies: [reducedMotion] },
  );

  return (
    <section
      className={styles.strip}
      aria-label="Why access matters at Scholaris"
      ref={sectionRef}
    >
      <div className={styles.inner}>
        <p className={styles.kicker}>The gap we built Scholaris to close</p>

        <ul className={styles.list} ref={listRef}>
          {points.map((point) => {
            const Icon = point.icon;
            return (
              <li key={point.value} className={styles.item}>
                <span className={styles.icon} aria-hidden>
                  <Icon size={19} weight="duotone" />
                </span>
                <span className={styles.value}>{point.value}</span>
                <span className={styles.label}>{point.label}</span>
              </li>
            );
          })}
        </ul>
      </div>
    </section>
  );
}

export default LandingImpactStrip;
