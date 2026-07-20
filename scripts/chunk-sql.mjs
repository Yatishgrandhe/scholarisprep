#!/usr/bin/env node
/** Split a SQL file into N-line chunks for MCP apply. */
import { readFileSync, writeFileSync, mkdirSync } from "node:fs";
import { resolve, dirname, basename } from "node:path";

const [,, input, chunkSizeArg = "8", outDirArg] = process.argv;
if (!input) {
  console.error("Usage: node scripts/chunk-sql.mjs <file.sql> [linesPerChunk] [outDir]");
  process.exit(1);
}
const chunkSize = Number(chunkSizeArg);
const sql = readFileSync(resolve(input), "utf8");
const statements = sql
  .split(/\n(?=(?:INSERT|UPDATE))/i)
  .filter((s) => /^(INSERT|UPDATE)/i.test(s.trim()));
const outDir = resolve(outDirArg ?? dirname(input), `${basename(input, ".sql")}-chunks`);
mkdirSync(outDir, { recursive: true });
let idx = 0;
for (let i = 0; i < statements.length; i += chunkSize) {
  const chunk = statements.slice(i, i + chunkSize);
  const body = "BEGIN;\n" + chunk.join("\n") + "\nCOMMIT;";
  const path = `${outDir}/chunk-${String(idx).padStart(2, "0")}.sql`;
  writeFileSync(path, body + "\n");
  idx++;
}
console.log(JSON.stringify({ chunks: idx, statements: statements.length, outDir }, null, 2));
