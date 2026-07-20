"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useEffect, useId, useRef, useState, useSyncExternalStore } from "react";
import {
  ArrowRight,
  Calculator,
  CaretDown,
  Exam,
  List,
  PencilSimple,
  X,
} from "@phosphor-icons/react";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import {
  Sheet,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";
import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import { cn } from "@/lib/utils";
import styles from "./LandingNav.module.css";

const examLinks = [
  {
    label: "SAT Prep",
    description: "13,000+ exam-style questions",
    href: "/exams/sat",
    icon: Exam,
    accentClass: styles.accentSat,
  },
  {
    label: "ACT Prep",
    description: "Section drills & pacing",
    href: "/exams/act",
    icon: PencilSimple,
    accentClass: styles.accentAct,
  },
  {
    label: "SAT Score Calculator",
    description: "Estimate your SAT score free",
    href: "/sat-score-calculator",
    icon: Calculator,
    accentClass: styles.accentCalc,
  },
  {
    label: "ACT Score Calculator",
    description: "Estimate your ACT composite free",
    href: "/act-score-calculator",
    icon: Calculator,
    accentClass: styles.accentCalc,
  },
];

const navLinks = [
  { label: "Learn", href: "/learn" },
  { label: "Blog", href: "/blog" },
];

function subscribeToScroll(onChange: () => void): () => void {
  window.addEventListener("scroll", onChange, { passive: true });
  return () => window.removeEventListener("scroll", onChange);
}

function useScrolled(): boolean {
  return useSyncExternalStore(
    subscribeToScroll,
    () => window.scrollY > 12,
    () => false,
  );
}

/**
 * Full-bleed marketing rail nav: transparent over the hero, glass on scroll.
 * Shows the logo mark + "Scholaris" wordmark. Unlike the app `Navbar`
 * (floating pill island), this stays edge-to-edge over a full-bleed hero.
 */
export default function LandingNav() {
  const pathname = usePathname();
  const scrolled = useScrolled();
  const [mobileOpen, setMobileOpen] = useState(false);
  const [examsOpen, setExamsOpen] = useState(false);
  const examsId = useId();
  const dropdownRef = useRef<HTMLLIElement>(null);

  const isExamActive = examLinks.some((link) => pathname === link.href);

  useEffect(() => {
    if (!examsOpen) return;

    function handlePointerDown(event: MouseEvent) {
      if (
        dropdownRef.current &&
        !dropdownRef.current.contains(event.target as Node)
      ) {
        setExamsOpen(false);
      }
    }

    function handleKeyDown(event: KeyboardEvent) {
      if (event.key === "Escape") {
        setExamsOpen(false);
      }
    }

    document.addEventListener("mousedown", handlePointerDown);
    document.addEventListener("keydown", handleKeyDown);
    return () => {
      document.removeEventListener("mousedown", handlePointerDown);
      document.removeEventListener("keydown", handleKeyDown);
    };
  }, [examsOpen]);

  const examsTriggerId = `${examsId}-trigger`;
  const examsPanelId = `${examsId}-panel`;

  return (
    <header
      data-landing-nav
      data-scrolled={scrolled ? "true" : "false"}
      className={cn(styles.nav, scrolled && styles.navScrolled)}
    >
      <div className={styles.rail}>
        <BrandHomeLink className={styles.logo} size="md" />

        <nav aria-label="Main navigation" className={styles.navCenter}>
          <ul className={styles.navLinks}>
            <li
              className={styles.dropdown}
              ref={dropdownRef}
              onMouseEnter={() => setExamsOpen(true)}
              onMouseLeave={() => setExamsOpen(false)}
            >
              <button
                type="button"
                id={examsTriggerId}
                className={cn(
                  styles.navLink,
                  isExamActive && styles.navLinkActive,
                )}
                aria-haspopup="true"
                aria-expanded={examsOpen}
                aria-controls={examsPanelId}
                onClick={() => setExamsOpen((open) => !open)}
              >
                Exams
                <CaretDown
                  size={12}
                  weight="bold"
                  className={cn(
                    styles.navLinkArrow,
                    examsOpen && styles.navLinkArrowOpen,
                  )}
                  aria-hidden
                />
              </button>
              {examsOpen && (
                <div
                  id={examsPanelId}
                  role="menu"
                  aria-labelledby={examsTriggerId}
                  className={styles.examsPanel}
                >
                  {examLinks.map((link) => {
                    const Icon = link.icon;
                    return (
                      <Link
                        key={link.href}
                        href={link.href}
                        role="menuitem"
                        className={styles.examItem}
                        onClick={() => setExamsOpen(false)}
                      >
                        <span
                          className={cn(styles.examIcon, link.accentClass)}
                        >
                          <Icon size={17} weight="duotone" aria-hidden />
                        </span>
                        <span className={styles.examText}>
                          <span className={styles.examLabel}>
                            {link.label}
                          </span>
                          <span className={styles.examDescription}>
                            {link.description}
                          </span>
                        </span>
                        <ArrowRight
                          size={13}
                          weight="bold"
                          className={styles.examArrow}
                          aria-hidden
                        />
                      </Link>
                    );
                  })}
                </div>
              )}
            </li>
            {navLinks.map((link) => (
              <li key={link.href}>
                <Link
                  href={link.href}
                  className={cn(
                    styles.navLink,
                    pathname === link.href && styles.navLinkActive,
                  )}
                >
                  {link.label}
                </Link>
              </li>
            ))}
          </ul>
        </nav>

        <div className={styles.navRight}>
          <ThemeToggle className={styles.themeToggle} />
          <Link href="/auth/login" className={styles.loginLink}>
            Log in
          </Link>
          <Link href="/auth/signup" className={styles.signupCta}>
            Get started
            <ArrowRight size={14} weight="bold" aria-hidden />
          </Link>

          <Sheet open={mobileOpen} onOpenChange={setMobileOpen}>
            <SheetTrigger
              className={styles.mobileMenuButton}
              aria-label={mobileOpen ? "Close menu" : "Open menu"}
            >
              {mobileOpen ? (
                <X size={20} aria-hidden />
              ) : (
                <List size={20} aria-hidden />
              )}
            </SheetTrigger>
            <SheetContent
              side="right"
              className={styles.mobileSheetContent}
              showCloseButton={false}
            >
              <SheetHeader className="sr-only">
                <SheetTitle>Navigation menu</SheetTitle>
              </SheetHeader>
              <nav className={styles.mobileNav} aria-label="Mobile navigation">
                <BrandHomeLink
                  className={styles.mobileBrand}
                  size="md"
                  onClick={() => setMobileOpen(false)}
                />
                <p className={styles.mobileGroupLabel}>Exams</p>
                <div className={styles.mobileExamGrid}>
                  {examLinks.map((link) => {
                    const Icon = link.icon;
                    return (
                      <Link
                        key={link.href}
                        href={link.href}
                        className={styles.mobileExamCard}
                        onClick={() => setMobileOpen(false)}
                      >
                        <span
                          className={cn(styles.examIcon, link.accentClass)}
                        >
                          <Icon size={16} weight="duotone" aria-hidden />
                        </span>
                        {link.label}
                      </Link>
                    );
                  })}
                </div>
                <p className={styles.mobileGroupLabel}>Explore</p>
                {navLinks.map((link) => (
                  <Link
                    key={link.href}
                    href={link.href}
                    className={styles.mobileNavLink}
                    onClick={() => setMobileOpen(false)}
                  >
                    {link.label}
                  </Link>
                ))}
                <div className={styles.mobileFooter}>
                  <ThemeToggle className={styles.mobileThemeToggle} />
                  <div className={styles.mobileCtas}>
                    <Link
                      href="/auth/login"
                      className={styles.mobileLogin}
                      onClick={() => setMobileOpen(false)}
                    >
                      Log in
                    </Link>
                    <Link
                      href="/auth/signup"
                      className={styles.mobileSignup}
                      onClick={() => setMobileOpen(false)}
                    >
                      Get started free
                    </Link>
                  </div>
                </div>
              </nav>
            </SheetContent>
          </Sheet>
        </div>
      </div>
    </header>
  );
}
