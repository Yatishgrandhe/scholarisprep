import Navbar from "@/components/layout/Navbar";
import Footer from "@/components/layout/Footer";
import { MarketingScrollToTop } from "@/components/layout/MarketingScrollToTop";
import { SmoothScroll } from "@/components/layout/SmoothScroll";
import { ErrorBoundary } from "@/components/shared/ErrorBoundary";
import "@/styles/home.css";
import "@/styles/marketing.css";
// Landing rebuild (src/components/landing/) — additive, kept alongside
// marketing.css/home.css during migration. Remove the legacy imports above
// once every marketing page has moved to the `.landing` shell.
import "@/styles/landing-theme.css";
import "@/styles/landing.css";
import styles from "./layout.module.css";

export default function MarketingLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <SmoothScroll>
      <MarketingScrollToTop />
      {/* `.shell` lets layout.module.css detect a `.landing` page (home) via
          `:has()` and hide this default Navbar/Footer chrome — the landing
          page brings its own LandingNav/LandingFooter instead. */}
      <div className={styles.shell}>
        <Navbar />
        <main className={`${styles.main} marketing-content`}>
          <ErrorBoundary homeHref="/" homeLabel="Go home">
            {children}
          </ErrorBoundary>
        </main>
        <Footer />
      </div>
    </SmoothScroll>
  );
}
