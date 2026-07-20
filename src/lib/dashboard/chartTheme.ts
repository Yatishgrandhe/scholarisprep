/** Recharts stroke/fill tokens aligned with globals.css light/dark surfaces. */
export function chartTheme() {
  return {
    grid: "hsl(var(--border))",
    axis: "hsl(var(--muted-foreground))",
    reference: "hsl(var(--muted-foreground) / 0.75)",
    line: "hsl(var(--primary))",
    ringTrack: "hsl(var(--border))",
    ringFill: "hsl(var(--primary))",
    label: "hsl(var(--foreground))",
    tooltipBg: "hsl(var(--popover))",
    tooltipBorder: "hsl(var(--border))",
    tooltipText: "hsl(var(--popover-foreground))",
  };
}
