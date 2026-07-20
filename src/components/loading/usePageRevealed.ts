"use client";

import { useEffect, useState } from "react";

/**
 * True once the root AppLoadingOverlay has fully dismissed
 * (`data-scholaris-loading` removed after exit animation).
 * Used to start post-reveal entrance animations (e.g. admin charts).
 *
 * Resets to false if a loader starts again while the consumer is mounted.
 */
export function usePageRevealed(): boolean {
  const [revealed, setRevealed] = useState(false);

  useEffect(() => {
    let cancelled = false;
    let innerRaf = 0;

    const sync = () => {
      if (cancelled) return;
      const loading =
        document.documentElement.hasAttribute("data-scholaris-loading");
      setRevealed(!loading);
    };

    const observer = new MutationObserver(sync);
    observer.observe(document.documentElement, {
      attributes: true,
      attributeFilter: ["data-scholaris-loading"],
    });

    // Double rAF so AppLoadingOverlay's useLayoutEffect can set the boot attr
    // before we decide the page is already revealed.
    const outerRaf = window.requestAnimationFrame(() => {
      innerRaf = window.requestAnimationFrame(sync);
    });

    return () => {
      cancelled = true;
      window.cancelAnimationFrame(outerRaf);
      window.cancelAnimationFrame(innerRaf);
      observer.disconnect();
    };
  }, []);

  return revealed;
}
