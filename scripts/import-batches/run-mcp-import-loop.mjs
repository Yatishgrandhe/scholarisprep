#!/usr/bin/env node
/**
 * Reads batch SQL files and prints MCP execute_sql arguments as JSON lines.
 * Agent consumes stdout and calls plugin-supabase-supabase execute_sql per line.
 */
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const from = Number(process.argv[2] ?? 0);
const to = Number(process.argv[3] ?? 98);

const failed = [];
for (let i = from; i <= to; i++) {
  const n = String(i).padStart(3, "0");
  const file = path.join(__dirname, `batch-${n}.sql`);
  if (!fs.existsSync(file)) {
    failed.push({ batch: n, error: "missing file" });
    continue;
  }
  const query = fs.readFileSync(file, "utf8");
  process.stdout.write(JSON.stringify({ batch: n, project_id: PROJECT_ID, query }) + "\n");
}
if (failed.length) {
  process.stderr.write(JSON.stringify({ failed }) + "\n");
}
