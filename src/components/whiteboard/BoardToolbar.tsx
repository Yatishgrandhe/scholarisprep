"use client";

import {
  useCallback,
  useEffect,
  useId,
  useRef,
  useState,
  type KeyboardEvent as ReactKeyboardEvent,
} from "react";
import {
  ArrowCounterClockwise,
  Eraser,
  PencilSimple,
  Trash,
} from "@phosphor-icons/react";
import styles from "./board-toolbar.module.css";

export type BoardTool = "pen" | "eraser";

export const BOARD_INK_COLORS = [
  { id: "ink", label: "Ink", value: "#0f172a" },
  { id: "cobalt", label: "Cobalt", value: "#2563eb" },
  { id: "rose", label: "Rose", value: "#e11d48" },
  { id: "emerald", label: "Emerald", value: "#059669" },
  { id: "amber", label: "Amber", value: "#d97706" },
] as const;

export const BOARD_STROKE_WIDTHS = [
  { id: "s", label: "Thin", value: 2 },
  { id: "m", label: "Medium", value: 4 },
  { id: "l", label: "Thick", value: 8 },
] as const;

export type BoardToolbarProps = {
  tool: BoardTool;
  color: string;
  strokeWidth: number;
  canUndo?: boolean;
  canClear?: boolean;
  onToolChange: (tool: BoardTool) => void;
  onColorChange: (color: string) => void;
  onStrokeWidthChange: (width: number) => void;
  onUndo: () => void;
  onClear: () => void;
  /** Collapse after idle ms. Pass 0 to keep expanded. Default 2400. */
  autoHideMs?: number;
  /** Keep expanded (e.g. while the board pointer is active). */
  forceExpanded?: boolean;
  className?: string;
};

