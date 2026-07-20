#!/usr/bin/env node
/**
 * Import all batch-NNN.sql files via Supabase Management API
 * (same endpoint used by MCP execute_sql).
 */
import { readFileSync, appendFileSync, existsSync, mkdirSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { homedir } from "node:os";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const dir = dirname(fileURLToPath(import.meta.url));
const logPath = join(dir, "import-results.jsonl");

function getToken() {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

const token = getToken();
if (!token) {
  console.error(JSON.stringify({ ok: false, error: "No Supabase access token found" }));
  process.exit(1);
}

const failures = [];
const successes = [];

for (let i = 0; i <= 98; i++) {
  const n = String(i).padStart(3, "0");
  const sqlPath = join(dir, `batch-${n}.sql`);
  const query = readFileSync(sqlPath, "utf8");

  try {
    const res = await fetch(
      `https://api.supabase.com/v1/projects/${PROJECT_ID}/database/query`,
      {
        method: "POST",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ query }),
      }
    );
    const body = await res.text();
    if (!res.ok) {
      failures.push({ batch: n, status: res.status, error: body.slice(0, 300) });
      appendFileSync(
        logPath,
        JSON.stringify({ batch: n, ok: false, status: res.status, error: body.slice(0, 200) }) + "\n"
      );
      console.error(`FAIL batch-${n}: ${res.status}`);
    } else {
      successes.push(n);
      appendFileSync(logPath, JSON.stringify({ batch: n, ok: true }) + "\n");
      console.log(`OK batch-${n}`);
    }
  } catch (err) {
    failures.push({ batch: n, error: String(err) });
    appendFileSync(logPath, JSON.stringify({ batch: n, ok: false, error: String(err) }) + "\n");
    console.error(`FAIL batch-${n}: ${err}`);
  }
}

// Verify
let verify = null;
try {
  const res = await fetch(
    `https://api.supabase.com/v1/projects/${PROJECT_ID}/database/query`,
    {
      method: "POST",
      headers: {
        Authorization: `Bearer ${token}`,
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        query:
          "SELECT count(*) AS total_sat, count(*) FILTER (WHERE source = 'college_board_opensat') AS imported FROM questions WHERE exam_type = 'SAT';",
      }),
    }
  );
  const data = await res.json();
  verify = data?.[0] ?? data;
} catch (e) {
  verify = { error: String(e) };
}

console.log(
  JSON.stringify({
    ok: failures.length === 0,
    successes: successes.length,
    failures: failures.length,
    failedBatches: failures.map((f) => f.batch),
    verify,
  })
);
