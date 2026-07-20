#!/usr/bin/env node
/**
 * Apply upgrade-english-mcp-payloads/payload-*.json via Supabase MCP execute_sql.
 * Usage: node scripts/apply-upgrade-english-mcp.mjs [payloadDir] [startIdx] [endIdx] [delayMs]
 */
import { readFileSync, existsSync } from "node:fs";
import { join, resolve } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const payloadDir = resolve(
  process.argv[2] ?? "scripts/data/upgrade-english-mcp-payloads",
);
const startIdx = Number(process.argv[3] ?? 0);
const endIdx = Number(process.argv[4] ?? 97);
const delayMs = Number(process.argv[5] ?? 1000);

function getMcpToken() {
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
      clientInfo: { name: "scholaris-apply-english-mcp", version: "1.0.0" },
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

const results = [];
for (let i = startIdx; i <= endIdx; i++) {
  const file = `payload-${String(i).padStart(2, "0")}.json`;
  const path = join(payloadDir, file);
  const { name, query } = JSON.parse(readFileSync(path, "utf8"));
  try {
    const res = await mcpCall("execute_sql", { query });
    const text = res?.content?.[0]?.text ?? JSON.stringify(res);
    if (
      text.includes('"error"') ||
      text.includes("ZodError") ||
      /error|failed/i.test(text) && !/Below is the result/i.test(text)
    ) {
      throw new Error(text.slice(0, 1000));
    }
    console.error(`OK ${file} (${name}, ${query.length} bytes)`);
    results.push({ file, name, status: "ok", bytes: query.length });
  } catch (e) {
    const err = String(e.message ?? e).slice(0, 1000);
    console.error(`FAILED ${file} (${name}): ${err}`);
    results.push({ file, name, status: "failed", error: err });
    console.log(
      JSON.stringify(
        {
          ok: false,
          applied: results.filter((r) => r.status === "ok").length,
          failed: results.filter((r) => r.status === "failed").length,
          results,
        },
        null,
        2,
      ),
    );
    process.exit(1);
  }
  await sleep(delayMs);
}

console.log(
  JSON.stringify(
    {
      ok: true,
      applied: results.length,
      startIdx,
      endIdx,
      results: results.map((r) => ({ file: r.file, name: r.name, status: r.status })),
    },
    null,
    2,
  ),
);
