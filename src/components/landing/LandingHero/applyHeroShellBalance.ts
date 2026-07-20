/**
 * NEUTERED — DO NOT REINTRODUCE SHRINK LOCKS.
 *
 * A stale agent previously forced stage ~340/360px and --spark-chart-h 88–104px,
 * which clipped the Recharts Spark. QA-verified sizes live in LandingHero.module.css:
 *   Desktop 1280: stage min-height 520, column ~680, --spark-chart-h 176px
 *   Mobile 375: stage min-height 460, --spark-chart-h 152px
 *
 * This no-op remains only so accidental imports do not re-apply shrink styles.
 */
export function applyHeroShellBalance(
  _hero: HTMLElement,
  _stage: HTMLElement,
): void {
  /* intentionally empty — CSS QA SIZING LOCK is the source of truth */
}

/** @deprecated Use CSS QA SIZING LOCK only. Never force 340/360 or 96–104 chart. */
export function applyHeroBalanceLayout(
  _hero: HTMLElement,
  _stage: HTMLElement,
): void {
  /* intentionally empty */
}
