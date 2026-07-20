"use client";

/**
 * Free Studying own-shell frame (research: FreeStudyStudioShell).
 * Cobalt product rail + stage; dashboard chrome already hidden via shellRoutes.
 * Density ladder: full → compact → hidden (Notion/Figma / Excalidraw zen).
 * Does not touch WhiteboardStudio.
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
import { usePathname, useRouter, useSearchParams } from "next/navigation";
import {
  List,
  PencilLine,
  SidebarSimple,
  X,
} from "@phosphor-icons/react";
import {
  DEST_ITEMS,
  FreeStudyProductRail,
  type FreeStudyDestId,
  type RailDensity,
} from "@/components/free-study/FreeStudyProductRail";
import {
  FS_ARIA,
  destinationRailLabel,
} from "@/components/free-study/freeStudyA11y";
import { FREE_STUDY_HREF, WHITEBOARD_HREF } from "@/lib/dashboard/navRoutes";
import { resolveFreeStudyDest } from "@/lib/free-study/parseDest";
import styles from "./free-study-studio-shell.module.css";

export type ShellDensity = RailDensity | "hidden";

const DRAWER_MQ = "(max-width: 860px)";

const DEST_TITLE: Record<FreeStudyDestId, string> = {
  home: "Free Studying",
  tutor: "Tutor",
  pdf: "PDF",
  voice: "Voice",
  notes: "Notes",
  whiteboard: "Whiteboard",
};

function resolveActiveDest(
  dest: string | null,
  mode: string | null,
): FreeStudyDestId {
  return resolveFreeStudyDest(dest, mode) ?? "home";
}

/** Prefer compact rail when artifact destinations are active (PDF focus). */
function densityForDest(dest: FreeStudyDestId): ShellDensity {
  if (dest === "pdf") return "compact";
  return "full";
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

export type FreeStudyStudioShellProps = {
  children: ReactNode;
  /** Exit target (default dashboard home). */
  exitHref?: string;
};

/**
 * Immersive Free Studying layout: product rail + work stage.
 */
export function FreeStudyStudioShell({
  children,
  exitHref = "/dashboard",
}: FreeStudyStudioShellProps) {
  const router = useRouter();
  const pathname = usePathname();
  const searchParams = useSearchParams();
  const destParam = searchParams.get("dest");
  const modeParam = searchParams.get("mode");
  const active = resolveActiveDest(destParam, modeParam);
  const navId = useId();
  const menuBtnRef = useRef<HTMLButtonElement>(null);
  const drawerRef = useRef<HTMLElement>(null);
  const [drawerOpen, setDrawerOpen] = useState(false);
  const [density, setDensity] = useState<ShellDensity>(() =>
    densityForDest(active),
  );
  const [userPinned, setUserPinned] = useState(false);
  const isDrawerLayout = useSyncExternalStore(
    subscribeDrawerMq,
    getDrawerMqSnapshot,
    getDrawerMqServerSnapshot,
  );

  const closeDrawer = useCallback(() => setDrawerOpen(false), []);
  const openDrawer = useCallback(() => setDrawerOpen(true), []);

  // Canonicalize legacy ?mode= → ?dest= so rail + hub stay aligned
  useEffect(() => {
    if (!modeParam || destParam) return;
    if (!resolveFreeStudyDest(null, modeParam)) return;
    router.replace(`${FREE_STUDY_HREF}?dest=${modeParam}`);
  }, [destParam, modeParam, router]);

  // Sync default density to destination unless user pinned a preference.
  useEffect(() => {
    if (userPinned) return;
    setDensity(densityForDest(active));
  }, [active, userPinned]);

  useEffect(() => {
    setDrawerOpen(false);
  }, [pathname, searchParams]);

  useEffect(() => {
    if (!isDrawerLayout) setDrawerOpen(false);
  }, [isDrawerLayout]);

  useEffect(() => {
    if (!drawerOpen || !isDrawerLayout) return;
    const prev = document.body.style.overflow;
    document.body.style.overflow = "hidden";
    const first = drawerRef.current?.querySelector<HTMLElement>(
      "a[href], button:not([disabled])",
    );
    first?.focus();
    return () => {
      document.body.style.overflow = prev;
    };
  }, [drawerOpen, isDrawerLayout]);

  useEffect(() => {
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
      if (drawerOpen && isDrawerLayout) {
        closeDrawer();
        menuBtnRef.current?.focus();
        return;
      }
      if (density === "hidden") {
        setDensity("full");
        setUserPinned(true);
        return;
      }
      router.push(exitHref);
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [
    closeDrawer,
    density,
    exitHref,
    drawerOpen,
    isDrawerLayout,
    router,
  ]);

  const railDensity: RailDensity =
    density === "hidden" ? "compact" : density;

  const collapseRail = () => {
    setDensity((d) => (d === "full" ? "compact" : "hidden"));
    setUserPinned(true);
  };

  const revealRail = () => {
    setDensity("full");
    setUserPinned(true);
  };

  return (
    <div
      className={styles.root}
      data-free-study-studio-shell=""
      data-density={density}
      data-drawer={drawerOpen ? "open" : "closed"}
    >
      <div className={styles.atmosphere} aria-hidden>
        <div className={styles.glow} />
      </div>

      <header className={styles.mobileBar} aria-label={FS_ARIA.chrome}>
        <button
          ref={menuBtnRef}
          type="button"
          className={styles.menuBtn}
          onClick={() => (drawerOpen ? closeDrawer() : openDrawer())}
          aria-expanded={drawerOpen}
          aria-controls={navId}
          aria-haspopup="dialog"
          aria-label={drawerOpen ? FS_ARIA.closeMenu : FS_ARIA.openMenu}
        >
          <List size={22} weight="bold" aria-hidden />
        </button>
        <p className={styles.mobileTitle}>{DEST_TITLE[active]}</p>
        <nav
          className={styles.compactStrip}
          aria-label={FS_ARIA.quickDestinations}
        >
          {DEST_ITEMS.map(({ id, label, href, icon: Icon }) => {
            const isActive = active === id;
            return (
              <Link
                key={id}
                href={href}
                className={`${styles.compactBtn} ${isActive ? styles.compactBtnActive : ""}`}
                aria-label={destinationRailLabel(id, { current: isActive })}
                aria-current={isActive ? "page" : undefined}
                title={label}
              >
                <Icon
                  size={18}
                  weight={isActive ? "fill" : "regular"}
                  aria-hidden
                />
              </Link>
            );
          })}
          <Link
            href={WHITEBOARD_HREF}
            className={`${styles.compactBtn} ${styles.compactBtnAccent}`}
            aria-label={destinationRailLabel("whiteboard")}
            title={FS_ARIA.whiteboard}
          >
            <PencilLine size={18} weight="regular" aria-hidden />
          </Link>
        </nav>
        <Link
          href={exitHref}
          className={styles.compactBtn}
          aria-label={FS_ARIA.closeStudio}
          title="Dashboard"
        >
          <X size={18} weight="bold" aria-hidden />
        </Link>
      </header>

      <button
        type="button"
        className={styles.overlay}
        aria-label={FS_ARIA.dismissMenu}
        tabIndex={drawerOpen ? 0 : -1}
        onClick={closeDrawer}
      />

      <FreeStudyProductRail
        active={active}
        density={isDrawerLayout ? "full" : railDensity}
        exitHref={exitHref}
        navId={navId}
        drawerRef={drawerRef}
        drawerHidden={isDrawerLayout && !drawerOpen}
        onNavigate={closeDrawer}
        onCollapse={isDrawerLayout ? undefined : collapseRail}
        onExpand={isDrawerLayout ? undefined : revealRail}
      />

      <div className={styles.stage}>
        <div className={styles.stageTop}>
          <p className={styles.stageTitle}>Free Studying</p>
          <div className={styles.stageActions}>
            <button
              type="button"
              className={styles.peepBtn}
              onClick={revealRail}
              aria-label="Show destinations sidebar"
              title="Show sidebar"
            >
              <SidebarSimple size={14} weight="bold" aria-hidden />
              Destinations
            </button>
            <Link
              href={exitHref}
              className={styles.exitTop}
              aria-label={FS_ARIA.closeStudio}
              title="Dashboard (Esc)"
            >
              <X size={14} weight="bold" aria-hidden />
              Esc
            </Link>
          </div>
        </div>
        <div className={styles.stageBody}>{children}</div>
      </div>
    </div>
  );
}

/** @deprecated Prefer FreeStudyStudioShell — kept for layout import stability. */
export { FreeStudyStudioShell as FreeStudyShell };

