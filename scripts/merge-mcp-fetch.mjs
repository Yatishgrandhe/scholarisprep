#!/usr/bin/env node
/** Merge MCP execute_sql batch output files into upgrade-math-input.json */
import { readFileSync, writeFileSync, mkdirSync } from "node:fs";
import { resolve } from "node:path";

const paths = process.argv.slice(2);
if (!paths.length) {
  console.error("Usage: node scripts/merge-mcp-fetch.mjs <batch1.txt> ...");
  process.exit(1);
}

function extractArray(raw) {
  const start = raw.indexOf("[");
  const end = raw.lastIndexOf("]");
  if (start < 0 || end < 0) throw new Error("No JSON array found");
  let slice = raw.slice(start, end + 1);
  if (slice.includes('\\"')) {
    slice = slice.replace(/\\"/g, '"').replace(/\\\\/g, "\\");
  }
  return JSON.parse(slice);
}

const all = [];
for (const p of paths) {
  all.push(...extractArray(readFileSync(resolve(p), "utf8")));
}

const out = resolve("scripts/data/upgrade-math-input.json");
mkdirSync(resolve("scripts/data"), { recursive: true });
writeFileSync(out, JSON.stringify(all, null, 2) + "\n");
console.log(JSON.stringify({ rows: all.length, out }, null, 2));
