/**
 * Deterministic figure renderer for AI-remixed questions.
 *
 * LLMs corrupt raw SVG (duplicate attributes, truncation, numbers that drift
 * from the prose). So the remix model NEVER writes SVG — it emits a small,
 * validated `FigureSpec` and THIS module renders a guaranteed well-formed SVG
 * whose labels are derived from those same numbers, keeping figure and question
 * in lockstep.
 *
 * The schema is intentionally FLAT (a single object with a `kind` discriminator
 * and optional fields) rather than a Zod discriminated union of tuples — flat
 * object schemas are far more reliable for LLM structured output / tool-calling
 * than unions and fixed-length tuples, which Mistral often mis-emits.
 */
import { z } from "zod";

/* ----------------------------------------------------------------- schema -- */

export const figureSpecSchema = z.object({
  kind: z
    .enum(["none", "right_triangle", "line_graph", "scatter"])
    .describe("which drawing to render, or 'none' for no figure"),
  // right_triangle — one label is usually "?" (the unknown side)
  adjacent: z.string().optional().describe("horizontal-leg label, e.g. '8' or '?'"),
  opposite: z.string().optional().describe("vertical-leg label, e.g. '15' or '?'"),
  hypotenuse: z.string().optional().describe("hypotenuse label, e.g. '17' or '?'"),
  showAngle: z.boolean().optional().describe("mark angle theta at vertex A"),
  // line_graph — 1–2 lines by slope + y-intercept on a standard xy grid
  lines: z
    .array(z.object({ slope: z.number(), intercept: z.number() }))
    .optional()
    .describe("1–2 lines for kind:line_graph"),
  // scatter — data points, optional line of best fit
  points: z
    .array(z.object({ x: z.number(), y: z.number() }))
    .optional()
    .describe("data points for kind:scatter"),
  bestFit: z
    .object({ slope: z.number(), intercept: z.number() })
    .optional()
    .describe("optional line of best fit for kind:scatter"),
});

export type FigureSpec = z.infer<typeof figureSpecSchema>;

/* --------------------------------------------------------------- renderers -- */

const BLUE = "#1e40af";
const GRID = "#94a3b8";
const AXIS = "#475569";
const RED = "#dc2626";
const LABEL = "#e2e8f0"; // light labels read on the dark question canvas

function esc(s: string): string {
  return String(s).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}

function rightTriangle(f: FigureSpec): string {
  const adj = f.adjacent ?? "?";
  const opp = f.opposite ?? "?";
  const hyp = f.hypotenuse ?? "?";
  const theta = f.showAngle
    ? `<path d="M 178 150 A 27 27 0 0 0 187 131" fill="none" stroke="${RED}" stroke-width="1.5"/><text x="166" y="143" font-size="12" fill="${RED}">&#952;</text>`
    : "";
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 235 180" width="235" height="180" role="img" aria-label="Right triangle ABC with right angle at C, adjacent ${esc(adj)}, opposite ${esc(opp)}, hypotenuse ${esc(hyp)}">
  <polygon points="50,150 205,150 50,45" fill="none" stroke="${BLUE}" stroke-width="2"/>
  <rect x="50" y="136" width="14" height="14" fill="none" stroke="${GRID}" stroke-width="1"/>
  <text x="38" y="163" font-size="13" fill="${LABEL}">C</text>
  <text x="210" y="163" font-size="13" fill="${LABEL}">A</text>
  <text x="42" y="40" font-size="13" fill="${LABEL}">B</text>
  <text x="118" y="167" font-size="12" fill="${LABEL}">${esc(adj)}</text>
  <text x="26" y="102" font-size="12" fill="${LABEL}">${esc(opp)}</text>
  <text x="136" y="90" font-size="12" fill="${LABEL}">${esc(hyp)}</text>
  ${theta}
</svg>`;
}

function lineGraph(f: FigureSpec): string {
  const src = (f.lines ?? []).slice(0, 2);
  if (src.length === 0) return "";
  const S = 300;
  const pad = 18;
  const span = S - pad * 2;
  const unit = span / 20;
  const cx = pad + span / 2;
  const cy = pad + span / 2;
  const X = (x: number) => cx + x * unit;
  const Y = (y: number) => cy - y * unit;
  let grid = "";
  for (let i = -10; i <= 10; i++) {
    grid += `<line x1="${X(i)}" y1="${pad}" x2="${X(i)}" y2="${pad + span}" stroke="${GRID}" stroke-width="0.5" opacity="0.35"/>`;
    grid += `<line x1="${pad}" y1="${Y(i)}" x2="${pad + span}" y2="${Y(i)}" stroke="${GRID}" stroke-width="0.5" opacity="0.35"/>`;
  }
  const axes = `<line x1="${pad}" y1="${cy}" x2="${pad + span}" y2="${cy}" stroke="${AXIS}" stroke-width="1.4"/><line x1="${cx}" y1="${pad}" x2="${cx}" y2="${pad + span}" stroke="${AXIS}" stroke-width="1.4"/>`;
  const colors = [BLUE, RED];
  const clip = (v: number) => Math.max(-10, Math.min(10, v));
  const lines = src
    .map(
      (ln, i) =>
        `<line x1="${X(-10)}" y1="${Y(clip(ln.slope * -10 + ln.intercept))}" x2="${X(10)}" y2="${Y(clip(ln.slope * 10 + ln.intercept))}" stroke="${colors[i % 2]}" stroke-width="2.4"/>`,
    )
    .join("");
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ${S} ${S}" width="${S}" height="${S}" role="img" aria-label="${src.length > 1 ? "Lines" : "A line"} graphed in the xy-plane">${grid}${axes}<text x="${pad + span - 6}" y="${cy - 5}" font-size="10" fill="${LABEL}">x</text><text x="${cx + 5}" y="${pad + 9}" font-size="10" fill="${LABEL}">y</text>${lines}</svg>`;
}

