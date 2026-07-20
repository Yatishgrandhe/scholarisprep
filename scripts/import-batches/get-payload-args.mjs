#!/usr/bin/env node
/** Output { project_id, query } from mcp-args/payload-NNN.json for MCP execute_sql. */
import { readFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const batch = process.argv[2];
if (!batch) {
  console.error("Usage: get-payload-args.mjs NNN");
  process.exit(1);
}

const dir = dirname(fileURLToPath(import.meta.url));
const p = JSON.parse(
  readFileSync(join(dir, "mcp-args", `payload-${batch}.json`), "utf8")
);
process.stdout.write(JSON.stringify({ project_id: p.project_id, query: p.query }));
