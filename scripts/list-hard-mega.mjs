#!/usr/bin/env node
/** Apply hard-mega payloads via stdin-driven MCP execute_sql calls (agent reads stdout). */
import { readFileSync, appendFileSync } from "node:fs";
import { resolve } from "node:path";

const payloadDir = resolve(process.argv[2] ?? "scripts/data/.hard-mega-payloads");
const start = Number(process.argv[3] ?? 0);
const end = Number(process.argv[4] ?? 24);
const logPath = resolve("scripts/data/.hard-mega-apply-log.txt");

const results = [];
appendFileSync(logPath, `# apply loop ${new Date().toISOString()}\n`);

for (let i = start; i <= end; i++) {
  const n = String(i).padStart(2, "0");
  const file = `mega-${n}.json`;
  const payload = JSON.parse(readFileSync(`${payloadDir}/${file}`, "utf8"));
  results.push({ file, project_id: payload.project_id, query_len: payload.query.length });
}

console.log(JSON.stringify({ count: results.length, files: results.map((r) => r.file) }));
