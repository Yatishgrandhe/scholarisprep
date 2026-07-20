"use client";

import {
  useCallback,
  useEffect,
  useId,
  useMemo,
  useRef,
  useState,
  useSyncExternalStore,
} from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import {
  ArrowLeft,
  Flask,
  List,
  X,
} from "@phosphor-icons/react";
import { BrandLockup } from "@/components/brand/BrandLockup";
import { LABS_HREF } from "@/lib/dashboard/navRoutes";
import type { SimManifestMeta, SimSubject } from "@/sims/contracts";
import {
  LABS_ARIA,
  catalogSectionLabel,
  categoryFilterLabel,
  handleCategoryRailKeyDown,
  handleLabListKeyDown,
  menuToggleLabel,
  type LabsCategoryId,
} from "./labsA11y";
import styles from "./labs-shell.module.css";

const SUBJECTS: { id: LabsCategoryId; label: string }[] = [
  { id: "all", label: "All labs" },
  { id: "physics", label: "Physics" },
  { id: "chemistry", label: "Chemistry" },
  { id: "biology", label: "Biology" },
  { id: "math", label: "Math" },
];

/** Matches `labs-shell.module.css` drawer breakpoint. */
const DRAWER_MQ = "(max-width: 860px)";

type Props = {
  sims: SimManifestMeta[];
  children: React.ReactNode;
};

