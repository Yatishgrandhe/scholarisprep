"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useState, useSyncExternalStore } from "react";
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
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet";
import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import { cn } from "@/lib/utils";
import styles from "./Navbar.module.css";

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

export default function Navbar() {
  const pathname = usePathname();
  const scrolled = useScrolled();
  const [mobileOpen, setMobileOpen] = useState(false);
  const [examsOpen, setExamsOpen] = useState(false);

  const isExamActive = examLinks.some((link) => pathname === link.href);

  return (
    <header className={styles.navbar}>
      <div
        className={cn(styles.island, scrolled && styles.islandScrolled)}
      >
        <BrandHomeLink className={styles.logo} size="sm" />

        <nav aria-label="Main navigation" className={styles.navCenter}>
          <ul className={styles.navLinks}>
            <li
              className={styles.dropdown}
              onMouseEnter={() => setExamsOpen(true)}
              onMouseLeave={() => setExamsOpen(false)}
            >
              <Link
                href="/exams/sat"
                className={cn(
                  styles.navLink,
                  isExamActive && styles.navLinkActive,
                )}
                aria-expanded={examsOpen}
              >
                Exams
                <CaretDown
                  size={12}
                  weight="bold"
                  className={cn(
                    styles.navLinkArrow,
                    examsOpen && styles.navLinkArrowOpen,
                  )}
                />
              </Link>
              {examsOpen && (
                <div className={styles.megaMenu}>
                  {examLinks.map((link) => {
                    const Icon = link.icon;
                    return (
                      <Link
                        key={link.href}
                        href={link.href}
                        className={styles.megaItem}
                        onClick={() => setExamsOpen(false)}
                      >
                        <span
                          className={cn(styles.megaIcon, link.accentClass)}
                        >
                          <Icon size={17} weight="duotone" />
                        </span>
                        <span className={styles.megaText}>
                          <span className={styles.megaLabel}>
                            {link.label}
                          </span>
                          <span className={styles.megaDescription}>
                            {link.description}
                          </span>
                        </span>
                        <ArrowRight
                          size={13}
                          weight="bold"
                          className={styles.megaArrow}
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
          <ThemeToggle />
          <Link href="/auth/login" className={styles.loginButton}>
            Log in
          </Link>
          <Link href="/auth/signup" className={styles.signupButton}>
            Start free
            <ArrowRight size={14} weight="bold" />
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
                          className={cn(styles.megaIcon, link.accentClass)}
                        >
                          <Icon size={16} weight="duotone" />
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
                    Start practicing free
                  </Link>
                </div>
              </nav>
            </SheetContent>
          </Sheet>
        </div>
      </div>
    </header>
  );
}
