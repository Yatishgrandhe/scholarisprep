"use client";

/**
 * CSS-first whiteboard motion helpers.
 *
 * Motions (see board-motion.module.css):
 * 1. Dock slide — BoardChatDock open/close
 * 2. Toolbar fade — floating BoardToolbar auto-hide
 * 3. Stroke commit — brief cobalt inset flash on pointer-up
 *
 * No animation libraries. Respects prefers-reduced-motion.
 */

import { useCallback, useEffect, useRef, useState } from "react";
import { cn } from "@/lib/utils";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import styles from "./board-motion.module.css";

export type BoardDockEdge = "bottom" | "side";

const STROKE_COMMIT_MS = 320;

export function useBoardMotion() {
  const reduced = useReducedMotion();
  const [strokeCommitActive, setStrokeCommitActive] = useState(false);
  const commitTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  useEffect(() => {
    return () => {
      if (commitTimer.current) clearTimeout(commitTimer.current);
    };
  }, []);

  const dockClassName = useCallback(
    (open: boolean, edge: BoardDockEdge = "bottom") =>
      cn(
        styles.dock,
        edge === "side" ? styles.dockSide : styles.dockBottom,
        open && styles.dockOpen,
      ),
    [],
  );

  const toolbarClassName = useCallback(
    (visible: boolean) =>
      cn(styles.toolbar, visible ? styles.toolbarVisible : styles.toolbarHidden),
    [],
  );

  const strokeSurfaceClassName = useCallback(
    (extra?: string) =>
      cn(styles.strokeSurface, strokeCommitActive && styles.strokeCommit, extra),
    [strokeCommitActive],
  );

  /** Call on stroke end (pointerup) for ink-settle feedback. */
  const pulseStrokeCommit = useCallback(() => {
    if (reduced) return;
    if (commitTimer.current) clearTimeout(commitTimer.current);
    // Retrigger keyframes when strokes land back-to-back
    setStrokeCommitActive(false);
    requestAnimationFrame(() => {
      setStrokeCommitActive(true);
      commitTimer.current = setTimeout(() => {
        setStrokeCommitActive(false);
        commitTimer.current = null;
      }, STROKE_COMMIT_MS);
    });
  }, [reduced]);

  return {
    reduced,
    styles,
    dockClassName,
    toolbarClassName,
    strokeSurfaceClassName,
    pulseStrokeCommit,
  };
}

export { styles as boardMotionStyles };
