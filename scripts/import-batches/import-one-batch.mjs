#!/usr/bin/env node
/** Read batch-NNN.sql and output { project_id, query } for MCP execute_sql. */
import { readFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const n = process.argv[2];
if (!n || !/^\d{3}$/.test(n)) {
  console.error("Usage: import-one-batch.mjs NNN");
  process.exit(1);
}

const dir = dirname(fileURLToPath(import.meta.url));
const sql = readFileSync(join(dir, `batch-${n}.sql`), "utf8");
process.stdout.write(
  JSON.stringify({ project_id: "aioyzumxxsepbnfivvdd", query: sql })
);
