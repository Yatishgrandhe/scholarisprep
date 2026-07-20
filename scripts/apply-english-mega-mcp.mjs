#!/usr/bin/env node
/**
 * Apply .english-mega-XX.json payloads via Supabase MCP.
 * mega-00: execute_sql (migration already registered, partial apply)
 * mega-01..55: apply_migration
 */
import { readFileSync, readdirSync } from "node:fs";
import { join, resolve } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import { spawn } from "node:child_process";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const dataDir = resolve("scripts/data");
const delayMs = Number(process.argv[2] ?? 2000);

function getMcpToken() {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || null;
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
    proc.stderr.on("data", (chunk) => {
      const s = chunk.toString();
      if (s.includes("error") || s.includes("Error")) process.stderr.write(s);
    });
    send("initialize", {
      protocolVersion: "2024-11-05",
      capabilities: {},
      clientInfo: { name: "scholaris-apply-english-mega", version: "1.0.0" },
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

function responseText(res) {
  return res?.content?.[0]?.text ?? JSON.stringify(res);
}

function checkError(text) {
  const lower = text.toLowerCase();
  if (lower.includes("error") && !lower.includes('"success"')) {
    if (text.includes("duplicate key") || text.includes("already exists")) return null;
    if (lower.includes('"error"') || lower.includes("failed") || lower.includes("zoderror")) {
      return text.slice(0, 1500);
    }
  }
  return null;
}

const files = readdirSync(dataDir)
  .filter((f) => /^\.english-mega-\d+\.json$/.test(f))
  .sort((a, b) => {
    const ai = Number(a.match(/mega-(\d+)/)[1]);
    const bi = Number(b.match(/mega-(\d+)/)[1]);
    return ai - bi;
  });

const results = [];
let applied = 0;

for (const file of files) {
  const idx = file.match(/mega-(\d+)/)[1];
  const payload = JSON.parse(readFileSync(join(dataDir, file), "utf8"));
  const { name, query } = payload;
  const tool = idx === "00" ? "execute_sql" : "apply_migration";
  // Spawned MCP uses --project-ref; omit project_id (unlike Cursor plugin CallMcpTool).
  const args =
    tool === "execute_sql" ? { query } : { name, query };

  try {
    const res = await mcpCall(tool, args);
    const text = responseText(res);
    const err = checkError(text);
    if (err) throw new Error(err);
    applied++;
    console.error(`OK ${name} via ${tool} (${query.length} bytes)`);
    results.push({ idx, name, tool, status: "ok", bytes: query.length });
  } catch (e) {
    const err = String(e.message ?? e).slice(0, 1500);
    console.error(`FAILED ${name}: ${err}`);
    results.push({ idx, name, tool, status: "failed", error: err });
    console.log(
      JSON.stringify({ ok: false, applied, failedAt: name, results }, null, 2),
    );
    process.exit(1);
  }
  await sleep(delayMs);
}

// Verification queries
const verifyUpgraded = `SELECT source, COUNT(*)::int AS upgraded FROM public.questions WHERE exam_type='SAT' AND is_platform_question=true AND section='reading_writing' AND source IN ('scholaris_ai','college_board_opensat') AND COALESCE(source_metadata->>'english_content_v2','false')='true' GROUP BY source;`;
const verifyMigrations = `SELECT version, name FROM supabase_migrations.schema_migrations WHERE name LIKE 'upgrade_english_mega%' ORDER BY version;`;

let upgradedCounts = null;
let migrationRows = null;
try {
  const r1 = await mcpCall("execute_sql", { query: verifyUpgraded });
  upgradedCounts = responseText(r1);
  const r2 = await mcpCall("execute_sql", { query: verifyMigrations });
  migrationRows = responseText(r2);
} catch (e) {
  console.error("Verification query failed:", String(e.message ?? e).slice(0, 500));
}

console.log(
  JSON.stringify(
    { ok: true, applied, total: files.length, upgradedCounts, migrationRows, results },
    null,
    2,
  ),
);
