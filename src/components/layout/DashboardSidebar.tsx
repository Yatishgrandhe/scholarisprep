"use client";

import Link from "next/link";
import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import { ScholarisLogoMark } from "@/components/brand/ScholarisLogoMark";
import { usePathname } from "next/navigation";
import { useState } from "react";
import {
  CaretLeft,
  CaretRight,
  ChartBar,
  Gear,
  Key,
  SignOut,
} from "@phosphor-icons/react";
import { BugReportModal } from "@/components/dashboard/BugReportModal";
import { JoinClassModal } from "@/components/dashboard/JoinClassModal";
import { SupportChatModal } from "@/components/dashboard/SupportChatModal";
import { useAuth } from "@/hooks/useAuth";
import { SubjectSwitcher } from "@/components/shared/SubjectSwitcher";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { getNavForExam } from "@/lib/dashboard/navConfig";
import { isTutorRoute } from "@/lib/tutor/routes";
import {
  formatMemberSince,
  getDisplayNameLabel,
  getProfileAvatarInitial,
} from "@/lib/dashboard/userDisplay";
import { SidebarMoreFlyout } from "@/components/layout/SidebarMoreFlyout";
import styles from "./DashboardSidebar.module.css";

type DashboardSidebarProps = {
  collapsed: boolean;
  onCollapse: () => void;
};

