"use client";

import { useEffect, type ReactNode } from "react";
import Lenis from "lenis";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { useReducedMotion } from "@/hooks/useReducedMotion";

gsap.registerPlugin(ScrollTrigger);

/**
 * Lenis smooth scrolling — marketing routes only. Practice and dashboard
 * routes must never mount this component.
 *
 * Bridges Lenis to GSAP ScrollTrigger so landing sections can use
 * ScrollTrigger (scrub, pin, stagger) while Lenis owns the actual scroll
 * interpolation:
 *  - `ScrollTrigger.scrollerProxy(document.body, ...)` maps GSAP's scroll
 *    read/write to Lenis. Registering the proxy against `document.body`
 *    also covers `window` and `document.documentElement`, so triggers that
 *    don't set a custom `scroller` (the default case) pick it up too.
 *  - `lenis.on("scroll", ScrollTrigger.update)` keeps triggers in sync with
 *    Lenis' interpolated position every frame.
 *  - `gsap.ticker.add` drives Lenis' RAF loop instead of a separate
 *    `requestAnimationFrame` call, so both libraries share one clock;
 *    `prioritize: true` runs Lenis before GSAP's own tick to avoid a
 *    duplicate layout/style recalculation.
 */
export function SmoothScroll({ children }: { children: ReactNode }) {
  const reducedMotion = useReducedMotion();

  useEffect(() => {
    if (reducedMotion) return;

    const lenis = new Lenis({
      duration: 1.1,
      smoothWheel: true,
    });

    ScrollTrigger.scrollerProxy(document.body, {
      scrollTop(value) {
        if (typeof value === "number") {
          lenis.scrollTo(value, { immediate: true });
          return;
        }
        return lenis.scroll;
      },
      getBoundingClientRect() {
        return {
          top: 0,
          left: 0,
          width: window.innerWidth,
          height: window.innerHeight,
        };
      },
      pinType: document.body.style.transform ? "transform" : "fixed",
    });

    const unsubscribeScroll = lenis.on("scroll", ScrollTrigger.update);

    const onTick = (time: number) => {
      lenis.raf(time * 1000);
    };
    gsap.ticker.add(onTick, false, true);
    gsap.ticker.lagSmoothing(0);

    // Recalculate trigger positions once after the proxy/ticker are wired up.
    // Do NOT listen for ScrollTrigger's "refresh" event and call refresh()
    // from inside that handler — refresh() itself fires "refresh", so that
    // pattern recurses infinitely and blows the call stack. Viewport resizes
    // are already handled internally by ScrollTrigger (debounced ~200ms), so
    // no manual resize listener is needed here.
    ScrollTrigger.refresh();

    return () => {
      gsap.ticker.remove(onTick);
      unsubscribeScroll();
      lenis.destroy();
      // Restore a native pass-through proxy so any ScrollTrigger instances
      // created after teardown (e.g. reduced-motion toggled mid-session)
      // don't reference the destroyed Lenis instance.
      ScrollTrigger.scrollerProxy(document.body, {
        scrollTop(value) {
          if (typeof value === "number") {
            document.documentElement.scrollTop = value;
            return;
          }
          return document.documentElement.scrollTop;
        },
      });
      ScrollTrigger.refresh();
    };
  }, [reducedMotion]);

  return <>{children}</>;
}
