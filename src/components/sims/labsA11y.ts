/**
 * STEM Labs shell accessibility helpers.
 *
 * Canonical aria strings + keyboard helpers for LabsShell sidebar / nav.
 * Mirror Free Studying `freeStudyA11y.ts` patterns.
 */

import type { KeyboardEvent as ReactKeyboardEvent } from "react";
import type { SimSubject } from "@/sims/contracts";

export type LabsCategoryId = SimSubject | "all";

/** Stable aria / landmark labels for STEM Labs shell surfaces. */
export const LABS_ARIA = {
  studio: "STEM Labs",
  navigation: "STEM Labs navigation",
  categories: "Lab categories",
  catalog: "Lab catalog",
  workspace: "Lab workspace",
  skipToWorkspace: "Skip to lab workspace",
  openMenu: "Open labs menu",
  closeMenu: "Close labs menu",
  closeMenuScrim: "Close labs menu",
  backToDashboard: "Back to dashboard",
  brandHome: "STEM Labs catalog home",
  browseAll: "Browse all labs",
} as const;

const CATEGORY_LABELS: Record<LabsCategoryId, string> = {
  all: "All labs",
  physics: "Physics",
  chemistry: "Chemistry",
  biology: "Biology",
  math: "Math",
};

/** Accessible name for a category filter control. */
export function categoryFilterLabel(
  id: LabsCategoryId,
  options?: { selected?: boolean; count?: number },
): string {
  const base = CATEGORY_LABELS[id];
  const withCount =
    typeof options?.count === "number" ? `${base}, ${options.count}` : base;
  return options?.selected ? `${withCount}, selected` : withCount;
}

export function menuToggleLabel(open: boolean): string {
  return open ? LABS_ARIA.closeMenu : LABS_ARIA.openMenu;
}

export function catalogSectionLabel(subject: LabsCategoryId): string {
  return subject === "all" ? "Catalog" : CATEGORY_LABELS[subject];
}

/**
 * Arrow / Home / End focus movement among enabled controls in a nav group.
 * Up/Left → previous; Down/Right → next.
 * Works for category buttons and lab list links.
 */
export function handleLabsNavKeyDown(
  event: ReactKeyboardEvent<HTMLElement>,
  selector = "button:not([disabled]), a[href]",
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
  const items = Array.from(root.querySelectorAll<HTMLElement>(selector)).filter(
    (el) => !el.hasAttribute("disabled") && el.getAttribute("aria-disabled") !== "true",
  );
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

/** Category filter rail — buttons only. */
export function handleCategoryRailKeyDown(
  event: ReactKeyboardEvent<HTMLElement>,
): void {
  handleLabsNavKeyDown(event, "button:not([disabled])");
}

/** Lab list — links only. */
export function handleLabListKeyDown(
  event: ReactKeyboardEvent<HTMLElement>,
): void {
  handleLabsNavKeyDown(event, "a[href]");
}

export const LABS_A11Y_CHECKLIST = [
  {
    id: "landmarks",
    requirement:
      "Shell root / sidebar / categories / workspace use stable LABS_ARIA labels",
  },
  {
    id: "category-pressed",
    requirement:
      "Category filters expose aria-pressed + categoryFilterLabel",
  },
  {
    id: "nav-keyboard",
    requirement:
      "Category rail and lab list support Arrow / Home / End focus movement",
  },
  {
    id: "mobile-drawer",
    requirement:
      "Mobile menu uses aria-expanded/controls; Esc closes; focus returns to toggle; closed drawer is inert",
  },
  {
    id: "focus-visible",
    requirement:
      "Shell controls show cobalt :focus-visible rings",
  },
  {
    id: "skip-link",
    requirement: "Skip link jumps to #labs-main workspace",
  },
  {
    id: "current-page",
    requirement: "Active lab / catalog links set aria-current=page",
  },
] as const;

export type LabsA11yChecklistId = (typeof LABS_A11Y_CHECKLIST)[number]["id"];
