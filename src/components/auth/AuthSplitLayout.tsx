import Image from "next/image";
import Link from "next/link";
import {
  ArrowLeft,
  ChartLineUp,
  CheckCircle,
  LockKey,
  Sparkle,
  Star,
  Timer,
} from "@phosphor-icons/react/dist/ssr";
import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import {
  portraitFor,
  unsplashCropUrl,
  unsplashThumbUrl,
  type UnsplashImage,
} from "@/lib/unsplash";
import { AuthThemeBar } from "@/components/auth/AuthThemeBar";
import splitStyles from "./auth-split.module.css";

const CHECKLIST = [
  {
    icon: Timer,
    title: "Real test-day interface",
    description:
      "The same layout, timer, and tools you'll see on exam day — not a workbook.",
  },
  {
    icon: Sparkle,
    title: "Scho explains every miss",
    description: "An AI tutor that breaks down the why, not just the what.",
  },
  {
    icon: ChartLineUp,
    title: "One plan across exams",
    description:
      "13,000+ exam-style questions spanning Digital SAT, ACT, AP & IB.",
  },
] as const;

type AuthSplitLayoutProps = {
  eyebrow: string;
  title: string;
  subtitle?: string;
  quote?: string;
  attribution?: string;
  image?: UnsplashImage;
  /** @deprecated Overlay tags removed to match landing (no hero badges). Kept for call-site compat. */
  imageTag?: string;
  children: React.ReactNode;
};

export function AuthSplitLayout({
  eyebrow,
  title,
  subtitle,
  quote = "Scholaris turned practice into progress — my score climbed fast once I could see exactly what to fix.",
  attribution = "Maya K., Scholaris student",
  image,
  imageTag: _imageTag,
  children,
}: AuthSplitLayoutProps) {
  void _imageTag;
  const portrait = portraitFor(attribution);

  return (
    <div className={`landing ${splitStyles.page}`}>
      <header className={splitStyles.topbar}>
        <BrandHomeLink size="lg" />
        <div className={splitStyles.topbarActions}>
          <Link href="/" className={splitStyles.backLink}>
            <ArrowLeft size={14} weight="bold" aria-hidden />
            Back to home
          </Link>
          <AuthThemeBar />
        </div>
      </header>

      <main className={splitStyles.layout}>
        <section className={splitStyles.showcase} aria-label="Why Scholaris">
          <p className={splitStyles.brandSignal}>Scholaris</p>
          <h2 className={splitStyles.showcaseTitle}>
            From Digital SAT to AP —{" "}
            <em>one tutor, your weak spots</em>.
          </h2>
          <p className={splitStyles.showcaseLead}>
            The whole site is free. No credit card. Practice that feels like
            test day, with Scho on every miss.
          </p>

          {image ? (
            <div className={splitStyles.heroFrame}>
              <Image
                src={unsplashCropUrl(image.src, 900)}
                alt={image.alt}
                fill
                sizes="(min-width: 1024px) 480px, 0px"
                className={splitStyles.heroImage}
                priority
              />
              <div className={splitStyles.heroFrameOverlay} aria-hidden />
            </div>
          ) : null}

          <ul className={splitStyles.checklist}>
            {CHECKLIST.map(({ icon: Icon, title: itemTitle, description }) => (
              <li key={itemTitle} className={splitStyles.checkItem}>
                <span className={splitStyles.checkIcon}>
                  <Icon size={18} weight="duotone" aria-hidden />
                </span>
                <span>
                  <span className={splitStyles.checkTitle}>{itemTitle}</span>
                  <span className={splitStyles.checkDescription}>
                    {description}
                  </span>
                </span>
              </li>
            ))}
          </ul>

          <figure className={splitStyles.testimonial}>
            <Image
              src={unsplashThumbUrl(portrait.src, 96, 96)}
              alt={portrait.alt}
              width={48}
              height={48}
              className={splitStyles.testimonialAvatar}
            />
            <div>
              <span className={splitStyles.stars} aria-label="5 out of 5 stars">
                {Array.from({ length: 5 }).map((_, i) => (
                  <Star key={i} size={13} weight="fill" aria-hidden />
                ))}
              </span>
              <blockquote className={splitStyles.testimonialQuote}>
                &ldquo;{quote}&rdquo;
              </blockquote>
              <figcaption className={splitStyles.testimonialAttribution}>
                {attribution}
              </figcaption>
            </div>
          </figure>
        </section>

        <section className={splitStyles.cardColumn}>
          <div className={splitStyles.card}>
            <div className={splitStyles.cardHairline} aria-hidden />
            <p className={splitStyles.eyebrow}>{eyebrow}</p>
            <h1 className={splitStyles.headline}>{title}</h1>
            {subtitle && <p className={splitStyles.subheadline}>{subtitle}</p>}
            <div className={splitStyles.formBody}>{children}</div>
          </div>
          <p className={splitStyles.secureNote}>
            <LockKey size={13} weight="fill" aria-hidden />
            Protected by Supabase Auth. We never share your data.
          </p>
          <p className={splitStyles.trustRow}>
            <CheckCircle size={13} weight="fill" aria-hidden />
            Free forever · No credit card required
          </p>
        </section>
      </main>
    </div>
  );
}
