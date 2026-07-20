import Link from "next/link";
import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import styles from "./LandingFooter.module.css";

type FooterLink = {
  href: string;
  label: string;
};

type FooterColumn = {
  title: string;
  links: FooterLink[];
};

// Blog has no `/blog/[slug]` route yet, so it is intentionally omitted here
// to avoid shipping a 404 link (see skills.md TechCommons research).
const footerColumns: FooterColumn[] = [
  {
    title: "Exams",
    links: [
      { href: "/exams/sat", label: "SAT Prep" },
      { href: "/exams/act", label: "ACT Prep" },
    ],
  },
  {
    title: "Tools",
    links: [
      { href: "/sat-score-calculator", label: "SAT score calculator" },
      { href: "/act-score-calculator", label: "ACT score calculator" },
    ],
  },
  {
    title: "Company",
    links: [
      { href: "/about", label: "About" },
      { href: "/contact", label: "Contact" },
      { href: "/learn", label: "Learn" },
    ],
  },
];

/** Static marketing footer for the redesigned landing page. No theme toggle — that stays in `LandingNav`. */
export function LandingFooter() {
  return (
    <footer className={styles.footer}>
      <div className={styles.inner}>
        <div className={styles.top}>
          <div className={styles.brand}>
            <BrandHomeLink className={styles.logoLockup} size="lg" />
            <p className={styles.tagline}>
              Ace every exam. Learn anything. Your AI tutor, always on.
            </p>
          </div>

          {footerColumns.map((column) => (
            <div key={column.title}>
              <span className={styles.colTitle}>{column.title}</span>
              <ul className={styles.links}>
                {column.links.map((link) => (
                  <li key={link.href}>
                    <Link href={link.href} className={styles.link}>
                      {link.label}
                    </Link>
                  </li>
                ))}
              </ul>
            </div>
          ))}
        </div>

        <p className={styles.disclaimer}>
          SAT® is a trademark registered by the College Board, which is not
          affiliated with and does not endorse Scholaris. Practice content is
          unofficial Digital SAT–style material; items may be remixed from
          open datasets (e.g. OpenSAT) or original items aligned to Digital
          SAT formats — not official College Board exams.
        </p>

        <div className={styles.bottom}>
          <p className={styles.copyright}>
            © {new Date().getFullYear()} Scholaris. All rights reserved.
          </p>
          <div className={styles.legal}>
            <Link href="/legal/terms" className={styles.legalLink}>
              Terms of Service
            </Link>
            <Link href="/legal/privacy" className={styles.legalLink}>
              Privacy Policy
            </Link>
            <Link href="/auth/login" className={styles.legalLink}>
              Log in
            </Link>
          </div>
        </div>
      </div>
    </footer>
  );
}

export default LandingFooter;
