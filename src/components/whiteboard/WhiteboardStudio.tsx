"use client";

/**
 * Whiteboard Studio — Stitch-like full-page shell.
 * Board fills the viewport; chrome floats; AI dock is the talk channel.
 * Contract: docs/research/whiteboard/CONTRACT.md
 */

import { useCallback, useRef, useState } from "react";
import { BoardAtmosphere } from "./BoardAtmosphere";
import {
  BoardCanvas,
  type BoardCanvasHandle,
} from "./BoardCanvas";
import {
  BoardChatDock,
  type BoardChatDockHandle,
} from "./BoardChatDock";
import { BoardAskBar } from "./BoardAskBar";
import { BoardEmptyHint } from "./BoardEmptyHint";
import { BoardSchoOpen } from "./BoardSchoOpen";
import { BoardTopEsc } from "./BoardTopEsc";
import {
  BoardToolbar,
  BOARD_INK_COLORS,
  BOARD_STROKE_WIDTHS,
  type BoardTool,
} from "./BoardToolbar";
import { BOARD_ARIA, liveRegionProps } from "./boardA11y";
import { useBoardHotkeys } from "./useBoardHotkeys";
import { useBoardMotion } from "./useBoardMotion";
import styles from "./whiteboard.module.css";
import toolbarStyles from "./board-toolbar.module.css";
import chatStyles from "./board-chat.module.css";
import canvasStyles from "./board-canvas.module.css";
import atmosphereStyles from "./board-atmosphere.module.css";
import motionStyles from "./board-motion.module.css";
import schoOpenStyles from "./board-scho-open.module.css";

const DEFAULT_COLOR: string = BOARD_INK_COLORS[0]!.value;
const DEFAULT_WIDTH: number = BOARD_STROKE_WIDTHS[1]!.value;
const WIDTH_STEPS = BOARD_STROKE_WIDTHS.map((w) => w.value);

/** Keep sibling module class maps referenced so CSS loads with the shell. */
void toolbarStyles;
void chatStyles;
void canvasStyles;
void atmosphereStyles;
void motionStyles;
void schoOpenStyles;

export function WhiteboardStudio() {
  const canvasRef = useRef<BoardCanvasHandle | null>(null);
  const chatRef = useRef<BoardChatDockHandle | null>(null);

  const [tool, setTool] = useState<BoardTool>("pen");
  const [color, setColor] = useState(DEFAULT_COLOR);
  const [strokeWidth, setStrokeWidth] = useState(DEFAULT_WIDTH);
  const [hasInk, setHasInk] = useState(false);
  const [canUndo, setCanUndo] = useState(false);
  const [drawing, setDrawing] = useState(false);
  const [ocrText, setOcrText] = useState("");
  const [statusNote, setStatusNote] = useState("");
  /** Dock waits until centered Scho open ceremony finishes. */
  const [schoOpenDone, setSchoOpenDone] = useState(false);

  const { toolbarClassName, strokeSurfaceClassName, pulseStrokeCommit } =
    useBoardMotion();

  const handleUndo = useCallback(() => {
    canvasRef.current?.undo();
  }, []);

  const handleClear = useCallback(() => {
    canvasRef.current?.clear();
    setOcrText("");
    setStatusNote("Board cleared");
  }, []);

  useBoardHotkeys({
    enableSpacePan: false,
    strokeWidth,
    strokeWidths: WIDTH_STEPS,
    onToolChange: setTool,
    onUndo: handleUndo,
    onStrokeWidthChange: setStrokeWidth,
  });

  const getSnapshot = useCallback(async () => {
    return (await canvasRef.current?.exportPng()) ?? null;
  }, []);

  const onAskFromBoard = useCallback((message: string, text: string) => {
    setOcrText(text);
    chatRef.current?.setOcrText?.(text);
    chatRef.current?.ask(message, { ocrText: text });
    setStatusNote("Sent board handwriting to Scho");
  }, []);

  return (
    <div
      className={styles.studio}
      data-whiteboard-studio
      role="application"
      aria-label={BOARD_ARIA.studio}
    >
      <p className={styles.srOnly}>{BOARD_ARIA.canvasHint}</p>

      <BoardAtmosphere className={styles.atmosphere} lamp="normal">
        <div className={styles.stage}>
          <BoardTopEsc />

          <div
            className={strokeSurfaceClassName(styles.canvasFill)}
            onPointerDown={() => setDrawing(true)}
            onPointerUp={() => setDrawing(false)}
            onPointerCancel={() => setDrawing(false)}
          >
            <BoardCanvas
              ref={canvasRef}
              tool={tool}
              color={color}
              strokeWidth={strokeWidth}
              emptyHint={null}
              onInkChange={setHasInk}
              onUndoAvailabilityChange={setCanUndo}
              onStrokeEnd={() => {
                setDrawing(false);
                pulseStrokeCommit();
              }}
            />
          </div>

          <BoardSchoOpen
            className={styles.schoOpen}
            onComplete={() => setSchoOpenDone(true)}
          />

          <BoardEmptyHint
            hasStroke={hasInk || !schoOpenDone}
            className={styles.hint}
          />

          <BoardToolbar
            className={[styles.toolbar, toolbarClassName(schoOpenDone)]
              .filter(Boolean)
              .join(" ")}
            tool={tool}
            color={color}
            strokeWidth={strokeWidth}
            canUndo={canUndo}
            canClear={hasInk}
            forceExpanded={drawing}
            onToolChange={setTool}
            onColorChange={setColor}
            onStrokeWidthChange={setStrokeWidth}
            onUndo={handleUndo}
            onClear={handleClear}
          />

          <div className={styles.askSlot} data-ready={schoOpenDone || undefined}>
            <BoardAskBar
              getSnapshot={getSnapshot}
              hasInk={hasInk}
              ocrText={ocrText}
              onOcrTextChange={setOcrText}
              onAsk={onAskFromBoard}
            />
          </div>

          <BoardChatDock
            ref={chatRef}
            className={styles.dock}
            ocrText={ocrText}
            placement="auto"
            defaultCollapsed={false}
            revealReady={schoOpenDone}
          />
        </div>
      </BoardAtmosphere>

      <p
        className={styles.srOnly}
        {...liveRegionProps("polite", { kind: "status", label: "Board status" })}
      >
        {statusNote}
      </p>
    </div>
  );
}
