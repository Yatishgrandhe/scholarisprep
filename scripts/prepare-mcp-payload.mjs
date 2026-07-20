#!/usr/bin/env node
import { readFileSync, writeFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const batch = process.argv[2];
if (!batch) {
  console.error("Usage: node prepare-mcp-payload.mjs batch-002");
  process.exit(1);
}

const __dirname = dirname(fileURLToPath(import.meta.url));
const sql = readFileSync(join(__dirname, "import-batches", batch), "utf8");
const out = join(__dirname, `.mcp-${batch}.json`);
writeFileSync(
  out,
  JSON.stringify({ project_id: "aioyzumxxsepbnfivvdd", query: sql })
);
console.log(out, sql.length);