function scatter(f: FigureSpec): string {
  const pts = (f.points ?? []).filter((p) => typeof p?.x === "number" && typeof p?.y === "number");
  if (pts.length === 0) return "";
  const S = 250;
  const ox = 38;
  const oy = 152;
  const pw = 200;
  const ph = 126;
  const xs = pts.map((p) => p.x);
  const ys = pts.map((p) => p.y);
  const xmax = Math.max(1, ...xs) * 1.1;
  const ymax =
    Math.max(1, ...ys, f.bestFit ? f.bestFit.slope * Math.max(...xs) + f.bestFit.intercept : 0) * 1.15;
  const sx = (x: number) => ox + (x / xmax) * pw;
  const sy = (y: number) => oy - (y / ymax) * ph;
  const dots = pts
    .map((p) => `<circle cx="${sx(p.x).toFixed(1)}" cy="${sy(p.y).toFixed(1)}" r="3" fill="${BLUE}"/>`)
    .join("");
  const fit = f.bestFit
    ? `<line x1="${sx(0).toFixed(1)}" y1="${sy(f.bestFit.intercept).toFixed(1)}" x2="${sx(xmax).toFixed(1)}" y2="${sy(f.bestFit.slope * xmax + f.bestFit.intercept).toFixed(1)}" stroke="${RED}" stroke-width="2"/>`
    : "";
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ${S} 180" width="${S}" height="180" role="img" aria-label="Scatterplot${f.bestFit ? " with a line of best fit" : ""}">
  <line x1="${ox}" y1="${oy}" x2="${ox + pw}" y2="${oy}" stroke="${AXIS}" stroke-width="1"/>
  <line x1="${ox}" y1="${oy}" x2="${ox}" y2="${oy - ph}" stroke="${AXIS}" stroke-width="1"/>
  <text x="${ox + pw / 2}" y="174" font-size="11" fill="${LABEL}" text-anchor="middle">x</text>
  <text x="12" y="${oy - ph / 2}" font-size="11" fill="${LABEL}">y</text>
  ${fit}${dots}
</svg>`;
}

/** Render a validated FigureSpec to a well-formed SVG string, or "" for none. */
export function renderFigure(spec: FigureSpec | null | undefined): string {
  if (!spec || spec.kind === "none") return "";
  switch (spec.kind) {
    case "right_triangle":
      return rightTriangle(spec);
    case "line_graph":
      return lineGraph(spec);
    case "scatter":
      return scatter(spec);
    default:
      return "";
  }
}