export function DashboardSidebar({ collapsed, onCollapse }: DashboardSidebarProps) {
  const pathname = usePathname();
  const { user, profile, displayName, displayEmail, displayAvatarUrl, signOut } =
    useAuth();
  const examType = useActiveExamType();
  const sections = getNavForExam(examType);
  const isPlatformAdmin = profile?.role === "platform_admin";
  const [bugOpen, setBugOpen] = useState(false);
  const [classOpen, setClassOpen] = useState(false);
  const [supportOpen, setSupportOpen] = useState(false);

  const avatarInitial = getProfileAvatarInitial(displayEmail);
  const nameLabel = getDisplayNameLabel(displayName, displayEmail);
  const memberSince = formatMemberSince(profile?.created_at, user?.created_at);

  const handleSignOut = async () => {
    try {
      await signOut();
    } finally {
      // Hard navigation to the server sign-out route. It clears the auth cookies
      // on the redirect response itself, so middleware can't bounce us back to
      // the dashboard — a client-side cookie clear alone races middleware.
      window.location.href = "/auth/signout";
    }
  };

  const isActive = (href: string) => {
    const path = href.split("?")[0]!;
    if (path === "/dashboard") return pathname === "/dashboard";
    return pathname.startsWith(path);
  };

  return (
    <aside
      className={`${styles.sidebar} ${collapsed ? styles.sidebarCollapsed : ""}`}
      data-collapsed={collapsed ? "true" : "false"}
    >
      {/* Logo row */}
      <div className={`${styles.logoRow} ${collapsed ? styles.logoRowCollapsed : ""}`}>
        {collapsed ? (
          <div className={styles.logoHoverZone}>
            <Link
              href="/dashboard"
              className={styles.collapsedBrand}
              aria-label="Scholaris home"
            >
              <ScholarisLogoMark className={styles.collapsedMark} size={24} />
            </Link>
            <button
              type="button"
              className={`${styles.collapseBtn} ${styles.collapseBtnReveal}`}
              onClick={onCollapse}
              aria-label="Expand sidebar"
              title="Expand sidebar"
            >
              <CaretRight size={14} weight="bold" />
            </button>
          </div>
        ) : (
          <>
            <BrandHomeLink
              href="/dashboard"
              className={styles.brand}
              size="sm"
              variant="light"
            />
            <div className={styles.logoActions}>
              <button
                type="button"
                className={styles.collapseBtn}
                onClick={onCollapse}
                aria-label="Collapse sidebar"
                title="Collapse sidebar"
              >
                <CaretLeft size={14} weight="bold" />
              </button>
            </div>
          </>
        )}
      </div>

      {/* Exam switcher — hidden when collapsed */}
      {!collapsed && (
        <div className={styles.examSwitcher}>
          <SubjectSwitcher />
        </div>
      )}

      {/* Nav */}
      <div className={styles.navScroll}>
        <nav className={styles.nav} aria-label="Dashboard">
          {sections.map((section) => (
            <div key={section.id} className={styles.section}>
              {section.label && !collapsed ? (
                <span className={styles.sectionLabel}>{section.label}</span>
              ) : null}
              {section.items.map(({ id, href, label, icon: Icon, badge }) => {
                const active =
                  id === "scho" ? isTutorRoute(pathname) : isActive(href);
                return (
                  <Link
                    key={href}
                    href={href}
                    title={collapsed ? label : undefined}
                    className={`${styles.navLink} ${active ? styles.navLinkActive : ""} ${collapsed ? styles.navLinkCollapsed : ""}`}
                  >
                    <Icon
                      size={18}
                      weight={active ? "fill" : "regular"}
                      className={styles.navIcon}
                    />
                    {!collapsed && (
                      <span className={styles.navLabel}>{label}</span>
                    )}
                    {!collapsed && badge ? (
                      <span className={styles.itemBadge}>{badge}</span>
                    ) : null}
                  </Link>
                );
              })}
            </div>
          ))}
          {isPlatformAdmin ? (
            <div className={styles.section}>
              {!collapsed ? (
                <span className={styles.sectionLabel}>Admin</span>
              ) : null}
              <Link
                href="/admin"
                title={collapsed ? "Admin Dashboard" : undefined}
                className={`${styles.navLink} ${pathname.startsWith("/admin") && !pathname.startsWith("/admin/ai-key-policy") ? styles.navLinkActive : ""} ${collapsed ? styles.navLinkCollapsed : ""}`}
              >
                <ChartBar
                  size={18}
                  weight={
                    pathname.startsWith("/admin") &&
                    !pathname.startsWith("/admin/ai-key-policy")
                      ? "fill"
                      : "regular"
                  }
                  className={styles.navIcon}
                />
                {!collapsed && (
                  <span className={styles.navLabel}>Admin Dashboard</span>
                )}
              </Link>
              <Link
                href="/admin/ai-key-policy"
                title={collapsed ? "Central API — AI key policy" : undefined}
                aria-label="Central API (AI key policy)"
                className={`${styles.navLink} ${pathname.startsWith("/admin/ai-key-policy") ? styles.navLinkActive : ""} ${collapsed ? styles.navLinkCollapsed : ""}`}
              >
                <Key
                  size={18}
                  weight={
                    pathname.startsWith("/admin/ai-key-policy")
                      ? "fill"
                      : "regular"
                  }
                  className={styles.navIcon}
                />
                {!collapsed && (
                  <span className={styles.navLabel}>
                    Central API
                    <span className={styles.navHint}>AI key policy</span>
                  </span>
                )}
              </Link>
            </div>
          ) : null}
        </nav>
      </div>

      {/* Footer */}
      <div className={styles.footer}>
        <SidebarMoreFlyout
          compact={collapsed}
          onSupport={() => setSupportOpen(true)}
          onBugReport={() => setBugOpen(true)}
          onJoinClass={() => setClassOpen(true)}
        />
        <SupportChatModal open={supportOpen} onClose={() => setSupportOpen(false)} />
        <BugReportModal open={bugOpen} onClose={() => setBugOpen(false)} />
        <JoinClassModal open={classOpen} onClose={() => setClassOpen(false)} />

        <Link
          href="/dashboard/settings"
          title={collapsed ? "Settings" : undefined}
          className={`${styles.navLink} ${pathname.startsWith("/dashboard/settings") ? styles.navLinkActive : ""} ${collapsed ? styles.navLinkCollapsed : ""}`}
        >
          <Gear size={18} weight="regular" className={styles.navIcon} />
          {!collapsed && <span className={styles.navLabel}>Settings</span>}
        </Link>

        {/* Profile row */}
        <Link
          href="/dashboard/settings"
          className={`${styles.profileRow} ${collapsed ? styles.profileRowCollapsed : ""}`}
          title={collapsed ? nameLabel : undefined}
        >
          <div className={styles.avatar} aria-hidden>
            {displayAvatarUrl ? (
              <img src={displayAvatarUrl} alt="" className={styles.avatarImg} />
            ) : (
              <span className={styles.avatarInitial}>{avatarInitial}</span>
            )}
          </div>
          {!collapsed && (
            <div className={styles.profileMeta}>
              <div className={styles.userName}>{nameLabel}</div>
              <div className={styles.userEmail}>{displayEmail}</div>
              {memberSince ? (
                <div className={styles.memberSince}>Member since {memberSince}</div>
              ) : null}
            </div>
          )}
        </Link>

        <button
          type="button"
          className={`${styles.signOut} ${collapsed ? styles.signOutCollapsed : ""}`}
          onClick={() => void handleSignOut()}
          title={collapsed ? "Sign out" : undefined}
        >
          <SignOut size={16} />
          {!collapsed && "Sign out"}
        </button>
      </div>
    </aside>
  );
}
