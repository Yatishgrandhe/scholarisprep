"use client";

/**
 * Notion/Figma-style destination rail for Free Studying.
 * Tutor · PDF · Voice · Notes + Whiteboard / STEM Labs + Dashboard exit.
 * Density: full | compact (icon-only). Hidden mode is owned by the shell peep.
 */

import type { RefObject } from "react";
import Link from "next/link";
import {
  ChatsCircle,
  FilePdf,
  Flask,
  Microphone,
  Notebook,
  PencilLine,
  SidebarSimple,
  X,
} from "@phosphor-icons/react";
import { BrandLockup } from "@/components/brand/BrandLockup";
import { ScholarisLogoMark } from "@/components/brand/ScholarisLogoMark";
import {
  FREE_STUDY_HREF,
  LABS_HREF,
  PRODUCT_NEW_TAB_PROPS,
  WHITEBOARD_HREF,
} from "@/lib/dashboard/navRoutes";
import {
  FS_ARIA,
  destinationRailLabel,
  handleDestinationRailKeyDown,
} from "@/components/free-study/freeStudyA11y";
import styles from "./free-study-studio-shell.module.css";

export type FreeStudyDestId =
  | "home"
  | "tutor"
  | "pdf"
  | "voice"
  | "notes"
  | "whiteboard";

export type RailDensity = "full" | "compact";

const DEST_ITEMS: {
  id: Exclude<FreeStudyDestId, "home" | "whiteboard">;
  label: string;
  href: string;
  icon: typeof ChatsCircle;
}[] = [
  {
    id: "tutor",
    label: "Tutor",
    href: `${FREE_STUDY_HREF}?dest=tutor`,
    icon: ChatsCircle,
  },
  {
    id: "pdf",
    label: "PDF",
    href: `${FREE_STUDY_HREF}?dest=pdf`,
    icon: FilePdf,
  },
  {
    id: "voice",
    label: "Voice",
    href: `${FREE_STUDY_HREF}?dest=voice`,
    icon: Microphone,
  },
  {
    id: "notes",
    label: "Notes",
    href: `${FREE_STUDY_HREF}?dest=notes`,
    icon: Notebook,
  },
];

export type FreeStudyProductRailProps = {
  active: FreeStudyDestId;
  density: RailDensity;
  exitHref: string;
  navId: string;
  drawerRef?: RefObject<HTMLElement | null>;
  /** When true (mobile drawer closed), rail is inert / aria-hidden. */
  drawerHidden?: boolean;
  onNavigate?: () => void;
  onCollapse?: () => void;
  onExpand?: () => void;
};

export function FreeStudyProductRail({
  active,
  density,
  exitHref,
  navId,
  drawerRef,
  drawerHidden = false,
  onNavigate,
  onCollapse,
  onExpand,
}: FreeStudyProductRailProps) {
  const compact = density === "compact";

  return (
    <aside
      ref={drawerRef}
      id={navId}
      className={styles.rail}
      aria-label={FS_ARIA.destinations}
      aria-hidden={drawerHidden ? true : undefined}
      {...(drawerHidden ? ({ inert: true } as { inert: boolean }) : {})}
    >
      <div className={styles.brandRow}>
        <Link
          href={FREE_STUDY_HREF}
          className={styles.brandLink}
          aria-current={active === "home" ? "page" : undefined}
          aria-label="Free Studying home"
          onClick={onNavigate}
        >
          <span className={styles.brandMark}>
            {compact ? (
              <ScholarisLogoMark size={28} />
            ) : (
              <BrandLockup size="sm" variant="light" />
            )}
          </span>
          {!compact ? (
            <p className={styles.brandSub}>Free Studying</p>
          ) : null}
        </Link>
        {compact && onExpand ? (
          <button
            type="button"
            className={styles.densityBtn}
            onClick={onExpand}
            aria-label="Expand sidebar"
            title="Expand sidebar"
          >
            <SidebarSimple size={16} weight="bold" aria-hidden />
          </button>
        ) : null}
        {!compact && onCollapse ? (
          <button
            type="button"
            className={styles.densityBtn}
            onClick={onCollapse}
            aria-label="Collapse sidebar"
            title="Collapse sidebar"
          >
            <SidebarSimple size={16} weight="bold" aria-hidden />
          </button>
        ) : null}
      </div>

      {!compact ? (
        <p className={styles.sectionLabel}>Destinations</p>
      ) : null}

      <nav
        className={styles.nav}
        aria-label={FS_ARIA.destinationRail}
        onKeyDown={handleDestinationRailKeyDown}
      >
        {DEST_ITEMS.map(({ id, label, href, icon: Icon }) => {
          const isActive = active === id;
          const railLabel = destinationRailLabel(id, { current: isActive });
          return (
            <Link
              key={id}
              href={href}
              className={`${styles.navItem} ${isActive ? styles.navItemActive : ""}`}
              aria-label={railLabel}
              aria-current={isActive ? "page" : undefined}
              title={label}
              onClick={onNavigate}
            >
              <span className={styles.navIcon} aria-hidden>
                <Icon size={16} weight={isActive ? "fill" : "regular"} />
              </span>
              <span className={styles.navLabel}>{label}</span>
            </Link>
          );
        })}

        <hr className={styles.sep} />

        <Link
          href={WHITEBOARD_HREF}
          className={`${styles.navItem} ${styles.navItemAccent}`}
          aria-label={destinationRailLabel("whiteboard")}
          title={FS_ARIA.whiteboard}
          onClick={onNavigate}
        >
          <span className={styles.navIcon} aria-hidden>
            <PencilLine size={16} weight="regular" />
          </span>
          <span className={styles.navLabel}>Whiteboard</span>
        </Link>

        <Link
          href={LABS_HREF}
          className={`${styles.navItem} ${styles.navItemAccent}`}
          aria-label="Open STEM Labs in a new tab"
          title="STEM Labs"
          onClick={onNavigate}
          {...PRODUCT_NEW_TAB_PROPS}
        >
          <span className={styles.navIcon} aria-hidden>
            <Flask size={16} weight="regular" />
          </span>
          <span className={styles.navLabel}>STEM Labs</span>
        </Link>
      </nav>

      <div className={styles.footer}>
        <Link
          href={exitHref}
          className={styles.exitBtn}
          aria-label={FS_ARIA.closeStudio}
          title="Dashboard (Esc)"
          onClick={onNavigate}
        >
          <span className={styles.navIcon} aria-hidden>
            <X size={14} weight="bold" />
          </span>
          <span className={styles.navLabel}>Dashboard</span>
        </Link>
      </div>
    </aside>
  );
}

export { DEST_ITEMS };
