#!/usr/bin/env node
/**
 * Import batches by reading SQL with fs.readFileSync and invoking
 * Supabase MCP execute_sql via @modelcontextprotocol/sdk over stdio.
 *
 * Token: SUPABASE_ACCESS_TOKEN env or ~/.supabase/access-token
 * Usage: node import-via-mcp-plugin.mjs [from] [to]
 */
import { readFileSync, appendFileSync, mkdirSync, existsSync, writeFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { homedir } from "node:os";
import { spawn } from "node:child_process";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const dir = dirname(fileURLToPath(import.meta.url));
const progressDir = join(dir, ".progress");
const logPath = join(dir, "import-results-v3.jsonl");
const from = Number(process.argv[2] ?? 0);
const to = Number(process.argv[3] ?? 98);

mkdirSync(progressDir, { recursive: true });

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
    setTimeout(() => {
      if (pending.has(id)) {
        pending.delete(id);
        reject(new Error(`timeout batch tool ${name}`));
      }
    }, 180000);
  });
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
    clientInfo: { name: "scholaris-import", version: "1.0.0" },
  });
  send(proc, "notifications/initialized", {});
  await new Promise((r) => setTimeout(r, 2500));

  const failures = [];
  let successes = 0;

  for (let i = from; i <= to; i++) {
    const n = String(i).padStart(3, "0");
    const sqlPath = join(dir, `batch-${n}.sql`);
    const sql = readFileSync(sqlPath, "utf8");
    process.stdout.write(`batch-${n}... `);
    const started = Date.now();
    try {
      const result = await callTool(proc, "execute_sql", {
        project_id: PROJECT_ID,
        query: sql,
      });
      if (result?.isError === true) throw new Error(JSON.stringify(result).slice(0, 500));
      successes++;
      writeFileSync(join(progressDir, `batch-${n}.ok`), String(Date.now()));
      appendFileSync(logPath, JSON.stringify({ batch: n, ok: true, ms: Date.now() - started }) + "\n");
      console.log("ok");
    } catch (err) {
      const errMsg = String(err.message || err).slice(0, 500);
      failures.push({ batch: n, error: errMsg.slice(0, 200) });
      writeFileSync(join(progressDir, `batch-${n}.fail`), errMsg);
      appendFileSync(logPath, JSON.stringify({ batch: n, ok: false, error: errMsg }) + "\n");
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
    failures,
    verify,
    expected: 2474,
  };
  appendFileSync(logPath, JSON.stringify({ type: "summary", ...summary, at: new Date().toISOString() }) + "\n");
  console.log(JSON.stringify(summary, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
