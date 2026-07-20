#!/usr/bin/env node
/**
 * Outputs one batch's MCP execute_sql payload per invocation.
 * Usage: node mcp-batch-runner.mjs 000
 */
import { readFileSync, existsSync, appendFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const batch = process.argv[2];
const status = process.argv[3]; // optional: ok|fail
const dir = dirname(fileURLToPath(import.meta.url));
const logPath = join(dir, "import-log.jsonl");

if (status && batch) {
  appendFileSync(
    logPath,
    JSON.stringify({ batch, status, at: new Date().toISOString() }) + "\n"
  );
  process.exit(0);
}

if (!batch) {
  console.error("Usage: mcp-batch-runner.mjs NNN [ok|fail]");
  process.exit(1);
}

const sqlPath = join(dir, `batch-${batch}.sql`);
if (!existsSync(sqlPath)) {
  console.error(`Missing ${sqlPath}`);
  process.exit(1);
}

const query = readFileSync(sqlPath, "utf8");
process.stdout.write(JSON.stringify({ project_id: "aioyzumxxsepbnfivvdd", query }));
