#!/usr/bin/env node
/** Apply SQL chunk files via Supabase MCP execute_sql (stdin JSON lines with file paths). */
import { readFileSync, readdirSync } from "node:fs";
import { join, resolve } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import { spawn } from "node:child_process";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const chunkDir = resolve(process.argv[2] ?? "scripts/data/upgrade-math-chunks/upgrade-math-chunks");
const start = Number(process.argv[3] ?? 0);
const end = Number(process.argv[4] ?? Infinity);

function getMcpToken() {
  for (const p of [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ]) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

async function mcpExecute(query) {
  const token = getMcpToken();
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN");
  return new Promise((resolve, reject) => {
    const proc = spawn("npx", ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID], {
      env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
      stdio: ["pipe", "pipe", "pipe"],
    });
    let msgId = 1;
    let buf = "";
    const pending = new Map();
    const send = (method, params) => {
      const id = msgId++;
      proc.stdin.write(JSON.stringify({ jsonrpc: "2.0", id, method, params }) + "\n");
      return id;
    };
    proc.stdout.on("data", (c) => {
      buf += c.toString();
      for (const line of buf.split("\n")) {
        if (!line.trim()) continue;
        try {
          const msg = JSON.parse(line);
          if (msg.id && pending.has(msg.id)) {
            const { resolve: res, reject: rej } = pending.get(msg.id);
            pending.delete(msg.id);
            msg.error ? rej(new Error(JSON.stringify(msg.error))) : res(msg.result);
          }
        } catch {
          /* partial */
        }
      }
      buf = buf.split("\n").pop() ?? "";
    });
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "apply-chunks", version: "1" } });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", {
          name: "execute_sql",
          arguments: { project_id: PROJECT_ID, query },
        });
        const result = await new Promise((res, rej) => pending.set(id, { resolve: res, reject: rej }));
        proc.kill();
        resolve(result);
      } catch (e) {
        proc.kill();
        reject(e);
      }
    }, 1500);
  });
}

const files = readdirSync(chunkDir)
  .filter((f) => f.startsWith("chunk-") && f.endsWith(".sql"))
  .sort()
  .slice(start, Number.isFinite(end) ? end : undefined);

let ok = 0;
for (const file of files) {
  const sql = readFileSync(join(chunkDir, file), "utf8");
  try {
    await mcpExecute(sql);
    console.error(`OK ${file}`);
    ok++;
  } catch (e) {
    console.error(`FAIL ${file}:`, String(e.message ?? e).slice(0, 300));
    process.exit(1);
  }
}
console.log(JSON.stringify({ ok, applied: ok, dir: chunkDir }, null, 2));
