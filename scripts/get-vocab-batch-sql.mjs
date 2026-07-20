#!/usr/bin/env node
/** Prints batch SQL to stdout for MCP execute_sql. Usage: node scripts/get-vocab-batch-sql.mjs 00 */
import { readFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const batch = process.argv[2];
if (!batch) {
  console.error("Usage: node scripts/get-vocab-batch-sql.mjs <00-19>");
  process.exit(1);
}

const dir = join(dirname(fileURLToPath(import.meta.url)), "data/vocab-batches");
process.stdout.write(readFileSync(join(dir, `batch-${batch}.sql`), "utf8"));
