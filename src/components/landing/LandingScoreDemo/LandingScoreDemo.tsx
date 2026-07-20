"use client";

import { useRef } from "react";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import ScoreDemo from "@/components/home/ScoreDemo";
import styles from "./LandingScoreDemo.module.css";

gsap.registerPlugin(useGSAP, ScrollTrigger);

/**
 * Landing chrome shell around the existing `ScoreDemo` panel. Adds a
 * primary/exam-sat glow backdrop consistent with the hero + `LandingLiveDemo`
 * atmosphere and a one-shot scroll entrance, without touching `ScoreDemo`
 * itself so its gauge, slider, and score-prediction logic stay intact.
 */
export function LandingScoreDemo() {
  const reducedMotion = useReducedMotion();
  const shellRef = useRef<HTMLDivElement>(null);

  useGSAP(
    () => {
      if (reducedMotion || !shellRef.current) return;

      gsap.set(shellRef.current, { autoAlpha: 0, y: 32 });
      gsap.to(shellRef.current, {
        autoAlpha: 1,
        y: 0,
        duration: 0.75,
        ease: "power2.out",
        scrollTrigger: {
          trigger: shellRef.current,
          start: "top 82%",
          once: true,
        },
      });
    },
    { scope: shellRef, dependencies: [reducedMotion] },
  );

  return (
    <div ref={shellRef} className={styles.demoShell}>
      <div className={styles.demoGlow} aria-hidden />
      <ScoreDemo />
    </div>
  );
}

export default LandingScoreDemo;
