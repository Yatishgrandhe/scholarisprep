"use client";

import { useMemo, useRef, useState } from "react";
import { motion, useInView } from "framer-motion";
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import styles from "./ScoreDemo.module.css";

// Semicircle arc length: π · r (r = 80) ≈ 251.
const GAUGE_LEN = 251;

type Exam = "SAT" | "ACT";

function predictSatScore(accuracyPct: number): number {
  const normalized = accuracyPct / 100;
  return Math.round(400 + (1600 - 400) * normalized ** 1.15);
}

function predictActScore(accuracyPct: number): number {
  const normalized = accuracyPct / 100;
  return Math.max(1, Math.round(1 + 35 * normalized ** 1.05));
}

export default function ScoreDemo() {
  const [exam, setExam] = useState<Exam>("SAT");
  const [accuracy, setAccuracy] = useState(72);
  const reduced = useReducedMotion();
  const gaugeRef = useRef<HTMLDivElement>(null);
  const inView = useInView(gaugeRef, { once: true, margin: "-120px" });
  // Drives the entrance "draw-on": the arc and needle animate from empty to
  // value the first time the gauge scrolls into view, then track the slider.
  const active = reduced || inView;

  const predicted = useMemo(
    () =>
      exam === "SAT" ? predictSatScore(accuracy) : predictActScore(accuracy),
    [exam, accuracy],
  );
  const gaugeRotation = useMemo(
    () => -90 + (accuracy / 100) * 180,
    [accuracy],
  );

  return (
    <section className={styles.section}>
      <div className="container">
        <div className={styles.inner}>
          <div className={styles.copy}>
            <h2 className={styles.title}>See your predicted score</h2>
            <p className={styles.subtitle}>
              Slide to explore how accuracy maps to your projected score. Real
              predictions use your full practice history.
            </p>

            <Tabs
              value={exam}
              onValueChange={(value) => setExam(value as Exam)}
              className={styles.examTabs}
            >
              <TabsList className="h-9 gap-1">
                <TabsTrigger value="SAT" className="min-w-16 px-4 py-1">
                  SAT
                </TabsTrigger>
                <TabsTrigger value="ACT" className="min-w-16 px-4 py-1">
                  ACT
                </TabsTrigger>
              </TabsList>
            </Tabs>

            <label className={styles.sliderLabel} htmlFor="accuracy-slider">
              Current accuracy: <strong>{accuracy}%</strong>
            </label>
            <input
              id="accuracy-slider"
              type="range"
              min={30}
              max={99}
              value={accuracy}
              onChange={(e) => setAccuracy(Number(e.target.value))}
              className={styles.slider}
            />
          </div>

          <div className={styles.gaugeWrap} ref={gaugeRef}>
            <svg viewBox="0 0 200 120" className={styles.gauge} aria-hidden>
              <path
                d="M 20 100 A 80 80 0 0 1 180 100"
                fill="none"
                strokeWidth="12"
                strokeLinecap="round"
                className={styles.gaugeTrack}
              />
              <motion.path
                d="M 20 100 A 80 80 0 0 1 180 100"
                fill="none"
                stroke="url(#gaugeGrad)"
                strokeWidth="12"
                strokeLinecap="round"
                strokeDasharray={`${GAUGE_LEN} ${GAUGE_LEN}`}
                initial={{ strokeDashoffset: GAUGE_LEN }}
                animate={{
                  strokeDashoffset:
                    GAUGE_LEN - (active ? (accuracy / 100) * GAUGE_LEN : 0),
                }}
                transition={
                  reduced
                    ? { duration: 0 }
                    : { duration: 1.1, ease: [0.22, 0.61, 0.36, 1] }
                }
              />
              <defs>
                <linearGradient id="gaugeGrad" x1="0%" y1="0%" x2="100%" y2="0%">
                  <stop offset="0%" stopColor="hsl(var(--primary))" />
                  <stop offset="100%" stopColor="hsl(var(--accent))" />
                </linearGradient>
              </defs>
              <motion.line
                x1="100"
                y1="100"
                x2="100"
                y2="35"
                strokeWidth="3"
                strokeLinecap="round"
                className={styles.gaugeNeedle}
                style={{ transformOrigin: "100px 100px" }}
                initial={{ rotate: -90 }}
                animate={{ rotate: active ? gaugeRotation : -90 }}
                transition={
                  reduced
                    ? { duration: 0 }
                    : { type: "spring", stiffness: 90, damping: 14 }
                }
              />
            </svg>
            <p className={styles.score} aria-live="polite">
              <span className={styles.scoreValue}>{predicted}</span>
              <span className={styles.scoreLabel}>Predicted {exam}</span>
            </p>
          </div>
        </div>
      </div>
    </section>
  );
}
