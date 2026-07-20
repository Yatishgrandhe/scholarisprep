"use client";

import { AnimatePresence, motion } from "framer-motion";
import { useCallback, useEffect, useLayoutEffect, useRef, useState } from "react";
import { usePathname } from "next/navigation";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import { LoadingIntro } from "@/components/loading/LoadingIntro";
import { RouteLoader } from "@/components/loading/RouteLoader";
import {
  markIntroSeen,
  shouldShowFullIntro,
} from "@/components/loading/introStorage";
import styles from "./loading-overlay.module.css";

type Mode = "boot" | "intro" | "plain";

const INTRO_FAILSAFE_MS = 5200;
const PLAIN_FAILSAFE_MS = 2400;
const ROUTE_DEBOUNCE_MS = 80;

function lockScroll() {
  document.documentElement.style.overflow = "hidden";
  document.body.style.overflow = "hidden";
}

function unlockScroll() {
  document.documentElement.style.overflow = "";
  document.body.style.overflow = "";
}

/**
 * Root loading gate:
 * - A) Full intro when first visit or last intro ≥ 2h ago (`scholaris_intro_seen_at`)
 * - B) Plain logo + progress on refresh / top-level route changes within the window
 *
 * While visible (including exit fade), the overlay is a fully opaque curtain so the
 * underlying page cannot be seen or interacted with.
 */
export function AppLoadingOverlay() {
  const pathname = usePathname();
  const reducedMotion = useReducedMotion();
  const [mode, setMode] = useState<Mode>("boot");
  const [visible, setVisible] = useState(true);
  const readyRef = useRef(false);
  const pathRef = useRef<string | null>(null);
  const failsafeRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const routeTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const prevBodyOverflow = useRef<string>("");
  const prevHtmlOverflow = useRef<string>("");
  const visibleRef = useRef(true);
  visibleRef.current = visible;

  const clearFailsafe = () => {
    if (failsafeRef.current) {
      clearTimeout(failsafeRef.current);
      failsafeRef.current = null;
    }
  };

  const dismiss = useCallback(() => {
    clearFailsafe();
    setVisible(false);
    readyRef.current = true;
    // Keep `data-scholaris-loading` + scroll lock until exit animation finishes
    // so content entrance animations wait for a true page reveal.
  }, []);

  const armFailsafe = useCallback(
    (next: "intro" | "plain") => {
      clearFailsafe();
      const ms = next === "intro" ? INTRO_FAILSAFE_MS : PLAIN_FAILSAFE_MS;
      failsafeRef.current = setTimeout(() => {
        if (next === "intro") markIntroSeen();
        dismiss();
      }, ms);
    },
    [dismiss],
  );

  const show = useCallback(
    (next: "intro" | "plain") => {
      setMode(next);
      setVisible(true);
      document.documentElement.setAttribute("data-scholaris-loading", next);
      lockScroll();
      armFailsafe(next);
    },
    [armFailsafe],
  );

  const handleIntroComplete = useCallback(() => {
    markIntroSeen();
    dismiss();
  }, [dismiss]);

  const handlePlainComplete = useCallback(() => {
    dismiss();
  }, [dismiss]);

  const handleExitComplete = useCallback(() => {
    // Ignore if a new loader started before the previous exit finished.
    if (visibleRef.current) return;
    document.documentElement.removeAttribute("data-scholaris-loading");
    unlockScroll();
  }, []);

  // Opaque boot curtain before intro/plain choice — no page flash.
  useLayoutEffect(() => {
    prevHtmlOverflow.current = document.documentElement.style.overflow;
    prevBodyOverflow.current = document.body.style.overflow;
    document.documentElement.setAttribute("data-scholaris-loading", "boot");
    lockScroll();
  }, []);

  // Initial load: choose intro vs plain after preference is readable
  useEffect(() => {
    const id = window.requestAnimationFrame(() => {
      const full = shouldShowFullIntro();
      show(full ? "intro" : "plain");
      pathRef.current = pathname;
    });
    return () => window.cancelAnimationFrame(id);
    // eslint-disable-next-line react-hooks/exhaustive-deps -- mount-only bootstrap
  }, []);

  // Route changes → plain loader (after initial sequence finished)
  useEffect(() => {
    if (pathRef.current === null) return;
    if (pathname === pathRef.current) return;

    pathRef.current = pathname;
    if (!readyRef.current) return;
    if (visible) return;

    if (routeTimerRef.current) clearTimeout(routeTimerRef.current);
    routeTimerRef.current = setTimeout(() => {
      show("plain");
    }, ROUTE_DEBOUNCE_MS);

    return () => {
      if (routeTimerRef.current) clearTimeout(routeTimerRef.current);
    };
  }, [pathname, show, visible]);

  useEffect(() => {
    return () => {
      clearFailsafe();
      if (routeTimerRef.current) clearTimeout(routeTimerRef.current);
      document.documentElement.removeAttribute("data-scholaris-loading");
      document.documentElement.style.overflow = prevHtmlOverflow.current;
      document.body.style.overflow = prevBodyOverflow.current;
    };
  }, []);

  return (
    <AnimatePresence onExitComplete={handleExitComplete}>
      {visible ? (
        <motion.div
          /* Stable key: boot → intro/plain must not remount/fade or the page flashes. */
          key="scholaris-loading-overlay"
          className={`${styles.overlay} ${mode === "plain" ? styles.overlayPlain : ""}`}
          data-scholaris-overlay=""
          initial={{ opacity: 1 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          transition={{
            duration: reducedMotion ? 0.12 : 0.32,
            ease: "easeOut",
          }}
          aria-busy="true"
        >
          {mode === "intro" ? (
            <LoadingIntro
              reducedMotion={reducedMotion}
              onComplete={handleIntroComplete}
            />
          ) : mode === "plain" ? (
            <RouteLoader
              reducedMotion={reducedMotion}
              onComplete={handlePlainComplete}
            />
          ) : null}
        </motion.div>
      ) : null}
    </AnimatePresence>
  );
}
