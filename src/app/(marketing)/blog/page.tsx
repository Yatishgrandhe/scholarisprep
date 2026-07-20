import type { Metadata } from "next";
import Image from "next/image";
import Link from "next/link";
import { BaseCard, DarkCard, cardGrids } from "@/components/marketing/cards";
import { PageContent, PageHero, PageSection } from "@/components/marketing/PageShell";
import { createMarketingMetadata } from "@/lib/seo/marketing-metadata";
import { blogThumb, unsplashThumbUrl } from "@/lib/unsplash";
import styles from "./blog.module.css";

export const metadata: Metadata = createMarketingMetadata({
  title: "Blog",
  description: "SAT tips, study strategies, and Scholaris product updates.",
  path: "/blog",
});

const posts = [
  {
    slug: "digital-sat-2026-guide",
    title: "The Complete Guide to the Digital SAT in 2026",
    excerpt:
      "Everything changed with the adaptive format. Here's how to study for the new test structure.",
    category: "SAT Tips",
    date: "May 10, 2026",
    featured: true,
  },
  {
    slug: "spaced-repetition-science",
    title: "Why Spaced Repetition Beats Cramming",
    excerpt: "The neuroscience behind effective study schedules, and how AI can automate them.",
    category: "Study Strategy",
    date: "May 3, 2026",
    featured: false,
  },
  {
    slug: "introducing-scho-tutor",
    title: "Meet Scho: Your 24/7 AI Tutor",
    excerpt: "Scholaris launches conversational tutoring that explains every mistake.",
    category: "Product Updates",
    date: "Apr 28, 2026",
    featured: false,
  },
  {
    slug: "act-pacing-tips",
    title: "5 ACT Pacing Tips from Top Scorers",
    excerpt: "Time management, section order, and practice strategies that actually move your composite.",
    category: "ACT Tips",
    date: "Apr 15, 2026",
    featured: false,
  },
];

const categories = ["All", "SAT Tips", "ACT Tips", "Study Strategy", "Product Updates"];

export default function BlogPage() {
  const featured = posts.find((p) => p.featured)!;
  const rest = posts.filter((p) => !p.featured);

  return (
    <PageContent>
      <PageHero
        title="The Scholaris Blog"
        subtitle="Study smarter with tips, strategies, and product news."
      />

      <PageSection>
        <div className={styles.categories}>
          {categories.map((cat) => (
            <span key={cat} className={styles.category}>
              {cat}
            </span>
          ))}
        </div>

        <DarkCard
          title={featured.title}
          description={featured.excerpt}
          ctaLabel="Read article"
          ctaHref={`/blog/${featured.slug}`}
          className={styles.featuredCard}
        />

        <div className={`${cardGrids.grid} ${cardGrids.cols3}`}>
          {rest.map((post) => (
            <Link key={post.slug} href={`/blog/${post.slug}`} className={styles.cardLink}>
              <BaseCard
                meta={post.category}
                title={post.title}
                description={post.excerpt}
                date={post.date}
                thumbnail={
                  <Image
                    src={unsplashThumbUrl(blogThumb(post.slug).src, 640, 360)}
                    alt={blogThumb(post.slug).alt}
                    width={640}
                    height={360}
                    style={{
                      display: "block",
                      width: "100%",
                      height: "100%",
                      objectFit: "cover",
                    }}
                  />
                }
              />
            </Link>
          ))}
        </div>
      </PageSection>
    </PageContent>
  );
}
