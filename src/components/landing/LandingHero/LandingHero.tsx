"use client";

import { useRef } from "react";
import Link from "next/link";
import { ArrowRight, Play, Sparkle } from "@phosphor-icons/react";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useGSAP } from "@gsap/react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import { LandingSparkLiveGraph } from "@/components/landing/LandingSparkLiveGraph";
import styles from "./LandingHero.module.css";

gsap.registerPlugin(useGSAP, ScrollTrigger);


/** Compact multi-step SHM proof → Live Graph Spark. Few beats; Spark is the star. */
const USER_MSG = "x = A cos(ωt). Prove a = −ω²x from derivatives, not memory.";
const SCHO_MSG = "Two derivatives, then rewrite in x:";

const DERIV_STEPS = [
  "x = A cos(ωt)",
  "v = −Aω sin(ωt)",
  "a = −Aω² cos(ωt)",
  "a = −ω²x",
] as const;

/**
 * Hero: copy + compact Ask Scho demo (AP Physics C SHM → Live Graph Spark).
 * Non-interactive. Interactive try-out is LandingTrySpark.
 */
export function LandingHero() {
  const reducedMotion = useReducedMotion();

  const sectionRef = useRef<HTMLElement>(null);
  const headlineRef = useRef<HTMLHeadingElement>(null);
  const supportRef = useRef<HTMLParagraphElement>(null);
  const ctasRef = useRef<HTMLDivElement>(null);
  const finePrintRef = useRef<HTMLParagraphElement>(null);
  const stageRef = useRef<HTMLDivElement>(null);
  const rulesRef = useRef<HTMLDivElement>(null);
  const washRef = useRef<HTMLDivElement>(null);
  const lampRef = useRef<HTMLDivElement>(null);

  const userRowRef = useRef<HTMLDivElement>(null);
  const userTextRef = useRef<HTMLParagraphElement>(null);
  const schoRowRef = useRef<HTMLDivElement>(null);
  const schoTextRef = useRef<HTMLParagraphElement>(null);
  const typingRef = useRef<HTMLDivElement>(null);
  const chainRef = useRef<HTMLDivElement>(null);
  const genRef = useRef<HTMLDivElement>(null);
  const sparkRef = useRef<HTMLDivElement>(null);
  const sparkEqRef = useRef<HTMLSpanElement>(null);
  const scanRef = useRef<HTMLDivElement>(null);

  useGSAP(
    () => {
      const stepEls = chainRef.current
        ? Array.from(chainRef.current.querySelectorAll<HTMLElement>("[data-step]"))
        : [];

      if (reducedMotion) {
        if (userTextRef.current) userTextRef.current.textContent = USER_MSG;
        if (schoTextRef.current) schoTextRef.current.textContent = SCHO_MSG;
        gsap.set([typingRef.current, genRef.current], { display: "none" });
        gsap.set(
          [schoRowRef.current, sparkRef.current, chainRef.current, sparkEqRef.current],
          { autoAlpha: 1 },
        );
        gsap.set(stepEls, { autoAlpha: 1, y: 0 });
        gsap.set(scanRef.current, { autoAlpha: 0 });
        return;
      }

      const entrance = gsap.timeline({
        defaults: { ease: "power3.out", duration: 0.65 },
      });
      entrance
        .fromTo(headlineRef.current, { autoAlpha: 0 }, { autoAlpha: 1 })
        .fromTo(
          supportRef.current,
          { autoAlpha: 0 },
          { autoAlpha: 1 },
          "-=0.48",
        )
        .fromTo(ctasRef.current, { autoAlpha: 0 }, { autoAlpha: 1 }, "-=0.42")
        .fromTo(
          finePrintRef.current,
          { autoAlpha: 0 },
          { autoAlpha: 1 },
          "-=0.38",
        )
        .fromTo(stageRef.current, { autoAlpha: 0 }, { autoAlpha: 1 }, "-=0.7");

      const washDrift = gsap.to(washRef.current, {
        x: 22,
        y: -12,
        duration: 10,
        ease: "sine.inOut",
        yoyo: true,
        repeat: -1,
      });
      const lampPulse = gsap.to(lampRef.current, {
        opacity: 0.48,
        scale: 1.04,
        duration: 7,
        ease: "sine.inOut",
        yoyo: true,
        repeat: -1,
      });

      const mm = gsap.matchMedia();
      mm.add("(min-width: 1024px)", () => {
        const parallax = gsap.timeline({
          scrollTrigger: {
            trigger: sectionRef.current,
            start: "top top",
            end: "bottom top",
            scrub: true,
          },
        });
        parallax
          .to(rulesRef.current, { y: -32, ease: "none" }, 0)
          .to(washRef.current, { y: -56, ease: "none" }, 0)
          .to(stageRef.current, { y: -36, ease: "none" }, 0);
        return () => {
          parallax.scrollTrigger?.kill();
          parallax.kill();
        };
      });

      gsap.set(schoRowRef.current, { autoAlpha: 0 });
      gsap.set(typingRef.current, { autoAlpha: 0 });
      gsap.set(chainRef.current, { autoAlpha: 0 });
      gsap.set(stepEls, { autoAlpha: 0, y: 4 });
      gsap.set(genRef.current, { autoAlpha: 0 });
      gsap.set(sparkRef.current, {
        autoAlpha: 0,
        y: 10,
        scale: 0.97,
        filter: "blur(4px)",
      });
      gsap.set(sparkEqRef.current, { autoAlpha: 0, scale: 0.92 });
      gsap.set(scanRef.current, { autoAlpha: 0, xPercent: -30 });
      gsap.set(userRowRef.current, { autoAlpha: 1, scale: 1 });
      if (userTextRef.current) userTextRef.current.textContent = "";
      if (schoTextRef.current) schoTextRef.current.textContent = "";

      const demo = gsap.timeline({
        repeat: -1,
        repeatDelay: 0.85,
        defaults: { ease: "power2.out" },
      });

      const typeInto = (
        el: HTMLElement | null,
        text: string,
        charMs: number,
      ) => {
        if (!el) return;
        const state = { i: 0 };
        demo.to(state, {
          i: text.length,
          duration: Math.min(0.95, text.length * charMs),
          ease: "none",
          onUpdate: () => {
            el.textContent = text.slice(0, Math.round(state.i));
          },
        });
      };

      /* Beat 1: user question */
      demo.set({}, {}, 0.15);
      typeInto(userTextRef.current, USER_MSG, 0.016);

      /* Beat 2: Scho reply + derivation chain */
      demo.to(typingRef.current, { autoAlpha: 1, duration: 0.16 }, "+=0.18");
      demo.to(typingRef.current, { autoAlpha: 0, duration: 0.12 }, "+=0.38");
      demo.set(schoRowRef.current, { autoAlpha: 1 });
      typeInto(schoTextRef.current, SCHO_MSG, 0.018);
      demo.set(chainRef.current, {
        autoAlpha: 1,
        clearProps: "height,marginTop,marginBottom",
      });
      demo.to(
        stepEls,
        { autoAlpha: 1, y: 0, duration: 0.22, stagger: 0.1, ease: "power3.out" },
        "+=0.06",
      );

      /* Beat 3: generate Spark (the star) */
      demo.to(genRef.current, { autoAlpha: 1, duration: 0.2 }, "+=0.1");
      demo.to(
        userRowRef.current,
        { autoAlpha: 0.42, scale: 0.985, duration: 0.35 },
        "+=0.35",
      );
      demo.to(
        sparkRef.current,
        {
          autoAlpha: 1,
          y: 0,
          scale: 1,
          filter: "blur(0px)",
          duration: 0.48,
          ease: "power3.out",
        },
        "-=0.05",
      );
      /* Collapse derivation chain so spark has room and stays the focus */
      demo.to(
        chainRef.current,
        {
          autoAlpha: 0,
          height: 0,
          marginTop: 0,
          marginBottom: 0,
          duration: 0.28,
          ease: "power2.in",
        },
        "-=0.35",
      );
      demo.set(genRef.current, { autoAlpha: 0 });

      demo.to(
        scanRef.current,
        { autoAlpha: 0.55, xPercent: 110, duration: 0.7, ease: "power1.inOut" },
        "-=0.2",
      );
      demo.set(scanRef.current, { autoAlpha: 0, xPercent: -30 });

      demo.to(
        sparkEqRef.current,
        { autoAlpha: 1, scale: 1, duration: 0.32, ease: "power3.out" },
        "-=0.15",
      );

      /* Hold spark on screen longer (majority of the loop) */
      demo.to({}, { duration: 4.2 });

      /* Clean restart */
      demo.to(
        [sparkRef.current, schoRowRef.current, userRowRef.current],
        { autoAlpha: 0, duration: 0.32, ease: "power2.in" },
      );
      demo.call(() => {
        if (userTextRef.current) userTextRef.current.textContent = "";
        if (schoTextRef.current) schoTextRef.current.textContent = "";
      });
      demo.set(chainRef.current, {
        autoAlpha: 0,
        clearProps: "height,marginTop,marginBottom",
      });
      demo.set(stepEls, { autoAlpha: 0, y: 4 });
      demo.set(sparkEqRef.current, { autoAlpha: 0, scale: 0.92 });
      demo.set(genRef.current, { autoAlpha: 0 });
      demo.set(sparkRef.current, {
        autoAlpha: 0,
        y: 10,
        scale: 0.97,
        filter: "blur(4px)",
      });
      demo.set(userRowRef.current, { autoAlpha: 1, scale: 1 });
      demo.set(schoRowRef.current, { autoAlpha: 0 });

      return () => {
        entrance.kill();
        washDrift.kill();
        lampPulse.kill();
        demo.kill();
        mm.revert();
        gsap.set(
          [
            headlineRef.current,
            supportRef.current,
            ctasRef.current,
            finePrintRef.current,
          ],
          { clearProps: "all" },
        );
        /* Keep stage size lock; only clear motion props GSAP may have set. */
        if (stageRef.current) {
          gsap.set(stageRef.current, {
            clearProps: "opacity,visibility,transform,translate,rotate,scale",
          });
        }
      };
    },
    { scope: sectionRef, dependencies: [reducedMotion] },
  );

  return (
    <section className={styles.hero} id="hero" ref={sectionRef}>
      <div className={styles.bg} aria-hidden>
        <div className={styles.bgPlane} />
        <div className={styles.bgRules} ref={rulesRef} />
        <div className={styles.bgWash} ref={washRef} />
        <div className={styles.bgLamp} ref={lampRef} />
        <div className={styles.bgVignette} />
        <div className={styles.bgNoise} />
      </div>

      <div className={styles.inner}>
        <div className={styles.textCol}>
          <h1 className={styles.headline} ref={headlineRef}>
            From Digital SAT to AP, one tutor for every weak spot.
          </h1>

          <p className={styles.support} ref={supportRef}>
            Practice inside a real test interface, get every mistake
            explained by Scho, your AI tutor, and follow one study plan
            across admissions tests and AP &amp; IB coursework.
          </p>

          <div className={styles.ctas} ref={ctasRef}>
            <Link href="/auth/signup" className={styles.primaryCta}>
              Start practicing free
              <ArrowRight size={17} weight="bold" />
            </Link>
            <Link href="#try-spark" className={styles.secondaryCta}>
              <span className={styles.playDot}>
                <Play size={11} weight="fill" />
              </span>
              Try a Spark
            </Link>
          </div>

          <p className={styles.finePrint} ref={finePrintRef}>
            <span className={styles.freeLead}>The whole site is free.</span>
            {" "}No credit card.
          </p>
        </div>
      </div>

      <div className={styles.visualStage} ref={stageRef} aria-hidden>
        <div className={styles.chatWindow}>
          <div className={styles.chatChrome}>
            <span className={styles.chatAvatar}>S</span>
            <div className={styles.chatChromeText}>
              <span className={styles.chatTitle}>Ask Scho</span>
              <span className={styles.chatSubtitle}>AP Physics C · SHM</span>
            </div>
            <span className={styles.chatLive}>
              <i />
              Live
            </span>
          </div>

          <div className={styles.chatThread}>
            <div className={styles.msgUser} ref={userRowRef}>
              <span className={styles.roleLabel}>You</span>
              <p className={styles.bubbleUser} ref={userTextRef} />
            </div>

            <div className={styles.typingRow} ref={typingRef}>
              <span className={styles.msgAvatar}>S</span>
              <div>
                <span className={styles.roleLabel}>Scho</span>
                <div className={styles.typingBubble}>
                  <span />
                  <span />
                  <span />
                </div>
              </div>
            </div>

            <div className={styles.msgScho} ref={schoRowRef}>
              <span className={styles.msgAvatar}>S</span>
              <div className={styles.msgSchoBody}>
                <span className={styles.roleLabel}>Scho</span>
                <p className={styles.bubbleScho} ref={schoTextRef} />

                <div className={styles.derivChain} ref={chainRef}>
                  {DERIV_STEPS.map((step, i) => (
                    <span key={step} className={styles.derivStep} data-step>
                      {i > 0 ? <span className={styles.derivArrow}>→</span> : null}
                      <span className={styles.derivChip}>{step}</span>
                    </span>
                  ))}
                </div>

                <div className={styles.sparkGenerating} ref={genRef}>
                  <Sparkle size={11} weight="fill" />
                  Generating Spark
                  <span className={styles.genShimmer} />
                </div>

                <div className={styles.sparkCard} ref={sparkRef}>
                  <div className={styles.sparkCardHeader}>
                    <span className={styles.sparkCardLabel}>
                      <Sparkle size={10} weight="fill" />
                      Spark
                    </span>
                    <span className={styles.sparkCardType}>Live Graph</span>
                  </div>
                  <p className={styles.sparkCardTitle}>
                    Same ωt, opposite phase: a tracks −ω²x
                  </p>
                  <div className={styles.sparkGraph}>
                    <div className={styles.graphScan} ref={scanRef} />
                    <LandingSparkLiveGraph
                      omega={1.4}
                      size="hero"
                      showLegend={false}
                    />
                    <div className={styles.sparkLegend}>
                      <span className={styles.legX}>x(t)</span>
                      <span className={styles.legA}>a(t)</span>
                      <span className={styles.sparkEq} ref={sparkEqRef}>
                        a = −ω²x
                      </span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}

export default LandingHero;
