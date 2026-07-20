"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import {
  Calculator,
  Minus,
  X,
  ArrowsOut,
  ArrowsIn,
  DotsSixVertical,
} from "@phosphor-icons/react";
import { useDesmosCalculator } from "@/hooks/useDesmosCalculator";
import {
  calculatorTypeLabel,
  type DesmosCalculatorType,
} from "@/lib/desmos/loadDesmos";
import {
  DEFAULT_CALCULATOR_LAYOUT,
  type CalculatorLayout,
} from "@/lib/desmos/calculatorAccess";
import styles from "./DesmosCalculator.module.css";

const TITLE_BAR_HEIGHT = 44;
const MIN_WIDTH = 320;
const MIN_HEIGHT = 300;
const MINIMIZED_WIDTH = 260;
const EDGE_MARGIN = 8;

export type { CalculatorLayout, DesmosCalculatorType };

export type DesmosCalculatorProps = {
  isOpen: boolean;
  onOpenChange?: (open: boolean) => void;
  calculatorType?: DesmosCalculatorType;
  layout?: CalculatorLayout;
  onLayoutChange?: (layout: CalculatorLayout) => void;
};

function viewport() {
  if (typeof window === "undefined") return { w: 1280, h: 800 };
  return { w: window.innerWidth, h: window.innerHeight };
}

/**
 * Floating, draggable, resizable Desmos calculator window.
 *
 * The calculator is mounted by `useDesmosCalculator` only while open and
 * non-minimized; the panel position/size live in `layout` so the parent can
 * persist them across questions. All Desmos loading errors render inline — they
 * never bubble up to break the question view.
 */
