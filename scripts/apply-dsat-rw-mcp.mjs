#!/usr/bin/env node
/**
 * Apply DSAT RW bank: delete + insert megas via Postgres pooler or MCP execute_sql.
 *
 *   node scripts/apply-dsat-rw-mcp.mjs scripts/data/.dsat-rw-mcp-batches 0 194 1000
 *   node scripts/apply-dsat-rw-mcp.mjs --delete-only
 */
import { readFileSync, readdirSync, appendFileSync, existsSync } from "node:fs";
import { join, resolve } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const logPath = resolve("scripts/data/.dsat-rw-apply-log.txt");

function getMcpEnv() {
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return {};
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const url = cfg?.env?.SUPABASE_URL ?? cfg?.env?.NEXT_PUBLIC_SUPABASE_URL ?? "";
    if (url.includes(PROJECT_ID)) return cfg.env ?? {};
  }
  return {};
}

function getDatabaseUrl() {
  const env = getMcpEnv();
  return (
    process.env.DATABASE_URL?.trim() ||
    process.env.POSTGRES_URL_NON_POOLING?.trim() ||
    env.POSTGRES_URL_NON_POOLING?.trim() ||
    env.POSTGRES_URL?.trim() ||
    null
  );
}

function getMcpToken() {
  const env = getMcpEnv();
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

async function mcpCall(toolName, args) {
  const token = getMcpToken();
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN");

  return new Promise((resolve, reject) => {
    const proc = spawn(
      "npx",
      ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID],
      {
        env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
        stdio: ["pipe", "pipe", "pipe"],
      },
    );
    let msgId = 1;
    let buf = "";
    const pending = new Map();
    const send = (method, params) => {
      const id = msgId++;
      proc.stdin.write(JSON.stringify({ jsonrpc: "2.0", id, method, params }) + "\n");
      return id;
    };
    proc.stdout.on("data", (chunk) => {
      buf += chunk.toString();
      const lines = buf.split("\n");
      buf = lines.pop() ?? "";
      for (const line of lines) {
        if (!line.trim()) continue;
        try {
          const msg = JSON.parse(line);
          if (msg.id && pending.has(msg.id)) {
            const { resolve: res, reject: rej } = pending.get(msg.id);
            pending.delete(msg.id);
            if (msg.error) rej(new Error(JSON.stringify(msg.error)));
            else res(msg.result);
          }
        } catch {
          /* ignore */
        }
      }
    });
    send("initialize", {
      protocolVersion: "2024-11-05",
      capabilities: {},
      clientInfo: { name: "scholaris-apply-dsat-rw", version: "1.0.0" },
    });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", { name: toolName, arguments: args });
        const result = await new Promise((res, rej) => pending.set(id, { resolve: res, reject: rej }));
        proc.kill();
        resolve(result);
      } catch (e) {
        proc.kill();
        reject(e);
      }
    }, 2000);
  });
}

async function pgExecute(query) {
  const { default: pg } = await import("pg");
  const url = getDatabaseUrl();
  if (!url) throw new Error("No DATABASE_URL");
  const client = new pg.Client({
    connectionString: url,
    ssl: process.env.PGSSLMODE === "disable" ? false : { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    const res = await client.query(query);
    return res;
  } finally {
    await client.end();
  }
}

function responseText(res) {
  return res?.content?.[0]?.text ?? JSON.stringify(res);
}

function checkError(text) {
  const lower = text.toLowerCase();
  if (text.includes('"error"') || lower.includes("failed") || lower.includes("zoderror")) {
    if (lower.includes("duplicate key") || lower.includes("already exists")) return null;
    if (!/below is the result/i.test(text)) return text.slice(0, 1500);
  }
  return null;
}

async function executeSql(query) {
  const dbUrl = getDatabaseUrl();
  if (dbUrl) {
    try {
      await pgExecute(query);
      return { via: "pg" };
    } catch (e) {
      console.error(`pg failed, trying MCP: ${String(e.message ?? e).slice(0, 200)}`);
    }
  }
  const res = await mcpCall("execute_sql", { query });
  const text = responseText(res);
  const err = checkError(text);
  if (err) throw new Error(err);
  return { via: "mcp", text: text.slice(0, 200) };
}

const logLine = (line) => {
  console.error(line);
  appendFileSync(logPath, line + "\n");
};

const deleteOnly = process.argv.includes("--delete-only");
const payloadDir = resolve(
  deleteOnly ? "" : (process.argv[2] ?? "scripts/data/.dsat-rw-mcp-batches"),
);
const startIdx = Number(process.argv[3] ?? 0);
const endIdx = Number(process.argv[4] ?? 999);
const delayMs = Number(process.argv[5] ?? 800);

const deleteQuery = `BEGIN;
DELETE FROM public.questions
WHERE exam_type = 'SAT'
  AND section = 'reading_writing'
  AND is_platform_question = true;
COMMIT;`;

async function run() {
  logLine(`# dsat-rw apply ${new Date().toISOString()}`);

  if (deleteOnly || process.argv.includes("--with-delete")) {
    logLine("DELETE RW platform questions...");
    const del = await executeSql(deleteQuery);
    logLine(`DELETE ok (${del.via})`);
    if (deleteOnly) {
      console.log(JSON.stringify({ ok: true, deleted: true }, null, 2));
      return;
    }
  }

  const files = readdirSync(payloadDir)
    .filter((f) => /^payload-\d+\.json$/.test(f))
    .sort((a, b) => Number(a.match(/payload-(\d+)/)[1]) - Number(b.match(/payload-(\d+)/)[1]))
    .filter((f) => {
      const n = Number(f.match(/payload-(\d+)/)[1]);
      return n >= startIdx && n <= endIdx;
    });

  const results = [];
  for (const file of files) {
    const payload = JSON.parse(readFileSync(join(payloadDir, file), "utf8"));
    const { project_id, query } = payload;
    if (project_id !== PROJECT_ID) throw new Error(`${file}: project_id mismatch`);
    try {
      const res = await executeSql(query);
      logLine(`OK ${file} (${query.length} bytes, ${res.via})`);
      results.push({ file, status: "ok", bytes: query.length, via: res.via });
    } catch (e) {
      const err = String(e.message ?? e).slice(0, 1500);
      logLine(`FAILED ${file}: ${err}`);
      results.push({ file, status: "failed", error: err });
      console.log(JSON.stringify({ ok: false, applied: results.filter((r) => r.status === "ok").length, results }, null, 2));
      process.exit(1);
    }
    await sleep(delayMs);
  }

  console.log(JSON.stringify({ ok: true, applied: results.length, results }, null, 2));
}

run().catch((e) => {
  console.error(e);
  process.exit(1);
});
