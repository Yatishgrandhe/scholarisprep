/**
 * Curated Unsplash URLs for auth/marketing imagery.
 * No API key required — stable photo IDs from images.unsplash.com.
 * Every ID below is verified to resolve (HTTP 200).
 *
 * Optional: set NEXT_PUBLIC_UNSPLASH_ACCESS_KEY and use the search API
 * for dynamic results.
 */

export type UnsplashImage = {
  src: string;
  alt: string;
  credit: string;
};

/* ---------------- Auth heroes ---------------- */

/**
 * Students collaborating — signup hero.
 * Locally generated, brand-aligned hero (public/auth/signup-hero.jpg).
 */
export const AUTH_SIGNUP_IMAGE: UnsplashImage = {
  src: "/auth/signup-hero.jpg",
  alt: "Diverse high-school students studying together with laptops in a sunlit library",
  credit: "Scholaris",
};

/**
 * Student focused at a desk — login hero.
 * Locally generated, brand-aligned hero (public/auth/login-hero.jpg).
 */
export const AUTH_LOGIN_IMAGE: UnsplashImage = {
  src: "/auth/login-hero.jpg",
  alt: "Focused student practicing on a laptop at a desk in warm window light",
  credit: "Scholaris",
};

/** Back-compat alias (used by older imports). */
export const AUTH_HERO_IMAGE = AUTH_SIGNUP_IMAGE;

/**
 * Open books on a desk — forgot-password page background.
 * https://unsplash.com/photos/8bGhH0p48p0
 */
export const AUTH_FORGOT_IMAGE: UnsplashImage = {
  src: "https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8",
  alt: "Open books and notes on a desk in warm natural light",
  credit: "Unsplash",
};

/** Students studying — marketing homepage hero (legacy). */
export const HOME_HERO_IMAGE: UnsplashImage = {
  src: "https://images.unsplash.com/photo-1523240795612-9a054b0db644",
  alt: "Students collaborating over laptops in a bright campus workspace",
  credit: "Unsplash",
};

/* ---------------- Content thumbnails ---------------- */

/** Study/education photos for course & content cards. */
export const COURSE_THUMB_IMAGES: UnsplashImage[] = [
  {
    src: "https://images.unsplash.com/photo-1635070041078-e363dbe005cb",
    alt: "Mathematical formulas written on a chalkboard",
    credit: "Unsplash",
  },
  {
    src: "https://images.unsplash.com/photo-1427504494785-3a9ca7044f45",
    alt: "Stack of books in a library",
    credit: "Unsplash",
  },
  {
    src: "https://images.unsplash.com/photo-1517245386807-bb43f82c33c4",
    alt: "Instructor presenting to a class",
    credit: "Unsplash",
  },
  {
    src: "https://images.unsplash.com/photo-1488190211105-8b0e65b80b4e",
    alt: "Hand writing notes in a notebook",
    credit: "Unsplash",
  },
  {
    src: "https://images.unsplash.com/photo-1519389950473-47ba0277781c",
    alt: "Study group working on laptops around a table",
    credit: "Unsplash",
  },
  {
    src: "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40",
    alt: "Planning notes and laptop on a desk",
    credit: "Unsplash",
  },
  {
    src: "https://images.unsplash.com/photo-1513258496099-48168024aec0",
    alt: "Student reading with study materials",
    credit: "Unsplash",
  },
  {
    src: "https://images.unsplash.com/photo-1509062522246-3755977927d7",
    alt: "Teacher helping students in a classroom",
    credit: "Unsplash",
  },
];

/** Blog post thumbnails keyed by slug, with a deterministic fallback. */
const BLOG_THUMBS: Record<string, UnsplashImage> = {
  "digital-sat-2026-guide": {
    src: "https://images.unsplash.com/photo-1488190211105-8b0e65b80b4e",
    alt: "Hand writing test prep notes in a notebook",
    credit: "Unsplash",
  },
  "spaced-repetition-science": {
    src: "https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8",
    alt: "Open books and notes on a desk",
    credit: "Unsplash",
  },
  "introducing-scho-tutor": {
    src: "https://images.unsplash.com/photo-1519389950473-47ba0277781c",
    alt: "Students learning together on laptops",
    credit: "Unsplash",
  },
  "jamb-utme-prep-tips": {
    src: "https://images.unsplash.com/photo-1503676260728-1c00da094a0b",
    alt: "Students studying in a classroom",
    credit: "Unsplash",
  },
};

/** Portrait photos for team/testimonial avatars. */
export const PORTRAIT_IMAGES: UnsplashImage[] = [
  {
    src: "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
    alt: "Portrait of a smiling woman",
    credit: "Unsplash",
  },
  {
    src: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
    alt: "Portrait of a man outdoors",
    credit: "Unsplash",
  },
  {
    src: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80",
    alt: "Portrait of a professional woman",
    credit: "Unsplash",
  },
  {
    src: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde",
    alt: "Portrait of a young man",
    credit: "Unsplash",
  },
];

/* ---------------- URL helpers ---------------- */

export function unsplashCropUrl(src: string, width = 1200): string {
  // Local assets (e.g. generated hero images in /public) are served and
  // optimized by next/image directly — don't append Unsplash query params.
  if (src.startsWith("/")) return src;
  return `${src}?auto=format&fit=crop&w=${width}&q=80`;
}

/** Fixed-aspect crop (e.g. 16:9 card thumbnails). */
export function unsplashThumbUrl(
  src: string,
  width = 640,
  height = 360,
): string {
  return `${src}?auto=format&fit=crop&w=${width}&h=${height}&q=75`;
}

function hashKey(key: string): number {
  let hash = 0;
  for (let i = 0; i < key.length; i++) {
    hash = (hash * 31 + key.charCodeAt(i)) | 0;
  }
  return Math.abs(hash);
}

/** Deterministic course thumbnail for a slug (stable across renders). */
export function courseThumb(key: string): UnsplashImage {
  return COURSE_THUMB_IMAGES[hashKey(key) % COURSE_THUMB_IMAGES.length]!;
}

/** Blog thumbnail: explicit mapping first, deterministic fallback. */
export function blogThumb(slug: string): UnsplashImage {
  return BLOG_THUMBS[slug] ?? courseThumb(slug);
}

/** Deterministic portrait for team/testimonial entries. */
export function portraitFor(key: string): UnsplashImage {
  return PORTRAIT_IMAGES[hashKey(key) % PORTRAIT_IMAGES.length]!;
}

export function authHeroImageUrl(width = 1920): string {
  return `${AUTH_HERO_IMAGE.src}?auto=format&fit=crop&w=${width}&q=85`;
}

export function authForgotImageUrl(width = 1600): string {
  return `${AUTH_FORGOT_IMAGE.src}?auto=format&fit=crop&w=${width}&q=80`;
}
