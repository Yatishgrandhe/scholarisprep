/** Scholaris email brand tokens (from product color system). */
export const emailBrand = {
  navy: "#0F1E3C",
  cobalt: "#2563EB",
  cobaltDark: "#1D4ED8",
  aqua: "#06B6D4",
  snow: "#F8FAFC",
  slate100: "#E2E8F0",
  textPrimary: "#0F1E3C",
  textSecondary: "#475569",
  textMuted: "#94A3B8",
  white: "#FFFFFF",
  success: "#10B981",
  error: "#EF4444",
  warning: "#F59E0B",
  fontFamily:
    'Inter, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif',
} as const;

export function getAppBaseUrl(): string {
  const url = process.env.NEXT_PUBLIC_APP_URL?.trim();
  if (url) return url.replace(/\/$/, "");
  return "https://scholaris.ai";
}

/** Public logo for HTML email (Supabase Auth + Resend). Prefer PNG in clients that block SVG. */
export const EMAIL_LOGO_URL = "https://www.finalse.us/icon.svg";

export function getLogoUrl(): string {
  return process.env.NEXT_PUBLIC_EMAIL_LOGO_URL?.trim() ?? EMAIL_LOGO_URL;
}
