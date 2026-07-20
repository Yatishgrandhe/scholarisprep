"use client";

import {
  useCallback,
  useEffect,
  useRef,
  useState,
  type PointerEvent as ReactPointerEvent,
} from "react";
import {
  ArrowCounterClockwise,
  Eraser,
  PencilSimple,
  Trash,
} from "@phosphor-icons/react";
import { toast } from "sonner";
import type { LocalModelStatus } from "@/hooks/useLocalTelemetryModels";
import styles from "./free-study.module.css";

const BOARD_BG = "#f8fafc";
const MAX_UNDO = 24;

const INK_COLORS = [
  { id: "ink", label: "Ink", value: "#0f172a" },
  { id: "cobalt", label: "Cobalt", value: "#2563eb" },
  { id: "rose", label: "Rose", value: "#e11d48" },
  { id: "emerald", label: "Emerald", value: "#059669" },
  { id: "amber", label: "Amber", value: "#d97706" },
] as const;

const STROKE_WIDTHS = [
  { id: "s", label: "Thin", value: 2 },
  { id: "m", label: "Medium", value: 4 },
  { id: "l", label: "Thick", value: 8 },
] as const;

type Tool = "pen" | "eraser";

type OcrModelState = {
  status: LocalModelStatus;
  progress: number;
  message?: string;
};

export type FreeStudyWhiteboardProps = {
  ocrText: string;
  onOcrTextChange: (text: string) => void;
  runOcr: (
    image: ImageBitmap | HTMLCanvasElement | Blob | File | string,
  ) => Promise<string>;
  ocrModel: OcrModelState;
  onAskScho: (message: string) => void;
  askDisabled?: boolean;
};

function ModelProgressBar({
  label,
  progress,
  message,
  status,
}: {
  label: string;
  progress: number;
  message?: string;
  status: string;
}) {
  if (status === "idle" || status === "ready" || status === "unsupported") {
    return status === "unsupported" ? (
      <p className={styles.hint}>
        {label}: {message ?? "Unsupported"}
      </p>
    ) : null;
  }
  if (status === "error") {
    return (
      <p className={styles.ocrError} role="alert">
        {label} failed{message ? `: ${message}` : ""}
      </p>
    );
  }
  return (
    <div className={styles.progressBlock} aria-live="polite">
      <div className={styles.progressLabel}>
        <span>{label}</span>
        <span>{Math.round(progress * 100)}%</span>
      </div>
      <div className={styles.progressTrack}>
        <div
          className={styles.progressFill}
          style={{ width: `${Math.round(progress * 100)}%` }}
        />
      </div>
      {message ? <p className={styles.hint}>{message}</p> : null}
    </div>
  );
}

function pressureWidth(base: number, pressure: number): number {
  const p = pressure > 0 ? pressure : 0.5;
  return Math.max(1, base * (0.55 + p * 0.9));
}

