#!/usr/bin/env node
/**
 * Apply a .sql file to the project's Postgres directly via the `pg` driver,
 * using the connection string stored in ~/.cursor/mcp.json for project
 * aioyzumxxsepbnfivvdd. SQL is read from disk and never passes through any
 * LLM/tool context. Prints only a short summary.
 *
 * Usage: node scripts/apply-pg.mjs <file.sql> [file2.sql ...]
 *        node scripts/apply-pg.mjs --count "<select ...>"
 */
import { readFileSync, existsSync } from "node:fs";
import { homedir } from "node:os";
import { join } from "node:path";
import pg from "pg";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";

function getConnString() {
  if (process.env.DATABASE_URL) return process.env.DATABASE_URL.trim();
  const p = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(p)) throw new Error("no ~/.cursor/mcp.json");
  const mcp = JSON.parse(readFileSync(p, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const env = cfg?.env ?? {};
    const blob = JSON.stringify(env);
    if (!blob.includes(PROJECT_ID)) continue;
    const url =
      env.POSTGRES_URL_NON_POOLING ||
      env.POSTGRES_URL ||
      env.DATABASE_URL ||
      null;
    if (url) return url.trim();
  }
  throw new Error(`no Postgres URL for ${PROJECT_ID} in ~/.cursor/mcp.json`);
}

async function main() {
  const args = process.argv.slice(2);
  const conn = getConnString();
  const client = new pg.Client({
    connectionString: conn,
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    if (args[0] === "--count") {
      const r = await client.query(args[1]);
      console.log(JSON.stringify(r.rows));
      return;
    }
    let ok = 0;
    let failed = 0;
    for (const file of args) {
      const sql = readFileSync(file, "utf8");
      try {
        await client.query(sql);
        ok++;
        process.stdout.write(`ok ${file.split("/").pop()}\n`);
      } catch (e) {
        failed++;
        // roll back the aborted transaction so the next file can run
        try { await client.query("ROLLBACK"); } catch {}
        process.stdout.write(`FAIL ${file.split("/").pop()}: ${String(e.message).slice(0, 160)}\n`);
      }
    }
    console.log(`done: ${ok} ok, ${failed} failed`);
  } finally {
    await client.end();
  }
}
main().catch((e) => {
  console.error(String(e.message ?? e));
  process.exit(1);
});