export function DesmosCalculator({
  isOpen,
  onOpenChange,
  calculatorType = "graphing",
  layout = DEFAULT_CALCULATOR_LAYOUT,
  onLayoutChange,
}: DesmosCalculatorProps) {
  const [expanded, setExpanded] = useState(false);
  const drag = useRef<{
    mode: "move" | "resize";
    startX: number;
    startY: number;
    origin: CalculatorLayout;
  } | null>(null);

  const mounted = isOpen && !layout.minimized;
  const { containerRef, ready, error, resize } = useDesmosCalculator({
    enabled: mounted,
    calculatorType,
  });

  const expandedWidth = Math.min(900, viewport().w - 2 * EDGE_MARGIN);
  const expandedHeight = Math.min(680, viewport().h - 120);
  const width = layout.minimized
    ? MINIMIZED_WIDTH
    : expanded
      ? expandedWidth
      : layout.width;
  const bodyHeight = expanded ? expandedHeight : layout.height;

  const patch = useCallback(
    (next: Partial<CalculatorLayout>) => {
      onLayoutChange?.({ ...layout, ...next });
    },
    [layout, onLayoutChange],
  );

  // Unified pointer drag/resize — works for mouse, touch, and pen.
  const onPointerDown = useCallback(
    (mode: "move" | "resize") => (e: React.PointerEvent) => {
      if (!onLayoutChange || e.button !== 0) return;
      e.preventDefault();
      e.stopPropagation();
      (e.target as HTMLElement).setPointerCapture?.(e.pointerId);
      drag.current = {
        mode,
        startX: e.clientX,
        startY: e.clientY,
        origin: layout,
      };
    },
    [layout, onLayoutChange],
  );

  useEffect(() => {
    if (!onLayoutChange) return;
    const onMove = (e: PointerEvent) => {
      const d = drag.current;
      if (!d) return;
      const dx = e.clientX - d.startX;
      const dy = e.clientY - d.startY;
      const { w, h } = viewport();
      if (d.mode === "move") {
        const winW = layout.minimized ? MINIMIZED_WIDTH : width;
        onLayoutChange({
          ...d.origin,
          x: Math.max(0, Math.min(w - winW - EDGE_MARGIN, d.origin.x + dx)),
          y: Math.max(0, Math.min(h - TITLE_BAR_HEIGHT - EDGE_MARGIN, d.origin.y + dy)),
        });
      } else {
        onLayoutChange({
          ...d.origin,
          width: Math.max(MIN_WIDTH, Math.min(w - EDGE_MARGIN, d.origin.width + dx)),
          height: Math.max(MIN_HEIGHT, Math.min(h - EDGE_MARGIN, d.origin.height + dy)),
        });
      }
    };
    const onUp = () => {
      if (!drag.current) return;
      drag.current = null;
      resize();
    };
    window.addEventListener("pointermove", onMove);
    window.addEventListener("pointerup", onUp);
    window.addEventListener("pointercancel", onUp);
    return () => {
      window.removeEventListener("pointermove", onMove);
      window.removeEventListener("pointerup", onUp);
      window.removeEventListener("pointercancel", onUp);
    };
  }, [layout.minimized, width, onLayoutChange, resize]);

  // Resize the Desmos instance whenever the panel size changes.
  useEffect(() => {
    if (!mounted) return;
    const frame = requestAnimationFrame(() => resize());
    return () => cancelAnimationFrame(frame);
  }, [mounted, width, bodyHeight, resize]);

  // Keep the window on-screen when the viewport shrinks.
  useEffect(() => {
    if (!onLayoutChange) return;
    const clamp = () => {
      const { w, h } = viewport();
      const winW = layout.minimized ? MINIMIZED_WIDTH : width;
      onLayoutChange({
        ...layout,
        x: Math.max(0, Math.min(layout.x, w - winW - EDGE_MARGIN)),
        y: Math.max(0, Math.min(layout.y, h - TITLE_BAR_HEIGHT - EDGE_MARGIN)),
      });
    };
    window.addEventListener("resize", clamp);
    return () => window.removeEventListener("resize", clamp);
  }, [layout, width, onLayoutChange]);

  if (!isOpen) return null;

  const label = calculatorTypeLabel(calculatorType);

  return (
    <div
      className={styles.window}
      style={{
        left: layout.x,
        top: layout.y,
        width,
        height: layout.minimized ? TITLE_BAR_HEIGHT : bodyHeight + TITLE_BAR_HEIGHT,
      }}
      role="dialog"
      aria-label={label}
    >
      <div
        className={styles.titleBar}
        onPointerDown={onPointerDown("move")}
        style={{ cursor: onLayoutChange ? "grab" : "default" }}
      >
        <span className={styles.titleLeft}>
          <Calculator size={16} weight="bold" aria-hidden />
          <span className={styles.titleText}>{label}</span>
          <DotsSixVertical size={14} className={styles.dragDots} aria-hidden />
        </span>
        <span className={styles.titleActions}>
          <button
            type="button"
            className={styles.iconBtn}
            onPointerDown={(e) => e.stopPropagation()}
            onClick={() => setExpanded((v) => !v)}
            aria-label={expanded ? "Restore size" : "Expand"}
            title={expanded ? "Restore size" : "Expand"}
          >
            {expanded ? <ArrowsIn size={14} weight="bold" /> : <ArrowsOut size={14} weight="bold" />}
          </button>
          <button
            type="button"
            className={styles.iconBtn}
            onPointerDown={(e) => e.stopPropagation()}
            onClick={() => patch({ minimized: !layout.minimized })}
            aria-label={layout.minimized ? "Restore" : "Minimize"}
            title={layout.minimized ? "Restore" : "Minimize"}
          >
            <Minus size={14} weight="bold" />
          </button>
          <button
            type="button"
            className={styles.iconBtnClose}
            onPointerDown={(e) => e.stopPropagation()}
            onClick={() => onOpenChange?.(false)}
            aria-label="Close calculator"
            title="Close calculator"
          >
            <X size={14} weight="bold" />
          </button>
        </span>
      </div>

      {!layout.minimized ? (
        <div className={styles.body} style={{ height: bodyHeight }}>
          <div ref={containerRef} className={styles.surface} role="application" />
          {error ? (
            <div className={styles.overlay} role="alert">
              <p>Couldn’t load the calculator.</p>
              <span className={styles.overlaySub}>{error}</span>
            </div>
          ) : !ready ? (
            <div className={styles.overlay} aria-hidden>
              <span className={styles.spinner} />
              <p>Loading calculator…</p>
            </div>
          ) : null}
          {onLayoutChange ? (
            <div
              className={styles.resizeHandle}
              onPointerDown={onPointerDown("resize")}
              aria-hidden
            />
          ) : null}
        </div>
      ) : null}
    </div>
  );
}
