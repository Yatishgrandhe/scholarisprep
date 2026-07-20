#!/usr/bin/env node
/**
 * Execute batch SQL files via Supabase Management API (same backend as MCP execute_sql).
 * Reads batch-NNN.sql in order, logs results to import-results.jsonl.
 */
import { readFileSync, writeFileSync, appendFileSync, existsSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const TOKEN = process.env.SUPABASE_ACCESS_TOKEN;
const dir = dirname(fileURLToPath(import.meta.url));
const logPath = join(dir, "import-results.jsonl");
const start = Number(process.argv[2] ?? 0);
const end = Number(process.argv[3] ?? 98);

if (!TOKEN) {
  console.error("SUPABASE_ACCESS_TOKEN required");
  process.exit(1);
}

const failures = [];

for (let i = start; i <= end; i++) {
  const n = String(i).padStart(3, "0");
  const sqlPath = join(dir, `batch-${n}.sql`);
  if (!existsSync(sqlPath)) {
    failures.push({ batch: n, error: "file not found" });
    continue;
  }
  const query = readFileSync(sqlPath, "utf8");
  try {
    const res = await fetch(
      `https://api.supabase.com/v1/projects/${PROJECT_ID}/database/query`,
      {
        method: "POST",
        headers: {
          Authorization: `Bearer ${TOKEN}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ query }),
      }
    );
    const body = await res.text();
    if (!res.ok) {
      failures.push({ batch: n, status: res.status, error: body.slice(0, 500) });
      appendFileSync(logPath, JSON.stringify({ batch: n, ok: false, status: res.status, error: body.slice(0, 200) }) + "\n");
      console.error(`FAIL batch-${n}: ${res.status} ${body.slice(0, 200)}`);
    } else {
      appendFileSync(logPath, JSON.stringify({ batch: n, ok: true }) + "\n");
      console.log(`OK batch-${n}`);
    }
  } catch (err) {
    failures.push({ batch: n, error: String(err) });
    appendFileSync(logPath, JSON.stringify({ batch: n, ok: false, error: String(err) }) + "\n");
    console.error(`FAIL batch-${n}: ${err}`);
  }
}

writeFileSync(join(dir, "import-failures.json"), JSON.stringify(failures, null, 2));
console.log(JSON.stringify({ processed: end - start + 1, failures: failures.length, failedBatches: failures.map((f) => f.batch) }));
