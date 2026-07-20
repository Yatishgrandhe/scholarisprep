"use client";

/**
 * STEM Labs product rail — categories, lab list, catalog link, exit.
 * Used inside LabsStudioShell (not the global DashboardSidebar).
 */

import { useMemo, useState, type RefObject } from "react";
import Link from "next/link";
import {
  ArrowLeft,
  Atom,
  Flask,
  Function as FunctionIcon,
  Leaf,
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
  type LabsCategoryId,
} from "./labsA11y";
import styles from "./labs-studio-shell.module.css";

const SUBJECTS: { id: LabsCategoryId; label: string }[] = [
  { id: "all", label: "All labs" },
  { id: "physics", label: "Physics" },
  { id: "chemistry", label: "Chemistry" },
  { id: "biology", label: "Biology" },
  { id: "math", label: "Math" },
];

const SUBJECT_ICONS: Record<
  SimSubject,
  typeof Atom
> = {
  physics: Atom,
  chemistry: Flask,
  biology: Leaf,
  math: FunctionIcon,
};

export type LabsRailDensity = "full" | "compact" | "hidden";

export type LabsProductRailProps = {
  sims: SimManifestMeta[];
  activeSimId: string | null;
  density: LabsRailDensity;
  navId: string;
  asideRef?: RefObject<HTMLElement | null>;
  drawerOpen?: boolean;
  isDrawerLayout?: boolean;
  closeHref?: string;
  onNavigate?: () => void;
  onCloseDrawer?: () => void;
  className?: string;
};

export function LabsProductRail({
  sims,
  activeSimId,
  density,
  navId,
  asideRef,
  drawerOpen = false,
  isDrawerLayout = false,
  closeHref = "/dashboard",
  onNavigate,
  onCloseDrawer,
  className,
}: LabsProductRailProps) {
  const [subject, setSubject] = useState<LabsCategoryId>("all");

  const filtered = useMemo(() => {
    if (subject === "all") return sims;
    return sims.filter((s) => s.subject === subject);
  }, [sims, subject]);

  const counts = useMemo(() => {
    const map: Record<LabsCategoryId, number> = {
      all: sims.length,
      physics: 0,
      chemistry: 0,
      biology: 0,
      math: 0,
    };
    for (const s of sims) map[s.subject] += 1;
    return map;
  }, [sims]);

  const compact = density === "compact";

  return (
    <aside
      ref={asideRef}
      id={navId}
      className={[
        styles.rail,
        compact ? styles.railCompact : "",
        drawerOpen ? styles.railOpen : "",
        className ?? "",
      ]
        .filter(Boolean)
        .join(" ")}
      aria-label={LABS_ARIA.navigation}
      data-density={density}
      aria-hidden={isDrawerLayout && !drawerOpen ? true : undefined}
      inert={isDrawerLayout && !drawerOpen ? true : undefined}
      {...(drawerOpen
        ? { role: "dialog" as const, "aria-modal": true as const }
        : {})}
    >
      <div className={styles.railTop}>
        <div className={styles.railTopRow}>
          <Link
            href={closeHref}
            className={styles.exit}
            aria-label={LABS_ARIA.backToDashboard}
            title="Exit (Esc)"
            onClick={onNavigate}
          >
            {compact ? (
              <X size={16} weight="bold" aria-hidden />
            ) : (
              <>
                <ArrowLeft size={15} weight="bold" aria-hidden />
                <span className={styles.exitLabel}>Dashboard</span>
              </>
            )}
          </Link>
          {isDrawerLayout ? (
            <button
              type="button"
              className={styles.drawerClose}
              onClick={onCloseDrawer}
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
          aria-current={!activeSimId ? "page" : undefined}
          onClick={onNavigate}
        >
          {compact ? (
            <Flask size={20} weight="fill" aria-hidden />
          ) : (
            <>
              <BrandLockup size="sm" variant="light" />
              <span className={styles.product}>
                <Flask size={14} weight="fill" aria-hidden />
                STEM Labs
              </span>
            </>
          )}
        </Link>
      </div>

      <nav
        className={styles.categories}
        aria-label={LABS_ARIA.categories}
        onKeyDown={handleCategoryRailKeyDown}
      >
        {SUBJECTS.map((cat) => {
          const count = counts[cat.id];
          const disabled = cat.id !== "all" && count === 0;
          const selected = subject === cat.id;
          const Icon =
            cat.id === "all" ? Flask : SUBJECT_ICONS[cat.id as SimSubject];
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
              title={cat.label}
              onClick={() => setSubject(cat.id)}
            >
              {compact ? (
                <Icon size={18} weight={selected ? "fill" : "regular"} aria-hidden />
              ) : (
                <>
                  <span>{cat.label}</span>
                  <span className={styles.categoryCount}>{count}</span>
                </>
              )}
            </button>
          );
        })}
      </nav>

      {!compact ? (
        <div className={styles.listWrap}>
          <p className={styles.listLabel} id={`${navId}-list`}>
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
              aria-labelledby={`${navId}-list`}
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
                      onClick={onNavigate}
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
      ) : (
        <ul className={styles.compactLabList} aria-label={LABS_ARIA.catalog}>
          {filtered.map((sim) => {
            const href = `${LABS_HREF}/${sim.id}`;
            const active = activeSimId === sim.id;
            const Icon = SUBJECT_ICONS[sim.subject];
            return (
              <li key={sim.id}>
                <Link
                  href={href}
                  className={styles.compactLabLink}
                  data-active={active ? "true" : undefined}
                  aria-current={active ? "page" : undefined}
                  aria-label={sim.title}
                  title={sim.title}
                  onClick={onNavigate}
                >
                  <Icon size={16} weight={active ? "fill" : "regular"} aria-hidden />
                </Link>
              </li>
            );
          })}
        </ul>
      )}

      <Link
        href={LABS_HREF}
        className={styles.catalogLink}
        data-active={!activeSimId ? "true" : undefined}
        aria-current={!activeSimId ? "page" : undefined}
        aria-label={LABS_ARIA.browseAll}
        title={LABS_ARIA.browseAll}
        onClick={onNavigate}
      >
        {compact ? (
          <Flask size={16} weight="fill" aria-hidden />
        ) : (
          "Browse all labs"
        )}
      </Link>
    </aside>
  );
}
