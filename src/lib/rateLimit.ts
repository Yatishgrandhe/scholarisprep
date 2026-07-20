import { NextResponse } from "next/server";

/** Rate limit budgets per user (enforce in API routes). */
export const RATE_LIMITS = {
  "ai-tutor": { limit: 100, window: "1h" as const },
  "generate-question": { limit: 50, window: "1h" as const },
  "ai-remix": { limit: 40, window: "1h" as const },
  "ai-grade-frq": { limit: 60, window: "1h" as const },
  "generate-study-plan": { limit: 5, window: "1d" as const },
  "generate-diagnostic": { limit: 5, window: "1d" as const },
  "generate-course": { limit: 10, window: "1h" as const },
  "notes-upload-url": { limit: 60, window: "1h" as const },
  "notes-confirm": { limit: 60, window: "1h" as const },
  "notes-asset-url": { limit: 120, window: "1h" as const },
  "notes-images": { limit: 40, window: "1h" as const },
} as const;

export type RateLimitKey = keyof typeof RATE_LIMITS;

const WINDOW_MS: Record<"1h" | "1d", number> = {
  "1h": 60 * 60 * 1000,
  "1d": 24 * 60 * 60 * 1000,
};

type Bucket = { count: number; resetAt: number };

const buckets = new Map<string, Bucket>();

export type RateLimitResult =
  | { ok: true }
  | { ok: false; retryAfterSeconds: number };

export function rateLimit(
  key: RateLimitKey,
  identifier: string,
): RateLimitResult {
  const { limit, window } = RATE_LIMITS[key];
  const windowMs = WINDOW_MS[window];
  const bucketKey = `${key}:${identifier}`;
  const now = Date.now();
  let bucket = buckets.get(bucketKey);

  if (!bucket || now >= bucket.resetAt) {
    bucket = { count: 0, resetAt: now + windowMs };
    buckets.set(bucketKey, bucket);
  }

  if (bucket.count >= limit) {
    const retryAfterSeconds = Math.max(
      1,
      Math.ceil((bucket.resetAt - now) / 1000),
    );
    return { ok: false, retryAfterSeconds };
  }

  bucket.count += 1;
  return { ok: true };
}

export function rateLimitResponse(retryAfterSeconds: number): NextResponse {
  return NextResponse.json(
    { error: "Too many requests. Please try again later." },
    {
      status: 429,
      headers: { "Retry-After": String(retryAfterSeconds) },
    },
  );
}