export function BoardToolbar({
  tool,
  color,
  strokeWidth,
  canUndo = false,
  canClear = false,
  onToolChange,
  onColorChange,
  onStrokeWidthChange,
  onUndo,
  onClear,
  autoHideMs = 2400,
  forceExpanded = false,
  className,
}: BoardToolbarProps) {
  const rootRef = useRef<HTMLDivElement | null>(null);
  const hideTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const clusterId = useId();
  const [expanded, setExpanded] = useState(true);
  const [pinned, setPinned] = useState(false);

  const clearHideTimer = useCallback(() => {
    if (hideTimer.current) {
      clearTimeout(hideTimer.current);
      hideTimer.current = null;
    }
  }, []);

  const scheduleCollapse = useCallback(() => {
    clearHideTimer();
    if (autoHideMs <= 0 || pinned || forceExpanded) return;
    hideTimer.current = setTimeout(() => {
      setExpanded(false);
    }, autoHideMs);
  }, [autoHideMs, clearHideTimer, forceExpanded, pinned]);

  const openChrome = useCallback(() => {
    setExpanded(true);
    scheduleCollapse();
  }, [scheduleCollapse]);

  useEffect(() => {
    if (forceExpanded || pinned) {
      clearHideTimer();
      setExpanded(true);
      return;
    }
    scheduleCollapse();
    return clearHideTimer;
  }, [forceExpanded, pinned, scheduleCollapse, clearHideTimer]);

  useEffect(() => () => clearHideTimer(), [clearHideTimer]);

  const onKeyDown = (e: ReactKeyboardEvent<HTMLDivElement>) => {
    if (e.key === "Escape") {
      setPinned(false);
      setExpanded(false);
      clearHideTimer();
      (e.currentTarget as HTMLElement).blur();
    }
  };

  const isOpen = expanded || forceExpanded || pinned;
  const activeColor =
    BOARD_INK_COLORS.find((c) => c.value === color)?.label ?? "Ink";

  return (
    <div
      ref={rootRef}
      className={[styles.dock, className].filter(Boolean).join(" ")}
      data-open={isOpen ? "true" : "false"}
      onMouseEnter={() => {
        openChrome();
      }}
      onMouseLeave={() => {
        if (!pinned && !forceExpanded) scheduleCollapse();
      }}
      onFocusCapture={openChrome}
      onKeyDown={onKeyDown}
    >
      <button
        type="button"
        className={styles.peek}
        aria-expanded={isOpen}
        aria-controls={clusterId}
        aria-label={
          isOpen
            ? "Collapse drawing tools"
            : `Show drawing tools · ${tool === "pen" ? activeColor : "Eraser"}`
        }
        onClick={() => {
          if (isOpen && pinned) {
            setPinned(false);
            setExpanded(false);
            clearHideTimer();
            return;
          }
          if (isOpen) {
            setPinned(true);
            return;
          }
          setPinned(true);
          setExpanded(true);
        }}
      >
        <span className={styles.peekGlyph} aria-hidden>
          {tool === "eraser" ? (
            <Eraser size={15} weight="bold" />
          ) : (
            <PencilSimple size={15} weight="bold" />
          )}
        </span>
        <span
          className={styles.peekDot}
          style={{
            background: tool === "eraser" ? "transparent" : color,
            boxShadow:
              tool === "eraser"
                ? "inset 0 0 0 1.5px currentColor"
                : undefined,
          }}
          aria-hidden
        />
      </button>

      <div
        id={clusterId}
        className={styles.cluster}
        role="toolbar"
        aria-label="Whiteboard tools"
        aria-hidden={!isOpen}
      >
        <div className={styles.group} role="group" aria-label="Draw tools">
          <button
            type="button"
            className={styles.tool}
            data-active={tool === "pen" ? "true" : undefined}
            aria-pressed={tool === "pen"}
            aria-label="Pen"
            title="Pen"
            tabIndex={isOpen ? 0 : -1}
            onClick={() => onToolChange("pen")}
          >
            <PencilSimple size={16} weight="bold" aria-hidden />
          </button>
          <button
            type="button"
            className={styles.tool}
            data-active={tool === "eraser" ? "true" : undefined}
            aria-pressed={tool === "eraser"}
            aria-label="Eraser"
            title="Eraser"
            tabIndex={isOpen ? 0 : -1}
            onClick={() => onToolChange("eraser")}
          >
            <Eraser size={16} weight="bold" aria-hidden />
          </button>
        </div>

        <span className={styles.rule} aria-hidden />

        <div className={styles.group} role="group" aria-label="Ink color">
          {BOARD_INK_COLORS.map((c) => (
            <button
              key={c.id}
              type="button"
              className={styles.swatch}
              data-active={color === c.value && tool === "pen" ? "true" : undefined}
              style={{ background: c.value }}
              aria-label={c.label}
              aria-pressed={color === c.value}
              title={c.label}
              disabled={tool === "eraser"}
              tabIndex={isOpen ? 0 : -1}
              onClick={() => {
                onColorChange(c.value);
                onToolChange("pen");
              }}
            />
          ))}
        </div>

        <span className={styles.rule} aria-hidden />

        <div className={styles.group} role="group" aria-label="Stroke width">
          {BOARD_STROKE_WIDTHS.map((w) => (
            <button
              key={w.id}
              type="button"
              className={styles.width}
              data-active={strokeWidth === w.value ? "true" : undefined}
              aria-pressed={strokeWidth === w.value}
              aria-label={w.label}
              title={w.label}
              tabIndex={isOpen ? 0 : -1}
              onClick={() => onStrokeWidthChange(w.value)}
            >
              <span
                className={styles.widthDot}
                style={{ width: w.value + 3, height: w.value + 3 }}
                aria-hidden
              />
            </button>
          ))}
        </div>

        <span className={styles.rule} aria-hidden />

        <div className={styles.group} role="group" aria-label="History">
          <button
            type="button"
            className={styles.tool}
            disabled={!canUndo}
            aria-label="Undo"
            title="Undo"
            tabIndex={isOpen ? 0 : -1}
            onClick={onUndo}
          >
            <ArrowCounterClockwise size={16} aria-hidden />
          </button>
          <button
            type="button"
            className={styles.tool}
            data-danger=""
            disabled={!canClear}
            aria-label="Clear board"
            title="Clear"
            tabIndex={isOpen ? 0 : -1}
            onClick={onClear}
          >
            <Trash size={16} aria-hidden />
          </button>
        </div>
      </div>
    </div>
  );
}
