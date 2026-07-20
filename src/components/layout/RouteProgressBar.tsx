"use client";

import { useEffect, useRef, useState } from "react";
import { usePathname } from "next/navigation";
import styles from "./RouteProgressBar.module.css";

export function RouteProgressBar() {
  const pathname = usePathname();
  const [active, setActive] = useState(false);
  const timerRef = useRef<ReturnType<typeof setTimeout> | null>(null);

  useEffect(() => {
    setActive(true);
    if (timerRef.current) clearTimeout(timerRef.current);
    timerRef.current = setTimeout(() => setActive(false), 450);
    return () => {
      if (timerRef.current) clearTimeout(timerRef.current);
    };
  }, [pathname]);

  return (
    <div
      className={`${styles.bar} ${active ? styles.barActive : ""}`}
      role="progressbar"
      aria-hidden={!active}
    />
  );
}
