#!/usr/bin/env node
/**
 * Import batch-000.sql … batch-098.sql via Supabase MCP execute_sql.
 * Logs each result to import-results-v2.jsonl
 */
import { readFileSync, writeFileSync, appendFileSync, existsSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { spawn } from "node:child_process";
import { homedir } from "node:os";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const dir = dirname(fileURLToPath(import.meta.url));
const logPath = join(dir, "import-results-v2.jsonl");

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
  console.error(JSON.stringify({ ok: false, error: "No SUPABASE_ACCESS_TOKEN" }));
  process.exit(1);
}

writeFileSync(logPath, "");

let msgId = 1;
const pending = new Map();

function send(proc, method, params) {
  const id = msgId++;
  proc.stdin.write(JSON.stringify({ jsonrpc: "2.0", id, method, params }) + "\n");
  return id;
}

function callTool(proc, name, args) {
  const id = send(proc, "tools/call", { name, arguments: args });
  return new Promise((resolve, reject) => {
    pending.set(id, { resolve, reject });
  });
}

function logEntry(entry) {
  appendFileSync(logPath, JSON.stringify(entry) + "\n");
}

async function main() {
  const proc = spawn(
    "npx",
    ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID],
    {
      env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
      stdio: ["pipe", "pipe", "pipe"],
    }
  );

  let buf = "";
  proc.stdout.on("data", (chunk) => {
    buf += chunk.toString();
    const lines = buf.split("\n");
    buf = lines.pop() ?? "";
    for (const line of lines) {
      if (!line.trim()) continue;
      try {
        const msg = JSON.parse(line);
        if (msg.id && pending.has(msg.id)) {
          const { resolve, reject } = pending.get(msg.id);
          pending.delete(msg.id);
          if (msg.error) reject(new Error(JSON.stringify(msg.error)));
          else resolve(msg.result);
        }
      } catch {
        /* ignore */
      }
    }
  });
  proc.stderr.on("data", (d) => process.stderr.write(d));

  send(proc, "initialize", {
    protocolVersion: "2024-11-05",
    capabilities: {},
    clientInfo: { name: "scholaris-import-v2", version: "1.0.0" },
  });
  send(proc, "notifications/initialized", {});
  await new Promise((r) => setTimeout(r, 2000));

  const failures = [];
  let successes = 0;

  for (let i = 0; i <= 98; i++) {
    const n = String(i).padStart(3, "0");
    const batch = `batch-${n}`;
    const sqlPath = join(dir, `${batch}.sql`);
    const sql = readFileSync(sqlPath, "utf8");
    process.stdout.write(`${batch}... `);
    const started = Date.now();
    try {
      const result = await callTool(proc, "execute_sql", {
        project_id: PROJECT_ID,
        query: sql,
      });
      const text = JSON.stringify(result);
      if (result?.isError === true || result?.content?.[0]?.text?.includes('"error"')) {
        throw new Error(text.slice(0, 500));
      }
      successes++;
      logEntry({ batch: n, ok: true, ms: Date.now() - started });
      console.log("ok");
    } catch (err) {
      const errMsg = String(err.message || err).slice(0, 2000);
      failures.push({ batch: n, error: errMsg.slice(0, 200) });
      logEntry({ batch: n, ok: false, error: errMsg.slice(0, 500), ms: Date.now() - started });
      console.log("FAIL");
    }
  }

  let verify = null;
  try {
    const result = await callTool(proc, "execute_sql", {
      project_id: PROJECT_ID,
      query:
        "SELECT count(*)::int AS total_sat, count(*) FILTER (WHERE source = 'college_board_opensat')::int AS imported FROM questions WHERE exam_type = 'SAT';",
    });
    const content = result?.content?.[0]?.text ?? JSON.stringify(result);
    const match = content.match(/\[[\s\S]*?\]/);
    verify = match ? JSON.parse(match[0])[0] : { raw: content.slice(0, 300) };
  } catch (e) {
    verify = { error: String(e) };
  }

  proc.kill();
  const summary = {
    successfulBatches: successes,
    failedBatches: failures.map((f) => f.batch),
    failures: failures.length,
    verify,
    expected: 2474,
    logFile: logPath,
  };
  logEntry({ type: "summary", ...summary, at: new Date().toISOString() });
  console.log(JSON.stringify(summary, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
