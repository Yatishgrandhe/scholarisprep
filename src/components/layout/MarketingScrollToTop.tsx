"use client";

import { useEffect } from "react";
import { usePathname } from "next/navigation";

/** Ensures marketing routes render from the top after client navigations. */
export function MarketingScrollToTop() {
  const pathname = usePathname();

  useEffect(() => {
    window.scrollTo(0, 0);
  }, [pathname]);

  return null;
}
