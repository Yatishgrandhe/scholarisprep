import { NextResponse } from "next/server";

/** First host from Host / X-Forwarded-Host (comma lists + whitespace). */
function requestHost(request: Request): string | null {
  const raw =
    request.headers.get("x-forwarded-host") ?? request.headers.get("host");
  if (!raw) return null;
  const first = raw.split(",")[0]?.trim().toLowerCase();
  return first || null;
}

/**
 * Compare Origin host to request host, tolerating default :80/:443 port
 * mismatches that proxies sometimes introduce.
 */
function hostsMatch(originHost: string, reqHost: string): boolean {
  const a = originHost.toLowerCase();
  const b = reqHost.toLowerCase();
  if (a === b) return true;
  const stripDefault = (h: string) =>
    h.replace(/:443$/, "").replace(/:80$/, "");
  return stripDefault(a) === stripDefault(b);
}

/** Reject cross-site mutations when the Origin host does not match Host. */
export function verifyCsrf(request: Request): NextResponse | null {
  const origin = request.headers.get("origin");
  const secFetchSite = request.headers.get("sec-fetch-site")?.toLowerCase();

  // Modern browsers set Sec-Fetch-Site; same-origin without Origin is still safe
  // (attackers cannot forge Sec-Fetch-Site from a cross-site form). Avoids false
  // 403s for platform_admin PATCH when Origin is omitted.
  if (!origin) {
    if (secFetchSite === "same-origin" || secFetchSite === "none") {
      return null;
    }
    return NextResponse.json({ error: "Missing Origin header" }, { status: 403 });
  }

  let originHost: string;
  try {
    originHost = new URL(origin).host;
  } catch {
    return NextResponse.json({ error: "Invalid Origin header" }, { status: 403 });
  }

  const host = requestHost(request);
  if (!host) {
    return NextResponse.json({ error: "Missing Host header" }, { status: 403 });
  }

  if (!hostsMatch(originHost, host)) {
    return NextResponse.json({ error: "CSRF validation failed" }, { status: 403 });
  }

  return null;
}
