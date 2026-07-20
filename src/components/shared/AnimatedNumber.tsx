"use client";

import { useEffect, useRef } from "react";
import { animate } from "animejs";
import { useReducedMotion } from "@/hooks/useReducedMotion";

type AnimatedNumberProps = {
  value: number;
  duration?: number;
  className?: string;
};

/**
 * Counts up/down to `value` using anime.js. Interruptions resume from the
 * number currently on screen (not the previous target), so dragging a slider
 * reads smoothly instead of jumping. Falls back to the plain value when the
 * user prefers reduced motion.
 */
export function AnimatedNumber({
  value,
  duration = 450,
  className,
}: AnimatedNumberProps) {
  const ref = useRef<HTMLSpanElement>(null);
  const reduced = useReducedMotion();

  useEffect(() => {
    const el = ref.current;
    if (!el) return;

    if (reduced) {
      el.textContent = String(value);
      return;
    }

    const current = Number.parseFloat(el.textContent ?? "");
    const obj = { v: Number.isFinite(current) ? current : value };
    const controls = animate(obj, {
      v: value,
      duration,
      ease: "outExpo",
      onUpdate: () => {
        el.textContent = String(Math.round(obj.v));
      },
    });

    return () => {
      controls.pause();
    };
  }, [value, duration, reduced]);

  return (
    <span ref={ref} className={className}>
      {value}
    </span>
  );
}
