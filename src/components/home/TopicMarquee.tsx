"use client";

import {
  BookOpenText,
  ChartLineUp,
  Function as FunctionIcon,
  Lightbulb,
  MathOperations,
  PencilLine,
  Shapes,
  TextAa,
} from "@phosphor-icons/react";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import { cn } from "@/lib/utils";
import styles from "./TopicMarquee.module.css";

const topics = [
  { label: "Information and Ideas", icon: Lightbulb, tone: styles.toneRw },
  { label: "Craft and Structure", icon: BookOpenText, tone: styles.toneRw },
  { label: "Expression of Ideas", icon: PencilLine, tone: styles.toneRw },
  {
    label: "Standard English Conventions",
    icon: TextAa,
    tone: styles.toneRw,
  },
  { label: "Algebra", icon: FunctionIcon, tone: styles.toneMath },
  { label: "Advanced Math", icon: MathOperations, tone: styles.toneMath },
  {
    label: "Problem-Solving and Data Analysis",
    icon: ChartLineUp,
    tone: styles.toneMath,
  },
  {
    label: "Geometry and Trigonometry",
    icon: Shapes,
    tone: styles.toneMath,
  },
];

function MarqueeRow({ ariaHidden }: { ariaHidden?: boolean }) {
  return (
    <ul className={styles.row} aria-hidden={ariaHidden}>
      {topics.map((topic) => {
        const Icon = topic.icon;
        return (
          <li key={topic.label} className={cn(styles.chip, topic.tone)}>
            <Icon size={15} weight="duotone" />
            {topic.label}
          </li>
        );
      })}
    </ul>
  );
}

export default function TopicMarquee() {
  const reducedMotion = useReducedMotion();

  return (
    <section className={styles.marquee} aria-label="SAT domains covered">
      <p className={styles.kicker}>Every official SAT domain, covered</p>
      <div
        className={cn(styles.track, reducedMotion && styles.trackStatic)}
      >
        <MarqueeRow />
        {!reducedMotion && <MarqueeRow ariaHidden />}
      </div>
    </section>
  );
}
