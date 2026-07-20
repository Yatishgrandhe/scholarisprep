import katex from "katex";

const text = "If $3x + 7 = 22$, what is the value of $x$?";
const parts = [];
let i = 0;
while (i < text.length) {
  const start = text.indexOf("$", i);
  if (start === -1) {
    parts.push({ type: "text", v: text.slice(i) });
    break;
  }
  if (start > i) parts.push({ type: "text", v: text.slice(i, start) });
  const end = text.indexOf("$", start + 1);
  parts.push({ type: "math", v: text.slice(start + 1, end) });
  i = end + 1;
}

let html = "";
for (const p of parts) {
  if (p.type === "math") {
    html += katex.renderToString(p.v, { throwOnError: false });
  } else {
    html += p.v;
  }
}

const hasKatex = html.includes("class=\"katex\"");
console.log({ hasKatex, parts: parts.map((p) => p.type) });
