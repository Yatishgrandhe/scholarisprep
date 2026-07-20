/**
 * Whiteboard Studio accessibility helpers.
 *
 * Canonical aria strings live in `BoardA11yNotes.md`. Import these helpers
 * from toolbar / canvas / dock / OCR so labels and live regions stay consistent.
 *
 * Checklist (apply via helpers below):
 * 1. Every icon-only control has an explicit aria-label (toolButton* helpers).
 * 2. Status / progress / OCR / chat events use polite or assertive live regions.
 * 3. Toolbars use role="toolbar" + group labels from BOARD_ARIA.
 * 4. Decorative ink / glyphs set aria-hidden.
 * 5. Collapsed chrome keeps focusable peers at tabIndex={-1} when aria-hidden.
 */

export type BoardDrawTool = "pen" | "eraser";

export type BoardToolAction =
  | BoardDrawTool
  | "undo"
  | "clear"
  | "readHandwriting"
  | "askScho"
  | "mic"
  | "stopMic"
  | "playTts"
  | "stopTts"
  | "collapseTools"
  | "expandTools"
  | "back"
  | "sendChat";

/** Stable aria / landmark labels for Whiteboard Studio surfaces. */
export const BOARD_ARIA = {
  studio: "Whiteboard Studio",
  canvas: "Drawing board",
  canvasHint:
    "Draw with pointer or touch. Use the toolbar for pen, eraser, and undo.",
  toolbar: "Whiteboard tools",
  drawTools: "Draw tools",
  inkColor: "Ink color",
  strokeWidth: "Stroke width",
  history: "History",
  ocrStrip: "Handwriting recognition",
  ocrText: "OCR text",
  chatDock: "Scho chat",
  chatMessages: "Chat messages",
  chatComposer: "Message Scho",
  voiceControls: "Voice controls",
  emptyHint: "Write anything — then talk to Scho",
  statusRegion: "Whiteboard status",
  ocrStatus: "OCR status",
  tutorStatus: "Tutor status",
} as const;

export type BoardAriaKey = keyof typeof BOARD_ARIA;

const TOOL_LABELS: Record<BoardToolAction, string> = {
  pen: "Pen",
  eraser: "Eraser",
  undo: "Undo",
  clear: "Clear board",
  readHandwriting: "Read handwriting",
  askScho: "Ask Scho",
  mic: "Start voice input",
  stopMic: "Stop voice input",
  playTts: "Play reply aloud",
  stopTts: "Stop playback",
  collapseTools: "Collapse drawing tools",
  expandTools: "Show drawing tools",
  back: "Back to Free Studying",
  sendChat: "Send message",
};

/**
 * Aria-label for an icon-only (or text+icon) tool control.
 * Optionally suffixes selection / busy state for screen readers.
 */
export function toolButtonLabel(
  action: BoardToolAction,
  options?: {
    pressed?: boolean;
    busy?: boolean;
    /** Extra context, e.g. active ink name when collapsing tools */
    detail?: string;
  },
): string {
  const base = TOOL_LABELS[action];
  const parts = [base];
  if (options?.detail) parts.push(options.detail);
  if (options?.pressed) parts.push("selected");
  if (options?.busy) parts.push("busy");
  return parts.join(", ");
}

/** Label for a color swatch (icon-only button). */
export function colorSwatchLabel(
  colorName: string,
  options?: { selected?: boolean },
): string {
  return options?.selected ? `${colorName}, selected` : colorName;
}

/** Label for a stroke-width control (icon-only). */
export function strokeWidthLabel(
  widthName: string,
  options?: { selected?: boolean },
): string {
  return options?.selected ? `${widthName} stroke, selected` : `${widthName} stroke`;
}

/** Peek / expand control when tools auto-hide. */
export function toolsPeekLabel(args: {
  open: boolean;
  tool: BoardDrawTool;
  colorName?: string;
}): string {
  if (args.open) return toolButtonLabel("collapseTools");
  const detail =
    args.tool === "eraser"
      ? "Eraser"
      : (args.colorName ?? "Ink");
  return toolButtonLabel("expandTools", { detail });
}

export type LiveRegionPoliteness = "polite" | "assertive" | "off";

export type LiveRegionProps = {
  role: "status" | "alert" | "log";
  "aria-live": LiveRegionPoliteness;
  "aria-atomic": boolean;
  "aria-relevant"?: "additions" | "additions text" | "all" | "removals" | "text";
  "aria-label"?: string;
};

