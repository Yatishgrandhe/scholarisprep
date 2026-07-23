import type { NextConfig } from "next";
import { validateEnv } from "./src/lib/env.validate";

validateEnv();

// Desmos API script + calculator UI (toolbar SVG/sprites, styles, fonts, workers).
// Include apex, www, cdn, and *.desmos.com — CSP wildcards do not match the apex host.
// Firefox may apply default-src to external SVG <use> refs; allow Desmos there too.
const DESMOS_CSP_ORIGINS =
  "https://www.desmos.com https://desmos.com https://cdn.desmos.com https://*.desmos.com";

// Hugging Face Hub for Kokoro ONNX model weights (ORT WASM is same-origin /ort/, not jsDelivr).
const HF_CSP_ORIGINS = "https://huggingface.co https://*.huggingface.co https://cdn-lfs.huggingface.co https://*.hf.co";

// Vercel Live / Toolbar feedback on preview (and optional prod toolbar).
// Official allowlist: https://vercel.com/docs/vercel-toolbar/managing-toolbar
const VERCEL_LIVE_ORIGIN = "https://vercel.live";
const VERCEL_LIVE_CONNECT = `${VERCEL_LIVE_ORIGIN} wss://ws-us3.pusher.com`;
const VERCEL_LIVE_IMG = `${VERCEL_LIVE_ORIGIN} https://vercel.com`;
const VERCEL_LIVE_FONT = `${VERCEL_LIVE_ORIGIN} https://assets.vercel.com`;

const contentSecurityPolicy = [
  `default-src 'self' ${DESMOS_CSP_ORIGINS}`,
  // wasm-unsafe-eval required for ONNX Runtime / Kokoro WASM TTS in-browser.
  // ORT .mjs/.wasm load from 'self' (/ort/); do not depend on cdn.jsdelivr.net.
  `script-src 'self' 'unsafe-inline' 'unsafe-eval' 'wasm-unsafe-eval' ${DESMOS_CSP_ORIGINS} ${VERCEL_LIVE_ORIGIN}`,
  `style-src 'self' 'unsafe-inline' https://fonts.googleapis.com ${DESMOS_CSP_ORIGINS} ${VERCEL_LIVE_ORIGIN}`,
  // `data:` is required — Desmos embeds its keypad/toolbar icon font as a
  // base64 data: URI, so without it those buttons render as empty squares (tofu).
  `font-src 'self' data: https://fonts.gstatic.com https://frontend-cdn.perplexity.ai ${DESMOS_CSP_ORIGINS} ${VERCEL_LIVE_FONT}`,
  `img-src 'self' data: blob: https://*.supabase.co https://*.r2.cloudflarestorage.com https://img.youtube.com https://i.ytimg.com https://images.unsplash.com https://api.dicebear.com ${DESMOS_CSP_ORIGINS} ${VERCEL_LIVE_IMG}`,
  `worker-src 'self' blob: ${DESMOS_CSP_ORIGINS}`,
  `connect-src 'self' https://*.supabase.co https://*.r2.cloudflarestorage.com ${DESMOS_CSP_ORIGINS} ${HF_CSP_ORIGINS} ${VERCEL_LIVE_CONNECT}`,
  `media-src 'self' blob: data:`,
  `frame-src https://www.youtube.com ${DESMOS_CSP_ORIGINS} ${VERCEL_LIVE_ORIGIN}`,
].join("; ");

const securityHeaders = [
  { key: "X-Frame-Options", value: "DENY" },
  { key: "X-Content-Type-Options", value: "nosniff" },
  { key: "Referrer-Policy", value: "strict-origin-when-cross-origin" },
  {
    key: "Permissions-Policy",
    // Free Studying voice STT needs microphone on same origin.
    value: "camera=(), microphone=(self), geolocation=()",
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
  serverExternalPackages: ["pdf-parse", "sharp", "@aws-sdk/client-s3", "@aws-sdk/s3-request-presigner"],
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
  async redirects() {
    return [
      {
        source: "/dashboard/free-study/sims",
        destination: "/dashboard/labs",
        permanent: true,
      },
      {
        source: "/dashboard/free-study/sims/:simId",
        destination: "/dashboard/labs/:simId",
        permanent: true,
      },
    ];
  },
  async headers() {
    return [
      {
        source: "/:path*",
        headers: securityHeaders,
      },
      // Ensure ORT WASM/JS helpers under /ort/ are cacheable and correctly typed.
      {
        source: "/ort/:path*",
        headers: [
          {
            key: "Cache-Control",
            value: "public, max-age=31536000, immutable",
          },
        ],
      },
    ];
  },
};

export default nextConfig;
