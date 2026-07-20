"use client";

/**
 * Whiteboard Studio keyboard shortcuts (`useBoardHotkeys`)
 *
 * | Key              | Action                                              |
 * |------------------|-----------------------------------------------------|
 * | `V` or `P`       | Pen tool                                            |
 * | `E`              | Eraser                                              |
 * | `Z`              | Undo (also ⌘/Ctrl+Z)                                |
 * | `[` / `]`        | Step stroke width down / up through `strokeWidths`  |
 * | `Esc`            | Blur the focused element (exit inputs / chrome)     |
 * | `Space` + drag   | Pan — only when canvas opts in via `onSpaceHeldChange`
 *                    or by reading returned `spaceHeld`  |
 *
 * Shortcuts are ignored while focus is in an editable field
 * (`input`, `textarea`, `select`, `contenteditable`), except `Esc`
 * which still blurs. When `enableSpacePan` is true (default), Space is
 * `preventDefault`’d so the page does not scroll; canvas should treat
 * pointer drag as pan while `spaceHeld` is true. Set `enableSpacePan:
 * false` if the canvas has no pan support.
 */

import { useEffect, useRef, useState } from "react";

export type BoardHotkeyTool = "pen" | "eraser";

/** Default discrete widths — matches Free Study / Studio toolbar steps. */
export const BOARD_HOTKEY_STROKE_WIDTHS = [2, 4, 8] as const;

export type UseBoardHotkeysOptions = {
  /** When false, listeners are inactive. Default true. */
  enabled?: boolean;
  /**
   * When true (default), holding Space reports pan mode via `spaceHeld` /
   * `onSpaceHeldChange`. Set false if the canvas has no pan support.
   */
  enableSpacePan?: boolean;
  strokeWidth: number;
  /** Ordered ascending widths for `[` / `]` stepping. */
  strokeWidths?: readonly number[];
  onToolChange: (tool: BoardHotkeyTool) => void;
  onUndo: () => void;
  onStrokeWidthChange: (width: number) => void;
  /** Fired when Space press/release toggles pan modifier (if pan enabled). */
  onSpaceHeldChange?: (held: boolean) => void;
};

export type UseBoardHotkeysResult = {
  /** True while Space is held and pan is enabled — canvas should pan on drag. */
  spaceHeld: boolean;
};

function isEditableTarget(target: EventTarget | null): boolean {
  if (!(target instanceof HTMLElement)) return false;
  const tag = target.tagName;
  if (tag === "INPUT" || tag === "TEXTAREA" || tag === "SELECT") return true;
  if (target.isContentEditable) return true;
  return Boolean(target.closest("[contenteditable='true']"));
}

function stepWidth(
  current: number,
  widths: readonly number[],
  direction: -1 | 1,
): number {
  if (widths.length === 0) return current;
  const sorted = [...widths].sort((a, b) => a - b);
  let idx = sorted.findIndex((w) => w === current);
  if (idx < 0) {
    // Snap to nearest step, then move
    idx = sorted.reduce(
      (best, w, i) =>
        Math.abs(w - current) < Math.abs(sorted[best]! - current) ? i : best,
      0,
    );
  }
  const next = Math.max(0, Math.min(sorted.length - 1, idx + direction));
  return sorted[next]!;
}

/**
 * Binds document-level whiteboard hotkeys. Keep callbacks stable or accept
 * that the latest refs are always used (stale-closure safe).
 */
export function useBoardHotkeys(
  options: UseBoardHotkeysOptions,
): UseBoardHotkeysResult {
  const {
    enabled = true,
    enableSpacePan = true,
    strokeWidth,
    strokeWidths = BOARD_HOTKEY_STROKE_WIDTHS,
    onToolChange,
    onUndo,
    onStrokeWidthChange,
    onSpaceHeldChange,
  } = options;

  const [spaceHeld, setSpaceHeld] = useState(false);
  const spaceHeldRef = useRef(false);

  const strokeWidthRef = useRef(strokeWidth);
  const strokeWidthsRef = useRef(strokeWidths);
  const onToolChangeRef = useRef(onToolChange);
  const onUndoRef = useRef(onUndo);
  const onStrokeWidthChangeRef = useRef(onStrokeWidthChange);
  const onSpaceHeldChangeRef = useRef(onSpaceHeldChange);
  const enableSpacePanRef = useRef(enableSpacePan);

  strokeWidthRef.current = strokeWidth;
  strokeWidthsRef.current = strokeWidths;
  onToolChangeRef.current = onToolChange;
  onUndoRef.current = onUndo;
  onStrokeWidthChangeRef.current = onStrokeWidthChange;
  onSpaceHeldChangeRef.current = onSpaceHeldChange;
  enableSpacePanRef.current = enableSpacePan;

  useEffect(() => {
    const setHeld = (held: boolean) => {
      if (spaceHeldRef.current === held) return;
      spaceHeldRef.current = held;
      setSpaceHeld(held);
      onSpaceHeldChangeRef.current?.(held);
    };

    if (!enabled) {
      setHeld(false);
      return;
    }

    const onKeyDown = (event: KeyboardEvent) => {
      if (event.defaultPrevented) return;

      const editable = isEditableTarget(event.target);

      // Esc always blurs focused control (including text fields).
      if (event.key === "Escape") {
        const active = document.activeElement;
        if (active instanceof HTMLElement) active.blur();
        return;
      }

      // Space → pan modifier (when canvas opted in)
      if (
        enableSpacePanRef.current &&
        event.code === "Space" &&
        !event.repeat &&
        !editable
      ) {
        event.preventDefault();
        setHeld(true);
        return;
      }

      if (editable) return;
      if (event.altKey) return;

      const key = event.key;
      const lower = key.length === 1 ? key.toLowerCase() : key;
      const mod = event.metaKey || event.ctrlKey;

      // Undo: plain Z, or ⌘/Ctrl+Z (skip redo Shift+Z / Shift+mod+Z)
      if (
        (lower === "z" && !mod && !event.shiftKey) ||
        (lower === "z" && mod && !event.shiftKey)
      ) {
        event.preventDefault();
        onUndoRef.current();
        return;
      }

      if (mod) return;

      if (lower === "v" || lower === "p") {
        event.preventDefault();
        onToolChangeRef.current("pen");
        return;
      }
      if (lower === "e") {
        event.preventDefault();
        onToolChangeRef.current("eraser");
        return;
      }
      if (key === "[" || key === "]") {
        event.preventDefault();
        const next = stepWidth(
          strokeWidthRef.current,
          strokeWidthsRef.current,
          key === "[" ? -1 : 1,
        );
        if (next !== strokeWidthRef.current) {
          onStrokeWidthChangeRef.current(next);
        }
      }
    };

    const onKeyUp = (event: KeyboardEvent) => {
      if (event.code === "Space" && enableSpacePanRef.current) {
        event.preventDefault();
        setHeld(false);
      }
    };

    const onBlur = () => setHeld(false);

    window.addEventListener("keydown", onKeyDown);
    window.addEventListener("keyup", onKeyUp);
    window.addEventListener("blur", onBlur);
    return () => {
      window.removeEventListener("keydown", onKeyDown);
      window.removeEventListener("keyup", onKeyUp);
      window.removeEventListener("blur", onBlur);
      setHeld(false);
    };
  }, [enabled]);

  return { spaceHeld };
}
