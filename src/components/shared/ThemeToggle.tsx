"use client";

import { useSyncExternalStore } from "react";
import { Moon, Sun } from "@phosphor-icons/react";
import { useTheme } from "next-themes";

const subscribeNoop = () => () => {};

export function ThemeToggle({ className }: { className?: string }) {
  const { setTheme, resolvedTheme } = useTheme();
  const mounted = useSyncExternalStore(
    subscribeNoop,
    () => true,
    () => false,
  );

  if (!mounted) {
    return <div style={{ width: 36, height: 36 }} aria-hidden />;
  }

  const isDark = resolvedTheme === "dark";

  return (
    <button
      type="button"
      className={className}
      onClick={() => setTheme(isDark ? "light" : "dark")}
      aria-label={isDark ? "Switch to light mode" : "Switch to dark mode"}
      style={{
        width: 36,
        height: 36,
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        borderRadius: 8,
        border: "1px solid hsl(var(--border))",
        background: "transparent",
        cursor: "pointer",
        color: "hsl(var(--muted-foreground))",
        transition:
          "background 150ms ease, color 150ms ease, border-color 150ms ease",
        flexShrink: 0,
      }}
      onMouseEnter={(e) => {
        const el = e.currentTarget;
        el.style.background = "hsl(var(--muted))";
        el.style.color = "hsl(var(--foreground))";
      }}
      onMouseLeave={(e) => {
        const el = e.currentTarget;
        el.style.background = "transparent";
        el.style.color = "hsl(var(--muted-foreground))";
      }}
    >
      {isDark ? (
        <Sun size={17} weight="regular" aria-hidden />
      ) : (
        <Moon size={17} weight="regular" aria-hidden />
      )}
    </button>
  );
}