/**
 * Props for an assertive/polite live region.
 * Use `polite` for OCR progress, tool switches, TTS ready.
 * Use `assertive` for OCR/tutor failures (role="alert").
 */
export function liveRegionProps(
  politeness: Exclude<LiveRegionPoliteness, "off"> = "polite",
  options?: {
    atomic?: boolean;
    label?: string;
    /** log = chat transcript stream; status = one-shot updates; alert = errors */
    kind?: "status" | "alert" | "log";
  },
): LiveRegionProps {
  const kind =
    options?.kind ?? (politeness === "assertive" ? "alert" : "status");
  const props: LiveRegionProps = {
    role: kind,
    "aria-live": politeness,
    "aria-atomic": options?.atomic ?? true,
  };
  if (kind === "log") {
    props["aria-relevant"] = "additions text";
    props["aria-atomic"] = options?.atomic ?? false;
  }
  if (options?.label) props["aria-label"] = options.label;
  return props;
}

/** Polite status region for OCR / model progress. */
export function ocrLiveRegionProps(): LiveRegionProps {
  return liveRegionProps("polite", {
    label: BOARD_ARIA.ocrStatus,
    kind: "status",
  });
}

/** Assertive alert region for OCR / board errors. */
export function errorLiveRegionProps(): LiveRegionProps {
  return liveRegionProps("assertive", {
    label: BOARD_ARIA.statusRegion,
    kind: "alert",
  });
}

/** Polite log region for streaming chat messages. */
export function chatLogLiveRegionProps(): LiveRegionProps {
  return liveRegionProps("polite", {
    label: BOARD_ARIA.chatMessages,
    kind: "log",
  });
}

/** Toolbar landmark props (spread onto the floating tools cluster). */
export function toolbarA11yProps(): {
  role: "toolbar";
  "aria-label": string;
} {
  return {
    role: "toolbar",
    "aria-label": BOARD_ARIA.toolbar,
  };
}

/** Canvas surface props — drawing is pointer-primary; label + description for AT. */
export function canvasA11yProps(options?: {
  labelledBy?: string;
  describedBy?: string;
}): {
  role: "img";
  "aria-label": string;
  "aria-labelledby"?: string;
  "aria-describedby"?: string;
} {
  const props: {
    role: "img";
    "aria-label": string;
    "aria-labelledby"?: string;
    "aria-describedby"?: string;
  } = {
    role: "img",
    "aria-label": BOARD_ARIA.canvas,
  };
  if (options?.labelledBy) props["aria-labelledby"] = options.labelledBy;
  if (options?.describedBy) props["aria-describedby"] = options.describedBy;
  return props;
}

/** Group props for tool clusters inside the toolbar. */
export function toolGroupA11yProps(
  group: "drawTools" | "inkColor" | "strokeWidth" | "history",
): {
  role: "group";
  "aria-label": string;
} {
  return {
    role: "group",
    "aria-label": BOARD_ARIA[group],
  };
}

/**
 * Ship checklist — each item is satisfied by using the matching helper / constant.
 * Keep in sync with `BoardA11yNotes.md`.
 */
export const BOARD_A11Y_CHECKLIST = [
  {
    id: "tool-labels",
    requirement: "Icon-only tools expose aria-label via toolButtonLabel / colorSwatchLabel / strokeWidthLabel",
    helper: "toolButtonLabel",
  },
  {
    id: "toolbar-landmark",
    requirement: "Floating tools use role=toolbar and group labels",
    helper: "toolbarA11yProps / toolGroupA11yProps",
  },
  {
    id: "live-ocr",
    requirement: "OCR progress announced politely",
    helper: "ocrLiveRegionProps",
  },
  {
    id: "live-errors",
    requirement: "OCR/tutor failures announced assertively",
    helper: "errorLiveRegionProps",
  },
  {
    id: "live-chat",
    requirement: "Chat stream uses a polite log live region",
    helper: "chatLogLiveRegionProps",
  },
  {
    id: "canvas-name",
    requirement: "Canvas has an accessible name",
    helper: "canvasA11yProps",
  },
  {
    id: "decorative-hidden",
    requirement: "Decorative glyphs/swatch dots set aria-hidden",
    helper: "BOARD_ARIA + consumer markup",
  },
  {
    id: "collapsed-focus",
    requirement: "When toolbar cluster is aria-hidden, children use tabIndex=-1",
    helper: "BoardA11yNotes.md § Focus",
  },
] as const;

export type BoardA11yChecklistId = (typeof BOARD_A11Y_CHECKLIST)[number]["id"];
