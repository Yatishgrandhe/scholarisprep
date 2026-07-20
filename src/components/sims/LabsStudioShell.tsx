"use client";

/**
 * STEM Labs own-shell frame — cobalt product rail + stage.
 * Dashboard chrome already hidden via `isLabsFullscreenRoute`.
 * Density ladder: full (catalog) → compact (sim run) → hidden (zen).
 * See docs/research/free-study/10-own-shell-new-tab.md §7.3
 */

import {
  useCallback,
  useEffect,
  useId,
  useRef,
  useState,
  useSyncExternalStore,
  type ReactNode,
} from "react";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import {
  CaretLeft,
  CaretRight,
  List,
  SidebarSimple,
  X,
} from "@phosphor-icons/react";
import type { SimManifestMeta } from "@/sims/contracts";
import { LABS_ARIA, menuToggleLabel } from "./labsA11y";
import {
  LabsProductRail,
  type LabsRailDensity,
} from "./LabsProductRail";
import styles from "./labs-studio-shell.module.css";

/** Matches CSS drawer breakpoint. */
const DRAWER_MQ = "(max-width: 860px)";

type Props = {
  sims: SimManifestMeta[];
  children: ReactNode;
  /** Exit target (default dashboard home). */
  closeHref?: string;
};

function activeSimIdFromPath(pathname: string | null): string | null {
  if (!pathname) return null;
  const match = pathname.match(/^\/dashboard\/labs\/([^/]+)/);
  return match?.[1] ?? null;
}

function subscribeDrawerMq(onChange: () => void) {
  const mq = window.matchMedia(DRAWER_MQ);
  mq.addEventListener("change", onChange);
  return () => mq.removeEventListener("change", onChange);
}

function getDrawerMqSnapshot() {
  return window.matchMedia(DRAWER_MQ).matches;
}

function getDrawerMqServerSnapshot() {
  return false;
}

function nextDensity(current: LabsRailDensity): LabsRailDensity {
  if (current === "full") return "compact";
  if (current === "compact") return "hidden";
  return "full";
}

function densityLabel(d: LabsRailDensity): string {
  if (d === "full") return "Collapse rail";
  if (d === "compact") return "Hide rail";
  return "Show rail";
}

/**
 * Immersive STEM Labs layout: LabsProductRail + catalog/sim stage.
 */
