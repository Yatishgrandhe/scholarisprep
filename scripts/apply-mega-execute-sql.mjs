#!/usr/bin/env node
/**
 * Apply mega-*.sql via Supabase MCP execute_sql (Cursor plugin).
 * Usage: node scripts/apply-mega-execute-sql.mjs [megaDir] [delayMs]
 */
import { readFileSync, readdirSync } from "node:fs";
import { join, resolve } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import { spawn } from "node:child_process";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const megaDir = resolve(process.argv[2] ?? "scripts/data/upgrade-math-mega");
const delayMs = Number(process.argv[3] ?? 1000);

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
    send("initialize", {
      protocolVersion: "2024-11-05",
      capabilities: {},
      clientInfo: { name: "scholaris-apply-mega-exec", version: "1.0.0" },
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

const files = readdirSync(megaDir)
  .filter((f) => /^mega-\d+\.sql$/.test(f))
  .sort((a, b) => {
    const ai = Number(a.match(/mega-(\d+)/)[1]);
    const bi = Number(b.match(/mega-(\d+)/)[1]);
    return ai - bi;
  });

const results = [];
for (const file of files) {
  const query = readFileSync(join(megaDir, file), "utf8");
  try {
    const res = await mcpCall("execute_sql", { query });
    const text = res?.content?.[0]?.text ?? JSON.stringify(res);
    if (text.includes('"error"') || text.includes("ZodError") || text.toLowerCase().includes("failed")) {
      throw new Error(text.slice(0, 1000));
    }
    console.error(`OK ${file} (${query.length} bytes)`);
    results.push({ file, status: "ok", bytes: query.length, response: text?.slice(0, 200) });
  } catch (e) {
    const err = String(e.message ?? e).slice(0, 1000);
    console.error(`FAILED ${file}: ${err}`);
    results.push({ file, status: "failed", error: err });
    console.log(JSON.stringify({ ok: false, applied: results.filter((r) => r.status === "ok").length, results }, null, 2));
    process.exit(1);
  }
  await sleep(delayMs);
}

console.log(JSON.stringify({ ok: true, applied: results.length, results }, null, 2));
