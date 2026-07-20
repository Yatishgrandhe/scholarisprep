import Link from "next/link";
import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import styles from "./Footer.module.css";

const footerColumns = [
  {
    title: "Exams",
    links: [
      { href: "/exams/sat", label: "SAT Prep" },
      { href: "/exams/act", label: "ACT Prep" },
    ],
  },
  {
    title: "Product",
    links: [
      { href: "/learn", label: "Courses" },
      { href: "/sat-score-calculator", label: "SAT score calculator" },
      { href: "/act-score-calculator", label: "ACT score calculator" },
    ],
  },
  {
    title: "Company",
    links: [
      { href: "/about", label: "About" },
      { href: "/blog", label: "Blog" },
      { href: "/contact", label: "Contact" },
    ],
  },
];

export default function Footer() {
  return (
    <footer className={styles.footer}>
      <div className={styles.footerInner}>
        <div className={styles.footerTop}>
          <div className={styles.footerBrand}>
            <BrandHomeLink className={styles.footerLogoLockup} size="lg" />
            <p className={styles.footerTagline}>
              Ace every exam. Learn anything. Your AI tutor, always on.
            </p>
          </div>

          {footerColumns.map((column) => (
            <div key={column.title}>
              <span className={styles.footerColTitle}>{column.title}</span>
              <ul className={styles.footerLinks}>
                {column.links.map((link) => (
                  <li key={link.href}>
                    <Link href={link.href} className={styles.footerLink}>
                      {link.label}
                    </Link>
                  </li>
                ))}
              </ul>
            </div>
          ))}
        </div>

        <p className={styles.footerDisclaimer}>
          SAT® is a trademark registered by the College Board, which is not
          affiliated with and does not endorse Scholaris. Practice content is
          unofficial Digital SAT–style material; items may be remixed from open
          datasets (e.g. OpenSAT) or original items aligned to Digital SAT
          formats — not official College Board exams.
        </p>

        <div className={styles.footerBottom}>
          <p className={styles.footerCopyright}>
            © {new Date().getFullYear()} Scholaris. All rights reserved.
          </p>
          <div className={styles.footerLegal}>
            <Link href="/legal/terms" className={styles.footerLegalLink}>
              Terms of Service
            </Link>
            <Link href="/legal/privacy" className={styles.footerLegalLink}>
              Privacy Policy
            </Link>
          </div>
        </div>
      </div>
    </footer>
  );
}
