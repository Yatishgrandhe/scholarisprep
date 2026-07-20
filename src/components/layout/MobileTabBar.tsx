"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import {
  House,
  Lightning,
  BookOpen,
  ChatsCircle,
  ChartBar,
  DotsThree,
  Gear,
  Key,
  ArrowSquareOut,
  X,
} from "@phosphor-icons/react";
import {
  Sheet,
  SheetContent,
  SheetHeader,
  SheetTitle,
} from "@/components/ui/sheet";
import { useState } from "react";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import {
  getMoreLinksForExam,
  getNavForExam,
  type MoreLinkItem,
} from "@/lib/dashboard/navConfig";
import { useAuth } from "@/hooks/useAuth";
import {
  formatMemberSince,
  getDisplayNameLabel,
  getProfileAvatarInitial,
} from "@/lib/dashboard/userDisplay";
import { BugReportModal } from "@/components/dashboard/BugReportModal";
import { JoinClassModal } from "@/components/dashboard/JoinClassModal";
import { SupportChatModal } from "@/components/dashboard/SupportChatModal";
import { isExamFullscreenRoute } from "@/lib/dashboard/shellRoutes";
import { isApOrIbExam } from "@/lib/apIbCatalog";
import { isTutorRoute, tutorHref, tutorTabLabel } from "@/lib/tutor/routes";
import styles from "./MobileTabBar.module.css";

const PRIMARY_TAB_DEFS = [
  { id: "home", href: "/dashboard", label: "Home", icon: House, match: "exact" as const },
  {
    id: "bank",
    href: "/dashboard/practice/bank",
    label: "Bank",
    icon: BookOpen,
    match: "prefix" as const,
  },
  {
    id: "drill",
    href: "/dashboard/question-rush",
    label: "Drill",
    icon: Lightning,
    match: "prefix" as const,
    satOnly: true,
  },
  {
    id: "tutor",
    href: null as string | null,
    label: null as string | null,
    icon: ChatsCircle,
    match: "prefix" as const,
  },
];

function isActive(pathname: string, href: string, match: "exact" | "prefix") {
  const path = href.split("?")[0]!;
  if (match === "exact") return pathname === path;
  return pathname === path || pathname.startsWith(`${path}/`);
}

function shouldHideTabBar(pathname: string) {
  return isExamFullscreenRoute(pathname);
}

