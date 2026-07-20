#!/usr/bin/env node
/**
 * Apply English MCP payloads + Math mega SQL to Supabase prod.
 * Continues on failure; 500ms delay between batches.
 *
 *   SUPABASE_ACCESS_TOKEN=... node scripts/apply-content-upgrades.mjs
 *   DATABASE_URL=postgres://... node scripts/apply-content-upgrades.mjs
 */
import { readFileSync, readdirSync } from "node:fs";
import { join, resolve } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import { spawn } from "node:child_process";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const ENGLISH_DIR = resolve("scripts/data/upgrade-english-mcp-payloads");
const MATH_DIR = resolve("scripts/data/upgrade-math-mega");
const delayMs = Number(process.env.APPLY_DELAY_MS ?? 500);

function getMcpToken() {
  if (process.env.SUPABASE_ACCESS_TOKEN?.trim()) {
    return process.env.SUPABASE_ACCESS_TOKEN.trim();
  }
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (existsSync(mcpPath)) {
    const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
    for (const cfg of Object.values(mcp.mcpServers ?? {})) {
      const url = cfg?.env?.SUPABASE_URL ?? cfg?.env?.NEXT_PUBLIC_SUPABASE_URL ?? "";
      if (url.includes(PROJECT_ID)) {
        const t = cfg?.env?.SUPABASE_ACCESS_TOKEN?.trim();
        if (t) return t;
      }
    }
  }
  for (const p of [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ]) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  return null;
}

function getDatabaseUrl() {
  if (process.env.DATABASE_URL?.trim()) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (existsSync(mcpPath)) {
    const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
    for (const cfg of Object.values(mcp.mcpServers ?? {})) {
      const url = cfg?.env?.SUPABASE_URL ?? cfg?.env?.NEXT_PUBLIC_SUPABASE_URL ?? "";
      if (url.includes(PROJECT_ID)) {
        return (
          cfg?.env?.POSTGRES_URL_NON_POOLING?.trim() ||
          cfg?.env?.POSTGRES_URL?.trim() ||
          null
        );
      }
    }
  }
  return null;
}

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

async function mcpExecute(query) {
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
      clientInfo: { name: "apply-content-upgrades", version: "1.0.0" },
    });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", {
          name: "execute_sql",
          arguments: { query },
        });
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
  const client = new pg.Client({ connectionString: url, ssl: { rejectUnauthorized: false } });
  await client.connect();
  try {
    await client.query(query);
    return { ok: true };
  } finally {
    await client.end();
  }
}

async function executeSql(query) {
  const dbUrl = getDatabaseUrl();
  if (dbUrl) {
    try {
      return await pgExecute(query);
    } catch (e) {
      // fall through to MCP
      console.error(`pg failed, trying MCP: ${String(e.message ?? e).slice(0, 200)}`);
    }
  }
  const res = await mcpExecute(query);
  const text = res?.content?.[0]?.text ?? JSON.stringify(res);
  if (
    text.includes('"error"') ||
    text.includes("ZodError") ||
    (/error|failed/i.test(text) && !/Below is the result/i.test(text))
  ) {
    throw new Error(text.slice(0, 1000));
  }
  return { ok: true, text };
}

function sortNumeric(files, prefix, ext) {
  return files
    .filter((f) => new RegExp(`^${prefix}\\d+\\.${ext}$`).test(f))
    .sort((a, b) => {
      const ai = Number(a.match(/\d+/)[0]);
      const bi = Number(b.match(/\d+/)[0]);
      return ai - bi;
    });
}

const results = { english: [], math: [] };

// English payloads
const englishFiles = sortNumeric(readdirSync(ENGLISH_DIR), "payload-", "json");
for (const file of englishFiles) {
  const { name, query } = JSON.parse(readFileSync(join(ENGLISH_DIR, file), "utf8"));
  try {
    await executeSql(query);
    console.error(`OK english ${file} (${name})`);
    results.english.push({ file, name, status: "ok" });
  } catch (e) {
    const err = String(e.message ?? e).slice(0, 1000);
    console.error(`FAILED english ${file} (${name}): ${err}`);
    results.english.push({ file, name, status: "failed", error: err });
  }
  await sleep(delayMs);
}

// Math megas
const mathFiles = sortNumeric(readdirSync(MATH_DIR), "mega-", "sql");
for (const file of mathFiles) {
  const query = readFileSync(join(MATH_DIR, file), "utf8");
  try {
    await executeSql(query);
    console.error(`OK math ${file}`);
    results.math.push({ file, status: "ok" });
  } catch (e) {
    const err = String(e.message ?? e).slice(0, 1000);
    console.error(`FAILED math ${file}: ${err}`);
    results.math.push({ file, status: "failed", error: err });
  }
  await sleep(delayMs);
}

const summary = {
  english: {
    total: results.english.length,
    ok: results.english.filter((r) => r.status === "ok").length,
    failed: results.english.filter((r) => r.status === "failed").length,
    failures: results.english.filter((r) => r.status === "failed"),
  },
  math: {
    total: results.math.length,
    ok: results.math.filter((r) => r.status === "ok").length,
    failed: results.math.filter((r) => r.status === "failed").length,
    failures: results.math.filter((r) => r.status === "failed"),
  },
};

console.log(JSON.stringify(summary, null, 2));
