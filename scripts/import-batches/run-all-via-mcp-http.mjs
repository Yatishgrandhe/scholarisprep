#!/usr/bin/env node
/**
 * Import batch-000..098 via Supabase MCP HTTP (same as Cursor plugin).
 * Logs to import-results-v2.jsonl
 */
import { readFileSync, writeFileSync, appendFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const MCP_URL = process.env.SUPABASE_MCP_URL || "https://mcp.supabase.com/mcp";
const TOKEN = process.env.SUPABASE_ACCESS_TOKEN?.trim();

const dir = dirname(fileURLToPath(import.meta.url));
const logPath = join(dir, "import-results-v2.jsonl");

if (!TOKEN) {
  console.error(JSON.stringify({ ok: false, error: "Set SUPABASE_ACCESS_TOKEN" }));
  process.exit(1);
}

writeFileSync(logPath, "");

let msgId = 1;

async function mcpCall(method, params) {
  const id = msgId++;
  const body = { jsonrpc: "2.0", id, method, params };
  const res = await fetch(MCP_URL, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${TOKEN}`,
    },
    body: JSON.stringify(body),
  });
  const text = await res.text();
  if (!res.ok) throw new Error(`HTTP ${res.status}: ${text.slice(0, 300)}`);
  const json = JSON.parse(text);
  if (json.error) throw new Error(JSON.stringify(json.error));
  return json.result;
}

function log(entry) {
  appendFileSync(logPath, JSON.stringify(entry) + "\n");
}

async function main() {
  await mcpCall("initialize", {
    protocolVersion: "2024-11-05",
    capabilities: {},
    clientInfo: { name: "scholaris-import-v2", version: "1.0.0" },
  });
  await mcpCall("notifications/initialized", {});

  const failures = [];
  let successes = 0;

  for (let i = 0; i <= 98; i++) {
    const n = String(i).padStart(3, "0");
    const sql = readFileSync(join(dir, `batch-${n}.sql`), "utf8");
    process.stdout.write(`batch-${n}... `);
    const started = Date.now();
    try {
      const result = await mcpCall("tools/call", {
        name: "execute_sql",
        arguments: { project_id: PROJECT_ID, query: sql },
      });
      const text = JSON.stringify(result);
      if (result?.isError === true || text.includes('"error"')) {
        throw new Error(text.slice(0, 500));
      }
      successes++;
      log({ batch: n, ok: true, ms: Date.now() - started });
      console.log("ok");
    } catch (err) {
      const errMsg = String(err.message || err).slice(0, 2000);
      failures.push({ batch: n, error: errMsg.slice(0, 200) });
      log({ batch: n, ok: false, error: errMsg.slice(0, 500), ms: Date.now() - started });
      console.log("FAIL");
    }
  }

  let verify = null;
  try {
    const result = await mcpCall("tools/call", {
      name: "execute_sql",
      arguments: {
        project_id: PROJECT_ID,
        query:
          "SELECT count(*)::int AS total_sat, count(*) FILTER (WHERE source = 'college_board_opensat')::int AS imported FROM questions WHERE exam_type = 'SAT';",
      },
    });
    const content = result?.content?.[0]?.text ?? JSON.stringify(result);
    const match = content.match(/\[[\s\S]*?\]/);
    verify = match ? JSON.parse(match[0])[0] : { raw: content.slice(0, 300) };
  } catch (e) {
    verify = { error: String(e) };
  }

  const summary = {
    type: "summary",
    successfulBatches: successes,
    failedBatches: failures.map((f) => f.batch),
    failures: failures.length,
    verify,
    expected: 2474,
    at: new Date().toISOString(),
  };
  log(summary);
  console.log(JSON.stringify(summary, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
