import fs from "fs";
import path from "path";

const dir = "src/components/dashboard";
const files = fs.readdirSync(dir).filter((f) => f.endsWith(".module.css"));

function panelEnhance(content) {
  let c = content;
  c = c.replace(
    /(background: var\(--bg-raised[^;]+;)(\r?\n)(?![\s\S]{0,120}box-shadow)/g,
    "$1$2  box-shadow: var(--shadow-panel);$2  transition: var(--dash-transition);$2",
  );
  c = c.replace(
    /border-color: hsl\(var\(--primary\) \/ 0\.35\);/g,
    "border-color: var(--border-glow, hsl(var(--primary) / 0.38));\n  box-shadow: var(--shadow-panel-hover);\n  transform: translateY(-2px);",
  );
  c = c.replace(
    /border-color: hsl\(var\(--primary\) \/ 0\.3\);/g,
    "border-color: var(--border-glow, hsl(var(--primary) / 0.38));\n  box-shadow: var(--shadow-panel-hover);\n  transform: translateY(-2px);",
  );
  return c;
}

for (const f of files) {
  const p = path.join(dir, f);
  const orig = fs.readFileSync(p, "utf8");
  const next = panelEnhance(orig);
  if (next !== orig) {
    fs.writeFileSync(p, next);
    console.log("updated", f);
  }
}
