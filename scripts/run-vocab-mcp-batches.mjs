#!/usr/bin/env node
/**
 * Seed SAT vocabulary batches via Supabase MCP execute_sql.
 * Usage: SUPABASE_ACCESS_TOKEN=... node scripts/run-vocab-mcp-batches.mjs [00-19]
 * Without token, use Cursor Supabase MCP execute_sql on scripts/data/vocab-batches/*.sql
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
  console.error(
    "No SUPABASE_ACCESS_TOKEN — use Cursor Supabase MCP execute_sql on vocab-batches/*.sql",
  );
  process.exit(1);
}

const filter = process.argv[2];
const files = readdirSync(dir)
  .filter((f) => f.endsWith(".sql"))
  .filter((f) => !filter || f.includes(`batch-${filter}.sql`))
  .sort();

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
  const proc = spawn(
    "npx",
    ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID],
    {
      env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
      stdio: ["pipe", "pipe", "pipe"],
    },
  );

  proc.stdout.on("data", (chunk) => {
    for (const line of chunk.toString().split("\n").filter(Boolean)) {
      try {
        const msg = JSON.parse(line);
        if (msg.id && pending.has(msg.id)) {
          const { resolve, reject } = pending.get(msg.id);
          pending.delete(msg.id);
          if (msg.error) reject(new Error(msg.error.message));
          else resolve(msg.result);
        }
      } catch {
        /* ignore */
      }
    }
  });

  send(proc, "initialize", {
    protocolVersion: "2024-11-05",
    capabilities: {},
    clientInfo: { name: "vocab-seed", version: "1" },
  });
  send(proc, "notifications/initialized", {});

  await new Promise((r) => setTimeout(r, 800));

  for (const file of files) {
    const query = readFileSync(join(dir, file), "utf8");
    console.log(`Seeding ${file} (${query.length} bytes)...`);
    const result = await callTool(proc, "execute_sql", {
      project_id: PROJECT_ID,
      query,
    });
    console.log(JSON.stringify({ file, ok: true, result: result?.content?.[0]?.text?.slice(0, 80) }));
  }

  proc.kill();
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
