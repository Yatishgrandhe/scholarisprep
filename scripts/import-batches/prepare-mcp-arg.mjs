#!/usr/bin/env node
/** Output JSON args for MCP execute_sql from a batch SQL file. */
import { readFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const batch = process.argv[2];
if (!batch) {
  console.error("Usage: prepare-mcp-arg.mjs <batch-number e.g. 000>");
  process.exit(1);
}
const dir = dirname(fileURLToPath(import.meta.url));
const sql = readFileSync(join(dir, `batch-${batch}.sql`), "utf8");
process.stdout.write(
  JSON.stringify({ project_id: "aioyzumxxsepbnfivvdd", query: sql })
);