function activeSimIdFromPath(pathname: string | null): string | null {
  if (!pathname) return null;
  const match = pathname.match(/^\/dashboard\/labs\/([^/]+)/);
  if (!match?.[1]) return null;
  try {
    return decodeURIComponent(match[1]);
  } catch {
    return match[1];
  }
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

/**
 * Fullscreen STEM Labs chrome — own sidebar (categories + lab list + back).
 * Desktop: persistent rail. Mobile (≤860px): off-canvas drawer + top chrome.
 * Hides main dashboard chrome via `isLabsFullscreenRoute`.
 * A11y helpers live in `labsA11y.ts`.
 */
export function LabsShell({ sims, children }: Props) {
  const pathname = usePathname();
  const activeSimId = activeSimIdFromPath(pathname);
  const navId = useId();
  const listLabelId = `${navId}-list`;
  const menuBtnRef = useRef<HTMLButtonElement>(null);
  const sidebarRef = useRef<HTMLElement>(null);
  const [subject, setSubject] = useState<LabsCategoryId>("all");
  const [navOpen, setNavOpen] = useState(false);
  const isDrawerLayout = useSyncExternalStore(
    subscribeDrawerMq,
    getDrawerMqSnapshot,
    getDrawerMqServerSnapshot,
  );

  const closeNav = useCallback(() => setNavOpen(false), []);
  const openNav = useCallback(() => setNavOpen(true), []);

  useEffect(() => {
    setNavOpen(false);
  }, [pathname]);

  useEffect(() => {
    if (!activeSimId) return;
    const sim = sims.find((s) => s.id === activeSimId);
    if (sim) setSubject(sim.subject);
  }, [activeSimId, sims]);

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

    const firstFocusable = sidebarRef.current?.querySelector<HTMLElement>(
      "a[href], button:not([disabled])",
    );
    firstFocusable?.focus();

    return () => {
      document.body.style.overflow = prevOverflow;
      window.removeEventListener("keydown", onKey, true);
    };
  }, [navOpen, isDrawerLayout]);

  /* Leaving drawer layout (resize up) must clear open state. */
  useEffect(() => {
    if (!isDrawerLayout) setNavOpen(false);
  }, [isDrawerLayout]);

  const filtered = useMemo(() => {
    if (subject === "all") return sims;
    return sims.filter((s) => s.subject === subject);
  }, [sims, subject]);

  const counts = useMemo(() => {
    const map: Record<SimSubject | "all", number> = {
      all: sims.length,
      physics: 0,
      chemistry: 0,
      biology: 0,
      math: 0,
    };
    for (const s of sims) map[s.subject] += 1;
    return map;
  }, [sims]);

  const activeSim = activeSimId
    ? sims.find((s) => s.id === activeSimId)
    : undefined;
  const mobileTitle = activeSim?.title ?? LABS_ARIA.studio;
  const drawerOpen = isDrawerLayout && navOpen;

  return (
    <div
      className={styles.root}
      data-shell="labs"
      data-nav-open={drawerOpen ? "true" : undefined}
      aria-label={LABS_ARIA.studio}
    >
      <a href="#labs-main" className={styles.skipLink}>
        {LABS_ARIA.skipToWorkspace}
      </a>

      <div className={styles.atmosphere} aria-hidden>
        <div className={styles.glow} />
        <div className={styles.grain} />
      </div>

      <header className={styles.mobileBar}>
        <button
          ref={menuBtnRef}
          type="button"
          className={styles.menuBtn}
          aria-expanded={drawerOpen}
          aria-controls={navId}
          aria-haspopup="dialog"
          aria-label={menuToggleLabel(navOpen)}
          onClick={() => (navOpen ? closeNav() : openNav())}
        >
          {navOpen ? (
            <X size={20} weight="bold" aria-hidden />
          ) : (
            <List size={20} weight="bold" aria-hidden />
          )}
        </button>
        <div className={styles.mobileBarText}>
          <p className={styles.mobileBarEyebrow}>{LABS_ARIA.studio}</p>
          <p className={styles.mobileBarTitle}>{mobileTitle}</p>
        </div>
        <Link
          href="/dashboard"
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

      <aside
        ref={sidebarRef}
        id={navId}
        className={`${styles.sidebar} ${drawerOpen ? styles.sidebarOpen : ""}`}
        aria-label={LABS_ARIA.navigation}
        aria-hidden={isDrawerLayout && !navOpen ? true : undefined}
        inert={isDrawerLayout && !navOpen ? true : undefined}
        {...(drawerOpen
          ? { role: "dialog" as const, "aria-modal": true as const }
          : {})}
      >
        <div className={styles.sidebarTop}>
          <div className={styles.sidebarTopRow}>
            <Link
              href="/dashboard"
              className={styles.back}
              aria-label={LABS_ARIA.backToDashboard}
            >
              <ArrowLeft size={15} weight="bold" aria-hidden />
              Dashboard
            </Link>
            {isDrawerLayout ? (
              <button
                type="button"
                className={styles.drawerClose}
                onClick={() => {
                  closeNav();
                  menuBtnRef.current?.focus();
                }}
                aria-label={LABS_ARIA.closeMenu}
              >
                <X size={18} weight="bold" aria-hidden />
              </button>
            ) : null}
          </div>
          <Link
            href={LABS_HREF}
            className={styles.brandLink}
            aria-label={LABS_ARIA.brandHome}
            onClick={closeNav}
          >
            <BrandLockup size="sm" variant="light" />
            <span className={styles.product}>
              <Flask size={14} weight="fill" aria-hidden />
              STEM Labs
            </span>
          </Link>
        </div>

        <nav
          className={styles.categories}
          aria-label={LABS_ARIA.categories}
          onKeyDown={handleCategoryRailKeyDown}
        >
          {SUBJECTS.map((cat) => {
            const count = counts[cat.id];
            const selected = subject === cat.id;
            const disabled = cat.id !== "all" && count === 0;
            return (
              <button
                key={cat.id}
                type="button"
                className={styles.category}
                data-active={selected ? "true" : undefined}
                disabled={disabled}
                aria-pressed={selected}
                aria-label={categoryFilterLabel(cat.id, {
                  selected,
                  count,
                })}
                onClick={() => setSubject(cat.id)}
              >
                <span aria-hidden>{cat.label}</span>
                <span className={styles.categoryCount} aria-hidden>
                  {count}
                </span>
              </button>
            );
          })}
        </nav>

        <div className={styles.listWrap}>
          <p className={styles.listLabel} id={listLabelId}>
            {catalogSectionLabel(subject)}
          </p>
          {filtered.length === 0 ? (
            <p className={styles.listEmpty} role="status">
              No labs in this category yet.
            </p>
          ) : (
            <ul
              className={styles.labList}
              aria-label={LABS_ARIA.catalog}
              aria-labelledby={listLabelId}
              onKeyDown={handleLabListKeyDown}
            >
              {filtered.map((sim) => {
                const href = `${LABS_HREF}/${sim.id}`;
                const active = activeSimId === sim.id;
                return (
                  <li key={sim.id}>
                    <Link
                      href={href}
                      className={styles.labLink}
                      data-active={active ? "true" : undefined}
                      aria-current={active ? "page" : undefined}
                      onClick={closeNav}
                    >
                      <span className={styles.labTitle}>{sim.title}</span>
                      <span className={styles.labMeta}>
                        {sim.subject}
                        {sim.priority ? ` · ${sim.priority}` : ""}
                      </span>
                    </Link>
                  </li>
                );
              })}
            </ul>
          )}
        </div>

        <Link
          href={LABS_HREF}
          className={styles.catalogLink}
          data-active={!activeSimId ? "true" : undefined}
          aria-current={!activeSimId ? "page" : undefined}
          aria-label={LABS_ARIA.browseAll}
          onClick={closeNav}
        >
          Browse all labs
        </Link>
      </aside>

      <main
        className={styles.main}
        id="labs-main"
        tabIndex={-1}
        aria-label={LABS_ARIA.workspace}
        inert={drawerOpen ? true : undefined}
      >
        <div className={styles.stage}>{children}</div>
      </main>
    </div>
  );
}
