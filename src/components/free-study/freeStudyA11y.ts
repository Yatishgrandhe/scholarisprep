/**
 * Free Studying shell accessibility helpers.
 *
 * Keep landmark labels and destination-rail keyboard behavior consistent
 * across FreeStudyHub + FreeStudyLanding.
 */

import type { KeyboardEvent as ReactKeyboardEvent } from "react";

export type FreeStudyDestinationId =
  | "tutor"
  | "whiteboard"
  | "pdf"
  | "voice"
  | "notes";

/** Stable aria / landmark labels for Free Studying shell surfaces. */
export const FS_ARIA = {
  studio: "Free Studying",
  destinations: "Free Studying destinations",
  destinationRail: "Study destinations",
  quickDestinations: "Quick destinations",
  workspace: "Study workspace",
  chat: "Scho conversation",
  chatMessages: "Chat messages",
  composer: "Message Scho",
  send: "Send message",
  backToDestinations: "Back to all destinations",
  allDestinations: "All destinations",
  skipToWorkspace: "Skip to study workspace",
  openMenu: "Open destinations menu",
  closeMenu: "Close destinations menu",
  dismissMenu: "Dismiss menu",
  closeStudio: "Close Free Studying and return to dashboard",
  chrome: "Free Studying chrome",
  whiteboard: "Whiteboard Studio",
} as const;

const DESTINATION_LABELS: Record<FreeStudyDestinationId, string> = {
  tutor: "Tutor",
  whiteboard: "Whiteboard Studio",
  pdf: "PDF studio",
  voice: "Voice",
  notes: "Notes",
};

/** Accessible name for an icon-only destination rail control. */
export function destinationRailLabel(
  id: FreeStudyDestinationId,
  options?: { current?: boolean },
): string {
  const base = DESTINATION_LABELS[id];
  return options?.current ? `${base}, current` : base;
}

/** Landing link label — includes short hint for screen readers. */
export function destinationLandingLabel(
  id: FreeStudyDestinationId,
  hint: string,
): string {
  return `${DESTINATION_LABELS[id]}. ${hint}`;
}

export function homeRailLabel(): string {
  return FS_ARIA.allDestinations;
}

/**
 * Arrow / Home / End navigation for destination lists (hub rail buttons or landing links).
 * Keeps Tab order natural; arrows move focus among focusable children.
 * Up/Left → previous; Down/Right → next (works for vertical + horizontal layouts).
 */
export function handleDestinationRailKeyDown(
  event: ReactKeyboardEvent<HTMLElement>,
): void {
  const key = event.key;
  if (
    key !== "ArrowUp" &&
    key !== "ArrowDown" &&
    key !== "ArrowLeft" &&
    key !== "ArrowRight" &&
    key !== "Home" &&
    key !== "End"
  ) {
    return;
  }

  const root = event.currentTarget;
  const items = Array.from(
    root.querySelectorAll<HTMLElement>(
      'a[href], button:not([disabled]), [tabindex]:not([tabindex="-1"])',
    ),
  ).filter((el) => {
    if (el.getAttribute("aria-hidden") === "true") return false;
    if (el.tabIndex < 0 && el.tagName !== "A" && el.tagName !== "BUTTON") {
      return false;
    }
    return true;
  });
  if (items.length === 0) return;

  const active = document.activeElement;
  const index = items.findIndex((el) => el === active);
  if (index < 0) return;

  let next = index;
  if (key === "Home") {
    next = 0;
  } else if (key === "End") {
    next = items.length - 1;
  } else if (key === "ArrowDown" || key === "ArrowRight") {
    next = (index + 1) % items.length;
  } else {
    next = (index - 1 + items.length) % items.length;
  }

  if (next === index) return;
  event.preventDefault();
  items[next]?.focus();
}

/** Chat transcript live region (polite log for streaming replies). */
export function chatLogLiveRegionProps(): {
  role: "log";
  "aria-live": "polite";
  "aria-atomic": false;
  "aria-relevant": "additions text";
  "aria-label": string;
} {
  return {
    role: "log",
    "aria-live": "polite",
    "aria-atomic": false,
    "aria-relevant": "additions text",
    "aria-label": FS_ARIA.chatMessages,
  };
}

export const FS_A11Y_CHECKLIST = [
  {
    id: "rail-labels",
    requirement:
      "Icon-only destination rail buttons expose aria-label via destinationRailLabel / homeRailLabel",
  },
  {
    id: "rail-keyboard",
    requirement:
      "Destination rail supports Arrow / Home / End focus movement",
  },
  {
    id: "focus-visible",
    requirement:
      "Shell controls show cobalt :focus-visible rings (not mouse-only outlines)",
  },
  {
    id: "landmarks",
    requirement:
      "Nav / workspace / chat use stable FS_ARIA landmark labels",
  },
  {
    id: "chat-live",
    requirement: "Chat stream uses a polite log live region",
  },
] as const;
