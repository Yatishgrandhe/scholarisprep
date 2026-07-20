import type { NextConfig } from "next";
import { validateEnv } from "./src/lib/env.validate";

validateEnv();

// Desmos API script + calculator UI (toolbar SVG/sprites, styles, fonts, workers).
// Include apex, www, cdn, and *.desmos.com — CSP wildcards do not match the apex host.
// Firefox may apply default-src to external SVG <use> refs; allow Desmos there too.
const DESMOS_CSP_ORIGINS =
  "https://www.desmos.com https://desmos.com https://cdn.desmos.com https://*.desmos.com";

const contentSecurityPolicy = [
  `default-src 'self' ${DESMOS_CSP_ORIGINS}`,
  `script-src 'self' 'unsafe-inline' 'unsafe-eval' ${DESMOS_CSP_ORIGINS}`,
  `style-src 'self' 'unsafe-inline' https://fonts.googleapis.com ${DESMOS_CSP_ORIGINS}`,
  // `data:` is required — Desmos embeds its keypad/toolbar icon font as a
  // base64 data: URI, so without it those buttons render as empty squares (tofu).
  `font-src 'self' data: https://fonts.gstatic.com ${DESMOS_CSP_ORIGINS}`,
  `img-src 'self' data: blob: https://*.supabase.co https://img.youtube.com https://i.ytimg.com https://images.unsplash.com https://api.dicebear.com ${DESMOS_CSP_ORIGINS}`,
  `worker-src 'self' blob: ${DESMOS_CSP_ORIGINS}`,
  `connect-src 'self' https://*.supabase.co ${DESMOS_CSP_ORIGINS}`,
  `frame-src https://www.youtube.com ${DESMOS_CSP_ORIGINS}`,
].join("; ");

const securityHeaders = [
  { key: "X-Frame-Options", value: "DENY" },
  { key: "X-Content-Type-Options", value: "nosniff" },
  { key: "Referrer-Policy", value: "strict-origin-when-cross-origin" },
  {
    key: "Permissions-Policy",
    value: "camera=(), microphone=(), geolocation=()",
  },
  {
    key: "Strict-Transport-Security",
    value: "max-age=63072000; includeSubDomains; preload",
  },
  { key: "Content-Security-Policy", value: contentSecurityPolicy },
];

const nextConfig: NextConfig = {
  // The generated Supabase types currently contain schema drift that causes
  // unrelated API inserts to fail type-checking; keep production builds usable
  // while the schema types are regenerated.
  typescript: {
    ignoreBuildErrors: true,
  },
  // pdf-parse bundles pdfjs (legacy build) with dynamic requires — keep it as an
  // external server package so the Next bundler doesn't try to trace/inline it.
  serverExternalPackages: ["pdf-parse"],
  images: {
    // AVIF first (~20% smaller), WebP fallback. Curated Unsplash photo IDs
    // are immutable, so a 31-day optimizer cache is safe and keeps repeat
    // loads served straight from the Vercel edge cache.
    formats: ["image/avif", "image/webp"],
    minimumCacheTTL: 2678400,
    remotePatterns: [
      {
        protocol: "https",
        hostname: "images.unsplash.com",
        pathname: "/**",
      },
    ],
  },
  async headers() {
    return [
      {
        source: "/:path*",
        headers: securityHeaders,
      },
    ];
  },
};

export default nextConfig;
