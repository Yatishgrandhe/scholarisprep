import type { NextRequest } from "next/server";

/**
 * Verifies Vercel Cron or shared CRON_SECRET bearer token.
 */
export function verifyCronAuth(req: NextRequest): boolean {
  const cronSecret = process.env.CRON_SECRET?.trim();
  if (cronSecret) {
    const auth = req.headers.get("authorization");
    if (auth === `Bearer ${cronSecret}`) return true;
  }

  if (req.headers.get("x-vercel-cron") === "1") return true;

  return false;
}