export function MobileTabBar() {
  const pathname = usePathname();
  const [moreOpen, setMoreOpen] = useState(false);
  const [bugOpen, setBugOpen] = useState(false);
  const [classOpen, setClassOpen] = useState(false);
  const [supportOpen, setSupportOpen] = useState(false);
  const examType = useActiveExamType();
  const { user, profile, displayName, displayEmail, displayAvatarUrl } = useAuth();
  const avatarInitial = getProfileAvatarInitial(displayEmail);
  const nameLabel = getDisplayNameLabel(displayName, displayEmail);
  const memberSince = formatMemberSince(profile?.created_at, user?.created_at);
  const isPlatformAdmin = profile?.role === "platform_admin";
  const navSections = getNavForExam(examType);
  const moreSections = getMoreLinksForExam(examType);

  if (shouldHideTabBar(pathname)) {
    return null;
  }

  const handleMoreClick = (item: MoreLinkItem) => {
    if (item.onClick === "bug") {
      setBugOpen(true);
      setMoreOpen(false);
      return;
    }
    if (item.onClick === "join-class") {
      setClassOpen(true);
      setMoreOpen(false);
      return;
    }
    if (item.onClick === "support") {
      setSupportOpen(true);
      setMoreOpen(false);
    }
  };

  // Speed Drill is SAT/ACT-oriented; hide for ACT (legacy) and AP/IB courses.
  const tabs = PRIMARY_TAB_DEFS.filter(
    (tab) =>
      !tab.satOnly || (examType !== "ACT" && !isApOrIbExam(examType)),
  ).map((tab) =>
    tab.id === "tutor"
      ? {
          ...tab,
          href: tutorHref(examType),
          label: tutorTabLabel(examType),
        }
      : tab,
  );

  const extraNav = navSections
    .flatMap((s) => s.items)
    .filter(
      (item) =>
        !tabs.some((t) => t.href === item.href) &&
        item.href !== "/dashboard/settings",
    );

  return (
    <>
      <nav className={styles.tabBar} aria-label="Dashboard navigation">
        {tabs.map(({ href, label, icon: Icon, match, id }) => {
          const active =
            id === "tutor"
              ? isTutorRoute(pathname)
              : isActive(pathname, href!, match);
          return (
            <Link
              key={id}
              href={href!}
              className={`${styles.tab} ${active ? styles.tabActive : ""}`}
              aria-current={active ? "page" : undefined}
            >
              <Icon size={22} weight={active ? "fill" : "regular"} aria-hidden />
              <span className={styles.tabLabel}>{label}</span>
            </Link>
          );
        })}
        <button
          type="button"
          className={styles.tab}
          onClick={() => setMoreOpen(true)}
          aria-haspopup="dialog"
          aria-expanded={moreOpen}
        >
          <DotsThree size={22} weight="regular" aria-hidden />
          <span className={styles.tabLabel}>More</span>
        </button>
      </nav>

      <Sheet open={moreOpen} onOpenChange={setMoreOpen}>
        <SheetContent
          side="bottom"
          className={styles.moreSheet}
          showCloseButton={false}
        >
          <div className={styles.moreHandle} aria-hidden />
          <SheetHeader className={styles.moreHeader}>
            <SheetTitle className={styles.moreTitle}>More</SheetTitle>
            <button
              type="button"
              className={styles.moreClose}
              onClick={() => setMoreOpen(false)}
              aria-label="Close"
            >
              <X size={18} weight="bold" aria-hidden />
            </button>
          </SheetHeader>
          <div className={styles.moreNav}>
            {extraNav.length > 0 ? (
              <div className={styles.moreGroup}>
                {extraNav.map(({ href, label, icon: Icon }) => {
                  const active =
                    pathname === href || pathname.startsWith(`${href}/`);
                  return (
                    <Link
                      key={href}
                      href={href}
                      className={`${styles.moreLink} ${active ? styles.moreLinkActive : ""}`}
                      onClick={() => setMoreOpen(false)}
                    >
                      <Icon
                        size={20}
                        weight={active ? "fill" : "regular"}
                        className={styles.moreLinkIcon}
                        aria-hidden
                      />
                      <span className={styles.moreLinkLabel}>{label}</span>
                    </Link>
                  );
                })}
              </div>
            ) : null}
            {isPlatformAdmin ? (
              <div className={styles.moreSection}>
                <p className={styles.moreSectionLabel}>Admin</p>
                <div className={styles.moreSectionBody}>
                  <Link
                    href="/admin"
                    className={`${styles.moreLink} ${pathname.startsWith("/admin") && !pathname.startsWith("/admin/ai-key-policy") ? styles.moreLinkActive : ""}`}
                    onClick={() => setMoreOpen(false)}
                  >
                    <ChartBar
                      size={20}
                      weight={
                        pathname.startsWith("/admin") &&
                        !pathname.startsWith("/admin/ai-key-policy")
                          ? "fill"
                          : "regular"
                      }
                      className={styles.moreLinkIcon}
                      aria-hidden
                    />
                    <span className={styles.moreLinkLabel}>Admin Dashboard</span>
                  </Link>
                  <Link
                    href="/admin/ai-key-policy"
                    className={`${styles.moreLink} ${pathname.startsWith("/admin/ai-key-policy") ? styles.moreLinkActive : ""}`}
                    title="Central API — AI key policy"
                    aria-label="Central API (AI key policy)"
                    onClick={() => setMoreOpen(false)}
                  >
                    <Key
                      size={20}
                      weight={
                        pathname.startsWith("/admin/ai-key-policy")
                          ? "fill"
                          : "regular"
                      }
                      className={styles.moreLinkIcon}
                      aria-hidden
                    />
                    <span className={styles.moreLinkStack}>
                      Central API
                      <span className={styles.moreLinkHint}>AI key policy</span>
                    </span>
                  </Link>
                </div>
              </div>
            ) : null}
            {moreSections.map((section) => (
              <div key={section.id} className={styles.moreSection}>
                <p className={styles.moreSectionLabel}>{section.label}</p>
                <div className={styles.moreSectionBody}>
                  {section.items.map((item) =>
                    item.href ? (
                      item.external ? (
                        <a
                          key={item.id}
                          href={item.href}
                          className={styles.moreLink}
                          target="_blank"
                          rel="noopener noreferrer"
                          onClick={() => setMoreOpen(false)}
                        >
                          <span className={styles.moreLinkLabel}>{item.label}</span>
                          <ArrowSquareOut
                            size={14}
                            className={styles.moreExternal}
                            aria-hidden
                          />
                        </a>
                      ) : (
                        <Link
                          key={item.id}
                          href={item.href}
                          className={styles.moreLink}
                          onClick={() => setMoreOpen(false)}
                        >
                          <span className={styles.moreLinkLabel}>{item.label}</span>
                        </Link>
                      )
                    ) : (
                      <button
                        key={item.id}
                        type="button"
                        className={styles.moreLink}
                        onClick={() => handleMoreClick(item)}
                      >
                        <span className={styles.moreLinkLabel}>{item.label}</span>
                      </button>
                    ),
                  )}
                </div>
              </div>
            ))}
            <div className={styles.profileRow}>
              <div className={styles.avatar} aria-hidden>
                {displayAvatarUrl ? (
                  <img src={displayAvatarUrl} alt="" className={styles.avatarImg} />
                ) : (
                  <span className={styles.avatarInitial}>{avatarInitial}</span>
                )}
              </div>
              <div className={styles.profileMeta}>
                <p className={styles.profileName}>{nameLabel}</p>
                <p className={styles.profileEmail}>{displayEmail}</p>
                {memberSince ? (
                  <p className={styles.profileMemberSince}>
                    Member since {memberSince}
                  </p>
                ) : null}
              </div>
            </div>
            <div className={styles.moreFooter}>
              <Link
                href="/dashboard/settings"
                className={styles.moreLink}
                onClick={() => setMoreOpen(false)}
              >
                <Gear size={20} className={styles.moreLinkIcon} aria-hidden />
                <span className={styles.moreLinkLabel}>Settings</span>
              </Link>
            </div>
          </div>
        </SheetContent>
      </Sheet>
      <SupportChatModal open={supportOpen} onClose={() => setSupportOpen(false)} />
      <BugReportModal open={bugOpen} onClose={() => setBugOpen(false)} />
      <JoinClassModal open={classOpen} onClose={() => setClassOpen(false)} />
    </>
  );
}
