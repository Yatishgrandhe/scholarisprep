#!/usr/bin/env node
/**
 * Seed SAT vocabulary via Supabase MCP execute_sql (batch files).
 * Usage: SUPABASE_ACCESS_TOKEN=... node scripts/run-vocab-seed.mjs
 */
import { readFileSync, readdirSync, existsSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { spawn } from "node:child_process";
import { homedir } from "node:os";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const dir = join(dirname(fileURLToPath(import.meta.url)), "data/vocab-batches");

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
  console.error("No SUPABASE_ACCESS_TOKEN — use Cursor Supabase MCP execute_sql on batch files instead.");
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
  });
}

async function main() {
  const files = readdirSync(dir)
    .filter((f) => /^batch-\d+\.sql$/.test(f))
    .sort();

  const proc = spawn(
    "npx",
    ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID],
    {
      env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
      stdio: ["pipe", "pipe", "pipe"],
    },
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

  await callTool(proc, "initialize", {
    protocolVersion: "2024-11-05",
    capabilities: {},
    clientInfo: { name: "vocab-seed", version: "1.0.0" },
  });
  send(proc, "notifications/initialized", {});

  let ok = 0;
  for (const file of files) {
    const query = readFileSync(join(dir, file), "utf8");
    await callTool(proc, "execute_sql", { project_id: PROJECT_ID, query });
    ok++;
    console.log(`Seeded ${file}`);
  }

  const countResult = await callTool(proc, "execute_sql", {
    project_id: PROJECT_ID,
    query: "SELECT count(*)::int AS total FROM public.vocabulary_words WHERE exam_type = 'SAT';",
  });
  console.log(JSON.stringify({ batches: ok, countResult }));
  proc.kill();
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