export function LabsStudioShell({
  sims,
  children,
  closeHref = "/dashboard",
}: Props) {
  const router = useRouter();
  const pathname = usePathname();
  const activeSimId = activeSimIdFromPath(pathname);
  const navId = useId();
  const menuBtnRef = useRef<HTMLButtonElement>(null);
  const railRef = useRef<HTMLElement>(null);
  const [navOpen, setNavOpen] = useState(false);
  const [density, setDensity] = useState<LabsRailDensity>(
    activeSimId ? "compact" : "full",
  );
  const isDrawerLayout = useSyncExternalStore(
    subscribeDrawerMq,
    getDrawerMqSnapshot,
    getDrawerMqServerSnapshot,
  );

  const closeNav = useCallback(() => setNavOpen(false), []);
  const openNav = useCallback(() => setNavOpen(true), []);

  /* Catalog → full rail; entering a sim → compact (unless user hid). */
  useEffect(() => {
    if (!activeSimId) {
      setDensity("full");
      return;
    }
    setDensity((d) => (d === "full" ? "compact" : d));
  }, [activeSimId]);

  useEffect(() => {
    setNavOpen(false);
  }, [pathname]);

  /* Body scroll lock + Escape while drawer is open (mobile only). */
  useEffect(() => {
    if (!navOpen || !isDrawerLayout) return;

    const prevOverflow = document.body.style.overflow;
    document.body.style.overflow = "hidden";

    const onKey = (e: KeyboardEvent) => {
      if (e.key !== "Escape") return;
      e.preventDefault();
      e.stopPropagation();
      setNavOpen(false);
      menuBtnRef.current?.focus();
    };
    window.addEventListener("keydown", onKey, true);

    const firstFocusable = railRef.current?.querySelector<HTMLElement>(
      "a, button:not([disabled])",
    );
    firstFocusable?.focus();

    return () => {
      document.body.style.overflow = prevOverflow;
      window.removeEventListener("keydown", onKey, true);
    };
  }, [navOpen, isDrawerLayout]);

  useEffect(() => {
    if (!isDrawerLayout) setNavOpen(false);
  }, [isDrawerLayout]);

  /* Esc: close drawer → expand hidden rail → exit to dashboard. */
  useEffect(() => {
    if (isDrawerLayout) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key !== "Escape") return;
      const target = e.target;
      if (
        target instanceof HTMLElement &&
        (target.closest("input, textarea, [contenteditable='true']") ||
          target.isContentEditable)
      ) {
        return;
      }
      e.preventDefault();
      if (density === "hidden") {
        setDensity(activeSimId ? "compact" : "full");
        return;
      }
      router.push(closeHref);
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [activeSimId, closeHref, density, isDrawerLayout, router]);

  const activeSim = activeSimId
    ? sims.find((s) => s.id === activeSimId)
    : undefined;
  const mobileTitle = activeSim?.title ?? "STEM Labs";
  const drawerOpen = isDrawerLayout && navOpen;
  const railHidden = !isDrawerLayout && density === "hidden";
  const effectiveDensity: LabsRailDensity = isDrawerLayout
    ? "full"
    : density === "hidden"
      ? "full"
      : density;

  return (
    <div
      className={styles.root}
      data-shell="labs"
      data-density={isDrawerLayout ? "drawer" : density}
      data-nav-open={drawerOpen ? "true" : undefined}
      aria-label={LABS_ARIA.studio}
    >
      <div className={styles.atmosphere} aria-hidden>
        <div className={styles.glow} />
        <div className={styles.grain} />
      </div>

      <a href="#labs-main" className={styles.skipLink}>
        {LABS_ARIA.skipToWorkspace}
      </a>

      <header className={styles.mobileBar}>
        <button
          ref={menuBtnRef}
          type="button"
          className={styles.menuBtn}
          aria-expanded={drawerOpen}
          aria-controls={navId}
          aria-haspopup="dialog"
          onClick={() => (navOpen ? closeNav() : openNav())}
        >
          {navOpen ? (
            <X size={20} weight="bold" aria-hidden />
          ) : (
            <List size={20} weight="bold" aria-hidden />
          )}
          <span className={styles.srOnly}>{menuToggleLabel(navOpen)}</span>
        </button>
        <div className={styles.mobileBarText}>
          <p className={styles.mobileBarEyebrow}>STEM Labs</p>
          <p className={styles.mobileBarTitle}>{mobileTitle}</p>
        </div>
        <Link
          href={closeHref}
          className={styles.mobileClose}
          aria-label={LABS_ARIA.backToDashboard}
        >
          <X size={18} weight="bold" aria-hidden />
        </Link>
      </header>

      {drawerOpen ? (
        <button
          type="button"
          className={styles.scrim}
          aria-label={LABS_ARIA.closeMenuScrim}
          onClick={closeNav}
        />
      ) : null}

      {railHidden ? (
        <button
          type="button"
          className={styles.peep}
          aria-label="Show labs rail"
          title="Show labs rail"
          onClick={() => setDensity(activeSimId ? "compact" : "full")}
        >
          <SidebarSimple size={18} weight="bold" aria-hidden />
        </button>
      ) : (
        <LabsProductRail
          sims={sims}
          activeSimId={activeSimId}
          density={effectiveDensity}
          navId={navId}
          asideRef={railRef}
          drawerOpen={drawerOpen}
          isDrawerLayout={isDrawerLayout}
          closeHref={closeHref}
          onNavigate={closeNav}
          onCloseDrawer={() => {
            closeNav();
            menuBtnRef.current?.focus();
          }}
        />
      )}

      {!isDrawerLayout && !railHidden ? (
        <button
          type="button"
          className={styles.densityBtn}
          aria-label={densityLabel(density)}
          title={densityLabel(density)}
          onClick={() => setDensity(nextDensity(density))}
        >
          {density === "full" ? (
            <CaretLeft size={14} weight="bold" aria-hidden />
          ) : (
            <CaretRight size={14} weight="bold" aria-hidden />
          )}
        </button>
      ) : null}

      <main
        className={styles.main}
        id="labs-main"
        aria-label={LABS_ARIA.workspace}
        inert={drawerOpen ? true : undefined}
      >
        <div className={styles.stage}>{children}</div>
      </main>
    </div>
  );
}

/** @deprecated Prefer LabsStudioShell — kept for existing imports. */
export { LabsStudioShell as LabsShell };
