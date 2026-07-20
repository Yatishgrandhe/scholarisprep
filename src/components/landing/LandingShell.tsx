import type { ReactNode } from "react";

/**
 * Applies the `.landing` theme scope (see `src/styles/landing-theme.css`)
 * around the landing/home sections. This is intentionally thin — it does
 * not own layout, section rhythm, or animation. Individual section
 * components (owned by other agents, under `src/components/landing/`)
 * bring their own markup and use `.landing__section` / `.landing__container`
 * from `src/styles/landing.css` for shared rhythm.
 */
export function LandingShell({ children }: { children: ReactNode }) {
  return <div className="landing">{children}</div>;
}
