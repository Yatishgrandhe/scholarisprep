"use client";

import {
  forwardRef,
  useCallback,
  useEffect,
  useImperativeHandle,
  useRef,
  useState,
  type PointerEvent as ReactPointerEvent,
} from "react";
import {
  pressureToWidth,
  refineStrokePath,
  ROUND_STROKE_STYLE,
  type PressurePoint,
} from "./strokeMath";
import styles from "./board-canvas.module.css";

const MAX_DPR = 2.5;
const DEFAULT_MAX_UNDO = 32;

export type BoardTool = "pen" | "eraser";

export type BoardCanvasHandle = {
  /** Restore previous stroke snapshot. Returns false if stack empty. */
  undo: () => boolean;
  /** Clear ink (pushes undo). Paper surface remains. */
  clear: () => void;
  /** PNG blob of paper + ink — ready for OCR pipelines. */
  exportPng: () => Promise<Blob | null>;
  /** Alias of exportPng. */
  snapshotBlob: () => Promise<Blob | null>;
  getCanvas: () => HTMLCanvasElement | null;
  canUndo: () => boolean;
  hasInk: () => boolean;
};

export type BoardCanvasProps = {
  tool?: BoardTool;
  color?: string;
  strokeWidth?: number;
  className?: string;
  /**
   * Optional overlay copy. Pass a string to show; omit/`null` when Studio
   * mounts `BoardEmptyHint` instead.
   */
  emptyHint?: string | null;
  maxUndo?: number;
  /** Fires when first ink appears or board is cleared to empty. */
  onInkChange?: (hasInk: boolean) => void;
  /** Fires whenever undo stack availability changes. */
  onUndoAvailabilityChange?: (canUndo: boolean) => void;
  onStrokeEnd?: () => void;
  onContentChange?: () => void;
};

/** Matches CSS paper wash for OCR-friendly PNG composites. */
function paintExportPaper(
  ctx: CanvasRenderingContext2D,
  width: number,
  height: number,
): void {
  const g = ctx.createLinearGradient(0, 0, width * 0.2, height);
  g.addColorStop(0, "#f3f6fa");
  g.addColorStop(0.55, "#e9eef4");
  g.addColorStop(1, "#e2e8f0");
  ctx.fillStyle = g;
  ctx.fillRect(0, 0, width, height);

  const ruleStep = Math.max(20, Math.round(height / 18));
  ctx.strokeStyle = "rgba(90, 110, 140, 0.12)";
  ctx.lineWidth = 1;
  ctx.beginPath();
  for (let y = ruleStep; y < height; y += ruleStep) {
    ctx.moveTo(0, y + 0.5);
    ctx.lineTo(width, y + 0.5);
  }
  ctx.stroke();

  const gap = Math.max(10, Math.round(ruleStep / 2));
  ctx.fillStyle = "rgba(70, 95, 130, 0.14)";
  for (let y = gap; y < height; y += gap) {
    for (let x = gap; x < width; x += gap) {
      ctx.beginPath();
      ctx.arc(x, y, 1, 0, Math.PI * 2);
      ctx.fill();
    }
  }
}

function clientToLocal(
  clientX: number,
  clientY: number,
  canvas: HTMLCanvasElement,
): { x: number; y: number } {
  const rect = canvas.getBoundingClientRect();
  return {
    x: clientX - rect.left,
    y: clientY - rect.top,
  };
}

function sampleHasInk(
  ctx: CanvasRenderingContext2D,
  width: number,
  height: number,
): boolean {
  try {
    const data = ctx.getImageData(0, 0, width, height).data;
    for (let i = 3; i < data.length; i += 64) {
      if (data[i]! > 0) return true;
    }
    return false;
  } catch {
    return true;
  }
}

