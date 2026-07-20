import type { ReactNode } from "react";
import "@/styles/landing-theme.css";

/**
 * Auth routes share the landing theme tokens (cobalt/aqua atmosphere
 * aliases) so the split shell matches the marketing canvas without
 * inventing a separate cool-paper / navy-grid zone.
 */
export default function AuthLayout({ children }: { children: ReactNode }) {
  return children;
}