export function FreeStudyWhiteboard({
  ocrText,
  onOcrTextChange,
  runOcr,
  ocrModel,
  onAskScho,
  askDisabled = false,
}: FreeStudyWhiteboardProps) {
  const canvasRef = useRef<HTMLCanvasElement | null>(null);
  const wrapRef = useRef<HTMLDivElement | null>(null);
  const drawingRef = useRef(false);
  const lastPt = useRef<{ x: number; y: number } | null>(null);
  const undoStack = useRef<ImageData[]>([]);
  const hasInkRef = useRef(false);

  const [tool, setTool] = useState<Tool>("pen");
  const [color, setColor] = useState<string>("#0f172a");
  const [strokeWidth, setStrokeWidth] = useState(4);
  const [hasInk, setHasInk] = useState(false);
  const [canUndo, setCanUndo] = useState(false);
  const [ocrBusy, setOcrBusy] = useState(false);
  const [ocrAttempted, setOcrAttempted] = useState(false);

  const toolRef = useRef(tool);
  const colorRef = useRef(color);
  const widthRef = useRef(strokeWidth);
  toolRef.current = tool;
  colorRef.current = color;
  widthRef.current = strokeWidth;

  const getCtx = useCallback(() => {
    const canvas = canvasRef.current;
    if (!canvas) return null;
    return canvas.getContext("2d", { willReadFrequently: true });
  }, []);

  const fillBoard = useCallback((ctx: CanvasRenderingContext2D) => {
    ctx.save();
    ctx.globalCompositeOperation = "source-over";
    ctx.setTransform(1, 0, 0, 1, 0, 0);
    ctx.fillStyle = BOARD_BG;
    ctx.fillRect(0, 0, ctx.canvas.width, ctx.canvas.height);
    ctx.restore();
  }, []);

  const syncCanvasSize = useCallback(
    (preserve: boolean) => {
      const canvas = canvasRef.current;
      const wrap = wrapRef.current;
      if (!canvas || !wrap) return;
      const ctx = getCtx();
      if (!ctx) return;

      const dpr = Math.min(window.devicePixelRatio || 1, 2.5);
      const rect = wrap.getBoundingClientRect();
      const cssW = Math.max(1, Math.floor(rect.width));
      const cssH = Math.max(1, Math.floor(rect.height));
      const nextW = Math.floor(cssW * dpr);
      const nextH = Math.floor(cssH * dpr);

      if (canvas.width === nextW && canvas.height === nextH) {
        ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
        ctx.lineCap = "round";
        ctx.lineJoin = "round";
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
      ctx.lineCap = "round";
      ctx.lineJoin = "round";
      fillBoard(ctx);
      if (backup) {
        ctx.save();
        ctx.setTransform(1, 0, 0, 1, 0, 0);
        ctx.drawImage(backup, 0, 0, nextW, nextH);
        ctx.restore();
      }
      undoStack.current = [];
      setCanUndo(false);
    },
    [fillBoard, getCtx],
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
      if (undoStack.current.length > MAX_UNDO) {
        undoStack.current.shift();
      }
      setCanUndo(true);
    } catch {
      // getImageData can fail on tainted/oversized canvases — skip undo quietly
    }
  }, [getCtx]);

  const pointerPos = (e: ReactPointerEvent<HTMLCanvasElement>) => {
    const canvas = canvasRef.current!;
    const rect = canvas.getBoundingClientRect();
    return {
      x: e.clientX - rect.left,
      y: e.clientY - rect.top,
    };
  };

  const applyStrokeStyle = (
    ctx: CanvasRenderingContext2D,
    pressure: number,
  ) => {
    if (toolRef.current === "eraser") {
      ctx.globalCompositeOperation = "destination-out";
      ctx.strokeStyle = "rgba(0,0,0,1)";
      ctx.lineWidth = pressureWidth(widthRef.current * 2.2, pressure);
    } else {
      ctx.globalCompositeOperation = "source-over";
      ctx.strokeStyle = colorRef.current;
      ctx.lineWidth = pressureWidth(widthRef.current, pressure);
    }
  };

  const drawSegment = (
    ctx: CanvasRenderingContext2D,
    from: { x: number; y: number },
    to: { x: number; y: number },
    pressure: number,
  ) => {
    applyStrokeStyle(ctx, pressure);
    ctx.beginPath();
    ctx.moveTo(from.x, from.y);
    ctx.lineTo(to.x, to.y);
    ctx.stroke();
  };

  const markInk = () => {
    if (!hasInkRef.current) {
      hasInkRef.current = true;
      setHasInk(true);
    }
  };

  const onPointerDown = (e: ReactPointerEvent<HTMLCanvasElement>) => {
    if (e.button !== 0 && e.pointerType === "mouse") return;
    e.preventDefault();
    const ctx = getCtx();
    if (!ctx) return;
    pushUndo();
    drawingRef.current = true;
    const pt = pointerPos(e);
    lastPt.current = pt;
    e.currentTarget.setPointerCapture(e.pointerId);
    applyStrokeStyle(ctx, e.pressure);
    const r = ctx.lineWidth / 2;
    ctx.beginPath();
    ctx.arc(pt.x, pt.y, r, 0, Math.PI * 2);
    ctx.fillStyle =
      toolRef.current === "eraser" ? "#000" : colorRef.current;
    ctx.fill();
    markInk();
  };

  const onPointerMove = (e: ReactPointerEvent<HTMLCanvasElement>) => {
    if (!drawingRef.current || !lastPt.current) return;
    e.preventDefault();
    const ctx = getCtx();
    if (!ctx) return;

    const coalesced =
      typeof e.nativeEvent.getCoalescedEvents === "function"
        ? e.nativeEvent.getCoalescedEvents()
        : [];
    const events =
      coalesced.length > 0
        ? coalesced
        : [e.nativeEvent];

    let prev = lastPt.current;
    for (const ev of events) {
      const canvas = canvasRef.current!;
      const rect = canvas.getBoundingClientRect();
      const next = {
        x: ev.clientX - rect.left,
        y: ev.clientY - rect.top,
      };
      drawSegment(ctx, prev, next, ev.pressure);
      prev = next;
    }
    lastPt.current = prev;
    markInk();
  };

  const endStroke = (e?: ReactPointerEvent<HTMLCanvasElement>) => {
    if (!drawingRef.current) return;
    drawingRef.current = false;
    lastPt.current = null;
    if (e) {
      try {
        e.currentTarget.releasePointerCapture(e.pointerId);
      } catch {
        // already released
      }
    }
  };

  const undo = () => {
    const canvas = canvasRef.current;
    const ctx = getCtx();
    const snap = undoStack.current.pop();
    if (!canvas || !ctx || !snap) {
      setCanUndo(false);
      return;
    }
    ctx.save();
    ctx.setTransform(1, 0, 0, 1, 0, 0);
    ctx.putImageData(snap, 0, 0);
    ctx.restore();
    hasInkRef.current = true;
    setHasInk(true);
    setCanUndo(undoStack.current.length > 0);
  };

  const clearBoard = () => {
    const canvas = canvasRef.current;
    const ctx = getCtx();
    if (!canvas || !ctx) return;
    pushUndo();
    const dpr = Math.min(window.devicePixelRatio || 1, 2.5);
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    fillBoard(ctx);
    hasInkRef.current = false;
    setHasInk(false);
  };

  const snapshotBlob = async (): Promise<Blob | null> => {
    const canvas = canvasRef.current;
    if (!canvas) return null;
    return new Promise((resolve) => {
      canvas.toBlob((blob) => resolve(blob), "image/png");
    });
  };

  const runBoardOcr = async (): Promise<string | null> => {
    if (!hasInkRef.current) {
      toast.message("Write something on the board first.");
      return null;
    }
    setOcrBusy(true);
    setOcrAttempted(true);
    try {
      const blob = await snapshotBlob();
      if (!blob) {
        toast.error("Could not snapshot the board.");
        return null;
      }
      const text = await runOcr(blob);
      onOcrTextChange(text);
      if (!text.trim()) {
        toast.message(
          "No text detected — try darker, larger handwriting and Read handwriting again.",
        );
        return "";
      }
      toast.success("Handwriting read");
      return text;
    } catch (err) {
      toast.error(err instanceof Error ? err.message : "OCR failed");
      return null;
    } finally {
      setOcrBusy(false);
    }
  };

  const askFromBoard = async () => {
    if (askDisabled) return;
    let text = ocrText.trim();
    if (!text) {
      const read = await runBoardOcr();
      if (read === null) return;
      text = read.trim();
    }
    if (!text) {
      toast.message(
        "Edit the OCR text below, or rewrite more clearly and try again.",
      );
      return;
    }
    onAskScho(`Help me with this whiteboard work:\n${text}`);
  };

  return (
    <div className={styles.paneBody}>
      <p className={styles.hint}>
        Sketch a problem or steps, then read handwriting and send to Scho. Scoped
        for tutoring — not a full Miro board.
      </p>

      <div className={styles.wbToolbar} role="toolbar" aria-label="Whiteboard tools">
        <div className={styles.wbToolGroup} role="group" aria-label="Draw tools">
          <button
            type="button"
            className={`${styles.wbToolBtn} ${tool === "pen" ? styles.wbToolBtnActive : ""}`}
            aria-pressed={tool === "pen"}
            onClick={() => setTool("pen")}
          >
            <PencilSimple size={16} weight="bold" aria-hidden />
            Pen
          </button>
          <button
            type="button"
            className={`${styles.wbToolBtn} ${tool === "eraser" ? styles.wbToolBtnActive : ""}`}
            aria-pressed={tool === "eraser"}
            onClick={() => setTool("eraser")}
          >
            <Eraser size={16} weight="bold" aria-hidden />
            Eraser
          </button>
        </div>

        <div className={styles.wbSwatches} role="group" aria-label="Ink color">
          {INK_COLORS.map((c) => (
            <button
              key={c.id}
              type="button"
              className={`${styles.wbSwatch} ${color === c.value && tool === "pen" ? styles.wbSwatchActive : ""}`}
              style={{ background: c.value }}
              aria-label={c.label}
              aria-pressed={color === c.value}
              disabled={tool === "eraser"}
              onClick={() => {
                setColor(c.value);
                setTool("pen");
              }}
            />
          ))}
        </div>

        <div className={styles.wbToolGroup} role="group" aria-label="Stroke width">
          {STROKE_WIDTHS.map((w) => (
            <button
              key={w.id}
              type="button"
              className={`${styles.wbWidthBtn} ${strokeWidth === w.value ? styles.wbToolBtnActive : ""}`}
              aria-pressed={strokeWidth === w.value}
              aria-label={w.label}
              onClick={() => setStrokeWidth(w.value)}
            >
              <span
                className={styles.wbWidthDot}
                style={{ width: w.value + 4, height: w.value + 4 }}
              />
            </button>
          ))}
        </div>

        <div className={styles.wbToolGroup}>
          <button
            type="button"
            className={styles.wbToolBtn}
            disabled={!canUndo}
            onClick={undo}
          >
            <ArrowCounterClockwise size={16} aria-hidden />
            Undo
          </button>
          <button
            type="button"
            className={styles.wbToolBtn}
            disabled={!hasInk}
            onClick={clearBoard}
          >
            <Trash size={16} aria-hidden />
            Clear
          </button>
        </div>
      </div>

      <div ref={wrapRef} className={styles.whiteboardWrap}>
        <canvas
          ref={canvasRef}
          className={styles.whiteboard}
          onPointerDown={onPointerDown}
          onPointerMove={onPointerMove}
          onPointerUp={endStroke}
          onPointerCancel={endStroke}
        />
        {!hasInk ? (
          <div className={styles.wbEmpty} aria-hidden>
            <PencilSimple size={28} weight="duotone" />
            <span>Write here — equations, work, or a question</span>
          </div>
        ) : null}
      </div>

      <div className={styles.row}>
        <button
          type="button"
          className={styles.secondaryBtn}
          disabled={ocrBusy || !hasInk}
          onClick={() => void runBoardOcr()}
        >
          {ocrBusy ? "Reading…" : "Read handwriting"}
        </button>
        <button
          type="button"
          className={styles.primaryBtn}
          disabled={askDisabled || ocrBusy || (!hasInk && !ocrText.trim())}
          onClick={() => void askFromBoard()}
        >
          Ask Scho
        </button>
      </div>

      <ModelProgressBar
        label="OCR"
        progress={ocrModel.progress}
        message={ocrModel.message}
        status={ocrModel.status}
      />

      {ocrAttempted || ocrText ? (
        <label className={styles.wbOcrLabel}>
          <span>Recognized text (edit before asking)</span>
          <textarea
            className={styles.textarea}
            value={ocrText}
            onChange={(e) => onOcrTextChange(e.target.value)}
            rows={5}
            placeholder="OCR output appears here — fix any misreads, then Ask Scho."
            aria-label="OCR text"
          />
        </label>
      ) : null}
    </div>
  );
}