export const BoardCanvas = forwardRef<BoardCanvasHandle, BoardCanvasProps>(
  function BoardCanvas(
    {
      tool = "pen",
      color = "#0f172a",
      strokeWidth = 4,
      className,
      emptyHint = null,
      maxUndo = DEFAULT_MAX_UNDO,
      onInkChange,
      onUndoAvailabilityChange,
      onStrokeEnd,
      onContentChange,
    },
    ref,
  ) {
    const canvasRef = useRef<HTMLCanvasElement | null>(null);
    const wrapRef = useRef<HTMLDivElement | null>(null);
    const drawingRef = useRef(false);
    const lastPt = useRef<PressurePoint | null>(null);
    const strokePts = useRef<PressurePoint[]>([]);
    const undoStack = useRef<ImageData[]>([]);
    const hasInkRef = useRef(false);
    const activePointerId = useRef<number | null>(null);

    const toolRef = useRef(tool);
    const colorRef = useRef(color);
    const widthRef = useRef(strokeWidth);
    const maxUndoRef = useRef(maxUndo);
    const onInkChangeRef = useRef(onInkChange);
    const onUndoAvailRef = useRef(onUndoAvailabilityChange);
    const onStrokeEndRef = useRef(onStrokeEnd);
    const onContentChangeRef = useRef(onContentChange);

    toolRef.current = tool;
    colorRef.current = color;
    widthRef.current = strokeWidth;
    maxUndoRef.current = maxUndo;
    onInkChangeRef.current = onInkChange;
    onUndoAvailRef.current = onUndoAvailabilityChange;
    onStrokeEndRef.current = onStrokeEnd;
    onContentChangeRef.current = onContentChange;

    const [hasInk, setHasInk] = useState(false);

    const getCtx = useCallback(() => {
      const canvas = canvasRef.current;
      if (!canvas) return null;
      return canvas.getContext("2d", { willReadFrequently: true });
    }, []);

    const applyRoundStyle = (ctx: CanvasRenderingContext2D) => {
      ctx.lineCap = ROUND_STROKE_STYLE.lineCap;
      ctx.lineJoin = ROUND_STROKE_STYLE.lineJoin;
      ctx.miterLimit = ROUND_STROKE_STYLE.miterLimit;
    };

    const notifyUndo = useCallback(() => {
      onUndoAvailRef.current?.(undoStack.current.length > 0);
    }, []);

    const setInk = useCallback((next: boolean) => {
      if (hasInkRef.current === next) return;
      hasInkRef.current = next;
      setHasInk(next);
      onInkChangeRef.current?.(next);
    }, []);

    const clearInkLayer = useCallback((ctx: CanvasRenderingContext2D) => {
      ctx.save();
      ctx.setTransform(1, 0, 0, 1, 0, 0);
      ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height);
      ctx.restore();
    }, []);

    const syncCanvasSize = useCallback(
      (preserve: boolean) => {
        const canvas = canvasRef.current;
        const wrap = wrapRef.current;
        if (!canvas || !wrap) return;
        const ctx = getCtx();
        if (!ctx) return;

        const dpr = Math.min(window.devicePixelRatio || 1, MAX_DPR);
        const rect = wrap.getBoundingClientRect();
        const cssW = Math.max(1, Math.floor(rect.width));
        const cssH = Math.max(1, Math.floor(rect.height));
        const nextW = Math.floor(cssW * dpr);
        const nextH = Math.floor(cssH * dpr);

        if (canvas.width === nextW && canvas.height === nextH) {
          ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
          applyRoundStyle(ctx);
          return;
        }

        let backup: HTMLCanvasElement | null = null;
        if (preserve && canvas.width > 0 && canvas.height > 0) {
          backup = document.createElement("canvas");
          backup.width = canvas.width;
          backup.height = canvas.height;
          const bctx = backup.getContext("2d");
          bctx?.drawImage(canvas, 0, 0);
        }

        canvas.width = nextW;
        canvas.height = nextH;
        ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
        applyRoundStyle(ctx);
        clearInkLayer(ctx);

        if (backup) {
          ctx.save();
          ctx.setTransform(1, 0, 0, 1, 0, 0);
          ctx.drawImage(backup, 0, 0, nextW, nextH);
          ctx.restore();
        }

        undoStack.current = [];
        notifyUndo();
      },
      [clearInkLayer, getCtx, notifyUndo],
    );

    useEffect(() => {
      const wrap = wrapRef.current;
      if (!wrap) return;
      syncCanvasSize(false);
      const ro = new ResizeObserver(() => {
        syncCanvasSize(true);
      });
      ro.observe(wrap);
      return () => ro.disconnect();
    }, [syncCanvasSize]);

    const pushUndo = useCallback(() => {
      const canvas = canvasRef.current;
      const ctx = getCtx();
      if (!canvas || !ctx || canvas.width === 0) return;
      try {
        const snap = ctx.getImageData(0, 0, canvas.width, canvas.height);
        undoStack.current.push(snap);
        while (undoStack.current.length > maxUndoRef.current) {
          undoStack.current.shift();
        }
        notifyUndo();
      } catch {
        // getImageData can fail on oversized canvases — skip quietly
      }
    }, [getCtx, notifyUndo]);

    const applyStrokeStyle = (
      ctx: CanvasRenderingContext2D,
      pressure: number,
    ) => {
      applyRoundStyle(ctx);
      if (toolRef.current === "eraser") {
        ctx.globalCompositeOperation = "destination-out";
        ctx.strokeStyle = "rgba(0,0,0,1)";
        ctx.fillStyle = "#000";
        ctx.lineWidth = pressureToWidth(widthRef.current * 2.2, pressure);
      } else {
        ctx.globalCompositeOperation = "source-over";
        ctx.strokeStyle = colorRef.current;
        ctx.fillStyle = colorRef.current;
        ctx.lineWidth = pressureToWidth(widthRef.current, pressure);
      }
    };

    const drawSegment = (
      ctx: CanvasRenderingContext2D,
      from: PressurePoint,
      to: PressurePoint,
    ) => {
      applyStrokeStyle(ctx, to.pressure ?? from.pressure ?? 0);
      ctx.beginPath();
      ctx.moveTo(from.x, from.y);
      ctx.lineTo(to.x, to.y);
      ctx.stroke();
    };

    const stampDot = (ctx: CanvasRenderingContext2D, pt: PressurePoint) => {
      applyStrokeStyle(ctx, pt.pressure ?? 0);
      const r = ctx.lineWidth / 2;
      ctx.beginPath();
      ctx.arc(pt.x, pt.y, r, 0, Math.PI * 2);
      ctx.fill();
    };

    /** Replay a committed stroke with RDP+Chaikin smoothing. */
    const commitRefinedStroke = (ctx: CanvasRenderingContext2D) => {
      const raw = strokePts.current;
      if (raw.length === 0) return;

      const preStroke = undoStack.current[undoStack.current.length - 1];
      if (preStroke) {
        ctx.save();
        ctx.setTransform(1, 0, 0, 1, 0, 0);
        ctx.putImageData(preStroke, 0, 0);
        ctx.restore();
      }

      if (raw.length === 1) {
        stampDot(ctx, raw[0]!);
        return;
      }

      const refined = refineStrokePath(raw, {
        simplifyEpsilon: 0.65,
        smoothIterations: 2,
      });

      // Re-attach pressure by nearest raw sample index
      const withPressure: PressurePoint[] = refined.map((p, i) => {
        const t = refined.length === 1 ? 0 : i / (refined.length - 1);
        const rawIdx = Math.min(
          raw.length - 1,
          Math.round(t * (raw.length - 1)),
        );
        return {
          x: p.x,
          y: p.y,
          pressure: raw[rawIdx]?.pressure,
        };
      });

      stampDot(ctx, withPressure[0]!);
      for (let i = 1; i < withPressure.length; i++) {
        drawSegment(ctx, withPressure[i - 1]!, withPressure[i]!);
      }
    };

    const onPointerDown = (e: ReactPointerEvent<HTMLCanvasElement>) => {
      if (e.button !== 0 && e.pointerType === "mouse") return;
      e.preventDefault();
      const ctx = getCtx();
      const canvas = canvasRef.current;
      if (!ctx || !canvas) return;

      pushUndo();
      drawingRef.current = true;
      activePointerId.current = e.pointerId;
      const loc = clientToLocal(e.clientX, e.clientY, canvas);
      const pt: PressurePoint = {
        x: loc.x,
        y: loc.y,
        pressure: e.pressure,
      };
      lastPt.current = pt;
      strokePts.current = [pt];
      e.currentTarget.setPointerCapture(e.pointerId);
      stampDot(ctx, pt);
      setInk(true);
    };

    const onPointerMove = (e: ReactPointerEvent<HTMLCanvasElement>) => {
      if (!drawingRef.current || !lastPt.current) return;
      if (
        activePointerId.current !== null &&
        e.pointerId !== activePointerId.current
      ) {
        return;
      }
      e.preventDefault();
      const ctx = getCtx();
      const canvas = canvasRef.current;
      if (!ctx || !canvas) return;

      const native = e.nativeEvent;
      const coalesced =
        typeof native.getCoalescedEvents === "function"
          ? native.getCoalescedEvents()
          : [];
      const events = coalesced.length > 0 ? coalesced : [native];

      let prev = lastPt.current;
      for (const ev of events) {
        const loc = clientToLocal(ev.clientX, ev.clientY, canvas);
        const next: PressurePoint = {
          x: loc.x,
          y: loc.y,
          pressure: ev.pressure,
        };
        drawSegment(ctx, prev, next);
        strokePts.current.push(next);
        prev = next;
      }
      lastPt.current = prev;
      setInk(true);
    };

    const endStroke = (e?: ReactPointerEvent<HTMLCanvasElement>) => {
      if (!drawingRef.current) return;
      if (
        e &&
        activePointerId.current !== null &&
        e.pointerId !== activePointerId.current
      ) {
        return;
      }

      const ctx = getCtx();
      if (ctx && strokePts.current.length > 0) {
        commitRefinedStroke(ctx);
      }

      drawingRef.current = false;
      lastPt.current = null;
      strokePts.current = [];
      activePointerId.current = null;
      if (e) {
        try {
          e.currentTarget.releasePointerCapture(e.pointerId);
        } catch {
          // already released
        }
      }
      onContentChangeRef.current?.();
      onStrokeEndRef.current?.();
    };

    const undo = useCallback((): boolean => {
      const canvas = canvasRef.current;
      const ctx = getCtx();
      const snap = undoStack.current.pop();
      if (!canvas || !ctx || !snap) {
        notifyUndo();
        return false;
      }
      ctx.save();
      ctx.setTransform(1, 0, 0, 1, 0, 0);
      ctx.putImageData(snap, 0, 0);
      ctx.restore();
      setInk(sampleHasInk(ctx, canvas.width, canvas.height));
      notifyUndo();
      return true;
    }, [getCtx, notifyUndo, setInk]);

    const clear = useCallback(() => {
      const ctx = getCtx();
      if (!ctx) return;
      pushUndo();
      clearInkLayer(ctx);
      const dpr = Math.min(window.devicePixelRatio || 1, MAX_DPR);
      ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
      applyRoundStyle(ctx);
      setInk(false);
      onContentChangeRef.current?.();
    }, [clearInkLayer, getCtx, pushUndo, setInk]);

    const exportPng = useCallback(async (): Promise<Blob | null> => {
      const canvas = canvasRef.current;
      if (!canvas || canvas.width === 0) return null;

      const out = document.createElement("canvas");
      out.width = canvas.width;
      out.height = canvas.height;
      const octx = out.getContext("2d");
      if (!octx) return null;

      paintExportPaper(octx, out.width, out.height);
      octx.drawImage(canvas, 0, 0);

      return new Promise((resolve) => {
        out.toBlob((blob) => resolve(blob), "image/png");
      });
    }, []);

    useImperativeHandle(
      ref,
      (): BoardCanvasHandle => ({
        undo,
        clear,
        exportPng,
        snapshotBlob: exportPng,
        getCanvas: () => canvasRef.current,
        canUndo: () => undoStack.current.length > 0,
        hasInk: () => hasInkRef.current,
      }),
      [clear, exportPng, undo],
    );

    const wrapClass = className
      ? `${styles.wrap} ${className}`
      : styles.wrap;

    return (
      <div ref={wrapRef} className={wrapClass}>
        <canvas
          ref={canvasRef}
          className={styles.canvas}
          data-tool={tool}
          aria-label="Drawing board"
          onPointerDown={onPointerDown}
          onPointerMove={onPointerMove}
          onPointerUp={endStroke}
          onPointerCancel={endStroke}
          onLostPointerCapture={() => {
            if (drawingRef.current) {
              const ctx = getCtx();
              if (ctx && strokePts.current.length > 0) {
                commitRefinedStroke(ctx);
              }
              onStrokeEndRef.current?.();
            }
            drawingRef.current = false;
            lastPt.current = null;
            strokePts.current = [];
            activePointerId.current = null;
          }}
        />
        {emptyHint ? (
          <div
            className={`${styles.empty} ${hasInk ? styles.emptyHidden : ""}`}
            aria-hidden={hasInk}
          >
            {emptyHint}
          </div>
        ) : null}
      </div>
    );
  },
);

BoardCanvas.displayName = "BoardCanvas";

export default BoardCanvas;
