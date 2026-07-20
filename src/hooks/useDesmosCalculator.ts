"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import {
  createDesmosCalculator,
  isDesmosConfigured,
  loadDesmosApi,
  type DesmosCalculatorInstance,
  type DesmosCalculatorType,
} from "@/lib/desmos/loadDesmos";

type UseDesmosCalculatorOptions = {
  enabled: boolean;
  calculatorType?: DesmosCalculatorType;
};

type UseDesmosCalculatorResult = {
  containerRef: React.RefObject<HTMLDivElement | null>;
  ready: boolean;
  error: string | null;
  configured: boolean;
  resize: () => void;
};

function hasUsableSize(el: HTMLElement): boolean {
  const { width, height } = el.getBoundingClientRect();
  return width >= 1 && height >= 1;
}

/**
 * Mounts a Desmos calculator into `containerRef` while `enabled` is true.
 *
 * Initialization waits until the container actually has a non-zero size (a
 * ResizeObserver retries once the panel is laid out / un-minimized), the API
 * script has loaded, and re-creates the instance when the calculator type
 * changes. All failures surface through `error` — the hook never throws during
 * render, so it cannot break the surrounding question/exam view.
 */
export function useDesmosCalculator({
  enabled,
  calculatorType = "graphing",
}: UseDesmosCalculatorOptions): UseDesmosCalculatorResult {
  const containerRef = useRef<HTMLDivElement>(null);
  const instanceRef = useRef<DesmosCalculatorInstance | null>(null);
  const generationRef = useRef(0);
  const [ready, setReady] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const configured = isDesmosConfigured();

  const resize = useCallback(() => {
    instanceRef.current?.resize();
  }, []);

  useEffect(() => {
    if (!enabled) return;

    const container = containerRef.current;
    if (!container) return;

    const generation = ++generationRef.current;
    let cancelled = false;
    let initializing = false;

    const destroy = () => {
      try {
        instanceRef.current?.destroy();
      } catch {
        /* Desmos can throw if the node is already gone — ignore on teardown. */
      }
      instanceRef.current = null;
    };

    const init = () => {
      if (cancelled || initializing || instanceRef.current) return;
      const mount = containerRef.current;
      if (!mount || !hasUsableSize(mount)) return; // wait for layout

      initializing = true;
      setReady(false);
      setError(null);

      loadDesmosApi()
        .then((desmos) => {
          if (
            cancelled ||
            generation !== generationRef.current ||
            !containerRef.current
          ) {
            return;
          }
          destroy();
          instanceRef.current = createDesmosCalculator(
            desmos,
            containerRef.current,
            calculatorType,
          );
          // Desmos needs a resize after first paint to lay out the keypad glyphs.
          instanceRef.current.resize();
          requestAnimationFrame(() => instanceRef.current?.resize());
          if (!cancelled && generation === generationRef.current) {
            setReady(true);
          }
        })
        .catch((err: unknown) => {
          if (cancelled || generation !== generationRef.current) return;
          setError(err instanceof Error ? err.message : "Failed to load calculator");
          setReady(false);
        })
        .finally(() => {
          initializing = false;
        });
    };

    const observer = new ResizeObserver(() => {
      if (cancelled || generation !== generationRef.current) return;
      const mount = containerRef.current;
      if (!mount || !hasUsableSize(mount)) return;
      if (instanceRef.current) instanceRef.current.resize();
      else init();
    });

    observer.observe(container);
    init();

    return () => {
      cancelled = true;
      observer.disconnect();
      destroy();
      setReady(false);
    };
  }, [enabled, calculatorType]);

  return { containerRef, ready: enabled && ready, error, configured, resize };
}
